CREATE OR ALTER PROCEDURE AUDITORIA_C_P_1 (
    dia date,
    dataini date,
    datafin date,
    codalmox integer)
returns (
    titulo varchar(18),
    emissao date,
    dataconsolida date,
    caixa smallint,
    formapagamento char(1),
    datavencimento date,
    codfornecedor integer,
    valortitulo double precision,
    valor_resto double precision,
    valor_prim_via double precision,
    status char(16),
    datapagamento date,
    datainclusao date,
    valorrecebido double precision,
    nomefornecedor varchar(60),
    valorrec double precision,
    perda double precision)
as
declare variable nomeccusto varchar(5);
declare variable x integer;
BEGIN

  for select  distinct(pagamento.codfornecedor )

  from pagamento
  inner join fornecedor on (pagamento.codfornecedor = fornecedor.codfornecedor)
  where  pagamento.datainclusao between :dataini and :datafin  AND pagamento.CODALMOXARIFADO = :codalmox
  order by fornecedor.nomefornecedor

  INTO :CODFORNECEDOR
  do begin

  if(:codfornecedor = 1) then
  begin

  x = 1;
  FOR
    select
    pagamento.titulo,
    pagamento.emissao,
    pagamento.dataconsolida,
    pagamento.caixa,
    pagamento.formapagamento,
    pagamento.datavencimento,
    pagamento.codfornecedor ,
   -- sum(movimentodetalhe.preco),
  --  sum(movimentodetalhe.preco), /*0 , */
  --  sum(movimentodetalhe.preco ),

    pagamento.valortitulo,
    pagamento.valortitulo,
    pagamento.valortitulo,


    CASE pagamento.STATUS WHEN '5-' THEN 'PENDENTE' when '6-' then 'PENDENTE CONTAB.' when '7-' then 'PAGO' when '8-' then 'SUSPENSO' END AS STATUS,
    pagamento.datapagamento,
    pagamento.datainclusao ,
    pagamento.perda,
   sum(movimentodetalhe.preco),
    fornecedor.nomefornecedor

from movimentodetalhe
   inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto)
   inner join plano on (produtos.conta_despesa = plano.conta)
   inner join compra on (movimentodetalhe.codmovimento = compra.codmovimento)
   inner join pagamento on (compra.codcompra = pagamento.codcompra)
   inner join fornecedor on (pagamento.codfornecedor = fornecedor.codfornecedor)
where 
   (
      pagamento.datainclusao between :dataini and :datafin  AND pagamento.CODALMOXARIFADO = :codalmox
   )
    and pagamento.codfornecedor = 1
group by

    pagamento.titulo,
    pagamento.emissao,
    pagamento.dataconsolida,
    pagamento.caixa,
    pagamento.formapagamento,
    pagamento.datavencimento,
    pagamento.codfornecedor ,

    pagamento.valortitulo ,
    pagamento.valortitulo ,
    pagamento.valortitulo ,


    pagamento.STATUS,
    pagamento.datapagamento,
    pagamento.datainclusao ,
    pagamento.perda,
/*    movimentodetalhe.preco, */
    fornecedor.nomefornecedor

    INTO :TITULO,
         :EMISSAO,
         :DATACONSOLIDA,
         :CAIXA,
         :FORMAPAGAMENTO,
         :DATAVENCIMENTO,
         :CODFORNECEDOR ,
         :VALORTITULO,
         :VALOR_RESTO,
         :VALOR_PRIM_VIA ,
         :STATUS,
         :DATAPAGAMENTO,
         :DATAINCLUSAO ,
         :PERDA ,
         :VALORRECEBIDO,
         :NOMEFORNECEDOR
  DO
  BEGIN

   if(status = 'PAGO')then
   begin
   if ( x = 1) then
   VALORRECEBIDO = ( VALORRECEBIDO - perda);
   end

    if((:dia < :datapagamento) or (:dia = :datapagamento)) then
    begin
      if(status = 'PAGO')then
      status = 'PENDENTE';
     if ( x = 1) then
     begin
     valorrec = (valorrecebido + perda);
     end else
      valorrec = (valorrecebido) ;
      valorrecebido = 0;
    end

    if(status = 'PENDENTE')then
    valorrecebido = 0 ;

 if(:status = 'PENDENTE') then
    valorrec = :VALORTITULO ;

 if(status <> 'PAGO')then
    SUSPEND;

    x = x + 1;

    valorrec = 0;
  END
 end

 if(:codfornecedor > 1) then
 begin
  x = 1;
  FOR
    select
    pagamento.titulo,
    pagamento.emissao,
    pagamento.dataconsolida,
    pagamento.caixa,
    pagamento.formapagamento,
    pagamento.datavencimento,
    pagamento.codfornecedor ,
    sum(movimentodetalhe.preco),
    sum(movimentodetalhe.preco), /*0 , */
    sum(movimentodetalhe.preco ),
    CASE pagamento.STATUS WHEN '5-' THEN 'PENDENTE' when '6-' then 'PENDENTE CONTAB.' when '7-' then 'PAGO' when '8-' then 'SUSPENSO' END AS STATUS,
    pagamento.datapagamento,
    pagamento.datainclusao ,
    pagamento.perda,
   sum(movimentodetalhe.preco),
    fornecedor.nomefornecedor

from movimentodetalhe
   inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto)
   inner join plano on (produtos.conta_despesa = plano.conta)
   inner join compra on (movimentodetalhe.codmovimento = compra.codmovimento)
   inner join pagamento on (compra.codcompra = pagamento.codcompra)
   inner join fornecedor on (pagamento.codfornecedor = fornecedor.codfornecedor)
where 
   (
      pagamento.datainclusao between :dataini and :datafin  AND pagamento.CODALMOXARIFADO = :codalmox

      and pagamento.codfornecedor = :codfornecedor
   )

group by

    pagamento.titulo,
    pagamento.emissao,
    pagamento.dataconsolida,
    pagamento.caixa,
    pagamento.formapagamento,
    pagamento.datavencimento,
    pagamento.codfornecedor ,
 /*   movimentodetalhe.preco, */
/*    movimentodetalhe.preco, --0 , */
/*    movimentodetalhe.preco , */
    pagamento.STATUS,
    pagamento.datapagamento,
    pagamento.datainclusao ,
    pagamento.perda,
/*    movimentodetalhe.preco, */
    fornecedor.nomefornecedor

    INTO :TITULO,
         :EMISSAO,
         :DATACONSOLIDA,
         :CAIXA,
         :FORMAPAGAMENTO,
         :DATAVENCIMENTO,
         :CODFORNECEDOR ,
         :VALORTITULO,
         :VALOR_RESTO,
         :VALOR_PRIM_VIA ,
         :STATUS,
         :DATAPAGAMENTO,
         :DATAINCLUSAO ,
         :PERDA ,
         :VALORRECEBIDO,
         :NOMEFORNECEDOR
  DO
  BEGIN

   if(status = 'PAGO')then
   begin
   if ( x = 1) then
   VALORRECEBIDO = ( VALORRECEBIDO - perda);
   end
    if((:dia < :datapagamento) or (:dia = :datapagamento)) then
    begin
      if(status = 'PAGO')then
      status = 'PENDENTE';
     if ( x = 1) then
     begin
     valorrec = (valorrecebido + perda);
     end else
      valorrec = (valorrecebido) ;
      valorrecebido = 0;
    end
    if(status <> 'PAGO')then
    SUSPEND;
    x = x + 1;

    valorrec =0;
  END
END
  end
end
