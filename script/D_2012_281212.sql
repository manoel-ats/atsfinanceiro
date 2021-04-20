CREATE OR ALTER PROCEDURE D_2012 (
    titular varchar(60),
    dta1 date,
    dta2 date)
returns (
    preco double precision,
    reembolso double precision,
    precocusto double precision,
    controle smallint,
    cod_comissao integer,
    nomefornecedor varchar(60),
    tipofirma integer,
    cnpj varchar(18),
    lote varchar(60),
    codpro varchar(15),
    produto varchar(300),
    valorunitarioatual double precision,
    conta_despesa varchar(15),
    nomecliente varchar(50),
    cli_cpf varchar(18))
as
BEGIN
  reembolso = 0;
  preco = 0;
  FOR
    select  sum(movd.preco), sum(movd.precocusto), movd.controle, movd.cod_comissao,fo.NOMEFORNECEDOR,
     fo.TIPOFIRMA,fo.CNPJ ,prod.codpro,
     prod.produto, prod.valorunitarioatual, prod.conta_despesa,cli.nomecliente ,
     cli.cnpj
    from recebimento rec
       inner join venda ven on (rec.codrecebimento = ven.numerobordero)
       inner join movimentodetalhe movd on (ven.codmovimento = movd.codmovimento)
       inner join produtos prod on (movd.codproduto = prod.codproduto)
       inner join clientes cli on (movd.controle = cli.codcliente)
       left outer join fornecedor fo on (movd.cod_comissao = fo.codfornecedor)
    where rec.datarecebimento between :dta1 and :dta2
      and cli.razaosocial = :titular
      and rec.status = '7-'
      and rec.codalmoxarifado = 51
      and cli.grupo_cliente = 'ASH'
   group by  movd.controle, movd.cod_comissao,fo.NOMEFORNECEDOR,fo.TIPOFIRMA,fo.CNPJ,
     prod.codpro, prod.produto, prod.valorunitarioatual, prod.conta_despesa,cli.nomecliente,cli.cnpj
    INTO :PRECO,:PRECOCUSTO, :CONTROLE,:COD_COMISSAO,:NOMEFORNECEDOR,:TIPOFIRMA,:CNPJ,:CODPRO,:PRODUTO,
         :VALORUNITARIOATUAL,:CONTA_DESPESA,:NOMECLIENTE ,:CLI_CPF
  DO
  BEGIN

    if(:PRECO < 0)then
    begin
     reembolso = preco ;
     preco = 0;
    end
    SUSPEND;
    reembolso = 0 ;

  END
END
