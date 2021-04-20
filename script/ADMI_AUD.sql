CREATE PROCEDURE ADMI_AUD (
    dataini date,
    datafin date)
returns (
    numero_guia varchar(20),
    nome_empresa varchar(70),
    nome_funcionario varchar(70),
    exame8 varchar(60),
    data8 date,
    dataf date)
as
BEGIN
  FOR
    select 
        guias.numero_guia,
        guias.nome_empresa,
        guias.nome_funcionario,
        guias.exame8 ,
        guias.data8,
        guias.data8 + 180

    from guias
    where 
       (
          (guias.tipo = '0')
       and 
          (guias.data8 is not null )

     and
       (guias.data8 + 180 between :dataini and :datafin  )


 
       )
    INTO :NUMERO_GUIA,
         :NOME_EMPRESA,
         :NOME_FUNCIONARIO,
         :EXAME8,
         :DATA8,
         :DATAF
  DO
  BEGIN
    SUSPEND;
  END
END
