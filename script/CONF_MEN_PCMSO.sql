CREATE OR ALTER PROCEDURE CONF_MEN_PCMSO ( 

    dta1 date,
    dta2 date)
returns (
    cod_cliente smallint,
    codpro varchar(15),
    produto varchar(300),
    numerobordero integer,
    codvenda1 integer,
    ra1 varchar(10),
    razaosocial varchar(50),
    preco double precision,
    emissao date,
   datavencimento date,
   idade integer
    )
as
declare variable codrecebimento integer;
declare variable titulo varchar(18);
declare variable empresa varchar(60);
declare variable outro_debito double precision;
declare variable ASSOC integer;
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
    select clientes.razaosocial, clientes.codcliente from clientes where clientes.grupo_cliente = 'PCMSO' and clientes.status = 0
    and clientes.segmento = 0
     INTO :empresa ,:ASSOC
   do begin
 FOR
    select 
        rec.codrecebimento, rec.titulo,rec.emissao,rec.outro_debito,rec.datavencimento,
        rec.codcliente,rec.valortitulo,rec.valor_resto,rec.valor_prim_via,rec.status,
        rec.datarecebimento,rec.valorrecebido,rec.via,rec.historico,rec.n_documento,rec.dup_rec_nf,
        rec.dp,rec.bl,rec.codvenda,cli.nomecliente,cli.razaosocial,cli.ra,rec.desconto
    from recebimento rec
       inner join clientes cli on (rec.codcliente = cli.codcliente)
    where 
       rec.datavencimento between :dta1 and :dta2
     /*  and rec.status = '7-'
       and rec.valortitulo <> 0 */
       and rec.codcliente = :ASSOC
       and codalmoxarifado = 52
    order by rec.codvenda
    INTO :CODRECEBIMENTO,:TITULO,:EMISSAO,:OUTRO_DEBITO,:DATAVENCIMENTO,:CODCLIENTE,:VALORTITULO,
         :VALOR_RESTO,:VALOR_PRIM_VIA,:STATUS,:DATARECEBIMENTO,:VALORRECEBIDO,:VIA,:HISTORICO,
         :N_DOCUMENTO,:DUP_REC_NF,:DP,:BL,:CODVENDA,:NOMECLIENTE,:RAZAOSOCIAL,:RA,:DESCONTO

  DO
  BEGIN

      for select count(cli.codcliente) from CLIENTES cli
      where cli.GRUPO_CLIENTE = 'PCMSO' and status = 0 and cli.razaosocial = :empresa
        and ((cli.STATUS = 0) or ((cli.STATUS = 1) and (cli.DATARESC > :DATAVENCIMENTO)))
        and cli.segmento = 1 and (cli.datacadastro <= :DATAVENCIMENTO)

      group by cli.razaosocial
    into :idade
    do begin
   /* SUSPEND; */
       FOR
      select movd.CODDETALHE , movd.CODMOVIMENTO, movd.CODPRODUTO ,movd.PRECO,movd.QUANTIDADE, movd.CONTROLE,
             prod.CODPRO, prod.PRODUTO , ven.numerobordero, ven.codvenda ,
             cli.ra
      from MOVIMENTODETALHE movd
      inner join PRODUTOS prod on prod.CODPRODUTO = movd.CODPRODUTO
      inner join venda ven on ven.codmovimento = movd.codmovimento
      inner join clientes cli on cli.codcliente = movd.controle
      where (NUMEROBORDERO = :CODRECEBIMENTO) and ((prod.CODPRODUTO = 744) or (prod.CODPRODUTO = 745))
      INTO :CODDETALHE,:CODMOVIMENTO,:CODPRODUTO,:PRECO,:QUANTIDADE,:COD_CLIENTE,
           :CODPRO,:PRODUTO,:NUMEROBORDERO,:CODVENDA1,:ra1
    DO
    BEGIN
      SUSPEND;
    END
  END

end
end
END
