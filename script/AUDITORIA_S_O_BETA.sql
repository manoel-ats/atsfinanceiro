CREATE OR ALTER PROCEDURE AUDITORIA_S_O (
    dia date,
    dataini date,
    datafin date,
    codalmox integer)
returns (
    titulo varchar(18),
    emissao date,
    dataconsolida date,
    caixa smallint,
    formapagamento char(1),
    datavencimento date,
    codfornecedor integer,
    valortitulo double precision,
    valor_resto double precision,
    valor_prim_via double precision,
    status char(16),
    datapagamento date,
    datainclusao date,
    valorrecebido double precision,
    nomefornecedor varchar(60),
    valorrec double precision,
    nome varchar(200))
as
declare variable nomeccusto varchar(5);
BEGIN
  FOR
    select  rec.TITULO, rec.EMISSAO,rec.DATACONSOLIDA ,rec.CAIXA , rec.FORMAPAGAMENTO, rec.DATAVENCIMENTO ,
    rec.CODFORNECEDOR, sum(rec.VALORTITULO) as VALORTITULO ,sum(rec.VALOR_RESTO) as VALOR_RESTO ,
    sum(rec.VALOR_PRIM_VIA) as VALOR_PRIM_VIA ,
    CASE rec.STATUS WHEN '5-' THEN 'PENDENTE' when '6-' then 'PENDENTE CONTAB.' when '7-' then 'PAGO' when '8-' then 'SUSPENSO' END AS STATUS,
    rec.DATAPAGAMENTO,rec.DATAINCLUSAO,
    sum(rec.VALORRECEBIDO + CASE when FUNRURAL > 0 then FUNRURAL else 0 end + CASE when JUROS > 0 then JUROS else 0 end) as VALORRECEBIDO,
     cli.NOMEFORNECEDOR,
    sum(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC  ,plano.NOME
    from PAGAMENTO rec  
    inner join FORNECEDOR cli on cli.CODFORNECEDOR=rec.CODFORNECEDOR  
    inner join PLANO plano on plano.codigo = rec.contacredito
    where rec.DATAINCLUSAO between :dataini and :datafin  AND CODALMOXARIFADO = :codalmox
    and ((plano.contapai <> '4.1.1.09') or (plano.contapai <> '4.1.1.10') or (plano.contapai <> '4.1.1.11') or (plano.contapai <> '4.1.1.12')or (plano.contapai <> '4.1.1.13'))
    group by   cli.NOMEFORNECEDOR,rec.DATAVENCIMENTO,  rec.CODFORNECEDOR,rec.CAIXA , rec.formapagamento , rec.EMISSAO,   rec.TITULO,
    rec.STATUS, rec.DATAPAGAMENTO,rec.N_DOCUMENTO, plano.NOME ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO
    , rec.VALORRECEBIDO , rec.DESCONTO , rec.PERDA
    INTO :TITULO,:EMISSAO,:DATACONSOLIDA,:CAIXA,:FORMAPAGAMENTO,:DATAVENCIMENTO,:CODFORNECEDOR,:VALORTITULO,
         :VALOR_RESTO,:VALOR_PRIM_VIA,:STATUS,:DATAPAGAMENTO,:DATAINCLUSAO,
         :VALORRECEBIDO,:NOMEFORNECEDOR,:VALORREC,:NOME
  DO
  BEGIN
    if(:dia < :datapagamento)then
    begin
      if(status = 'PAGO')then
      status = 'PENDENTE';
      valorrec = valorrecebido;
      valorrecebido = 0;

    end
    SUSPEND;
  END
END
