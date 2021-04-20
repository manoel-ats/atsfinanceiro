CREATE PROCEDURE OSTEO (
    razao varchar(70),
    dta1 date,
    dta2 date)
returns (
    nome_funcionario varchar(70),
    nome_empresa varchar(70),
    osteo varchar(100),
    data_atendimento date,
    cargo varchar(60),
    funcao varchar(80))
as
BEGIN
  FOR
    select 
        guias.nome_funcionario,
        guias.nome_empresa,
        guias.aosteo,
        guias.data_atendimento,
        guias.cargo,
        guias.funcao
    from guias
    where 
       (  guias.data_atendimento between :dta1 and :dta2
       and  guias.nome_empresa = :razao
       and guias.aosteo <> ''
       )
    INTO :NOME_FUNCIONARIO,
         :NOME_EMPRESA,
         :OSTEO,
         :data_atendimento,
         :CARGO,
         :FUNCAO
  DO

  BEGIN
    SUSPEND;
  END
END
