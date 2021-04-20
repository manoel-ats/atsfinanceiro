CREATE OR ALTER PROCEDURE BUSCA_TR 
returns (
    codcliente integer,
    ra varchar(10),
    razaosocial varchar(50))
as
BEGIN
  FOR
    select distinct 
        dmed_mensalidade.codcliente,
        dmed_mensalidade.ra,
        dmed_mensalidade.razaosocial
    from dmed_mensalidade
    where 
       (
          (dmed_mensalidade.razaosocial = dmed_mensalidade.nomecliente)
       )
       and dmed_mensalidade.codcliente < 10
    INTO :CODCLIENTE,
         :RA,
         :RAZAOSOCIAL
  DO
  BEGIN
    SUSPEND;
  END
END
