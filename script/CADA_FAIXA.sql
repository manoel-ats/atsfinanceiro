CREATE OR ALTER PROCEDURE CADA_FAIXA 
returns (
    cod_faixa integer,
    nomecliente varchar(50),
    ra varchar(10))
as
declare variable codigos integer;
BEGIN
  FOR
    select 
        faixa_etaria.codigos
    from faixa_etaria
    where       (faixa_etaria.uso = 'ASH')
    order by  faixa_etaria.codigos
    INTO :CODIGOS
  DO
  BEGIN
/*    SUSPEND; */

 FOR
    select first 1 udf_collatebr(cli.nomecliente) ,  cli.cod_faixa , cli.ra
    from clientes cli
    where 
        cli.grupo_cliente = 'ASH'
       and cli.status = 0
       and cli.cod_faixa < 11
       and cli.cod_faixa =  :codigos
    ORDER by cli.nomecliente
    INTO :NOMECLIENTE ,:COD_FAIXA ,:RA

  DO
  BEGIN
    SUSPEND;
  END
  END

END
