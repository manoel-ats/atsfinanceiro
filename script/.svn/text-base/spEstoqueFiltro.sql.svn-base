CREATE OR ALTER PROCEDURE  SPESTOQUEFILTRO( DTA1                             DATE
                                , DTA2                             DATE
                                , PROD1                            INTEGER
                                , PROD2                            INTEGER
                                , SUBGRUPO                         VARCHAR( 50 )
                                , NATUREZA                         SMALLINT
                                , CCUSTO                           INTEGER
                                , MARCA                            VARCHAR( 50 )
                                , LOTE                             VARCHAR( 60 )
                                , GRUPOPROC                        VARCHAR( 50 ) )
RETURNS ( CODPROD                          VARCHAR( 20 )
        , CODMOV                           INTEGER
        , TIPOMOVIMENTO                    VARCHAR( 30 )
        , PRODUTO                          VARCHAR( 200 )
        , GRUPO                            VARCHAR( 30 )
        , SUBGRUPOPROD                     VARCHAR( 30 )
        , SALDOINIACUM                     DOUBLE PRECISION
        , ENTRADA                          DOUBLE PRECISION
        , SAIDA                            DOUBLE PRECISION
        , SALDOFIMACUM                     DOUBLE PRECISION
        , PRECOUNIT                        DOUBLE PRECISION
        , VALORESTOQUE                     DOUBLE PRECISION
        , VALORVENDA                       DOUBLE PRECISION
        , LOTES                            VARCHAR( 60 )
        , CCUSTOS                          INTEGER
        , DTAFAB                           DATE
        , DTAVCTO                          DATE
        , NF                               INTEGER
        , CLIFOR                           VARCHAR( 60 )
        , codlote                          integer
        , ANOTACOES                        VARCHAR( 100 )
 )
AS
DECLARE VARIABLE COD INTEGER;
DECLARE VARIABLE CODNATU SMALLINT;
DECLARE VARIABLE ESTOQ DOUBLE PRECISION;
DECLARE VARIABLE ENTRA DOUBLE PRECISION = 0;
DECLARE VARIABLE SAI DOUBLE PRECISION = 0;
DECLARE VARIABLE TOTENTRA DOUBLE PRECISION = 0;
DECLARE VARIABLE TOTSAI DOUBLE PRECISION = 0;
DECLARE VARIABLE SALDOINI DOUBLE PRECISION = 0;
DECLARE VARIABLE SALDOFIM DOUBLE PRECISION = 0;
DECLARE VARIABLE Acumula DOUBLE PRECISION = 0;
DECLARE VARIABLE CODPRODU INTEGER = 0;
DECLARE VARIABLE IMPRIME CHAR(1);
declare variable datanf date;
BEGIN
   saida = 0;
   acumula = 0;
        /* ENTRADA E SAIDA */
        FOR SELECT l.codlote, mov.datamovimento, mov.CODMOVIMENTO, natu.BAIXAMOVIMENTO, natu.DESCNATUREZA, movdet.CODPRODUTO, 
           movdet.LOTE, movdet.DTAFAB, movdet.DTAVCTO, 
           mov.CODALMOXARIFADO, 
           prod.CODPRO, prod.PRODUTO, prod.FAMILIA, prod.CATEGORIA, mov.OBS
   
         FROM MOVIMENTO mov
         inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = mov.CODNATUREZA 
         inner join MOVIMENTODETALHE  movdet on  movdet.CODMOVIMENTO = mov.CODMOVIMENTO
         inner join PRODUTOS prod on movdet.codproduto = prod.codproduto 
          left outer join lotes l on movdet.lote = l.lote and l.codproduto = movdet.codproduto

            WHERE (mov.DATAMOVIMENTO BETWEEN :DTA1 AND :DTA2) AND (movdet.CODPRODUTO BETWEEN :PROD1 AND :PROD2)  and ((prod.TIPO <> 'SERV') or (prod.tipo is null)) AND ((mov.CODNATUREZA = :NATUREZA) OR (:NATUREZA = 100)) AND
                 ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  and ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA'))
                AND ((prod.CATEGORIA = :SUBGRUPO) OR (:SUBGRUPO = 'TODOS SUBGRUPOS DO CADASTRO CATEGORIA'))  
                AND ((prod.MARCA = :MARCA) OR (:MARCA = 'TODAS AS MARCAS CADASTRADAS NO SISTEMA')) and movdet.BAIXA is not null 
                AND ((prod.FAMILIA = :GRUPOPROC) OR (:GRUPOPROC = 'TODOS OS GRUPOS CADASTRADOS NO SISTEMA'))

                group by  prod.FAMILIA, prod.CATEGORIA, prod.CODPRO, prod.PRODUTO, movdet.CODPRODUTO, l.codlote, movdet.LOTE
                    , mov.datamovimento, mov.codNatureza
                    , natu.BAIXAMOVIMENTO, natu.DESCNATUREZA
                   , mov.CODMOVIMENTO, movdet.DTAFAB, 
                  movdet.DTAVCTO, mov.CODALMOXARIFADO, 
                  mov.OBS
                order by  l.codlote, mov.DATAMOVIMENTO, mov.CODMOVIMENTO, movdet.LOTE, prod.FAMILIA, prod.CATEGORIA, prod.CODPRO, prod.PRODUTO
                 , natu.BAIXAMOVIMENTO, mov.codNatureza desc, natu.DESCNATUREZA

                
        INTO :codlote, :Datanf, :CODMOV, :CODNATU, :TIPOMOVIMENTO, :COD, :LOTES, :DTAFAB, :DTAVCTO, :CCUSTOS, 
              :CODPROD, :PRODUTO, GRUPO, SUBGRUPOPROD, :ANOTACOES

        DO BEGIN
            IMPRIME = 'N';

            IMPRIME = 'S';
            ENTRA = 0;
            SAI = 0;
            TOTENTRA = 0;
            TOTSAI = 0;

            /* SALDO INICIAL DO ESTOQUE */
            /*-- Qtde Inicial ENTRADA*/
           FOR SELECT SUM(movdet.QUANTIDADE), movdet.PRECOCUSTO, 
             sum(movdet.PRECOCUSTO * movdet.QTDEESTOQUE) FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu 
                WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
                AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  and ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA'))
                AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 0 and movdet.BAIXA is not null  AND mov.DATAMOVIMENTO  < :DTA1 
                group by movdet.PRECOCUSTO

            INTO :ENTRA, :PRECOUNIT, :VALORESTOQUE
            DO BEGIN
                TOTENTRA = TOTENTRA + ENTRA;   
            END
            /*-- Qtde Inicial SAIDA*/
            FOR SELECT SUM(movdet.QUANTIDADE), movdet.PRECOCUSTO 
                 ,sum(movdet.PRECOCUSTO * movdet.QTDEESTOQUE) FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu 
                WHERE mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
                AND ((mov.CODALMOXARIFADO = :CCUSTO) OR (:CCUSTO = 1))  and ((movdet.LOTE = :LOTE) or (:LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA'))
                AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 1 AND movdet.BAIXA is not null and  mov.DATAMOVIMENTO  < :DTA1
               group by movdet.PRECOCUSTO
            INTO :SAI, :PRECOUNIT, :VALORESTOQUE
            DO BEGIN
                TOTSAI = TOTSAI + SAI;   
            END
            IF (TOTENTRA IS NULL) THEN
                TOTENTRA = 0;
            IF (TOTSAI IS NULL) THEN
                TOTSAI = 0;
            SALDOINI = TOTENTRA - TOTSAI;
            
            ENTRA = 0;
            SAI = 0;
            TOTENTRA = 0;
            TOTSAI = 0;
            IF (LOTES IS NULL) THEN
              LOTES = 'TODOS OS LOTES SISTEMA';
            IF (CODNATU = 0) THEN 
            BEGIN
               /* -- Entrada*/
               VALORESTOQUE = 0;
               ENTRADA = 0;
               PRECOUNIT = 0;
               VALORVENDA = 0;
               For SELECT sum(movdet.QUANTIDADE), movdet.PRECOCUSTO
                    ,sum(movdet.PRECO * movdet.QUANTIDADE), 
                    movdet.QTDEESTOQUE
                   FROM MOVIMENTODETALHE movdet
                    WHERE movdet.CODMOVIMENTO = :CODMOV AND movdet.CODPRODUTO = :COD  and movdet.BAIXA is not null 
                    and ((movdet.LOTE = :LOTES) or (:LOTES = 'TODOS OS LOTES SISTEMA'))
                    group by movdet.CODDETALHE, movdet.QTDEESTOQUE, movdet.PRECOCUSTO
                    order by codDetalhe
                    
                INTO :ENTRA, :SAI, :TOTSAI, :acumula
                do begin
                  if (acumula is null) then 
                    acumula = 0;  
                  VALORESTOQUE = ACUMULA * SAI; -- Valor do Estoque 
                  if (ENTRA IS NULL) then
                    entra = 0;
                  ENTRADA = ENTRADA + ENTRA; -- Quantidade Entrou
                  
                  if (sai is null) then 
                    sai = 0;
                  PRECOUNIT = sai; -- Preço Custo Total 

                  if (totsai is null) then 
                    totsai = 0;
                  VALORVENDA = VALORVENDA + TotSai; -- Valor total Compra
 
                end  
                ENTRA = 0;
                SAI = 0;
                TOTENTRA = 0;
                TOTSAI = 0;
                ACUMULA = 0;
                if (ENTRADA > 0) THEN 
                begin 
                  --PRECOUNIT = PRECOUNIT / ENTRADA;
                  VALORVENDA = VALORVENDA / ENTRADA;
                end 
                IF (ENTRADA IS NULL) THEN
                    ENTRADA = 0;
                TOTENTRA = TOTENTRA + ENTRADA;
              for SELECT forn.RAZAOSOCIAL, com.NOTAFISCAL FROM COMPRA com, FORNECEDOR forn 
                WHERE com.CODFORNECEDOR = forn.CODFORNECEDOR and  com.CODMOVIMENTO = :CODMOV

              INTO :CLIFOR, :NF
             do begin
             end


            END
            -- Saída
            IF (CODNATU = 1) THEN 
            BEGIN
                VALORESTOQUE = 0;
                valorVenda = 0;
                FOR SELECT SUM(movdet.QUANTIDADE), 
                   movdet.PRECOCUSTO
                   ,sum(movdet.PRECO * movdet.QUANTIDADE),
                   movdet.QTDEESTOQUE
                  FROM MOVIMENTODETALHE movdet
                    WHERE movdet.CODMOVIMENTO = :CODMOV AND movdet.CODPRODUTO = :COD  and movdet.BAIXA is not null 
                    and ((movdet.LOTE = :LOTES) or (:LOTES = 'TODOS OS LOTES SISTEMA'))
                    group by movdet.CODDETALHE, movdet.QTDEESTOQUE, movdet.PRECOCUSTO order by movdet.CODDETALHE
                INTO :ENTRA, :SAI, :TOTSAI, :acumula
                do begin
                  if (acumula is null) then 
                    acumula = 0;  
                  VALORESTOQUE = ACUMULA * SAI; -- Valor do Estoque 
                  if (ENTRA IS NULL) then
                    entra = 0;
                  SAIDA = SAIDA + ENTRA; -- Quantidade Entrou
                  
                  if (sai is null) then 
                    sai = 0;
                  PRECOUNIT = sai; -- Preço Custo Total 

                  if (totsai is null) then 
                    totsai = 0;
                  VALORVENDA = VALORVENDA + TotSai; -- Valor total Venda
                end 
                ENTRA = 0;
                SAI = 0;
                TOTENTRA = 0;
                TOTSAI = 0; 
                ACUMULA = 0;               
                if (SAIDA > 0) THEN 
                begin
                  --PRECOUNIT = PRECOUNIT / SAIDA;
                  VALORVENDA = VALORVENDA / SAIDA;
                end 
                IF (SAIDA IS NULL) THEN
                    SAIDA = 0;
                TOTSAI = TOTSAI + SAIDA;

              for SELECT cli.RAZAOSOCIAL, ven.NOTAFISCAL FROM VENDA ven, CLIENTES cli 
                WHERE ven.CODCLIENTE = cli.Codcliente and  ven.CODMOVIMENTO = :CODMOV
              INTO :CLIFOR, :NF
             do begin
             end



            END

        -- IF (CODPRODU = COD) THEN
            SALDOINIACUM = SALDOFIMACUM;
        IF (CODPRODU <> COD) THEN
            SALDOINIACUM = SALDOINI;
        ENTRADA = TOTENTRA;
        SAIDA = TOTSAI;
      /* -- IF ((SALDOINI > 0) OR (SALDOFIM > 0) OR (ENTRADA > 0) */
        SALDOFIM = SALDOINI + ENTRADA - SAIDA;
        IF (CODPRODU = COD) THEN
            SALDOFIMACUM = (SALDOINIACUM + ENTRADA - SAIDA);
        IF (CODPRODU <> COD) THEN
            SALDOFIMACUM = SALDOFIM;
        CODPRODU = COD;
        --VALORESTOQUE = SALDOFIMACUM * PRECOUNIT;
        IF (IMPRIME = 'S') THEN 
        begin
          /*       IF ((CCUSTO = CCUSTOS) OR (CCUSTO = 1)) then
              if ((LOTE = LOTES) OR (LOTE = 'TODOS OS LOTES CADASTRADOS NO SISTEMA')) then*/
          SUSPEND;
        end
        NF = null;
        SAIDA = 0;
        ENTRADA = 0;  
    END

END
