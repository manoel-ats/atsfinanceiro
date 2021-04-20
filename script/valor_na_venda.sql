CREATE OR ALTER PROCEDURE VALOR_NA_VENDA (
    dtaini date,
    dtafin date)
returns (
    ra varchar(10),
    nomecliente varchar(50),
    valor double precision,
    numerobordero integer)
as
BEGIN
  FOR
    select 
        cli.ra,
        cli.nomecliente,
        sum(ven.valor - ven.desconto),
        ven.numerobordero
    from clientes cli
       inner join venda ven on (cli.codcliente = ven.codcliente)
    where 
       (
          (ven.datavencimento between :dtaini and :dtafin)
       and 
          (ven.codccusto = 51)
       )
group by         cli.ra,
        cli.nomecliente,
        ven.numerobordero


    INTO :RA,
         :NOMECLIENTE,
         :VALOR,
         :NUMEROBORDERO
  DO
  BEGIN
    SUSPEND;
  END
END
