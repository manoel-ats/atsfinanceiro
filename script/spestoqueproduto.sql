CREATE OR ALTER PROCEDURE SPESTOQUEPRODUTO (
    dta1 date,
    dta2 date,
    prod1 integer,
    prod2 integer,
    grupo varchar(50),
    subgrupo varchar(50),
    marca varchar(50),
    pccusto integer)
returns (
    cod integer,
    codprod varchar(20),
    produto varchar(200),
    saldoini double precision,
    entrada double precision,
    saida double precision,
    pedido double precision,
    saldofim double precision,
    saldofimsempedido double precision,
    valorcusto double precision,
    vlrtotalini double precision,
    vlrtotalfim double precision,
    valorvenda double precision,
    tipoproduto varchar(20))
as
declare variable estoq double precision;
declare variable entra double precision = 0;
declare variable sai double precision = 0;
declare variable entravlr double precision = 0;
declare variable saivlr double precision = 0;
declare variable prcus double precision = 0;
declare variable prven double precision = 0;
declare variable margem double precision = 0;
declare variable customateriaprima double precision = 0;
declare variable pmcus double precision = 0;
declare variable tipoprecovenda char(1);
BEGIN
    FOR SELECT CODPRODUTO,CODPRO, PRODUTO, FAMILIA, CATEGORIA,  VALORUNITARIOATUAL, VALOR_PRAZO, TIPO
      ,PRECOMEDIO, tipoPrecoVenda, margem FROM PRODUTOS 
        WHERE CODPRO BETWEEN :PROD1 AND :PROD2  AND ((tipo <> 'SERV') or (TIPO is null)) AND ((CATEGORIA = :SUBGRUPO) OR
                 (:SUBGRUPO = 'TODOS SUBGRUPOS DO CADASTRO'))   AND ((FAMILIA = :GRUPO) OR
                 (:GRUPO = 'TODOS OS GRUPOS CADASTRADOS')) 
                 AND ((MARCA = :MARCA) OR (:MARCA = 'TODAS AS MARCAS CADASTRADAS')) ORDER BY PRODUTO
    INTO :COD, :CODPROD, :PRODUTO, GRUPO, SUBGRUPO, :PRCUS, :PRVEN, :TIPOPRODUTO, :PMCUS, :tipoPrecoVenda, :margem
    DO BEGIN
  /* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% */
        /* if (tipoPreco */
        if (TipoPrecoVenda = 'F') then 
           
        IF ((PRCUS IS NULL) or (PRCUS = 0)) THEN 
          PRCUS = PMCUS;  
       /* -- Qtde Inicial ENTRADA*/
        SELECT SUM(movdet.QUANTIDADE), sum(movdet.QUANTIDADE * movdet.PRECOCUSTO) 
            FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu, COMPRA v 
            WHERE v.codmovimento = mov.codmovimento and  mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
            AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 0 AND v.DATACOMPRA  < :DTA1 
            AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and movdet.baixa is not null
        INTO :ENTRA, :ENTRAVLR;
        
       /* -- Qtde Inicial SAIDA*/
        SELECT SUM(movdet.QUANTIDADE), sum(movdet.QUANTIDADE * movdet.PRECOCUSTO)  
            FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu, VENDA v  
            WHERE v.codmovimento = mov.codmovimento and mov.CODMOVIMENTO = movdet.CODMOVIMENTO 
            AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 1 AND v.DATAVENDA  < :DTA1
            AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and movdet.baixa is not null
        INTO :SAI, :SAIVLR;
        IF (ENTRA IS NULL) THEN
            ENTRA = 0;
        IF (SAI IS NULL) THEN
            SAI = 0;
        SALDOINI = ENTRA - SAI;
        VLRTotalIni = EntraVlr - SaiVlr;

       /* -- Entrada */
        SELECT SUM(movdet.QUANTIDADE), sum(movdet.QUANTIDADE * movdet.PRECOCUSTO) 
            FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu, COMPRA v   
            WHERE v.codmovimento = mov.codmovimento and mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 0 AND v.DATACOMPRA BETWEEN :DTA1 AND
            :DTA2 AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and movdet.baixa is not null
        INTO :ENTRADA, :EntraVlr;
        IF (ENTRADA IS NULL) THEN
            ENTRADA = 0;

       /* -- Saída*/
        SELECT SUM(movdet.QUANTIDADE), sum(movdet.QUANTIDADE * movdet.PRECOCUSTO) 
           FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu  , VENDA v 
            WHERE  v.codmovimento = mov.codmovimento and mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 1 AND v.DATAVENDA BETWEEN :DTA1 AND
            :DTA2 AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and movdet.baixa is not null
        INTO :SAIDA, :saiVlr;

        IF (SAIDA IS NULL) THEN
            SAIDA = 0;


        VlrTotalFim = EntraVlr - SaiVlr;
       /* -- Pedidos*/
        SELECT SUM(movdet.QUANTIDADE) FROM MOVIMENTODETALHE movdet, MOVIMENTO mov, NATUREZAOPERACAO natu, VENDA v   
            WHERE v.codmovimento = mov.codmovimento and mov.CODMOVIMENTO = movdet.CODMOVIMENTO AND natu.CODNATUREZA = mov.CODNATUREZA 
            AND movdet.CODPRODUTO = :COD AND natu.BAIXAMOVIMENTO = 1 
            AND v.DATAVENDA BETWEEN :DTA1 AND
            :DTA2 AND ((mov.CODALMOXARIFADO = :PCCUSTO) OR (:PCCUSTO = 0)) and mov.STATUS = 1
        INTO :PEDIDO;

        IF (PEDIDO IS NULL) THEN
            PEDIDO = 0;

       /* O custo do produto e baseado em cima das materias primas */
    -- busco o último movimento q este produto teve para pegar o preço de custo dele.
    prCus = null;
    select first 1 precocusto from MOVIMENTODETALHE where ((baixa = 0) or (baixa = 1)) and codproduto = :cod 
       into :prCus;
    if (prCus is null) then 
      prCus = 0;
    custoMateriaPrima = 0;   
    select sum(m.QTDEUSADA * (case when :prCus > 0 then :prCus when p.VALORUNITARIOATUAL is null then p.PRECOMEDIO 
     when p.VALORUNITARIOATUAL = 0 then p.PRECOMEDIO 
     else p.VALORUNITARIOATUAL end ))
     
    from MATERIA_PRIMA m 
      inner join PRODUTOS p on p.CODPRODUTO = m.CODPRODMP
      where m.CODPRODUTO = :cod
    into :custoMateriaPrima;
       VALORCUSTO = custoMateriaPrima;

        SALDOFIM = SALDOINI + ENTRADA - SAIDA;
        SALDOFIMSEMPEDIDO = SALDOINI + ENTRADA - SAIDA - PEDIDO;
        if ((CustoMateriaPrima = 0) OR (CustoMateriaPrima is null)) then 
          VALORCUSTO =  PRCUS;
        VALORVENDA =  SALDOFIM * PRVEN;
          SUSPEND;
        custoMateriaPrima = null;

    END

END
