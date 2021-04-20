CREATE OR ALTER PROCEDURE CONFERIR_DET 
returns (
    coddetalhe integer,
    codmovimento integer,
    codproduto integer,
    preco double precision,
    quantidade double precision,
    controle smallint,
    cod_comissao integer,
    lote varchar(60),
    codpro varchar(15),
    produto varchar(300),
    numerobordero integer,
    codvenda integer,
    nomecliente varchar(50))
as
BEGIN
  FOR
    select
        movd.coddetalhe, movd.codmovimento, movd.codproduto,movd.preco,movd.quantidade,
        movd.controle,movd.cod_comissao,movd.lote,prod.codpro,prod.produto,
        ven.numerobordero,ven.codvenda,cli.nomecliente
    from clientes cli
       inner join movimentodetalhe movd on (cli.codcliente = movd.controle)
       inner join produtos prod on (movd.codproduto = prod.codproduto)
       inner join venda ven on (movd.codmovimento = ven.codmovimento)
    where
       numerobordero = 383836

    INTO :CODDETALHE,:CODMOVIMENTO,:CODPRODUTO,:PRECO,:QUANTIDADE,:CONTROLE,:COD_COMISSAO,
         :LOTE,:CODPRO,:PRODUTO,:NUMEROBORDERO,:CODVENDA,:NOMECLIENTE
  DO
  BEGIN
    SUSPEND;
  END
END
