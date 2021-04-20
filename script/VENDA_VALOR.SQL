CREATE OR ALTER PROCEDURE VALOR_VENDA (
    pdataini date,
    pdatafin date,
    pcodcli integer,
    grupo_cliente integer)
returns (
    sum_of_valtotal double precision,
    sum_of_valor double precision,
    sum_venda double precision,
    codcliente integer,
    codrecebimento integer,
    valorrecebido double precision,
    ra varchar(10),
    nomecliente varchar(60))
as
declare variable pcodrecebimento integer;
declare variable nomeccusto varchar(15);
BEGIN

     if (grupo_cliente = 51) then
       nomeccusto = 'ASH';
     if (grupo_cliente = 52) then
       nomeccusto = 'PCMSO';


  FOR
    select 
        sum(movd.valtotal) SUM_OF_VALTOTAL ,
        sum(movd.preco) SUM_OF_VALOR,
        ven.numerobordero,
        sum(ven.valor) sum_venda

    from movimentodetalhe movd
       inner join movimento mov on (movd.codmovimento = mov.codmovimento)
       inner join venda ven on (mov.codmovimento = ven.codmovimento)
     where
       (
          (ven.datavencimento BETWEEN :pdataIni and :pdataFin )
       and
          ((ven.codcliente = :pCodcli) or (:pCodcli = 0))
       and
          (ven.codccusto = :grupo_cliente)
       )
   group by  ven.numerobordero

    INTO :SUM_OF_VALTOTAL,
         :SUM_OF_VALOR ,
         :codrecebimento,
         :sum_venda
  DO
  BEGIN


BEGIN

  FOR
    select CODCLIENTE, CODRECEBIMENTO, VALORRECEBIDO ,nomecliente ,ra from
        valor_recebimento(:pdataini,:pdatafin , :pcodcli , :codrecebimento, :nomeccusto )

    INTO :CODCLIENTE,
         :CODRECEBIMENTO,
         :VALORRECEBIDO,
         :NOMECLIENTE,
         :ra
  DO
  BEGIN

   SUSPEND;
  END
END
  /*  SUSPEND; */
END

END
