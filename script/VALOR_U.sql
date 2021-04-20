CREATE PROCEDURE VALOR (
    pdata date,
    pcodcli integer)
returns (
    sum_of_valtotal double precision,
    sum_of_valor double precision,
    codcliente integer,
    codrecebimento integer,
    valorrecebido double precision)
as
declare variable pcodrecebimento integer;
BEGIN
  FOR
    select 
        sum(movd.valtotal) SUM_OF_VALTOTAL ,
        sum(movd.valtotal) SUM_OF_VALOR,
        ven.numerobordero

    from movimentodetalhe movd
       inner join movimento mov on (movd.codmovimento = mov.codmovimento)
       inner join venda ven on (mov.codmovimento = ven.codmovimento)
     where
       (
          (ven.datavencimento = :pData)
       and 
          (ven.codcliente = :pCodcli)
      -- and
       --   (ven.numerobordero = :pcodrecebimento)
       )
   group by  ven.numerobordero

    INTO :SUM_OF_VALTOTAL,
         :SUM_OF_VALOR ,
         :codrecebimento
  DO
  BEGIN


BEGIN
  FOR
    select * from
        valor_recebimento(:pdata , :pcodcli , :codrecebimento )

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
