CREATE PROCEDURE AFASTAMENTO (
    razao varchar(70),
    dta1 date,
    dta2 date)
returns (
    nome_funcionario varchar(70),
    nome_empresa varchar(70),
    ckq char(1),
    queixap varchar(60),
    data_atendimento date,
    cargo varchar(60),
    funcao varchar(60),
    ckh char(1),
    historicomedico varchar(300),
    datacadastro date,
    apto integer,
    obsficha varchar(300),
    conduta varchar(300),
    tipo char(1))
as
BEGIN
  FOR
    select 
        g.nome_funcionario,
        g.nome_empresa,
        g.ckq,
        g.queixap,
        g.data_atendimento,
        g.cargo,
        g.funcao,
        g.ckh,
        g.historicomedico,
        g.apto,
        g.obsficha,
        g.conduta,
        g.tipo,
        cli.datacadastro
    from guias g
        inner join clientes cli on cli.RA = g.codcliente
    where 
       (  g.data_atendimento between :dta1 and :dta2
       and  g.nome_empresa = :razao
       and g.tipo = 5
       )
    INTO :NOME_FUNCIONARIO,
         :NOME_EMPRESA,
         :CKQ,
         :QUEIXAP,
         :data_atendimento,
         :CARGO,
         :FUNCAO,
         :ckh,
         :historicomedico,
         :apto,
         :obsficha,
         :conduta,
         :tipo, 
         :datacadastro

  DO

  BEGIN
    SUSPEND;
  END
END
