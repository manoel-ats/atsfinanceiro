CREATE OR ALTER PROCEDURE VALOR_NO_RECEBIMENTO1 (
    dtaini date,
    dtafin date)
returns (
    ra varchar(10),
    nomecliente varchar(50),
    valortitulo double precision,
    codrecebimento integer)
as
BEGIN
  FOR
    select 
        cli.ra,
        cli.nomecliente,
        rec.codrecebimento,
        valortitulo
        
    from clientes cli
       inner join recebimento rec on (cli.codcliente = rec.codcliente)
    where 
       (
          (rec.datavencimento between :dtaini and :dtafin)
       and 
          (rec.codalmoxarifado = 52)
       )
    order by 1
    INTO :RA,
         :NOMECLIENTE,
         :CODRECEBIMENTO,
         :VALORTITULO
         
         
  DO
  BEGIN
    SUSPEND;
  END
end
