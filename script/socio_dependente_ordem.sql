CREATE OR ALTER PROCEDURE SOCIO_DEPENDENTE_ORDEM 
returns (
    nomecliente char(254),
    razaosocial char(254),
    contato varchar(30),
    grupo_cliente varchar(30),
    ra varchar(10),
    datanasc date,
    cod_faixa integer,
    codcliente integer)
as
BEGIN
  FOR
    select 
        udf_collatebr(cli.nomecliente) nomecliente,
        udf_collatebr(cli.razaosocial) razaosocial,
        cli.contato,
        cli.grupo_cliente,
        cli.ra,
        cli.datanasc,
        cli.cod_faixa,
        cli.codcliente
    from clientes cli
    where 
       (
          (cli.grupo_cliente = 'ASH')
       and 
          (cli.status = 0)
       )
   order by
    udf_collatebr(cli.nomecliente),
    udf_collatebr(cli.razaosocial),
    cli.contato

    INTO :NOMECLIENTE,
         :RAZAOSOCIAL,
         :CONTATO,
         :GRUPO_CLIENTE,
         :RA,
         :DATANASC,
         :COD_FAIXA,
         :CODCLIENTE
  DO
  BEGIN
    SUSPEND;
  END
END
