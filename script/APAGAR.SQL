CREATE OR ALTER PROCEDURE PGTOS (
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
    rectitulo varchar(18),
    reccodcliente integer,
    recdatavencimento date,
    recvalortitulo double precision,
    desconto double precision,
    cnpj varchar(18),
    codcliente integer,
    nomecliente varchar(50),
    valortitulo1 double precision,
    codcliente1 integer,
    datavencimento1 date,
    cnpj1 varchar(18))
as
declare variable recemissao date;
BEGIN
  FOR
    select pag.CODPAGAMENTO, pag.TITULO, pag.EMISSAO,
     pag.DATAVENCIMENTO, pag.CODFORNECEDOR, pag.VALORTITULO, pag.VALOR_RESTO, pag.VALOR_PRIM_VIA, pag.DESCONTO,
     CASE pag.STATUS WHEN '5-' THEN 'PENDENTE' when '6-' then 'PENDENTE CONTAB.' when '7-' then 'PAGO' 
    when '1-' then 'AGUARDANDO' when '4-' then 'CARTÓRIO' when '8-' then 'DESCONTO' when '3-' then 'CANCELADO' END AS STATUS
    , pag.DATAPAGAMENTO, pag.VALORRECEBIDO, pag.VIA, pag.N_DOCUMENTO
     , forn.NOMEFORNECEDOR , sum(pag.VALORTITULO - pag.VALOR_RESTO) as VALORREC , forn.CNPJ from PAGAMENTO pag
     inner join FORNECEDOR forn on forn.CODFORNECEDOR = pag.CODFORNECEDOR
      where pag.codfornecedor = :codfornecedor  and pag.DATAVENCIMENTO between :dataini and :datafin AND ((PAG.status = '5-') or (PAG.status = '8-') )
    group by pag.CODPAGAMENTO, pag.TITULO, pag.EMISSAO, 
     pag.DATAVENCIMENTO, pag.CODFORNECEDOR, pag.VALORTITULO, pag.VALOR_RESTO, pag.VALOR_PRIM_VIA, pag.DESCONTO ,
    pag.STATUS
    , pag.DATAPAGAMENTO, pag.VALORRECEBIDO, pag.VIA, pag.N_DOCUMENTO
     , forn.NOMEFORNECEDOR , forn.CNPJ
    INTO :CODPAGAMENTO,
         :TITULO,
         :EMISSAO,
         :DATAVENCIMENTO,
         :CODFORNECEDOR,
         :VALORTITULO,
         :VALOR_RESTO,
         :VALOR_PRIM_VIA,
         :DESCONTO ,
         :STATUS,
         :DATAPAGAMENTO,
         :VALORRECEBIDO,
         :VIA,
         :N_DOCUMENTO,
         :NOMEFORNECEDOR,
         :VALORREC,
         :cnpj

  DO
  BEGIN
    /* FOR
        select 
            rec.codcliente,
            cli.nomecliente,
            rec.valortitulo,
            cli.codcliente,
            rec.datavencimento,
            cli.cnpj
    
        from clientes cli
        inner join fornecedor forn on forn.cnpj = cli.cnpj
        inner join recebimento rec on cli.codcliente = rec.codcliente

         where  rec.DATAVENCIMENTO between :dataini and :datafin and  cli.cnpj = :cnpj
        INTO :CODCLIENTE,
             :NOMECLIENTE,
             :VALORTITULO1,
             :CODCLIENTE1,
             :datavencimento1,
             :cnpj1
      DO
      BEGIN
      END   */
    SUSPEND;
  END
END
