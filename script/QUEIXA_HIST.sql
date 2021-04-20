CREATE OR ALTER PROCEDURE QUEIXA_HIST (
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
    historicomedico varchar(300))
as
BEGIN
  FOR
    select 
        guias.nome_funcionario,
        guias.nome_empresa,
        guias.ckq,
        guias.queixap,
        guias.data_atendimento,
        guias.cargo,
        guias.funcao,
        guias.ckh,
        guias.historicomedico
    from guias
    where 
       (  guias.data_atendimento between :dta1 and :dta2
       and  guias.nome_empresa = :razao
       and guias.ckq = 'S'
       )
    INTO :NOME_FUNCIONARIO,
         :NOME_EMPRESA,
         :CKQ,
         :QUEIXAP,
         :data_atendimento,
         :CARGO,
         :FUNCAO,
         :ckh,
         :historicomedico
  DO

  BEGIN
    SUSPEND;
  END
END
