CREATE OR ALTER PROCEDURE AUDITORIA_ANA_C_1 (
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
    codpagamento integer,
    perda double precision)
as
declare variable nomeccusto varchar(5);
declare variable x integer;
declare variable via integer;
BEGIN

  for select distinct( pagamento.codfornecedor)

  from pagamento
 -- inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto)
 -- inner join plano on (produtos.conta_despesa = plano.conta)
 -- inner join compra on (movimentodetalhe.codmovimento = compra.codmovimento)
 -- inner join pagamento on (compra.codcompra = pagamento.codcompra)
  inner join fornecedor on (pagamento.codfornecedor = fornecedor.codfornecedor)
  where  pagamento.datainclusao between :dataini and :datafin  AND pagamento.CODALMOXARIFADO = :codalmox
 --   and pagamento.codfornecedor = 1  /* so o fornecedor 1 */
 order by fornecedor.nomefornecedor

  INTO :CODFORNECEDOR
  do begin


  if(:codfornecedor = 1) then
  begin

  for select  max(pagamento.via)

  from movimentodetalhe
  inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto)
  inner join plano on (produtos.conta_despesa = plano.conta)
  inner join compra on (movimentodetalhe.codmovimento = compra.codmovimento)
  inner join pagamento on (compra.codcompra = pagamento.codcompra)
  inner join fornecedor on (pagamento.codfornecedor = fornecedor.codfornecedor)
  where  pagamento.datainclusao between :dataini and :datafin  AND pagamento.CODALMOXARIFADO = :codalmox
    and pagamento.codfornecedor = 1
  INTO  :via
  do begin
  end


  x = 1;
  FOR
    select   pagamento.titulo,  pagamento.emissao,   pagamento.dataconsolida, pagamento.caixa, pagamento.formapagamento,
    pagamento.datavencimento,   pagamento.codfornecedor ,
    movimentodetalhe.preco / :via , /*VALORTITULO */
    0 , /*compra.valor, */       /*VALOR_RESTO*/
    movimentodetalhe.preco / :via , /* VALOR _PRIM_VIA */
    CASE pagamento.STATUS WHEN '5-' THEN 'PENDENTE' when '6-' then 'PENDENTE CONTAB.' when '7-' then 'PAGO' when '8-' then 'SUSPENSO' END AS STATUS,
    pagamento.datapagamento,
    pagamento.datainclusao ,
    pagamento.perda,
    movimentodetalhe.preco / :via ,  /*VALORRECEBIDO*/
    fornecedor.nomefornecedor

from movimentodetalhe
   inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto)
   inner join plano on (produtos.conta_despesa = plano.conta)
   inner join compra on (movimentodetalhe.codmovimento = compra.codmovimento)
   inner join pagamento on (compra.codcompra = pagamento.codcompra)
   inner join fornecedor on (pagamento.codfornecedor = fornecedor.codfornecedor)
where 
   ( pagamento.datainclusao between :dataini and :datafin  AND pagamento.CODALMOXARIFADO = :codalmox
    and pagamento.codfornecedor = 1   -- and pagamento.titulo = '37447'
   )

    INTO :TITULO, :EMISSAO, :DATACONSOLIDA,:CAIXA, :FORMAPAGAMENTO,:DATAVENCIMENTO,:CODFORNECEDOR,
         :VALORTITULO,
         :VALOR_RESTO,
         :VALOR_PRIM_VIA,
         :STATUS,:DATAPAGAMENTO,:DATAINCLUSAO ,:PERDA ,
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
                /* hoje */
    if(status = 'PENDENTE')then
    valorrecebido = 0 ;

 if(:status = 'PENDENTE') then
    valorrec = :VALORTITULO ;

 if(:status = 'PAGO') then
    valorrecebido = :VALORTITULO ;
               /* hoje*/
    SUSPEND;
    x = x + 1;

    valorrec =0;
  END
 end /* FIM fornecedor 1 */
             /* outros fornecedores*/
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
    movimentodetalhe.preco,

    0 , /*compra.valor, */

    movimentodetalhe.preco,
    CASE pagamento.STATUS WHEN '5-' THEN 'PENDENTE' when '6-' then 'PENDENTE CONTAB.' when '7-' then 'PAGO' when '8-' then 'SUSPENSO' END AS STATUS,
    pagamento.datapagamento,
    pagamento.datainclusao ,
    pagamento.perda,
    movimentodetalhe.preco,
    fornecedor.nomefornecedor/*, */
  /*  movimentodetalhe.preco */

from movimentodetalhe
   inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto)
   inner join plano on (produtos.conta_despesa = plano.conta)
   inner join compra on (movimentodetalhe.codmovimento = compra.codmovimento)
   inner join pagamento on (compra.codcompra = pagamento.codcompra)
   inner join fornecedor on (pagamento.codfornecedor = fornecedor.codfornecedor)
where 
   (
    /*  (movimentodetalhe.codmovimento = 133583) */
      pagamento.datainclusao between :dataini and :datafin  AND pagamento.CODALMOXARIFADO = :codalmox
      and pagamento.codfornecedor = :codfornecedor
   )

    INTO :TITULO,
         :EMISSAO,
         :DATACONSOLIDA,
         :CAIXA,
         :FORMAPAGAMENTO,
         :DATAVENCIMENTO,
         :CODFORNECEDOR,
         :VALORTITULO,
         :VALOR_RESTO,
         :VALOR_PRIM_VIA,
         :STATUS,
         :DATAPAGAMENTO,
         :DATAINCLUSAO ,
         :PERDA ,
         :VALORRECEBIDO,
         :NOMEFORNECEDOR/*, */
       /*  :VALORREC */
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
    SUSPEND;
    x = x + 1;

    valorrec =0;
  END
END   /*forn >1 */
end  /* SELECT DO FORNECEDOR */
END
