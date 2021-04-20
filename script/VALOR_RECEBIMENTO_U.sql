CREATE PROCEDURE VALOR_RECEBIMENTO (
    pdata date,
    pcodcli integer,
    pcodrecebimento integer)
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
          (rec.codrecebimento = :pcodrecebimento)
       )
    INTO :CODCLIENTE,
         :CODRECEBIMENTO,
         :VALORRECEBIDO
  DO
  BEGIN
    SUSPEND;
  END
END
