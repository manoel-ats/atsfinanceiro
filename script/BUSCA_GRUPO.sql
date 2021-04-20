CREATE OR ALTER PROCEDURE BUSCA_GRUPO (
    grupo varchar(30))
returns (
    codcliente integer,
    ra varchar(10),
    nomecliente varchar(50),
    status smallint)
as
BEGIN
  FOR
    select 
        codcliente,
        ra,
        udf_collatebr(nomecliente)nomecliente,
        status
    from clientes
    where 
       (
          (grupo_cliente = :grupo)
       and 
          (segmento = 0)
       )
    order by 4 ,3
    INTO :CODCLIENTE,
         :RA,
         :NOMECLIENTE,
         :STATUS
  DO
  BEGIN
    SUSPEND;
  END
END
