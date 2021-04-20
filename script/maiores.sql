CREATE OR ALTER PROCEDURE MAIORES 
returns (
    razaosocial varchar(50),
    nomecliente varchar(50),
    ra varchar(10),
    dataresc date,
    cnpj varchar(18),
    datanasc date,
    idade integer,
    idade1 integer)
as
BEGIN
  FOR
    select 
        clientes.razaosocial,clientes.nomecliente,clientes.ra,clientes.dataresc,clientes.cnpj,clientes.datanasc ,
        udf_Age(clientes.datanasc) as idade, udf_Age2(clientes.datanasc,'12/31/2010') as idade1
    from clientes
    where clientes.grupo_cliente = 'ASH' and  ((clientes.dataresc is null) or (clientes.dataresc >'12/31/2009'))

    order by clientes.ra
    INTO :RAZAOSOCIAL,:NOMECLIENTE,:RA,:DATARESC,:CNPJ,:DATANASC ,:IDADE ,:IDADE1
  DO
  BEGIN
    SUSPEND;
  END
END
