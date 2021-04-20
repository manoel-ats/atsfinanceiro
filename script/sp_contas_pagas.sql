ALTER PROCEDURE SP_CONTAS_PAGAS (
    DTAINI Date,
    DTAFIM Date,
    COD_FOR Integer,
    COD_CCUSTO Smallint,
    COD_CONTA Integer,
    COD_CAIXA Smallint )
RETURNS (
    DTAEMISSAO Date,
    DTAPAGTO Date,
    CODFORN Integer,
    FORNECEDOR Varchar(60),
    DESCRICAO Varchar(150),
    VALORTIT Double precision,
    VALORPAGO Double precision,
    CONTACONTABIL Varchar(200),
    CAIXA Varchar(60),
    CODCONTA Varchar(15) )
AS
DECLARE VARIABLE CCAIXA INTEGER;
DECLARE VARIABLE CCONTABIL INTEGER;
DECLARE VARIABLE N_TITULO VARCHAR(15);
BEGIN
  /* Lista os pagamentos efetuados */ 
  FOR SELECT pag.EMISSAO, pag.DATAPAGAMENTO, pag.CODFORNECEDOR, CAST(pag.CODFORNECEDOR AS VARCHAR(5)) || '-' ||  forn.NOMEFORNECEDOR, 
    pag.HISTORICO, pag.VALORTITULO, (pag.VALORRECEBIDO + pag.JUROS + pag.FUNRURAL) as VR, pag.CONTACREDITO,pag.CAIXA, pag.TITULO  
    FROM PAGAMENTO pag, FORNECEDOR forn where forn.CODFORNECEDOR = pag.CODFORNECEDOR 
    and (pag.DATAPAGAMENTO BETWEEN :DTAINI AND :DTAFIM) and (pag.STATUS = '7-')
    and ((pag.CODFORNECEDOR = :cod_for) or (:cod_for = 9999999))
    and ((pag.CODALMOXARIFADO = :COD_CCUSTO) or (:COD_CCUSTO = 0))
    and ((pag.CONTACREDITO = :COD_CONTA) or (:COD_CONTA = 9999999))
    and ((pag.CAIXA = :COD_CAIXA) or (:COD_CAIXA = 0))
    order by pag.datapagamento
  INTO :DTAEMISSAO, :DTAPAGTO, :CODFORN, :FORNECEDOR, :DESCRICAO, :VALORTIT, :VALORPAGO, :CCONTABIL, :CCAIXA, :N_TITULO
  DO BEGIN
    SELECT SUM(VALOR_PRIM_VIA) FROM PAGAMENTO WHERE TITULO = :N_TITULO AND CODFORNECEDOR = :CODFORN
    INTO :VALORTIT;
    SELECT NOME, CODREDUZIDO FROM PLANO WHERE CODIGO = :CCONTABIL
    INTO :CONTACONTABIL, :CODCONTA;
    CONTACONTABIL = CODCONTA || '-' || CONTACONTABIL;
    SELECT NOME FROM PLANO WHERE CODIGO = :CCAIXA
    INTO :CAIXA;
    SUSPEND;
    contacontabil = null;
    descricao = null;
    ccontabil = null;
    caixa = null;
  END
END