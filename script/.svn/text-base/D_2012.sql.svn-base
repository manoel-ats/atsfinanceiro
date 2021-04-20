CREATE OR ALTER PROCEDURE D_2012 (
    titular varchar(60),
    dta1 date,
    dta2 date)
returns (
    codproduto integer,
    preco double precision,
    pago double precision,
    pr double precision,
    reembolso double precision,
    controle smallint,
    codrecebimento integer,
    datavencimento date,
    cod_comissao integer,
    nomefornecedor varchar(60),
    tipofirma integer,
    cnpj varchar(18),
    valorunitarioatual double precision,
    precocusto double precision,
    ra varchar(10),
    razaosocial varchar(50),
    nomecliente varchar(50),
    cli_cpf varchar(18),
    situacaoescolar varchar(2),
    sexo char(1),
    datanasc date,
    complemento varchar(100))
as
declare variable tot double precision;
declare variable codr integer;
BEGIN
  reembolso = 0;
  preco = 0;
  tot = 0;
  codr = 0 ;
  FOR
    select movd.codproduto , movd.preco,movd.preco, movd.precocusto, movd.controle,rec.codrecebimento,rec.datavencimento,  movd.cod_comissao, 
     udf_Strip(fo.NOMEFORNECEDOR , '/&'),
     fo.TIPOFIRMA,fo.CNPJ , prod.valorunitarioatual,cli.ra , cli.razaosocial,  cli.nomecliente ,
     cli.cnpj , cli.situacaoescolar , cli.sexo ,cli.datanasc , ende.complemento
    from recebimento rec
       inner join venda ven on (rec.codrecebimento = ven.numerobordero)
       inner join movimentodetalhe movd on (ven.codmovimento = movd.codmovimento)
       inner join produtos prod on (movd.codproduto = prod.codproduto)
       inner join clientes cli on (movd.controle = cli.codcliente)
     left outer join enderecocliente ende on cli.codcliente = ende.codcliente
       left outer join fornecedor fo on (movd.cod_comissao = fo.codfornecedor)
    where rec.datarecebimento between :dta1 and :dta2 /* AND ((movd.codproduto = 744) or (movd.codproduto = 745)) */
      and cli.razaosocial = :titular
      and rec.status = '7-'
      and rec.codalmoxarifado = 51
      and cli.grupo_cliente = 'ASH'
   order by  movd.controle,  cli.nomecliente ,  rec.datavencimento, rec.codrecebimento

       INTO :codproduto ,:PRECO,:PR , :PRECOCUSTO, :CONTROLE,:codrecebimento, :datavencimento, :COD_COMISSAO,:NOMEFORNECEDOR,:TIPOFIRMA,:CNPJ,
         :VALORUNITARIOATUAL,:ra, :razaosocial ,:NOMECLIENTE ,:CLI_CPF ,:SITUACAOESCOLAR , :SEXO , :datanasc , :complemento
  DO
  BEGIN
    if (codr <> :codrecebimento) then
    tot = 0;

    if(:PRECO < 0)then
    begin
      reembolso = preco ;
      preco = 0;
      tot = tot + reembolso ;
    end

    if(:PRECO > 0)then
    begin
      cod_comissao = null;
      nomefornecedor = null;
      tipofirma = null;
      cnpj = null;
      valorunitarioatual = null;
      precocusto = 0 ;
    end

    if ((preco + tot)>= 0) then
    begin
      pago = preco + tot;
      tot = 0;
    end
    else  pago = preco ;

    if(reembolso < 0)then
    pago = 0;

    if(pago < 0) then
    pago = 0;


    SUSPEND;
    reembolso = 0 ;
    codr = :codrecebimento;
  END
END
