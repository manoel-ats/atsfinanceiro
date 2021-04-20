CREATE PROCEDURE PGTOS (
    codfornecedor integer,
    dataini date,
    datafin date)
returns (
    codpagamento integer,
    titulo varchar(18),
    emissao date,
    datavencimento date,
    valortitulo double precision,
    valor_resto double precision,
    valor_prim_via double precision,
    status char(16),
    datapagamento date,
    valorrecebido double precision,
    via char(4),
    n_documento varchar(20),
    nomefornecedor varchar(50),
    valorrec double precision,
    codcliente integer,
    nomecliente varchar(50),
    codcliente1 integer)
as
declare variable recemissao date;
BEGIN
  FOR
    select pag.CODPAGAMENTO, pag.TITULO, pag.EMISSAO,
     pag.DATAVENCIMENTO, pag.CODFORNECEDOR, pag.VALORTITULO, pag.VALOR_RESTO, pag.VALOR_PRIM_VIA, 
     CASE pag.STATUS WHEN '5-' THEN 'PENDENTE' when '6-' then 'PENDENTE CONTAB.' when '7-' then 'PAGO' 
    when '1-' then 'AGUARDANDO' when '4-' then 'CARTÓRIO' when '2-' then 'ANULADO' when '3-' then 'CANCELADO' END AS STATUS
    , pag.DATAPAGAMENTO, pag.VALORRECEBIDO, pag.VIA, pag.N_DOCUMENTO
     , cli.NOMEFORNECEDOR, sum(pag.VALORTITULO - pag.VALOR_RESTO) as VALORREC from PAGAMENTO pag
     inner join FORNECEDOR cli on cli.CODFORNECEDOR = pag.CODFORNECEDOR
      where pag.codfornecedor = :codfornecedor  and pag.DATAVENCIMENTO between :dataini and :datafin
    group by pag.CODPAGAMENTO, pag.TITULO, pag.EMISSAO, 
     pag.DATAVENCIMENTO, pag.CODFORNECEDOR, pag.VALORTITULO, pag.VALOR_RESTO, pag.VALOR_PRIM_VIA, 
    pag.STATUS
    , pag.DATAPAGAMENTO, pag.VALORRECEBIDO, pag.VIA, pag.N_DOCUMENTO
     , cli.NOMEFORNECEDOR
    INTO :CODPAGAMENTO,
         :TITULO,
         :EMISSAO,
         :DATAVENCIMENTO,
         :CODFORNECEDOR,
         :VALORTITULO,
         :VALOR_RESTO,
         :VALOR_PRIM_VIA,
         :STATUS,
         :DATAPAGAMENTO,
         :VALORRECEBIDO,
         :VIA,
         :N_DOCUMENTO,
         :NOMEFORNECEDOR,
         :VALORREC
  DO
  BEGIN

  FOR
    select 
        rec.codcliente,
        cli.nomecliente,
        rec.valortitulo,
        cli.codcliente,
        rec.datavencimento

    from clientes cli inner join recebimento rec on cli.codcliente = rec.codcliente

     where clientes.codcliente = 0 and recebimento.DATAVENCIMENTO between :dataini and :datafin
    INTO :CODCLIENTE,
         :NOMECLIENTE,
         :VALORTITULO,
         :CODCLIENTE1,
         :datavencimento
  /*
  select  rec.TITULO , rec.CODCLIENTE , rec.DATAVENCIMENTO , rec.valortitulo  from recebimento rec
  inner join clientes cli on cli.CODCLIENTE  = rec.codcliente
  inner join fornecedor forn on forn.CNPJ = cli.CNPJ
  where rec.DATAVENCIMENTO  between :dataini and :datafin
  into :recTITULO ,
       :recCODCLIENTE ,
       :recDATAVENCIMENTO ,
       :recVALORTITULO */
  do
  begin
  end
    SUSPEND;
  END
END
