set term ^;
create or ALTER PROCEDURE  REL_DRE( PDTA1                            DATE
                        , PDTA2                            DATE
                        , CODCC                            INTEGER
                        , PORGRUPO                         CHAR( 1 )
                        , PORSUBGRUPO                      CHAR( 1 ) )
RETURNS ( CCUSTO                           VARCHAR( 30 )
        , CONTA                            VARCHAR( 30 )
        , DESC_CONTA                       VARCHAR( 80 )
        , CREDITO                          DOUBLE PRECISION
        , PRECOMEDIO                       DOUBLE PRECISION
        , TOTAL                            DOUBLE PRECISION
        , ORDEM                            SMALLINT
        , ORDENACAO                        SMALLINT
        , ACUMULA                          DOUBLE PRECISION
        , TOT                              CHAR( 1 ) )
AS
DECLARE VARIABLE CODCCUSTO INTEGER;
  DECLARE VARIABLE CODPROD INTEGER;
  DECLARE VARIABLE CODREC INTEGER;
  DECLARE VARIABLE TOTALIZA Double precision;
  DECLARE VARIABLE TOTALREC Double precision = 0;
  DECLARE VARIABLE grupo VARCHAR(60);
  DECLARE VARIABLE subg VARCHAR(60);
  DECLARE VARIABLE produt VARCHAR(300);
  DECLARE VARIABLE linha VARCHAR(60);

BEGIN
  linha = 'nada';
  select nome from plano where codigo = :CODCC
  into :CCUSTO;
  /* ########### Gerando a Receita ############*/
  DESC_CONTA = 'Receita operacional : ';
  ordem = 0;
  CONTA  = null;
  CREDITO = null;
  SUSPEND;
  TOTALIZA = 0;

     for select valor, contaLanca || '  -  ' || caixa , ordenacao from CaixaItens(:PDTA1, :PDTA2, 0, 0, :CODCC)        
     INTO :CREDITO, :desc_conta , :ordenacao
     do
     begin    
       /*select nome from plano where conta = :subg
          into :desc_conta;*/

        --DESC_CONTA = produt;
        if (credito >= 0) then
          ordem = 1;
        else
        begin
          ordem = 4;
          credito = credito * (-1);
        end
        TOTALIZA = TOTALIZA + CREDITO;
        TOTAL = TOTALIZA;
        SUSPEND; 
     end
  /* Gerando Total Receita */
  /*  Receitas JUROS e CORRECAO MONETARIA*/
  CONTA  = null;
  CREDITO = null;
  TOTALIZA = 0;
  
  FOR select sum(JUROS)    
     FROM RECEBIMENTO rec 
  where (rec.DATARECEBIMENTO between :PDTA1 AND :PDTA2) and rec.STATUS = '7-'         
     INTO :CREDITO
  do
  begin    
      IF (CREDITO IS NULL) THEN
        CREDITO = 0;
      ordem = 1;
      DESC_CONTA = 'MULTAS/JUROS';
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTAL + TOTALIZA;
      ACUMULA = TOTAL;
      TOT = 'N';
      if (CREDITO > 0) THEN
        SUSPEND; 
  end  

  DESC_CONTA = ' Total da Receitas : ';
  CONTA  = null;
  CREDITO = null;
  TOTAL = TOTALIZA;
  TOTALREC = TOTALIZA;
  --CREDITO = TOTAL;
  ordem = 2;
  SUSPEND;
  TOTAL = null;
  /* ########### FIM Receita ############*/

  /* ########### Gerando a Despesas ############*/
  DESC_CONTA = 'Despesa operacional : ';
  CONTA  = null;
  CREDITO = null;
  ordem = 3;
  SUSPEND;
  TOTALIZA = 0;
  /* A maioria das despesas não tem produto, só compras ligado ao plano de contas 
   */

  IF ((porsubgrupo = 'N') AND (porgrupo = 'N')) THEN    
  BEGIN
    FOR  select md.CODPRODUTO, sum(pag.valorrecebido+pag.juros-pag.desconto), pl.NOME  FROM PAGAMENTO pag
     left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
     left outer join MOVIMENTODETALHE md on md.CODMOVIMENTO = cp.CODMOVIMENTO
     left outer join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     left outer join plano pl on pl.CODIGO = pag.CONTACREDITO
     where  (pag.DATAPAGAMENTO between :PDTA1 AND :PDTA2) 
          and ((pag.CODALMOXARIFADO = :CODCC) or (:CODCC = 9999999)) group by md.CODPRODUTO, pl.NOME
    INTO :CODPROD, :CREDITO, :desc_conta
    do
    begin
      IF (CODPROD IS NOT NULL) THEN
      begin
        SELECT prod.FAMILIA, prod.CATEGORIA, prod.PRODUTO from PRODUTOS prod 
          where prod.CODPRODUTO = :codprod
          into :grupo, :subg, :produt;
    
          DESC_CONTA = produt;
          TOTALIZA = TOTALIZA + CREDITO;
          TOTAL = TOTALIZA;
          ordem = 4;
          SUSPEND; 
      END
      else BEGIN       
        TOTALIZA = TOTALIZA + CREDITO;
        TOTAL = TOTALIZA;
        ordem = 4;
        SUSPEND;    
      end 
    end
  end
  IF (porgrupo = 'S') THEN    
  BEGIN
    FOR  select prod.FAMILIA, sum(pag.valorrecebido+pag.juros-pag.desconto), pl.NOME  FROM PAGAMENTO pag
     left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
     left outer join MOVIMENTODETALHE md on md.CODMOVIMENTO = cp.CODMOVIMENTO
     left outer join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     left outer join plano pl on pl.CODIGO = pag.CONTACREDITO
     where  (pag.dataPagamento between :PDTA1 AND :PDTA2) 
          and ((pag.CODALMOXARIFADO = :CODCC) or (:CODCC = 9999999)) group by prod.FAMILIA, pl.NOME
    INTO :grupo, :CREDITO, :produt
    do
    begin 
      if (grupo is null) THEN  
        DESC_CONTA = produt;
      else
        DESC_CONTA = grupo;
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTALIZA;
          ordem = 4;
      SUSPEND; 
    end
  end 

  IF (porsubgrupo = 'S') THEN    
  BEGIN
    FOR  select prod.CATEGORIA, sum(pag.valorrecebido+pag.juros-pag.desconto), pl.NOME  FROM PAGAMENTO pag
     left outer join COMPRA cp on cp.CODCOMPRA = pag.CODCOMPRA
     left outer join MOVIMENTODETALHE md on md.CODMOVIMENTO = cp.CODMOVIMENTO
     left outer join PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO 
     left outer join plano pl on pl.CODIGO = pag.CONTACREDITO
     where  (pag.DATAPAGAMENTO between :PDTA1 AND :PDTA2) 
          and ((pag.CODALMOXARIFADO = :CODCC) or (:CODCC = 9999999)) group by prod.CATEGORIA, pl.NOME
    INTO :subg, :CREDITO, :produt
    do
    begin
      if (subg is null) THEN  
        DESC_CONTA = produt;
      else
        DESC_CONTA = subg;
      TOTALIZA = TOTALIZA + CREDITO;
      TOTAL = TOTALIZA;
          ordem = 4;
      SUSPEND;     
    end
  end 



  /* Gerando Total Receita */
  DESC_CONTA = ' Total da Despesas : ';
  CONTA  = null;
  CREDITO = null;
  TOTAL = TOTALIZA;
          ordem = 5;
  SUSPEND;
  TOTAL = null;

  /* Resultado Geral do Período */
  DESC_CONTA = ' Resultado Geral no periodo : ';
  CONTA  = null;
  CREDITO = null;
          ordem = 6;  
  TOTAL = TOTALREC - TOTALIZA;
  SUSPEND;
  TOTAL = null;


end

