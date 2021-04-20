CREATE PROCEDURE CORRIGIR_CNS_1 
returns (
    codcliente integer,
    nomecliente varchar(50),
    razaosocial varchar(50),
    cns varchar(18))
as
BEGIN
  FOR
    select codcliente, nomecliente,razaosocial , /*cns ,*/udf_Copy(cns,0,3) || '.' || udf_Copy(cns,4,4)|| '.' || udf_Copy(cns,8,4)|| '.' || udf_Copy(cns,12,4)
     from clientes where grupo_cliente = 'ASH' and
     cns not LIKE '%.%'
    group by razaosocial, cns ,nomecliente , codcliente
    INTO :CODCLIENTE,
         :NOMECLIENTE,
         :RAZAOSOCIAL,
         :CNS
        -- :PARTE
  DO
  BEGIN
  --  SUSPEND;
    UPDATE clientes SET cns = :CNS where clientes.nomecliente = :NOMECLIENTE AND clientes.codcliente = :CODCLIENTE;
  END
END
