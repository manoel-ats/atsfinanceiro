CREATE OR ALTER PROCEDURE D_2012 (
    titular varchar(50))
returns (
    coddetalhe integer,
    codmovimento integer,
    codproduto integer,
    preco double precision,
    controle smallint,
    cod_comissao integer,
    lote varchar(60),
    codpro varchar(15),
    produto varchar(300),
    valorunitarioatual double precision,
    conta_despesa varchar(15),
    numerobordero integer,
    codvenda integer,
    nomecliente varchar(50))
as
BEGIN
  FOR
    select 
        movd.coddetalhe,
        movd.codmovimento,
        movd.codproduto,
        movd.preco,
        movd.controle,
        movd.cod_comissao,
        movd.lote,
        prod.codpro,
        prod.produto,
        prod.valorunitarioatual,
        prod.conta_despesa,
        ven.numerobordero,
        ven.codvenda,
        cli.nomecliente
    from recebimento rec
       inner join venda ven on (rec.codrecebimento = ven.numerobordero)
       inner join movimentodetalhe movd on (ven.codmovimento = movd.codmovimento)
       inner join produtos prod on (movd.codproduto = prod.codproduto)
       inner join clientes cli on (movd.controle = cli.codcliente)
       left outer join fornecedor fo on (movd.cod_comissao = fo.codfornecedor)
    where 
       (
          (rec.datarecebimento between '01/01/12' and '03/31/12')
       and 
          (cli.razaosocial = :titular)
       and 
          (rec.status = '7-')
       )
       order by cli.codcliente
    INTO :CODDETALHE,
         :CODMOVIMENTO,
         :CODPRODUTO,
         :PRECO,
         :CONTROLE,
         :COD_COMISSAO,
         :LOTE,
         :CODPRO,
         :PRODUTO,
         :VALORUNITARIOATUAL,
         :CONTA_DESPESA,
         :NUMEROBORDERO,
         :CODVENDA,
         :NOMECLIENTE
  DO
  BEGIN
    SUSPEND;
  END
END
