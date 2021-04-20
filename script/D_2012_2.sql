CREATE OR ALTER PROCEDURE D_2012 (
    titular varchar(50))
returns (
    preco double precision,
    controle smallint,
    cod_comissao integer,
    NOMEFORNECEDOR  VARCHAR( 60 ),
    TIPOFIRMA integer,
    CNPJ VARCHAR( 18 ),
    lote varchar(60),
    codpro varchar(15),
    produto varchar(300),
    valorunitarioatual double precision,
    conta_despesa varchar(15),
    nomecliente varchar(50),
    cli_cpf VARCHAR( 18 )
    )
as
BEGIN
  FOR
    select  sum(movd.preco), movd.controle, movd.cod_comissao,fo.NOMEFORNECEDOR,
     fo.TIPOFIRMA,fo.CNPJ ,movd.lote,prod.codpro,
     prod.produto, prod.valorunitarioatual, prod.conta_despesa,cli.nomecliente ,
     cli.cnpj
    from recebimento rec
       inner join venda ven on (rec.codrecebimento = ven.numerobordero)
       inner join movimentodetalhe movd on (ven.codmovimento = movd.codmovimento)
       inner join produtos prod on (movd.codproduto = prod.codproduto)
       inner join clientes cli on (movd.controle = cli.codcliente)
       left outer join fornecedor fo on (movd.cod_comissao = fo.codfornecedor)
    where rec.datarecebimento between '01/01/12' and '03/31/12'
      and cli.razaosocial = :titular
      and rec.status = '7-'
   group by  movd.controle, movd.cod_comissao,fo.NOMEFORNECEDOR,fo.TIPOFIRMA,fo.CNPJ,
     movd.lote,prod.codpro,
     prod.produto, prod.valorunitarioatual, prod.conta_despesa,cli.nomecliente,cli.cnpj
    INTO :PRECO,:CONTROLE,:COD_COMISSAO,:NOMEFORNECEDOR,:TIPOFIRMA,:CNPJ,:LOTE,:CODPRO,:PRODUTO,
         :VALORUNITARIOATUAL,:CONTA_DESPESA,:NOMECLIENTE ,:CLI_CPF
  DO
  BEGIN
    SUSPEND;
  END
END
