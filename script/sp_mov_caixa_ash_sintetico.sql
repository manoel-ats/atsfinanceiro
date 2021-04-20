CREATE OR ALTER PROCEDURE SP_MOV_CAIXA_ASH_SINTETICO (
    dtaini date,
    dtafim date,
    cod_caixa smallint)
returns (
    dtapagto date,
    ordem smallint,
    descricao varchar(300),
    valorc double precision,
    valord double precision,
    valor double precision,
    contacontabil varchar(200),
    caixa varchar(60),
    codconta varchar(20),
    forma varchar(20),
    n_doc varchar(20),
    ordena smallint,
    tipo varchar(10))
as
declare variable ccaixa integer;
declare variable codp integer;
declare variable codcont integer;
declare variable ccontabil integer;
declare variable n_titulo varchar(15);
declare variable vlinic double precision = 0;
declare variable vlinid double precision = 0;
declare variable vlinit double precision = 0;
declare variable vlini double precision = 0;
declare variable nconta varchar(15);
declare variable forn varchar(70);
declare variable conta varchar(15);
declare variable rateio char(1);
declare variable perda double precision;
BEGIN
  /* Saldo Inicial */
  -- Total Pago atÃƒÂ© esta data
  valorc = 0;
  valord = 0;
  valor = 0;
  ordena = 0;
  SELECT SUM(pag.VALOR_RESTO) FROM PAGAMENTO pag 
  --WHERE ((pag.STATUS = '7-') or (pag.STATUS = '1-')) and
  where pag.DATACONSOLIDA < :DTAINI
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
  INTO :VLINID;
  -- Total Recebido atÃƒÂ© esta data
  SELECT SUM(rec.VALOR_RESTO+rec.DESCONTO+rec.JUROS) FROM RECEBIMENTO rec 
  --WHERE  ((rec.STATUS = '7-')  or (rec.STATUS = '1-')) and
    where rec.DATACONSOLIDA < :DTAINI
    and ((rec.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
  INTO :VLINIC;
  IF (VLINID IS NULL) THEN
    VLINID = 0;
  IF (VLINIC IS NULL) THEN
    VLINIC = 0;
  VLINIT = VLINIC - VLINID;
  -- Movimento feito pelo MovimentaÃƒÂ§ÃƒÂ£o Finaceira(tabela MovimentoCont)
  -- Se a busca ÃƒÂ© por caixa entÃƒÂ£o pega o N. Conta Contabil do Caixa pedido
  IF (COD_CAIXA <> 0) THEN
  BEGIN
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    select SUM(VALORCREDITO), SUM(VALORDEBITO) from MOVIMENTOCONT where data < :DTAINI and tipoorigem = 'CONTABIL' and CONTA = :NCONTA
      INTO :VLINIC, VLINID; 
  END
  ELSE
  BEGIN 
    select SUM(VALORCREDITO), SUM(VALORDEBITO) from MOVIMENTOCONT where data < :DTAINI and tipoorigem = 'CONTABIL'
      INTO :VLINIC, VLINID;   
  END
  IF (VLINID IS NULL) THEN
    VLINID = 0;
  IF (VLINIC IS NULL) THEN
    VLINIC = 0;
  -- Saldo Inicial
  VALOR = VLINIT + (VLINID - VLINIC);
  DESCRICAO = 'Saldo Inicial : ';
  DTAPAGTO = DTAINI;
  ORDEM = 0;
  SUSPEND;
  DESCRICAO = null;
  contacontabil = null;
  VALORD = 0;
  FORMA = null;
  CODCONTA = null;
  /*                                                    */
  /*                                                    */
  /*     Total de DÃƒÂ©bitos (Entrou) por RECEBIMENTOS     */
  /*                                                    */
  /*         */
  for select datafinanceiro, '',item, sum(udf_rounddec(valor,2)), 0,formarec, nDoc, ordenacao
   from CaixaItens(:DTAINI, :DTAFIM, :COD_CAIXA, '0', 0) 
   group by datafinanceiro, formaRec, item, nDoc , ordenacao                                          
  INTO :DTAPAGTO, :FORN, :DESCRICAO, :VALORD, :CCONTABIL, :FORMA, :N_DOC, :ORDENA
  DO BEGIN
    SELECT NOME, CODREDUZIDO FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTACONTABIL, :CODCONTA;
    CONTACONTABIL = CODCONTA || '-' || CONTACONTABIL;
    VALOR = VALOR + VALORD;
    
    if( valord < 0 ) then    
    begin  
      TIPO = '2-DESPESA';  
      valorc = valord * -1;
      valord = 0;    
    end

    if( valord > 0 ) then 

    TIPO = '1-RECEITA';

    if (forma = '1') then 
      forma = 'Dinheiro';
    else if (forma = '2') then 
      forma = 'Cheque';
    else if (forma = '3') then 
      forma = 'Cheque-Pre';
    else if (forma = '4') then 
      forma = 'Boleto';
    else if (forma = '5') then 
      forma = 'Duplicata';
    else if (forma = '6') then 
      forma = 'Cartao Credito';
    else if (forma = '7') then 
      forma = 'Cartao Debito';
    else if (forma = '8') then 
      forma = 'Deposito';
    else if (forma = '9') then 
      forma = 'Debito Automatico';
    else if (forma = 'A') then 
      forma = 'Home-Banking';
    else if (forma = 'B') then 
      forma = 'Doc';
    else if (forma = 'C') then 
      forma = 'Cartorio';
    else if (forma = 'D') then 
      forma = 'Transferência';


    IF ((DESCRICAO IS NULL) or (DESCRICAO = '')) THEN
      DESCRICAO = FORN;
    else
      DESCRICAO = FORN || ' - ' || DESCRICAO;
    ORDEM = 1;
    --IF (VALORD > 0.001) THEN
    SUSPEND;
    DESCRICAO = null;
    contacontabil = null;
    VALORD = 0;
    FORMA = null;
    CODCONTA = null;
    N_DOC = null;
    VALORC = 0;
  END
  /*                                                    */
  /*                                                    */

  /************ Exibir Juros lançados quando Receber (ASH) **************/

  FOR SELECT rec.DATARECEBIMENTO, CAST(rec.CODCLIENTE AS VARCHAR(5)) || '-' ||  cli.NOMECLIENTE, 
    rec.HISTORICO, rec.JUROS, rec.CONTACREDITO, rec.FORMARECEBIMENTO, rec.N_DOCUMENTO  
    FROM RECEBIMENTO rec, CLIENTES cli where cli.CODCLIENTE = rec.CODCLIENTE 
    and rec.DATARECEBIMENTO BETWEEN :DTAINI AND :DTAFIM
    and ((rec.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
    order by rec.dataRECEBImento
  INTO :DTAPAGTO, :FORN, :DESCRICAO, :VALORD, :CCONTABIL, :FORMA, :N_DOC
  DO BEGIN
    SELECT NOME, CODREDUZIDO FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTACONTABIL, :CODCONTA;
    CONTACONTABIL = CODCONTA || '-' || CONTACONTABIL;
    VALOR = VALOR + VALORD;
    TIPO = '1-RECEITA';
    if (forma = '1') then 
      forma = 'Dinheiro';
    else if (forma = '2') then 
      forma = 'Cheque';
    else if (forma = '3') then 
      forma = 'Cheque-Pre';
    else if (forma = '4') then 
      forma = 'Boleto';
    else if (forma = '5') then 
      forma = 'Duplicata';
    else if (forma = '6') then 
      forma = 'Cartao Credito';
    else if (forma = '7') then 
      forma = 'Cartao Debito';
    else if (forma = '8') then 
      forma = 'Deposito';
    else if (forma = '9') then 
      forma = 'Debito Automatico';
    else if (forma = 'A') then 
      forma = 'Home-Banking';
    else if (forma = 'B') then 
      forma = 'Doc';
    else if (forma = 'C') then 
      forma = 'Cartorio';
    else if (forma = 'D') then 
      forma = 'Transferência';


    DESCRICAO = '- Juros / Multas';

    ORDEM = 1;
    IF (VALORD > 0.001) THEN
    SUSPEND;
    DESCRICAO = null;
    contacontabil = null;
    VALORD = 0;
    FORMA = null;
    CODCONTA = null;
    N_DOC = null;
  END

  /*************** Fim Juros ********/

  /*   Total de DÃƒÂ©bitos pela MovimentaÃƒÂ§ÃƒÂ£o Financeira    */
  /*                                                    */
  /*                                                    */
  -- Se a busca ÃƒÂ© por caixa entÃƒÂ£o pega o N. Conta Contabil do Caixa pedido
  IF (COD_CAIXA <> 0) THEN
  BEGIN
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    FOR select mov.DATA, SUM(mov.VALORDEBITO), his.HISTORICO, pc.CODREDUZIDO from MOVIMENTOCONT mov
       LEFT OUTER JOIN HISTORICO_CONTAB his on his.COD_CONTAB = mov.CODORIGEM  
       left outer join PLANO PC on pc.CONTA = mov.CONTA
       WHERE pc.CONTA = mov.CONTA and mov.DATA BETWEEN :DTAINI AND :DTAFIM
       and mov.tipoorigem = 'CONTABIL' and pc.CODIGO = :COD_CAIXA group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO 
      INTO :DTAPAGTO, :VALORD, :DESCRICAO, :CODCONTA 
    do begin
      TIPO = '1-RECEITA';
      if (UDF_DIGITS(UDF_LEFT(DESCRICAO,4)) <> '') then 
      begin 
        codP = cast(UDF_DIGITS(UDF_LEFT(DESCRICAO,4)) as integer); 
        select produto from produtos where codproduto = :codP
          into :descricao;
        descricao = ' - ' || descricao;
      end 
      VALOR = VALOR + VALORD;
      ORDEM = 1;
   --   IF (VALORD > 0.001) THEN
        SUSPEND;
      DESCRICAO = null;
      contacontabil = null;
      VALORD = 0;
      CODCONTA = null;
    end
  END
  ELSE
  BEGIN 
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    FOR select mov.DATA, SUM(mov.VALORDEBITO), his.HISTORICO, pc.CODREDUZIDO from MOVIMENTOCONT mov, PLANO pc 
       LEFT OUTER JOIN HISTORICO_CONTAB his on his.COD_CONTAB = mov.CODORIGEM 
       WHERE pc.CONTA = mov.CONTA and  mov.DATA BETWEEN :DTAINI AND :DTAFIM
       and mov.tipoorigem = 'CONTABIL' group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO
      INTO :DTAPAGTO,:VALORD, :DESCRICAO, :CODCONTA 
    do begin
      TIPO = '1-RECEITA';
      if (UDF_DIGITS(UDF_LEFT(DESCRICAO,4)) <> '') then 
      begin 
       codP = cast(UDF_DIGITS(UDF_LEFT(DESCRICAO,4)) as integer); 
       select produto from produtos where codproduto = :codP
          into :descricao;
        descricao = ' - ' || descricao;
      end 
      VALOR = VALOR + VALORD;
      ORDEM = 1;
    --  IF (VALORD > 0.001) THEN
        SUSPEND;
      DESCRICAO = null;
      contacontabil = null;
      VALORD = 0;
      CODCONTA = null;
      ordena = 0;
    end
  END
  /*                                                    */
  /*                                                    */
  /*      Total de CrÃƒÂ©ditos (Saiu) por PAGAMENTOS       */
  /*                                                    */
  /*     16/11/2009                                               */
  FOR SELECT pag.DATACONSOLIDA, CAST(pag.CODFORNECEDOR AS VARCHAR(5)) || '-' ||  forn.NOMEFORNECEDOR, 
    pag.HISTORICO, pag.VALOR_RESTO, pag.CONTACREDITO, pag.FORMAPAGAMENTO, pag.N_DOCUMENTO , pag.perda
    FROM PAGAMENTO pag, FORNECEDOR forn where forn.CODFORNECEDOR = pag.CODFORNECEDOR 
    and pag.DATACONSOLIDA BETWEEN :DTAINI AND :DTAFIM
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
    order by pag.datapagamento
  INTO :DTAPAGTO, :FORN, :DESCRICAO, :VALORC, :CCONTABIL, :FORMA, :N_DOC , :valord
  DO BEGIN
    TIPO = '2-DESPESA';
    SELECT NOME, CODREDUZIDO , CONTA , RATEIO FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTACONTABIL, :CODCONTA ,:CONTA , :RATEIO;
    CONTACONTABIL = CODCONTA || '-' || CONTACONTABIL;

    IF (rateio = 'S' ) THEN
    BEGIN
      SELECT NOME, CODREDUZIDO , CONTA  FROM PLANO WHERE CONTA = plnctamain(:CONTA)
      INTO :CONTACONTABIL, :CODCONTA ,:CONTA;
      CONTACONTABIL =  '-' || CONTACONTABIL;
    END
    VALOR = VALOR - VALORC ;
    IF ((DESCRICAO IS NULL) or (DESCRICAO = '')) THEN
      DESCRICAO = FORN;
    else
      DESCRICAO = FORN || ' - ' || DESCRICAO;
    ORDEM = 2;
    descricao = contacontabil;
    if (forma = '1') then 
      forma = 'Dinheiro';
    else if (forma = '2') then 
      forma = 'Cheque';
    else if (forma = '3') then 
      forma = 'Cheque-Pre';
    else if (forma = '4') then 
      forma = 'Boleto';
    else if (forma = '5') then 
      forma = 'Duplicata';
    else if (forma = '6') then 
      forma = 'Cartao Credito';
    else if (forma = '7') then 
      forma = 'Cartao Debito';
    else if (forma = '8') then 
      forma = 'Deposito';
    else if (forma = '9') then 
      forma = 'Debito Automatico';
    else if (forma = 'A') then 
      forma = 'Home-Banking';
    else if (forma = 'B') then 
      forma = 'Doc';
    else if (forma = 'C') then 
      forma = 'Cartorio';
    else if (forma = 'D') then 
      forma = 'Transferência';

   -- IF (VALORC > 0.001) then
    SUSPEND;
    contacontabil = null;
    VALORC = 0;
    DESCRICAO = null;
    VALORD = 0;
    CODCONTA = null;
    N_DOC = null;

  END
  FORMA = null;
  /*                                                    */
  /*                                                    */
  /*   Total de CrÃƒÂ©ditos pela MovimentaÃƒÂ§ÃƒÂ£o Financeira    */
  /*                                                    */
  /*                                                    */
  -- Se a busca ÃƒÂ© por caixa entÃƒÂ£o pega o N. Conta Contabil do Caixa pedido
  IF (COD_CAIXA <> 0) THEN
  BEGIN
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    FOR select mov.DATA, SUM(mov.VALORCREDITO), his.HISTORICO, pc.CODREDUZIDO from MOVIMENTOCONT mov, 
       HISTORICO_CONTAB his, PLANO pc
       WHERE mov.CODORIGEM = his.COD_CONTAB and pc.CONTA = mov.CONTA AND mov.DATA BETWEEN :DTAINI AND :DTAFIM
       and mov.tipoorigem = 'CONTABIL' and pc.CODIGO = :COD_CAIXA group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO
      INTO :DTAPAGTO, :VALORC, :DESCRICAO, :CODCONTA
    do begin
      TIPO = '2-DESPESA';
      codP = null;
      if (UDF_DIGITS(UDF_LEFT(DESCRICAO,4)) <> '') then 
      begin 
        codP = cast(UDF_DIGITS(UDF_LEFT(DESCRICAO,4)) as integer); 
        select produto from produtos where codproduto = :codP
          into :descricao;
        descricao = ' - ' || descricao;
      end  
      VALOR = VALOR - VALORC;
      ORDEM = 2;
      IF (VALORC > 0.001) THEN
        SUSPEND;
      DESCRICAO = null;
      contacontabil = null;
      VALORD = 0;
      CODCONTA = null;
      CCONTABIL = null;
    end
  END
  ELSE
  BEGIN 
    SELECT CONTA, NOME FROM PLANO WHERE CODIGO = :COD_CAIXA
      INTO :NCONTA, :CAIXA;
    FOR select mov.DATA, SUM(mov.VALORCREDITO), his.HISTORICO, pc.CODREDUZIDO from MOVIMENTOCONT mov
       , HISTORICO_CONTAB his, PLANO pc
       WHERE mov.CODORIGEM = his.COD_CONTAB and pc.CONTA = mov.CONTA AND  mov.DATA BETWEEN :DTAINI AND :DTAFIM
       and mov.tipoorigem = 'CONTABIL' group by mov.DATA, his.HISTORICO, pc.CODREDUZIDO
      INTO :DTAPAGTO, :VALORC, :DESCRICAO, :CODCONTA
    do begin
      TIPO = '2-DESPESA';
      codP = null;
      if (UDF_DIGITS(UDF_LEFT(:DESCRICAO,4)) <> '') then 
      begin 
        codP = cast(UDF_DIGITS(UDF_LEFT(DESCRICAO,4)) as integer); 
        select produto from produtos where codproduto = :codP
          into :descricao;
        descricao = ' - ' || descricao;
      end 
      VALOR = VALOR - VALORC;
      ORDEM = 2;
      IF (VALORC > 0.001) THEN
        SUSPEND;
      DESCRICAO = null;
      contacontabil = null;
      VALORD = 0;
      CODCONTA = null;
      CCONTABIL = null;
    end
  END


END
