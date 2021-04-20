CREATE OR ALTER PROCEDURE AUDITORIA_CONTAS_1 (
    dia date,
    dataini date,
    datafin date,
    codalmox integer)
returns (
    valortitulo double precision,
    valor_resto double precision,
    valor_prim_via double precision,
    status char(16),
    valorrecebido double precision,
    valorrec double precision,
    perda double precision,
    nome varchar(50),
    contapai varchar(50),
    nome1 varchar(50))
as
declare variable datapagamento date;
declare variable x integer;
BEGIN
  X = 1 ;
  FOR
    select
     movimentodetalhe.PRECO
   , movimentodetalhe.PRECO
   , movimentodetalhe.PRECO
   , CASE pagamento.STATUS WHEN '5-' THEN 'PENDENTE' when '6-' then 'PENDENTE CONTAB.' when '7-' then 'PAGO' when '8-' then 'SUSPENSO' END AS STATUS

   , movimentodetalhe.PRECO --, pagamento.valorrecebido
   , 0 --movimentodetalhe.PRECO --, pagamento.valorrecebido
   , pagamento.perda

   , plano.nome
   , plano.contapai
   , pagamento.datapagamento

     from movimentodetalhe
    /*
    sum(rec.VALORTITULO) as VALORTITULO ,sum(rec.VALOR_RESTO) as VALOR_RESTO ,
    sum(rec.VALOR_PRIM_VIA) as VALOR_PRIM_VIA ,
    CASE rec.STATUS WHEN '5-' THEN 'PENDENTE' when '6-' then 'PENDENTE CONTAB.' when '7-' then 'PAGO' when '8-' then 'SUSPENSO' END AS STATUS,
    rec.DATAPAGAMENTO, sum(rec.VALORRECEBIDO ) as VALORRECEBIDO,
     sum(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC , sum(rec.perda) as perda
   --  ,    pl.nome , pl.contapai
    from PAGAMENTO rec  
   -- inner join PLANO pl on pl.codigo = rec.contacredito
 --  inner join produtos po on
   */
   inner join compra on (movimentodetalhe.codmovimento = compra.codmovimento)
   inner join pagamento on (compra.codcompra = pagamento.codcompra)
   inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto)
   inner join plano on (produtos.conta_despesa = plano.conta)
 -- where movimentodetalhe.codmovimento = 133583
    where pagamento.DATAINCLUSAO between :dataini and :datafin  AND pagamento.CODALMOXARIFADO = :codalmox -- and pagamento.codfornecedor = 52
 --  and  movimentodetalhe.codmovimento = 133583
 --   and ((plano.contapai = '4.1.1.09') or (plano.contapai = '4.1.1.10') or (plano.contapai = '4.1.1.11') or (plano.contapai = '4.1.1.12')or (plano.contapai = '4.1.1.13'))
--    group by -- pl.contapai,
--    rec.STATUS, rec.DATAPAGAMENTO --,pl.nome
    INTO :VALORTITULO,
         :VALOR_RESTO,
         :VALOR_PRIM_VIA,
         :STATUS , --,:DATAPAGAMENTO,

         :VALORRECEBIDO,
         :VALORREC ,
         :PERDA ,

         :NOME ,
         :CONTAPAI,
         :DATAPAGAMENTO
  DO
  BEGIN

  for select p.nome from plano p where  p.conta = :CONTAPAI
  into :nome1
  do 
  begin

      if(status = 'PAGO')then
   begin
   if ( x = 1) then
   VALORRECEBIDO = ( VALORRECEBIDO - perda);
   end

    if((:dia < :datapagamento) or (:dia = :datapagamento)) then
    begin
      if(status = 'PAGO')then
      status = 'PENDENTE';

      if ( x = 1 ) then
      begin
        valorrec = (valorrecebido + perda);
      end else
        valorrec = (valorrecebido );

      valorrecebido = 0;

    end

    SUSPEND;
    X = X + 1 ;

  END
  end
END
