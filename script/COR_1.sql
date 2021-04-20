CREATE PROCEDURE COR_1 
returns (
    codcliente integer,
    inscestadual varchar(24))
as
BEGIN
  FOR
    select 
        clientes1.codcliente,
        clientes1.inscestadual
     from clientes
       inner join clientes1 on (clientes.codcliente = clientes1.codcliente)
    where 
       (
          (clientes.razaosocial = 'MICHAEL VAN DER VEN E OUTRO')
       )
    INTO :CODCLIENTE,
         :INSCESTADUAL

  DO
  BEGIN
    /*SUSPEND; */
    update clientes set INSCESTADUAL  = :INSCESTADUAL where razaosocial = 'MICHAEL VAN DER VEN E OUTRO' and codcliente = :CODCLIENTE;
  END
END
