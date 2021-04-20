CREATE OR ALTER PROCEDURE VALOR_RECEBIMENTO (
    pdata date,
    pcodcli integer)
returns (
    codcliente integer,
    codrecebimento integer,
    valorrecebido double precision)
as
BEGIN
  FOR
    select 
        rec.codcliente,
        rec.codrecebimento,
        rec.valorrecebido
    from recebimento rec
    where 
       (
          (rec.codcliente = :pcodcli)
       and 
          (rec.datarecebimento = :pdata )
       and 
          (rec.codrecebimento = 380759)
       )
    INTO :CODCLIENTE,
         :CODRECEBIMENTO,
         :VALORRECEBIDO
  DO
  BEGIN
    SUSPEND;
  END
END
