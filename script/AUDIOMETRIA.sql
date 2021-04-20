CREATE PROCEDURE AUDIOMETRIA (
    razao varchar(70),
    dta1 date,
    dta2 date)
returns (
    nome_funcionario varchar(70),
    nome_empresa varchar(70),
    data20 date,
    a char(1),
    i char(1),
    aia char(1),
    ada char(1),
    pair char(1),
    dano char(1),
    alterado20 varchar(60),
    cargo varchar(60),
    funcao varchar(60))
as
BEGIN
  FOR
    select 
        guias.nome_funcionario,
        guias.nome_empresa,
        guias.data20,
        guias.a,
        guias.i,
        guias.aia,
        guias.ada,
        guias.pair,
        guias.dano,
        guias.alterado20,
        guias.cargo,
        guias.funcao
    from guias
    where 
       (
       guias.data20 between :dta1 and :dta2
       and  guias.nome_empresa = :razao
       and guias.data20 is not null
       )
    INTO :NOME_FUNCIONARIO,
         :NOME_EMPRESA,
         :DATA20,
         :A,
         :I,
         :AIA,
         :ADA,
         :PAIR,
         :DANO,
         :ALTERADO20,
         :CARGO,
         :FUNCAO
  DO
  BEGIN
    SUSPEND;
  END
END
