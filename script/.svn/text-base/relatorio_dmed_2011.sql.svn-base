CREATE OR ALTER PROCEDURE RELATORIO_DMED (
    razao varchar(50))
returns (
    ra varchar(10),
    tit_dep varchar(50),
    cpf1 varchar(18),
    cpf varchar(18),
    nomefornecedor varchar(70),
    cnpj varchar(18),
    vlr_mensal double precision,
    vlr_outros double precision,
    vlr_ou double precision,
    vlr_ms double precision,
    vlr_reembolso double precision,
    vlr_re double precision,
    idade integer,
    datanasc date,
    vl double precision,
    idade_s integer,
    cpf_s varchar(18))
as
declare variable imprime char(1);
declare variable total double precision;
BEGIN
  vlr_re = 0;
  vlr_ou = 0;
  vlr_ms = 0;
  imprime = 'N';
  total = 0;
  vl = 0 ;
  total = vlr_ms ;

  for select 
        d.ra,d.tit_dep , d.datanasc, udf_Age2(d.datanasc,'12/31/2011'),d.cpf1
    from dmed2011 d
    where d.razaosocial = :razao /*'SERGIO REBELLO BARBUY' /*'PAULO MARIA VAN SCHAIK ' /*'HENRICUS BERNARDUS SCHOLTEN' */
    AND NOMECLIENTE <> ''
    group by
        d.ra,d.tit_dep ,d.datanasc, udf_Age2(d.datanasc,'12/31/2011'),d.cpf1
    into :ra,:TIT_DEP ,:datanasc ,:idade ,:cpf
  do begin

    FOR
    select 
        d.cpf1,d.nomefornecedor,d.cnpj, sum(d.vlr_mensal), sum(d.vlr_outros) , sum(d.vlr_reembolso) /*, d.datanasc, udf_Age2(d.datanasc,'12/31/2011') */
    from dmed2011 d
      where d.ra = :ra and d.tit_dep = :tit_dep
    group by
        d.cpf1,d.nomefornecedor,d.cnpj

    INTO :CPF1,:NOMEFORNECEDOR,:CNPJ,:VLR_MENSAL ,:VLR_OUTROS ,:VLR_REEMBOLSO
  DO
  BEGIN
    if(VLR_REEMBOLSO is null) then
    VLR_REEMBOLSO = 0;
    vlr_re = vlr_re + :VLR_REEMBOLSO ;
    if(VLR_OUTROS is null) then
    VLR_OUTROS = 0;
    vlr_ou = vlr_ou + :VLR_OUTROS;
    if(vlr_mensal is null) then
    vlr_mensal = 0;
    vlr_ms = vlr_ms + :vlr_mensal + vlr_ou;
    total = total + vlr_ms ;
    SUSPEND;
    vlr_re = 0;
    vlr_ou = 0;
    vlr_ms = 0;
    vlr_mensal = 0;
    VLR_OUTROS = 0 ;
    VLR_REEMBOLSO =  null;
    cpf1 =Null ;
    nomefornecedor = null;
    cnpj = null ;
    --vlr_mensal = null ;
    --vlr_re = null ;
  END
  vlr_ms = total ;
  vl = total ;
  idade_s = idade ;
  cpf_s =  cpf;
  SUSPEND;
  idade_s = 0;
  vlr_ms = 0 ;
  cpf_s = null;
  VLR_REEMBOLSO =  null;
  total = 0 ;
  vl = 0 ;
  vlr_re = 0;
  vlr_ou = 0;
  end
END
