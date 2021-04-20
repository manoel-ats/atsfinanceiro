CREATE PROCEDURE AUDITORIA_ANA_O (
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
    nome varchar(200),
    dp smallint,
    dup_rec_nf varchar(15),
    codpagamento integer,
    outro_credito double precision,
    contacredito integer,
    datasistema timestamp,
    via char(4),
    n_documento varchar(20),
    historico varchar(150),
    perda double precision)
as
declare variable nomeccusto varchar(5);
BEGIN
  FOR
    select  rec.dp, rec.dup_rec_nf, rec.CODPAGAMENTO, rec.TITULO, rec.EMISSAO,rec.DATACONSOLIDA ,rec.CAIXA , rec.FORMAPAGAMENTO, rec.DATAVENCIMENTO ,
    rec.OUTRO_CREDITO,rec.CODFORNECEDOR, rec.VALORTITULO, rec.VALOR_RESTO, rec.VALOR_PRIM_VIA,rec.CONTACREDITO,rec.DATASISTEMA,
    CASE rec.STATUS WHEN '5-' THEN 'PENDENTE' when '6-' then 'PENDENTE CONTAB.' when '7-' then 'PAGO' when '8-' then 'SUSPENSO' END AS STATUS,
    rec.DATAPAGAMENTO,rec.DATAINCLUSAO,
    sum(rec.VALORRECEBIDO + CASE when FUNRURAL > 0 then FUNRURAL else 0 end + CASE when JUROS > 0 then JUROS else 0 end) as VALORRECEBIDO,
    rec.VIA, rec.N_DOCUMENTO  , cli.NOMEFORNECEDOR,  SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC  ,
    plano.NOME, rec.HISTORICO ,
    sum(rec.perda) as perda
    from PAGAMENTO rec  
    inner join FORNECEDOR cli on cli.CODFORNECEDOR=rec.CODFORNECEDOR  
    inner join PLANO on plano.codigo = rec.contacredito
    where rec.DATAINCLUSAO between :dataini and :datafin  AND CODALMOXARIFADO = :codalmox
    and (plano.contapai <> '4.1.1.09')
    and (plano.contapai <> '4.1.1.10')
    and (plano.contapai <> '4.1.1.11')
    and (plano.contapai <> '4.1.1.12')
    and (plano.contapai <> '4.1.1.13')
   /*
     ((plano.contapai <> '4.1.1.09') or (plano.contapai <> '4.1.1.10')
    or (plano.contapai <> '4.1.1.11') or (plano.contapai <> '4.1.1.12')or (plano.contapai <> '4.1.1.13'))
   */
    group by   cli.NOMEFORNECEDOR, rec.DATAVENCIMENTO, rec.CODFORNECEDOR,rec.CAIXA , rec.formapagamento , rec.EMISSAO, rec.CODPAGAMENTO,rec.OUTRO_CREDITO ,
    rec.TITULO,  rec.VALOR_RESTO, rec.VALORTITULO,  rec.STATUS, rec.DATAPAGAMENTO,  rec.VIA, rec.N_DOCUMENTO, rec.VALOR_PRIM_VIA, rec.dp,
    rec.dup_rec_nf  ,plano.NOME ,rec.CONTACREDITO, rec.HISTORICO ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO ,rec.DATASISTEMA
    INTO :DP,
         :DUP_REC_NF,
         :CODPAGAMENTO,
         :TITULO,
         :EMISSAO,
         :DATACONSOLIDA,
         :CAIXA,
         :FORMAPAGAMENTO,
         :DATAVENCIMENTO,
         :OUTRO_CREDITO,
         :CODFORNECEDOR,
         :VALORTITULO,
         :VALOR_RESTO,
         :VALOR_PRIM_VIA,
         :CONTACREDITO,
         :DATASISTEMA,
         :STATUS,
         :DATAPAGAMENTO,
         :DATAINCLUSAO,
         :VALORRECEBIDO,
         :VIA,
         :N_DOCUMENTO,
         :NOMEFORNECEDOR,
         :VALORREC,
         :NOME,
         :HISTORICO,
         :PERDA
  DO
  BEGIN
    if((:dia < :datapagamento) or (:dia = :datapagamento)) then
    begin
      if(status = 'PAGO')then
      status = 'PENDENTE';
      valorrec = (valorrecebido + perda);
      valorrecebido = 0;

    end
    SUSPEND;
  END
END
