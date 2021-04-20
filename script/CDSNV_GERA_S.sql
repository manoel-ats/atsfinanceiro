CREATE OR ALTER PROCEDURE CDSNV_GERA_S 
returns (
    razaosocial varchar(50),
    ra varchar(10),
    complemento varchar(100))
as
declare variable codproduto integer;
declare variable preco double precision;
declare variable pago double precision;
declare variable pr double precision;
declare variable reembolso double precision;
declare variable controle smallint;
declare variable codrecebimento integer;
declare variable datavencimento date;
declare variable cod_comissao integer;
declare variable nomefornecedor varchar(60);
declare variable tipofirma integer;
declare variable cnpj varchar(18);
declare variable valorunitarioatual double precision;
declare variable precocusto double precision;
declare variable nomecliente varchar(50);
declare variable cli_cpf varchar(18);
declare variable situacaoescolar varchar(2);
declare variable sexo char(1);
declare variable datanasc date;
declare variable tot double precision;
declare variable codr integer;
BEGIN
  reembolso = 0;
  preco = 0;
  tot = 0;
  codr = 0 ;
  FOR
    select distinct cli.razaosocial, ende.complemento , cli.ra
    from recebimento rec
       inner join venda ven on (rec.codrecebimento = ven.numerobordero)
       inner join movimentodetalhe movd on (ven.codmovimento = movd.codmovimento)
       inner join produtos prod on (movd.codproduto = prod.codproduto)
       inner join clientes cli on (movd.controle = cli.codcliente)
     left outer join enderecocliente ende on cli.codcliente = ende.codcliente
       left outer join fornecedor fo on (movd.cod_comissao = fo.codfornecedor)
    where rec.datarecebimento between '01/01/14' and '12/31/14'  /*:dta1 and :dta2 /* AND ((movd.codproduto = 744) or (movd.codproduto = 745)) * / */
     /* and cli.razaosocial = :titular */
      and rec.status = '7-'
      and rec.codalmoxarifado = 51
      and cli.grupo_cliente = 'ASH'
      and cli.segmento = 0
      and ((ende.complemento not LIKE 'VAREJÃO%') or (ende.complemento is null) or (ende.complemento = '') )
      and clientes.gerabol = 'S'

   order by  movd.controle,  cli.nomecliente ,  rec.datavencimento, rec.codrecebimento

       INTO :razaosocial ,:complemento , :ra
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
