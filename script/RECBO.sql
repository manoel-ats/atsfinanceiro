CREATE PROCEDURE RECBO (
    clientes integer,
    dataini date,
    datafin date)
returns (
    codcliente integer,
    nomecliente varchar(50),
    valortitulo double precision,
    codcliente1 integer,
    datavencimento date)
as
BEGIN
  FOR
    select 
        rec.codcliente,
        cli.nomecliente,
        rec.valortitulo,
        cli.codcliente,
        rec.datavencimento

    from clientes cli inner join recebimento rec on cli.codcliente = rec.codcliente

     where clientes.codcliente = :clientes  and recebimento.DATAVENCIMENTO between :dataini and :datafin
    INTO :CODCLIENTE,
         :NOMECLIENTE,
         :VALORTITULO,
         :CODCLIENTE1,
         :datavencimento
  DO
  BEGIN
    SUSPEND;
  END
END
