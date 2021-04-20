CREATE OR ALTER PROCEDURE PAGTOX (
    datai date,
    dataf date,
    n_doc varchar(20),
    n_for integer,
    n_tit varchar(18))
returns (
    dp smallint,
    dup_rec_nf varchar(15),
    titulo varchar(18),
    valortitulo double precision,
    valor_resto double precision,
    valor_prim_via double precision,
    valorrecebido double precision,
    emissao date,
    dataconsolida date,
    caixa smallint,
    formapagamento char(1),
    datavencimento date,
    codfornecedor integer,
    valorrec double precision,
    status char(16),
    datapagamento date,
    datainclusao date,
    via char(4),
    n_documento varchar(20),
    nomefornecedor varchar(60),
    plano varchar(200))
as
BEGIN
  FOR
    select
      rec.dp, rec.dup_rec_nf,  rec.TITULO, rec.EMISSAO,rec.DATACONSOLIDA ,rec.CAIXA , rec.FORMAPAGAMENTO ,
      rec.DATAVENCIMENTO ,rec.CODFORNECEDOR,
      sum(rec.VALORTITULO) as VALORTITULO ,
      sum(rec.VALOR_RESTO) as VALOR_RESTO ,
      sum(rec.VALOR_PRIM_VIA) as VALOR_PRIM_VIA ,
      CASE rec.STATUS WHEN '5-' THEN 'PENDENTE' when '6-' then 'PENDENTE CONTAB.' when '7-' then 'PAGO'  when '8-' then 'SUSPENSO' END AS STATUS,
      rec.DATAPAGAMENTO,rec.DATAINCLUSAO,
      sum(rec.VALORRECEBIDO + CASE when FUNRURAL > 0 then FUNRURAL else 0 end + CASE when JUROS > 0 then JUROS else 0 end) as VALORRECEBIDO,
      rec.VIA, rec.N_DOCUMENTO  , cli.NOMEFORNECEDOR,
      SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC  ,  plano.NOME
    from pagamento rec
    right outer join plano on (rec.caixa = plano.codigo)
    inner join fornecedor cli on (rec.codfornecedor = cli.codfornecedor)
    where
       rec.datavencimento between :datai and :dataf
       and rec.n_documento = :n_doc
       and ((rec.codfornecedor = :n_for) or (:n_for = 9999999))
       and ((rec.titulo = :n_tit) or (:n_tit = 't'))
       and rec.valortitulo > 0
    group by cli.NOMEFORNECEDOR,rec.DATAVENCIMENTO,  rec.CODFORNECEDOR,rec.CAIXA , rec.formapagamento ,
    rec.EMISSAO,  rec.TITULO,   rec.STATUS, rec.DATAPAGAMENTO,   rec.VIA, rec.N_DOCUMENTO,
    rec.dp, rec.dup_rec_nf ,plano.NOME ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO

    INTO :DP,:DUP_REC_NF,:TITULO,:EMISSAO,:DATACONSOLIDA,:CAIXA,:FORMAPAGAMENTO,
         :DATAVENCIMENTO,:CODFORNECEDOR,:VALORTITULO,:VALOR_RESTO,:VALOR_PRIM_VIA,
         :STATUS,:DATAPAGAMENTO,:DATAINCLUSAO,:VALORRECEBIDO,:VIA,:N_DOCUMENTO,
         :NOMEFORNECEDOR,:VALORREC,:PLANO
  DO
  BEGIN
    SUSPEND;
  END
  FOR
    select
      rec.dp, rec.dup_rec_nf,  rec.TITULO, rec.EMISSAO,rec.DATACONSOLIDA ,rec.CAIXA , rec.FORMAPAGAMENTO ,
      rec.DATAVENCIMENTO ,rec.CODFORNECEDOR,
      sum(rec.VALORTITULO) as VALORTITULO ,
      sum(rec.VALOR_RESTO) as VALOR_RESTO ,
      sum(rec.VALOR_PRIM_VIA) as VALOR_PRIM_VIA ,
      CASE rec.STATUS WHEN '5-' THEN 'PENDENTE' when '6-' then 'PENDENTE CONTAB.' when '7-' then 'PAGO'  when '8-' then 'SUSPENSO' END AS STATUS,
      rec.DATAPAGAMENTO,rec.DATAINCLUSAO,
      sum(rec.VALORRECEBIDO + CASE when FUNRURAL > 0 then FUNRURAL else 0 end + CASE when JUROS > 0 then JUROS else 0 end) as VALORRECEBIDO,
      rec.VIA, rec.N_DOCUMENTO  , cli.NOMEFORNECEDOR,
      SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC  ,  plano.NOME
    from pagamento rec
    right outer join plano on (rec.caixa = plano.codigo)
    inner join fornecedor cli on (rec.codfornecedor = cli.codfornecedor)
    where
       rec.datavencimento between :datai and :dataf
       and rec.n_documento = :n_doc
       and ((rec.codfornecedor = :n_for) or (:n_for = 9999999))
       and ((rec.titulo = :n_tit) or (:n_tit = 't'))
       and rec.valortitulo < 0
    group by cli.NOMEFORNECEDOR,rec.DATAVENCIMENTO,  rec.CODFORNECEDOR,rec.CAIXA , rec.formapagamento ,
    rec.EMISSAO,  rec.TITULO,   rec.STATUS, rec.DATAPAGAMENTO,   rec.VIA, rec.N_DOCUMENTO,
    rec.dp, rec.dup_rec_nf ,plano.NOME ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO

    INTO :DP,:DUP_REC_NF,:TITULO,:EMISSAO,:DATACONSOLIDA,:CAIXA,:FORMAPAGAMENTO,
         :DATAVENCIMENTO,:CODFORNECEDOR,:VALORTITULO,:VALOR_RESTO,:VALOR_PRIM_VIA,
         :STATUS,:DATAPAGAMENTO,:DATAINCLUSAO,:VALORRECEBIDO,:VIA,:N_DOCUMENTO,
         :NOMEFORNECEDOR,:VALORREC,:PLANO
  DO
  BEGIN
   SUSPEND;
  END

END
