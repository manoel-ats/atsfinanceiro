CREATE OR ALTER PROCEDURE TITULAR
returns (
    razaosocial varchar(50)
    )
as
declare variable codcliente integer;
declare variable dataresc date ;
BEGIN
  FOR
    select
        clientes.codcliente,
        clientes.razaosocial,
        clientes.dataresc
    from clientes
    where 
       (
          (clientes.grupo_cliente = 'ASH')
       and 
          ((clientes.dataresc > '12/31/09') or (clientes.dataresc is NULL))
       )
    INTO :CODCLIENTE,
         :RAZAOSOCIAL,
         :DATARESC
  DO
  BEGIN
    SUSPEND;
  END
END
