CREATE OR ALTER PROCEDURE CONFERIR_S (
    assoc integer,
    dta1 date,
    dta2 date)
returns (
    cod_cliente smallint,
    cod_fornecedor integer,
    nomefornecedor varchar(60),
    cnpj varchar(18),
    tipofirma smallint,
    descricao varchar(60),
    codpro varchar(15),
    produto varchar(300),
    numerobordero integer,
    codvenda1 integer,
    ra1 varchar(10),
    nomecliente1 varchar(50),
    razaosocial varchar(50),
    preco double precision,
    valor_recibo double precision)
as
declare variable codrecebimento integer;
declare variable titulo varchar(18);
declare variable emissao date;
declare variable outro_debito double precision;
declare variable datavencimento date;
declare variable codcliente integer;
declare variable valortitulo double precision;
declare variable valor_resto double precision;
declare variable valor_prim_via double precision;
declare variable status char(2);
declare variable datarecebimento date;
declare variable valorrecebido double precision;
declare variable via char(3);
declare variable historico varchar(150);
declare variable n_documento varchar(20);
declare variable dup_rec_nf varchar(15);
declare variable dp integer;
declare variable bl integer;
declare variable codvenda integer;
declare variable nomecliente varchar(50);
declare variable ra varchar(10);
declare variable desconto double precision;
declare variable coddetalhe integer;
declare variable codmovimento integer;
declare variable codproduto integer;
declare variable quantidade double precision;
BEGIN
  FOR
    select 
        rec.codrecebimento, rec.titulo,rec.emissao,rec.outro_debito,rec.datavencimento,
        rec.codcliente,rec.valortitulo,rec.valor_resto,rec.valor_prim_via,rec.status,
        rec.datarecebimento,rec.valorrecebido,rec.via,rec.historico,rec.n_documento,rec.dup_rec_nf,
        rec.dp,rec.bl,rec.codvenda,cli.nomecliente,cli.razaosocial,cli.ra,rec.desconto
    from recebimento rec
       inner join clientes cli on (rec.codcliente = cli.codcliente)
    where 
       rec.datarecebimento between :dta1 and :dta2
       and rec.status = '7-'
       and rec.valortitulo <> 0
       and rec.codcliente = :ASSOC
       and codalmoxarifado = 51
    order by 22
    INTO :CODRECEBIMENTO,:TITULO,:EMISSAO,:OUTRO_DEBITO,:DATAVENCIMENTO,:CODCLIENTE,:VALORTITULO,
         :VALOR_RESTO,:VALOR_PRIM_VIA,:STATUS,:DATARECEBIMENTO,:VALORRECEBIDO,:VIA,:HISTORICO,
         :N_DOCUMENTO,:DUP_REC_NF,:DP,:BL,:CODVENDA,:NOMECLIENTE,:RAZAOSOCIAL,:RA,:DESCONTO
  DO
  BEGIN
   /* SUSPEND; */
       FOR
      select movd.CODDETALHE , movd.CODMOVIMENTO, movd.CODPRODUTO ,movd.PRECO,movd.QUANTIDADE, movd.CONTROLE,
             movd.COD_COMISSAO , movd.LOTE,  prod.CODPRO, prod.PRODUTO , ven.numerobordero, ven.codvenda ,
             cli.nomecliente ,cli.ra, forn.nomefornecedor , forn.cnpj , forn.tipofirma ,movd.precocusto
      from MOVIMENTODETALHE movd
      inner join PRODUTOS prod on prod.CODPRODUTO = movd.CODPRODUTO
      inner join venda ven on ven.codmovimento = movd.codmovimento
      inner join clientes cli on cli.codcliente = movd.controle
      inner join fornecedor forn on forn.codfornecedor = movd.COD_COMISSAO
      where (NUMEROBORDERO = :CODRECEBIMENTO) AND  prod.PRODUTO <> 'MENSALIDADE'
      INTO :CODDETALHE,:CODMOVIMENTO,:CODPRODUTO,:PRECO,:QUANTIDADE,:COD_CLIENTE,:COD_FORNECEDOR,
           :DESCRICAO,:CODPRO,:PRODUTO,:NUMEROBORDERO,:CODVENDA1,:NOMECLIENTE1,:ra1,:nomefornecedor,:cnpj ,:tipofirma ,:valor_recibo
    DO
    BEGIN
      SUSPEND;
    END
  END



END
