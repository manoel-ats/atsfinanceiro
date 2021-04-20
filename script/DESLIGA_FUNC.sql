CREATE OR ALTER PROCEDURE DESLIGA_FUNC (
    razaosocial varchar(50))
as
declare variable codcliente integer;
declare variable ra varchar(10);
declare variable nomecliente varchar(50);
declare variable grupo_cliente varchar(30);
declare variable dataresc date;
BEGIN
  FOR
    select 
        cli.codcliente,
        cli.ra,
        cli.nomecliente,
        cli.razaosocial,
        cli.grupo_cliente,
        cli.dataresc
    from clientes cli
    where (cli.segmento = 0)
      and (cli.grupo_cliente = 'PCMSO')
      and cli.nomecliente = :razaosocial
    INTO :CODCLIENTE, :RA,:NOMECLIENTE,:RAZAOSOCIAL,:GRUPO_CLIENTE,:DATARESC
  DO
  BEGIN
    update CLIENTES cli  set cli.status = 1 , cli.dataresc = current_date , cli.dtaaltera = current_date
     where cli.razaosocial = :razaosocial and cli.dataresc is null and cli.grupo_cliente = 'PCMSO';

  END
END
