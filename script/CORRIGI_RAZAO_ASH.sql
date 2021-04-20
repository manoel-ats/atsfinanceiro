CREATE OR ALTER PROCEDURE CORRIGI_RAZAO_ASH (
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
      and (cli.grupo_cliente = 'ASH')
      and cli.nomecliente = :razaosocial
    INTO :CODCLIENTE, :RA,:NOMECLIENTE,:RAZAOSOCIAL,:GRUPO_CLIENTE,:DATARESC
  DO
  BEGIN
    update CLIENTES cli  set cli.razaosocial = :NOMECLIENTE
     where cli.codcliente = :CODCLIENTE and cli.razaosocial = :razaosocial;

  END
END
