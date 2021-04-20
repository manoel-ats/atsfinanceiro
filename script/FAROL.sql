CREATE PROCEDURE FAROL 
returns (
    ra varchar(10),
    razaosocial varchar(50))
as
BEGIN
  FOR
    select 
        clientes.ra,
        clientes.razaosocial
    from clientes
    where 
       (
          (clientes.grupo_cliente = 'PCMSO')
       and 
          (clientes.status = 0)
       and clientes.segmento = 0
       )
    INTO :RA,
         :RAZAOSOCIAL
  DO
  BEGIN
    SUSPEND;
  END
END
