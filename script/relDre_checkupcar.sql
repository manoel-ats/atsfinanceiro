set term ^;
CREATE OR ALTER PROCEDURE  RELDRE( PDTA1                            DATE
                                 , PDTA2                            DATE, PCC INTEGER )
RETURNS ( CONTA                            VARCHAR( 30 )
        , DESC_CONTA                       VARCHAR( 80 )
        , CREDITO                          DOUBLE PRECISION
        , TOTAL                            DOUBLE PRECISION
        , ACUMULA                          DOUBLE PRECISION
        , TOT                              CHAR( 1 ) )
AS
  DECLARE VARIABLE CODREC INTEGER;
  DECLARE VARIABLE CODP INTEGER;
  DECLARE VARIABLE CENTROPERDA INTEGER;
  DECLARE VARIABLE CONTAJURO VARCHAR(60);
  DECLARE VARIABLE CONTACOMISSAO integer;  -- Codigo da Conta
 DECLARE VARIABLE CONTAIMPOSTOVENDA integer;  -- Codigo da Conta

  DECLARE VARIABLE TOTALIZA Double precision;
  DECLARE VARIABLE TOTALREC Double precision = 0;
  DECLARE VARIABLE custoMatPrima Double precision = 0;
  DECLARE VARIABLE QTDE Double precision = 0;  
  DECLARE VARIABLE produt VARCHAR(300);
  DECLARE VARIABLE linha VARCHAR(60);
  DECLARE VARIABLE CONTAPAI VARCHAR(15);
BEGIN
  -- TOT ----->  A  = Negrito / Valor Null,  S = Negrito com Valor, N = Normal sem valor
  linha = 'nada';
  
  /* Busca o CENTRO DE CUSTO usado para Lixo e Descartes */
  SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'CENTRO PERDA'
   INTO :CENTROPERDA;
  IF (CENTROPERDA IS NULL) THEN 
    CENTROPERDA = 0;


  /* Busca a Conta Principal de lanšamento Desp. Juros. */
  SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'CONTASDESPESAJUROS'
   INTO :CONTAJURO;
  IF (CONTAJURO IS NULL) THEN 
    CONTAJURO = '4.1.1.01';

  /* Busca a Conta Principal de lanšamento Desp. COMISSAO. */
  SELECT CAST(DADOS as INTEGER) FROM PARAMETRO WHERE PARAMETRO = 'CONTACOMISSAO'
   INTO :CONTACOMISSAO;

  IF (CONTACOMISSAO IS NULL) THEN 
    CONTACOMISSAO = 0;
	
  /* Busca a Conta Principal de lanšamento Impostos Sobre Venda*/
  SELECT CAST(DADOS as INTEGER) FROM PARAMETRO WHERE PARAMETRO = 'CONTAIMPOSTOVENDA'
   INTO :CONTAIMPOSTOVENDA;

  IF (CONTACOMISSAO IS NULL) THEN 
    CONTACOMISSAO = 0;
	

  SELECT  NOME FROM PLANO WHERE CONTA = :CONTAJURO
   INTO :CONTAJURO;     
  /* ########### Gerando a Receita ############*/
  /*  Receitas Vendas OS */
  DESC_CONTA = 'Receitas operacionais';
  CONTA  = null;
  CREDITO = null;
  SUSPEND;
  TOTALIZA = 0;
  TOTAL = 0;
  FOR select sum(md.valTotal)    
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     where  (mov.codnatureza = 3) and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
          and ((PROD.TIPO <> 'SERV') OR (PROD.TIPO IS NULL)) and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0)) 
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;
      DESC_CONTA = '    Receitas de Vendas Pešas';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      SUSPEND; 
  end
  TOTALIZA = 0;
  CREDITO = null;
  
  -- usado Checkup-Car (Lista os servišos executados e valores.
  FOR select sum(md.valTotal), '    ' || md.descproduto    
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     where  (mov.codnatureza = 3) and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
          and (PROD.TIPO = 'SERV') and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
		group by  md.descproduto  
     INTO :CREDITO, :DESC_CONTA
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;
      --DESC_CONTA = '    Receitas de Vendas Consumidor';
      TOTALIZA = TOTALIZA + CREDITO;
      TOT = 'N';
      SUSPEND; 
  end
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;

  /*  Receitas Servicos OS */
  CONTA  = null;
  CREDITO = null;
  TOTALIZA = 0;
  /*FOR select sum(md.valTotal)    
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     where (mov.codnatureza = 3) and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
          and PROD.TIPO = 'SERV' and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

      DESC_CONTA = '    Receitas de Servišos ';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      if (CREDITO > 0) THEN
        SUSPEND; 
  end  */

  /*  Receitas Vendas OS */
  DESC_CONTA = 'Receitas nŃo operacionais';
  CONTA  = null;
  CREDITO = null;
  TOT = 'A';
  SUSPEND;

  /*  Receitas JUROS e CORRECAO MONETARIA*/
  CONTA  = null;
  CREDITO = null;
  TOTALIZA = 0;
  
  FOR select sum(JUROS + FUNRURAL)    
     FROM RECEBIMENTO rec 
  where (rec.EMISSAO between :PDTA1 AND :PDTA2) and rec.STATUS = '7-'         
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

      DESC_CONTA = '    Receitas de Juros e Corr. Monetßria ';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      if (CREDITO > 0) THEN
        SUSPEND; 
  end  

  TOTALIZA = 0;

  -- Outras Receitas de Vendas (FRETE , SEGUROS, etc )
  FOR select sum(v.VALOR_ICMS + v.VALOR_FRETE + v.VALOR_SEGURO + v.OUTRAS_DESP + v.VALOR_IPI)
     FROM VENDA v
  where (v.DATAVENDA between :PDTA1 AND :PDTA2)
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

      DESC_CONTA = '    Outros receitas (FRETE, SEGURO) ';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      if (CREDITO > 0) THEN
        SUSPEND; 
  end  
  TOTALIZA = 0;


  -- Receitas Diversas
  FOR select sum(r.VALOR_RESTO), p.NOME
     FROM RECEBIMENTO r
  inner join plano p on p.CODIGO = r.CONTACREDITO
  where (r.EMISSAO between :PDTA1 AND :PDTA2) And (r.CODVENDA is null) 
     group by p.NOME
     INTO :CREDITO, :DESC_CONTA
  do
  begin 
    DESC_CONTA = '    ' || :DESC_CONTA;
    IF (CREDITO IS NULL) THEN
      CREDITO = 0;
    TOTALIZA = TOTALIZA + CREDITO;
    TOTAL = TOTAL + TOTALIZA;
    ACUMULA = TOTAL;
    TOT = 'N';
    if (CREDITO > 0) THEN
      SUSPEND; 
	TOTALIZA = 0;  
  end  

  
  DESC_CONTA = '= Total de Receitas ';
  CONTA  = null;
  CREDITO = null;
  --TOTAL = NULL;
  TOT = 'S';

  SUSPEND;
  TOTALIZA = 0;



  /* Gerando Total Receita */
  DESC_CONTA = '(-) Deduš§es das Receitas';
  CONTA  = null;
  CREDITO = null;
  --TOTAL = ;
  TOT = 'A';
  SUSPEND;

  /* COMISSAO DE VENDAS  */

    IF (CONTACOMISSAO IS NOT NULL) THEN 
    begin       
      For Select sum(pag.VALOR_RESTO), pl.NOME    
        FROM PAGAMENTO pag , plano pl
       where (pag.EMISSAO between :PDTA1 AND :PDTA2) and pl.CODIGO = pag.CONTACREDITO 
       and (pag.CONTACREDITO = :CONTACOMISSAO)   group by pl.NOME       
      INTO :CREDITO, :DESC_CONTA
      do
      begin    
	    desc_conta = '    '  || :DESC_CONTA;
        IF (CREDITO IS NULL) THEN
          CREDITO = 0;
        TOTALIZA = TOTALIZA - CREDITO;
        TOTAL = TOTAL + TOTALIZA;
        ACUMULA = TOTAL;
        TOT = 'N';
        if (CREDITO > 0) THEN
          SUSPEND; 
      end  
    end


  /*  Deducoes das Receitas*/
  CONTA  = null;
  CREDITO = null;
  TOTALIZA = 0;
  TOTAL = ACUMULA;
  -- Desconto concedido no pedido
  DESC_CONTA = '    Descontos Concedidos';
  FOR select sum(md.valTotal*((case when md.qtde_alt is null then 0 else md.qtde_alt end)/100))    
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     where (mov.codnatureza = 3) and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
        and ((PROD.TIPO <> 'SERV') OR (PROD.TIPO IS NULL)) and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
     INTO :CREDITO
  do begin
    IF (CREDITO IS NULL) THEN
      CREDITO = 0;
    TOTALIZA = TOTALIZA - CREDITO;
    TOTAL = TOTAL + TOTALIZA;
    ACUMULA = TOTAL;
	TOT = 'N';
    IF (CREDITO > 0) then
      SUSPEND; 
  end
  CONTA  = null;
  CREDITO = null;
  TOTALIZA = 0;
  TOTAL = ACUMULA;
  
  

  -- Desconto concedido na venda 
  FOR select sum(ven.DESCONTO)     
     FROM VENDA ven
     where  (ven.DATAVENDA between :PDTA1 AND :PDTA2) and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;
      TOTALIZA = TOTALIZA - CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
	  TOT = 'N';
	  IF (CREDITO > 0) then
         SUSPEND; 
  end  
  
  


  /*  PERDAS E DESCARTES*/
  CONTA  = null;
  CREDITO = null;
  TOTALIZA = 0;
  TOTAL = ACUMULA;

  FOR select sum(md.VLRESTOQUE)    
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     where (mov.codnatureza = 2) and (mov.DATAMOVIMENTO between :PDTA1 AND :PDTA2) 
          and ((mov.CODALMOXARIFADO = :CENTROPERDA))
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

      DESC_CONTA = '    Perdas e Descartes';
      TOTALIZA = TOTALIZA - CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      IF (CREDITO > 0) then
        SUSPEND; 
  end  

  DESC_CONTA = '= Receitas LÝquidas';
  CONTA  = null;
  CREDITO = null;
  TOTAL = ACUMULA;
  --TOTAL = NULL;
  TOT = 'S';

  SUSPEND;
  
  /* ########### FIM Receita ############*/

  /* ########### Gerando a Despesas ############*/
  DESC_CONTA = '(-) Custo das Vendas';
  CONTA  = null;
  CREDITO = null;
  TOT = 'N';
  SUSPEND;
  TOTAL = ACUMULA;
  TOTALIZA = 0;


  /* Total dos produtos VENDIDOS * seu custo  qdo produto Comprado*/

  FOR select sum(md.VLRESTOQUE)     
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
       inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = mov.CODNATUREZA
     where  (natu.TIPOMOVIMENTO = 3) and (ven.DATAVENDA between :PDTA1 AND :PDTA2) and ((prod.TIPO = 'PROD') or (prod.TIPO is null))  and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
    INTO :CREDITO
    do
    begin
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;
      DESC_CONTA = '     Custo dos Produtos Vendidos';
      TOTALIZA = TOTALIZA - CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
	  if (CREDITO > 0) then
        SUSPEND; 
    end
  TOTALIZA = 0;
  /* Total dos produtos VENDIDOS * seu custo  qdo produto usa Materias Primas*/
  /*FOR select md.codProduto, sum(md.Quantidade)     
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
       inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = mov.CODNATUREZA
     where  (natu.TIPOMOVIMENTO = 3) and (ven.DATAVENDA between :PDTA1 AND :PDTA2) 
	   and ((prod.TIPO <> 'SERV') or (prod.TIPO is null))  and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
	 group by md.codProduto
    INTO :CODP, :QTDE
  do
  begin
	   select sum(m.QTDEUSADA * (case when p.VALORUNITARIOATUAL is null then p.PRECOMEDIO 
         else p.VALORUNITARIOATUAL end ))
         from MATERIA_PRIMA m 
         inner join PRODUTOS p on p.CODPRODUTO = m.CODPRODMP
        where m.CODPRODUTO = :codP
        into :custoMatPrima;
		if (custoMatPrima is null) then 
		   custoMatPrima = 0;
		credito = credito + (custoMatPrima * qtde);
        
        

      DESC_CONTA = '     Custo dos Produtos Vendidos';
      TOTALIZA = TOTALIZA - CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
  end
  if (CREDITO > 0) then	  
    SUSPEND; 
  CONTA  = null;
  CREDITO = null;
  
  TOTALIZA = 0;*/
  -- Servišos
  FOR select sum(md.QUANTIDADE * prod.PRECOMEDIO)     
     FROM MOVIMENTO mov 
       inner join MOVIMENTODETALHE md on md.CODMOVIMENTO = mov.CODMOVIMENTO
       inner join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO     
       inner join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
       inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = mov.CODNATUREZA
     where  (natu.TIPOMOVIMENTO = 3) and (ven.DATAVENDA between :PDTA1 AND :PDTA2) and prod.TIPO = 'SERV'  and ((ven.CODCCUSTO = :PCC) OR (:PCC = 0))
    INTO :CREDITO
    do
    begin
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

      DESC_CONTA = '     Custo dos Servišos Vendidos';
      TOTALIZA = TOTALIZA - CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL; 
      TOT = 'N';
      if (CREDITO > 0) then
        SUSPEND; 
    end
  TOTALIZA = 0;

  -- Outros Custos de Vendas (FRETE , SEGUROS, etc )
  FOR select sum(c.VALOR_ICMS + c.VALOR_FRETE + c.VALOR_SEGURO + c.OUTRAS_DESP + c.VALOR_IPI)
     FROM COMPRA c
  where (c.DATACOMPRA between :PDTA1 AND :PDTA2)
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;

      DESC_CONTA = '     Outros custos CMV (FRETE, SEGURO) ';
      TOTALIZA = TOTALIZA - CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      if (CREDITO > 0) THEN
        SUSPEND; 
  end  
  TOTALIZA = 0;

  -- ##################### Busca as contas que estŃo marcadas para reduzir da Receita
  FOR  select  distinct pl.contapai  FROM PAGAMENTO pag
     left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
     inner join plano pl on pl.CODIGO = pag.CONTACREDITO
     where (pl.REDUZRECEITA = 'S') and (pag.EMISSAO between :PDTA1 AND :PDTA2)  and ((cp.CODCCUSTO = :PCC) OR (:PCC = 0))
     and (pl.CODIGO <> :CONTACOMISSAO) and (pl.CONTAPAI <> '')
           group by pl.contapai 
    INTO :CONTAPAI
  do begin
     TOT = 'G'; /*Para nao imprimir a linha*/
     TOTAL = 0;
     CONTA  = null;
     CREDITO = null;
     SELECT NOME FROM PLANO WHERE CONTA = :CONTAPAI
     INTO :DESC_CONTA; 
     -- SUSPEND;  -- Nao imprimi esse grupos , aparecem tudo em Custos de Vendas
     TOTAL = ACUMULA; 
     /* A maioria das despesas nao tem produto, sao compras ligado ao plano de contas    */
     FOR  select sum(pag.VALOR_RESTO), pl.NOME  FROM PAGAMENTO pag
       left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
       inner join plano pl on pl.CODIGO = pag.CONTACREDITO
       where (pl.REDUZRECEITA = 'S') and (pag.EMISSAO between :PDTA1 AND :PDTA2) 
           and pl.contapai = :CONTAPAI  and ((cp.CODCCUSTO = :PCC) OR (:PCC = 0))
           group by pl.NOME
      INTO :CREDITO, :produt
      do
      begin 
        DESC_CONTA = '     ' || produt;
        TOTALIZA = TOTALIZA - CREDITO;
        TOTAL = TOTAL + TOTALIZA;
        ACUMULA = TOTAL;
        TOT = 'N';

        SUSPEND; 
        TOTALIZA = 0;
      end
    
  end
  -- ########################## Fim do REDUZ RECEITA

  DESC_CONTA = '= Resultado Bruto';
  CONTA  = null;
  CREDITO = null;
  TOTALIZA = 0;
  --TOTAL = 0;
  TOT = 'S';

  SUSPEND;
  TOTAL = ACUMULA;


  DESC_CONTA = '(-) Despesas Operacionais';
  CONTA  = null;
  CREDITO = null;
  TOT = 'N';
  SUSPEND;
  

  /* PEGO A CONTA PAI PARA IMPRIMIR POR GRUPO  */

  FOR  select  distinct pl.contapai  FROM PAGAMENTO pag
     left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
     inner join plano pl on pl.CODIGO = pag.CONTACREDITO
     where ((REDUZRECEITA IS NULL) OR (REDUZRECEITA = 'N')) and (pag.EMISSAO between :PDTA1 AND :PDTA2) 
      and ((cp.CODCCUSTO = :PCC) OR (:PCC = 0))
      and (pl.CODIGO <> :CONTACOMISSAO) and (pl.CONTAPAI <> '')
           group by pl.contapai 
    INTO :CONTAPAI
  do begin
     TOT = 'G'; /*Para nao imprimir a linha*/
     TOTAL = 0;
     CONTA  = null;
     CREDITO = null;
     SELECT NOME FROM PLANO WHERE CONTA = :CONTAPAI
     INTO :DESC_CONTA; 
     SUSPEND;
     TOTAL = ACUMULA; 
     ACUMULA = 0;
     /* A maioria das despesas nao tem produto, sao compras ligado ao plano de contas    */
     FOR  select sum(pag.VALOR_RESTO), pl.NOME  FROM PAGAMENTO pag
       left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
       inner join plano pl on pl.CODIGO = pag.CONTACREDITO
       where ((REDUZRECEITA IS NULL) OR (REDUZRECEITA = 'N')) and  (pag.EMISSAO between :PDTA1 AND :PDTA2) 
           and pl.contapai = :CONTAPAI  and ((cp.CODCCUSTO = :PCC) OR (:PCC = 0))
           group by pl.NOME
      INTO :CREDITO, :produt
      do
      begin 
        DESC_CONTA = '     ' || produt;
        TOTALIZA = TOTALIZA - CREDITO;
        TOTAL = TOTAL + TOTALIZA;
        ACUMULA = TOTAL;
        TOT = 'N';

        SUSPEND; 
        TOTALIZA = 0;
      end
    
    IF (DESC_CONTA = CONTAJURO) THEN 
    begin 
      For Select sum(pag.JUROS + pag.FUNRURAL)    
        FROM PAGAMENTO pag 
       where (pag.EMISSAO between :PDTA1 AND :PDTA2) and pag.STATUS = '7-'         
      INTO :CREDITO
      do
      begin    
        IF (CREDITO IS NULL) THEN
          CREDITO = 0;

        DESC_CONTA = '    Despesas Juros e Corr. Monetßria ';
        TOTALIZA = TOTALIZA - CREDITO;
        TOTAL = TOTAL + TOTALIZA;
        ACUMULA = TOTAL;
        TOT = 'N';
        if (CREDITO > 0) THEN
          SUSPEND; 
      end  
    end

  end
  /* Gerando Total Receita */
  DESC_CONTA = '= Total das Despesas operacionais';
  CONTA  = null;
  CREDITO = null;
  TOTAL = TOTALIZA;
  TOT = 'S';

  SUSPEND;
  TOTAL = ACUMULA + TOTALIZA;

  /* Resultado Geral do PerÝodo */
  DESC_CONTA = ' Resultado Geral no perÝodo : ';
  CONTA  = null;
  CREDITO = null;
  
  --TOTAL = TOTALREC - TOTALIZA;
  SUSPEND;
  TOTAL = null;


end
