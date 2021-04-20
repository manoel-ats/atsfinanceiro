CREATE OR ALTER PROCEDURE VALOR (
    pdata date,
    pcodcli integer)
returns (
    sum_of_valtotal double precision,
    sum_of_valor double precision,
    codcliente integer,
    codrecebimento integer,
    valorrecebido double precision)
as
BEGIN
  FOR
    select 
        sum( movd.valtotal ) sum_of_valtotal,
        sum( ven.valor ) sum_of_valor

    from movimentodetalhe movd
       inner join movimento mov on (movd.codmovimento = mov.codmovimento)
       inner join venda ven on (mov.codmovimento = ven.codmovimento)
     where
       (
          (ven.datavencimento = :pData)
       and 
          (ven.codcliente = :pCodcli)
       )
    INTO :SUM_OF_VALTOTAL,
         :SUM_OF_VALOR

  DO
  BEGIN


BEGIN
  FOR
    select * from
        valor_recebimento(:pdata , :pcodcli )

    INTO :CODCLIENTE,
         :CODRECEBIMENTO,
         :VALORRECEBIDO
  DO
  BEGIN
   SUSPEND;
  END
END
  --  SUSPEND;
  END

END
