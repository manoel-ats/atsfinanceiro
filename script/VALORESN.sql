CREATE OR ALTER PROCEDURE VALORESN 
returns (
    titulo varchar(18),
    codpagamento integer,
    emissao date,
    dataconsolida date,
    caixa smallint,
    formapagamento char(1),
    datavencimento date,
    codfornecedor integer,
    valortitulo double precision,
    valor_resto double precision,
    valor_prim_via double precision,
    datapagamento date,
    datainclusao date,
    valorrecebido double precision,
    via char(4),
    n_documento varchar(20),
    nomefornecedor varchar(60),
    valorrec double precision,
    dup_rec_nf varchar(15),
    dp smallint,
    status varchar(2),
    datasistema timestamp)
as
BEGIN
  FOR
    select distinct rec.CODFORNECEDOR
    from PAGAMENTO rec
    inner join FORNECEDOR cli on cli.CODFORNECEDOR = rec.CODFORNECEDOR
    left outer join PLANO plano on plano.CODIGO = rec.CAIXA  WHERE (rec.N_DOCUMENTO  = 'REM. 000089')
    INTO :CODFORNECEDOR
  DO
  BEGIN
  --  SUSPEND;
  FOR
    select rec.datasistema , rec.status, rec.dp, rec.dup_rec_nf, rec.TITULO,rec.codpagamento, rec.EMISSAO,rec.DATACONSOLIDA ,rec.CAIXA , rec.FORMAPAGAMENTO,
           rec.DATAVENCIMENTO ,rec.CODFORNECEDOR,
           sum(rec.VALORTITULO) as VALORTITULO,
           sum(rec.VALOR_RESTO) as VALOR_RESTO,
           sum(rec.VALOR_PRIM_VIA) as VALOR_PRIM_VIA,
           rec.DATAPAGAMENTO,rec.DATAINCLUSAO,
           sum(rec.VALORRECEBIDO + CASE when FUNRURAL > 0 then FUNRURAL else 0 end + CASE when JUROS > 0 then JUROS else 0 end) as VALORRECEBIDO,
           rec.VIA, rec.N_DOCUMENTO  , cli.NOMEFORNECEDOR,
           SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC
    from PAGAMENTO rec  
    inner join FORNECEDOR cli on cli.CODFORNECEDOR = rec.CODFORNECEDOR  
    left outer join PLANO plano on plano.CODIGO = rec.CAIXA
    WHERE (rec.N_DOCUMENTO  = 'REM. 000089') and rec.VALORTITULO > 0  and  rec.codfornecedor = :CODFORNECEDOR
    group by 
          rec.datasistema , rec.status ,rec.dp, rec.dup_rec_nf ,rec.codpagamento,rec.CODFORNECEDOR,rec.TITULO, rec.EMISSAO,rec.DATACONSOLIDA ,rec.CAIXA , rec.FORMAPAGAMENTO,
          rec.DATAVENCIMENTO , rec.DATAPAGAMENTO,rec.DATAINCLUSAO, rec.VIA, rec.N_DOCUMENTO  , cli.NOMEFORNECEDOR
    INTO :datasistema , :status ,:dp, :dup_rec_nf,:TITULO,:codpagamento,:EMISSAO,:DATACONSOLIDA,:CAIXA,:FORMAPAGAMENTO,:DATAVENCIMENTO,:CODFORNECEDOR,:VALORTITULO,:VALOR_RESTO,
         :VALOR_PRIM_VIA,:DATAPAGAMENTO,:DATAINCLUSAO,:VALORRECEBIDO,:VIA,:N_DOCUMENTO,:NOMEFORNECEDOR,:VALORREC
  DO
  BEGIN
    SUSPEND;
  END
  FOR
    select rec.datasistema , rec.status ,rec.dp, rec.dup_rec_nf ,rec.TITULO, rec.codpagamento ,rec.EMISSAO,rec.DATACONSOLIDA ,rec.CAIXA , rec.FORMAPAGAMENTO,
           rec.DATAVENCIMENTO ,rec.CODFORNECEDOR,
           sum(rec.VALORTITULO) as VALORTITULO,
           sum(rec.VALOR_RESTO) as VALOR_RESTO,
           sum(rec.VALOR_PRIM_VIA) as VALOR_PRIM_VIA,
           rec.DATAPAGAMENTO,rec.DATAINCLUSAO,
           sum(rec.VALORRECEBIDO + CASE when FUNRURAL > 0 then FUNRURAL else 0 end + CASE when JUROS > 0 then JUROS else 0 end) as VALORRECEBIDO,
           rec.VIA, rec.N_DOCUMENTO  , cli.NOMEFORNECEDOR,
           SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC
    from PAGAMENTO rec  
    inner join FORNECEDOR cli on cli.CODFORNECEDOR = rec.CODFORNECEDOR  
    left outer join PLANO plano on plano.CODIGO = rec.CAIXA
    WHERE (rec.N_DOCUMENTO  = 'REM. 000089') and rec.VALORTITULO < 0  and  rec.codfornecedor = :CODFORNECEDOR
    group by 
          rec.datasistema , rec.status ,rec.dp, rec.dup_rec_nf, rec.codpagamento ,rec.CODFORNECEDOR,rec.TITULO, rec.EMISSAO,rec.DATACONSOLIDA ,rec.CAIXA , rec.FORMAPAGAMENTO,
          rec.DATAVENCIMENTO ,rec.DATAPAGAMENTO,rec.DATAINCLUSAO, rec.VIA, rec.N_DOCUMENTO  , cli.NOMEFORNECEDOR
    INTO :datasistema , :status ,:dp, :dup_rec_nf ,:TITULO,:codpagamento ,:EMISSAO,:DATACONSOLIDA,:CAIXA,:FORMAPAGAMENTO,:DATAVENCIMENTO,:CODFORNECEDOR,:VALORTITULO,:VALOR_RESTO,
         :VALOR_PRIM_VIA,:DATAPAGAMENTO,:DATAINCLUSAO,:VALORRECEBIDO,:VIA,:N_DOCUMENTO,:NOMEFORNECEDOR,:VALORREC
  DO
  BEGIN
    SUSPEND;
  END
  END
END
