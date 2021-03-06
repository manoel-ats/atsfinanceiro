ALTER PROCEDURE  SPESTOQUE( DTA1                             DATE
                          , DTA2                             DATE
                          , PROD1                            INTEGER
                          , PROD2                            INTEGER
                          , GRUPOA                           VARCHAR( 50 )
                          , SUBGRUPOA                        VARCHAR( 50 ) )
RETURNS ( CODPROD                          VARCHAR( 20 )
        , PRODUTO                          VARCHAR( 200 )
        , UNIDADE                          CHAR( 3 )
        , GRUPO                            VARCHAR( 30 )
        , SUBGRUPO                         VARCHAR( 30 )
        , SALDOINI                         DOUBLE PRECISION
        , ENTRADA                          DOUBLE PRECISION
        , SAIDA                            DOUBLE PRECISION
        , SALDOFIM                         DOUBLE PRECISION
        , VALORCUSTO                       DOUBLE PRECISION )
AS
DECLARE VARIABLE COD INTEGER;
DECLARE VARIABLE ESTOQ DOUBLE PRECISION;
DECLARE VARIABLE ENTRA DOUBLE PRECISION = 0;
DECLARE VARIABLE SAI DOUBLE PRECISION = 0;
BEGIN
    ENTRADA = 0;
    SAIDA = 0;
    FOR SELECT CODPRODUTO, CODPRO, PRODUTO, FAMILIA, CATEGORIA, UNIDADEMEDIDA FROM PRODUTOS 
        WHERE (CODPRODUTO BETWEEN :PROD1 AND :PROD2) AND ((FAMILIA = :GRUPOA) OR (:GRUPOA = 'TODOS OS GRUPOS CADASTRADOS NO SISTEMA')) 
        AND ((CATEGORIA = :SUBGRUPOA) OR (:SUBGRUPOA = 'TODOS OS SUBGRUPOS CADASTRADOS NO SISTEMA')) 
        and ((TIPO <> 'SERV') or (tipo is null))
       GROUP BY FAMILIA, CATEGORIA, CODPRODUTO, CODPRO, PRODUTO, UNIDADEMEDIDA
    INTO :COD, :CODPROD, :PRODUTO, :GRUPO, :SUBGRUPO, :UNIDADE
    DO BEGIN
       /* -- Qtde Inicial ENTRADA*/
       SELECT SUM(movdet.QUANTIDADE)  FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu 
            WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 0 AND mov.DATAMOVIMENTO  < :DTA1 and movdet.BAIXA is not null 
        INTO :ENTRA;
       /* -- Qtde Inicial SAIDA*/
       SELECT SUM(movdet.QUANTIDADE) FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu 
            WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 1 AND mov.DATAMOVIMENTO  < :DTA1 and movdet.BAIXA is not null 
        INTO :SAI;
        IF (ENTRA IS NULL) THEN
            ENTRA = 0;
        IF (SAI IS NULL) THEN
            SAI = 0;
        SALDOINI = ENTRA - SAI;

      /*  -- Entrada*/
      for SELECT SUM(movdet.QUANTIDADE), movdet.PRECOCUSTO FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu  
            WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 0 
            AND mov.DATAMOVIMENTO BETWEEN :DTA1 AND
            :DTA2 and movdet.BAIXA is not null group by movdet.PRECOCUSTO
        INTO :ESTOQ, :VALORCUSTO
       do begin 
         if (ESTOQ IS NULL) THEN 
           EStoq = 0;
         ENTRADA = ENTRADA + ESTOQ;
       end 

        IF (ENTRADA IS NULL) THEN
            ENTRADA = 0;

      /*  -- Sa??da*/
      for   SELECT SUM(movdet.QUANTIDADE), movdet.PRECOCUSTO FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu  
            WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 1 AND mov.DATAMOVIMENTO BETWEEN :DTA1 AND
            :DTA2 and movdet.BAIXA is not null 
            group by  mov.datamovimento, mov.codNatureza
                     , mov.CODMOVIMENTO, movdet.PRECOCUSTO
                order by  mov.DATAMOVIMENTO, mov.codNatureza desc, mov.CODMOVIMENTO

       INTO :ESTOQ, :VALORCUSTO
       do begin 
         if (ESTOQ IS NULL) THEN 
           EStoq = 0;
         SAIDA = SAIDA + ESTOQ; 
       end 
       SELECT FIRST 1 movdet.PRECOCUSTO FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu  
            WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND mov.DATAMOVIMENTO BETWEEN :DTA1 AND
            :DTA2 and movdet.BAIXA is not null 
            group by  mov.datamovimento , mov.codNatureza 
                     , mov.CODMOVIMENTO , movdet.PRECOCUSTO
                order by  mov.DATAMOVIMENTO desc, mov.codNatureza , mov.CODMOVIMENTO desc
          into :VALORCUSTO;
       
       if (valorCusto is null) then 
       begin 
         SELECT FIRST 1 movdet.PRECOCUSTO FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu  
            WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD and movdet.BAIXA is not null 
            group by  mov.datamovimento , mov.codNatureza 
                     , mov.CODMOVIMENTO , movdet.PRECOCUSTO
                order by  mov.DATAMOVIMENTO desc, mov.codNatureza , mov.CODMOVIMENTO desc
          into :VALORCUSTO;
       end
        IF (SAIDA IS NULL) THEN
            SAIDA = 0;

        SALDOFIM = SALDOINI + ENTRADA - SAIDA;
        if (valorCusto is null) then 
          valorCusto = 0;
        VALORCUSTO = VALORCUSTO * SALDOFIM;
        SUSPEND;
        ENTRADA = 0;
        SAIDA = 0;
        valorCusto = null;
    END

END
