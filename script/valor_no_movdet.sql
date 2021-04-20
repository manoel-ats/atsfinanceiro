CREATE OR ALTER PROCEDURE VALOR_NO_MOVDET 
returns (
    valtotal double precision,
    preco double precision,
    numerobordero integer,
    controle smallint,
    nomecliente varchar(50),
    ra varchar(10))
as
BEGIN
  FOR
    select 
        sum(movd.valtotal),
        sum(movd.preco),
        ven.numerobordero,
        movd.controle,
        cli.nomecliente,
        cli.ra
    from clientes cli
       inner join movimentodetalhe movd on (cli.codcliente = movd.controle)
       inner join movimento mov on (movd.codmovimento = mov.codmovimento)
       inner join venda ven on (mov.codmovimento = ven.codmovimento)
    where 
       (
          (
             (ven.datavencimento between '05/01/2011' and '05/30/2011')
          and 
             (ven.codccusto = 51)
          )
       )
    group by  cli.ra, cli.nomecliente, ven.numerobordero,   movd.controle


    INTO :VALTOTAL,
         :PRECO,
         :NUMEROBORDERO,
         :CONTROLE,
         :NOMECLIENTE,
         :RA
  DO
  BEGIN
    SUSPEND;
  END
END
