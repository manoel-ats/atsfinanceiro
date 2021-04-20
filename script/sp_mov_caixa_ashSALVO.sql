CREATE OR ALTER PROCEDURE SP_MOV_CAIXA_ASH (
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
    ordena smallint)
as
declare variable ccaixa integer;
declare variable codcont integer;
declare variable ccontabil integer;
declare variable n_titulo varchar(15);
declare variable vlinic double precision = 0;
declare variable vlinid double precision = 0;
declare variable vlinit double precision = 0;
declare variable vlini double precision = 0;
declare variable nconta varchar(15);
declare variable forn varchar(80);
declare variable vlinidpre double precision = 0;
declare variable val double precision = 0;
BEGIN
  /* Saldo Inicial */
  /* Total Pago atÃ© esta data */
  valorc = 0;
  valord = 0;
  valor = 0;
  ordena = 0;

  if (:dtaini <> '04/01/2013') then
  begin

  SELECT SUM(pag.VALORRECEBIDO) FROM PAGAMENTO pag

  where pag.DATACONSOLIDA < :DTAINI
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
  INTO :VLINID;

  -- cheque pre
  SELECT SUM(pag.valor_resto) FROM PAGAMENTO pag
  where pag.DATACONSOLIDA < :DTAINI
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0)) and status ='5-'
  INTO :VLINIDPre;

  -- Total Recebido atÃ© esta data
  SELECT SUM(rec.VALORRECEBIDO + rec.desconto + rec.JUROS) FROM RECEBIMENTO rec
    where rec.DATACONSOLIDA < :DTAINI
    and ((rec.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
  INTO :VLINIC;
  IF (VLINID IS NULL) THEN
    VLINID = 0;
  IF (VLINIC IS NULL) THEN
    VLINIC = 0;
 IF (VLINIDPre IS NULL) THEN
    VLINIDPre = 0;
  VLINIT = VLINIC - (VLINID+VLINIDPre);
  -- Movimento feito pelo MovimentaÃ§Ã£o Finaceira(tabela MovimentoCont)
  -- Se a busca Ã© por caixa entÃ£o pega o N. Conta Contabil do Caixa pedido
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

 end else
 begin
  select valor from caixa_fechado where caixa_fechado.data_fim = (:DTAINI-1) and caixa_fechado.cod_caixa = :cod_caixa
  into :val ;
  valor = val;
 end

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
  /*     Total de DÃ©bitos (Entrou) por RECEBIMENTOS     */
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
    if (VALORD < 0) then
    begin
      VALORC = (VALORD * (-1));
      VALORD = 0;
      VALOR = VALOR - VALORC;
    end   
    if (VALORD > 0) then
       VALOR = VALOR + VALORD;
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
      forma = 'Transfer�ncia';


    IF ((DESCRICAO IS NULL) or (DESCRICAO = '')) THEN
      DESCRICAO = FORN;
    else
      DESCRICAO = FORN || ' - ' || DESCRICAO;
    ORDEM = 1;
    /*IF (VALORD > 0.001) THEN */
    SUSPEND;
    DESCRICAO = null;
    contacontabil = null;
    VALORD = 0;
    VALORC = 0;
    FORMA = null;
    CODCONTA = null;
    N_DOC = null;
  END
  /*                                                    */
  /*                                                    */

  /************ Exibir Juros lan�ados quando Receber (ASH) **************/
  /*
  FOR SELECT rec.DATARECEBIMENTO, CAST(rec.CODCLIENTE AS VARCHAR(5)) || '-' ||  cli.NOMECLIENTE, 
    rec.HISTORICO, rec.JUROS, rec.CONTACREDITO, rec.FORMARECEBIMENTO, rec.N_DOCUMENTO  
    FROM RECEBIMENTO rec, CLIENTES cli where cli.CODCLIENTE = rec.CODCLIENTE 
    and rec.DATARECEBIMENTO BETWEEN :DTAINI AND :DTAFIM
    and ((rec.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
    order by rec.dataRECEBImento
  */
   FOR SELECT rec.DATARECEBIMENTO,
    rec.HISTORICO, sum(rec.JUROS), rec.CONTACREDITO, rec.FORMARECEBIMENTO, rec.N_DOCUMENTO
    FROM RECEBIMENTO rec, CLIENTES cli where cli.CODCLIENTE = rec.CODCLIENTE 
    and rec.DATARECEBIMENTO BETWEEN :DTAINI AND :DTAFIM
    and ((rec.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
    group by
    rec.DATARECEBIMENTO,rec.HISTORICO, rec.CONTACREDITO, rec.FORMARECEBIMENTO,
    rec.N_DOCUMENTO

  INTO :DTAPAGTO,:DESCRICAO, :VALORD, :CCONTABIL, :FORMA, :N_DOC
  DO BEGIN
    SELECT NOME, CODREDUZIDO FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTACONTABIL, :CODCONTA;
    CONTACONTABIL = CODCONTA || '-' || CONTACONTABIL;
    VALOR = VALOR + VALORD;
 
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
      forma = 'Transfer�ncia';


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

  /*   Total de DÃ©bitos pela MovimentaÃ§Ã£o Financeira    */
  /*                                                    */
  /*                                                    */
  /* Se a busca Ã© por caixa entÃ£o pega o N. Conta Contabil do Caixa pedido */
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
      VALOR = VALOR + VALORD;
      ORDEM = 1;
   /*   IF (VALORD > 0.001) THEN */
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
      VALOR = VALOR + VALORD;
      ORDEM = 1;
    /*  IF (VALORD > 0.001) THEN */
        SUSPEND;
      DESCRICAO = null;
      contacontabil = null;
      VALORD = 0;
      CODCONTA = null;
    end
  END
  /*                                                    */
  /*                                                    */
  /*      Total de CrÃ©ditos (Saiu) por PAGAMENTOS       */
  /*                                                    */
  /*
  FOR SELECT pag.DATACONSOLIDA, CAST(pag.CODFORNECEDOR AS VARCHAR(5)) || '-' ||  forn.NOMEFORNECEDOR, 
    pag.HISTORICO, pag.VALORRECEBIDO + pag.PERDA, pag.CONTACREDITO, pag.FORMAPAGAMENTO, pag.N_DOCUMENTO , pag.perda
    FROM PAGAMENTO pag, FORNECEDOR forn where forn.CODFORNECEDOR = pag.CODFORNECEDOR 
    and pag.DATACONSOLIDA BETWEEN :DTAINI AND :DTAFIM
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
    order by pag.datapagamento
    INTO :DTAPAGTO, :FORN, :DESCRICAO, :VALORC, :CCONTABIL, :FORMA, :N_DOC ,:valord
  */
  FOR SELECT pag.DATACONSOLIDA, CAST(pag.CODFORNECEDOR AS VARCHAR(5)) || '-' ||  forn.NOMEFORNECEDOR, 
    pag.HISTORICO, sum(pag.VALORRECEBIDO + pag.PERDA), pag.CONTACREDITO, pag.FORMAPAGAMENTO, pag.N_DOCUMENTO ,
    sum(pag.perda)
    FROM PAGAMENTO pag, FORNECEDOR forn where forn.CODFORNECEDOR = pag.CODFORNECEDOR 
    and pag.DATACONSOLIDA BETWEEN :DTAINI AND :DTAFIM
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
    group by
    pag.DATACONSOLIDA, pag.N_DOCUMENTO , pag.CODFORNECEDOR , forn.NOMEFORNECEDOR,
    pag.HISTORICO, pag.CONTACREDITO, pag.FORMAPAGAMENTO

  INTO :DTAPAGTO, :FORN, :DESCRICAO, :VALORC, :CCONTABIL, :FORMA, :N_DOC ,:valord
  DO BEGIN
    SELECT NOME, CODREDUZIDO FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTACONTABIL, :CODCONTA;
    CONTACONTABIL = CODCONTA || '-' || CONTACONTABIL;
    VALOR = VALOR - VALORC + valord ;
    IF ((DESCRICAO IS NULL) or (DESCRICAO = '')) THEN
      DESCRICAO = FORN;
    else
      DESCRICAO = FORN || ' - ' || DESCRICAO;
    ORDEM = 2;
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
      forma = 'Transfer�ncia';

   /* IF (VALORC > 0.001) then */
    SUSPEND;
    contacontabil = null;
    VALORC = 0;
    DESCRICAO = null;
    VALORD = 0;
    CODCONTA = null;
    N_DOC = null;

  END
/**************************************************************************************/
                                  /*  cheque pre  */
/**************************************************************************************/
  /*

  FOR SELECT pag.DATACONSOLIDA, CAST(pag.CODFORNECEDOR AS VARCHAR(5)) || '-' ||  forn.NOMEFORNECEDOR ,
    pag.HISTORICO, pag.valor_resto, pag.CONTACREDITO, pag.FORMAPAGAMENTO , pag.N_DOCUMENTO
    FROM PAGAMENTO pag, FORNECEDOR forn where forn.CODFORNECEDOR = pag.CODFORNECEDOR 
    and pag.DATACONSOLIDA BETWEEN :DTAINI AND :DTAFIM
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0)) and pag.status = '5-' and pag.valorrecebido = 0
    order by pag.dataconsolida
  INTO :DTAPAGTO, :FORN, :DESCRICAO, :VALORC, :CCONTABIL, :FORMA, :N_DOC
  */
  FOR SELECT pag.DATACONSOLIDA, CAST(pag.CODFORNECEDOR AS VARCHAR(5)) || '-' ||  forn.NOMEFORNECEDOR ,
    pag.HISTORICO, sum(pag.valor_resto), pag.CONTACREDITO, pag.FORMAPAGAMENTO , pag.N_DOCUMENTO
    FROM PAGAMENTO pag, FORNECEDOR forn where forn.CODFORNECEDOR = pag.CODFORNECEDOR 
    and pag.DATACONSOLIDA BETWEEN :DTAINI AND :DTAFIM
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0)) and pag.status = '5-' and pag.valorrecebido = 0
    group by
    pag.DATACONSOLIDA, pag.CODFORNECEDOR, forn.NOMEFORNECEDOR ,
    pag.HISTORICO, pag.CONTACREDITO, pag.FORMAPAGAMENTO , pag.N_DOCUMENTO
  INTO :DTAPAGTO, :FORN, :DESCRICAO, :VALORC, :CCONTABIL, :FORMA, :N_DOC

  DO BEGIN
    SELECT NOME, CODREDUZIDO FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTACONTABIL, :CODCONTA;
    CONTACONTABIL = CODCONTA || '-' || CONTACONTABIL;
    VALOR = VALOR - VALORC ;
    IF ((DESCRICAO IS NULL) or (DESCRICAO = '')) THEN
      DESCRICAO = FORN;
    else
      DESCRICAO = FORN || ' - ' || DESCRICAO;
    ORDEM = 2;
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
      forma = 'Transfer�ncia';

   /* IF (VALORC > 0.001) then */
    SUSPEND;
    contacontabil = null;
    VALORC = 0;
    DESCRICAO = null ;
    VALORD = 0;
    CODCONTA = null;
    N_DOC = null;

  END

/**************************************************************************************/

  FORMA = null;
  /*                                                    */
  /*                                                    */
  /*   Total de CrÃ©ditos pela MovimentaÃ§Ã£o Financeira    */
  /*                                                    */
  /*                                                    */
  /* Se a busca Ã© por caixa entÃ£o pega o N. Conta Contabil do Caixa pedido */
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
