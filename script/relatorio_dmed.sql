CREATE OR ALTER PROCEDURE RELATORIO_DMED 
returns (
    ra varchar(10),
    tit_dep varchar(50),
    cpf1 varchar(18),
    nomefornecedor varchar(70),
    cnpj varchar(18),
    vlr_mensal double precision,
    vlr_outros double precision,
    vlr_reembolso double precision)
as
BEGIN
  FOR
    select 
        d.ra,d.tit_dep,d.cpf1,d.nomefornecedor,d.cnpj,sum(d.vlr_mensal),sum(d.vlr_outros), sum(d.vlr_reembolso)
    from dmed2010 d
    group by
        d.ra,d.tit_dep,d.cpf1,d.nomefornecedor,d.cnpj

    INTO :ra,:TIT_DEP,:CPF1,:NOMEFORNECEDOR,:CNPJ,:VLR_MENSAL,:VLR_OUTROS,:VLR_REEMBOLSO
  DO
  BEGIN
    SUSPEND;
  END
END
