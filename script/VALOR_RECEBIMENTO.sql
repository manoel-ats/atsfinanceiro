CREATE OR ALTER PROCEDURE VALOR_RECEBIMENTO (
    pdataini date,
    pdatafin date,
    pcodcli integer,
    pcodrecebimento integer,
    grupo_cliente varchar(10))
returns (
    codcliente integer,
    ra varchar(10),
    codrecebimento integer,
    valorrecebido double precision,
    juros double precision,
    valorrecebido_juros double precision,
    nomecliente varchar(60))
as
BEGIN
  FOR
    select 
        rec.codcliente,
        rec.codrecebimento,
        rec.valorrecebido ,
        rec.juros ,
        (rec.valorrecebido + rec.juros ),
        cli.nomecliente ,
        cli.ra
    from recebimento rec
    inner join clientes cli on cli.codcliente = rec.codcliente
    where
       (
          ((rec.codcliente = :pcodcli) or (:pcodcli = 0 ))
       and 
          (rec.dataRecebimento BETWEEN :pdataIni and :pdataFin )
       and 
          ((rec.codrecebimento = :pcodrecebimento) or (:pcodrecebimento = 0))
       and
          (cli.grupo_cliente = :grupo_cliente)

       )
    INTO :CODCLIENTE,
         :CODRECEBIMENTO,
         :VALORRECEBIDO,
         :JUROS,
         :VALORRECEBIDO_JUROS,
         :NOMECLIENTE,
         :ra
  DO
  BEGIN
    SUSPEND;
  END
END
