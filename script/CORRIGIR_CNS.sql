CREATE OR ALTER PROCEDURE CORRIGIR_CNS 
returns (
    codcliente integer,
    nomecliente varchar(50),
    razaosocial varchar(50),
    cns varchar(18))
as
BEGIN
  FOR
    select codcliente, nomecliente,razaosocial, udf_replace(cns ,' ','.') from clientes where grupo_cliente = 'ASH' and
     cns not LIKE'%.%'
    group by razaosocial, cns ,nomecliente , codcliente
    INTO :CODCLIENTE,
         :NOMECLIENTE,
         :RAZAOSOCIAL,
         :CNS
  DO
  BEGIN
   -- SUSPEND;
    UPDATE clientes SET cns = :CNS where clientes.nomecliente = :NOMECLIENTE AND clientes.codcliente = :CODCLIENTE;
  END
END
