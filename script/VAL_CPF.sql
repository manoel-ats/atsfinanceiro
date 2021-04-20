CREATE OR ALTER PROCEDURE VAL_CPF 
returns (
    nomecliente varchar(50),
    cli_cpf varchar(18))
as
BEGIN
  FOR
    select 
        distinct d_2012tablea.nomecliente,
        d_2012tablea.cli_cpf
    from d_2012tablea
    where  d_2012tablea.cli_cpf <> ''
    INTO :NOMECLIENTE,
         :CLI_CPF
  DO
  BEGIN

    SUSPEND;


  END




END
