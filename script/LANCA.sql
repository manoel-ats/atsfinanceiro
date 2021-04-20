CREATE PROCEDURE LANCA (
    dta1 date,
    dta2 date,
    dtav1 date,
    dtav2 date,
    cliente integer,
    clienteproc integer,
    contadebito integer,
    fornecedor integer,
    codccusto integer)
returns (
    assoctitular varchar(60),
    codtitular varchar(15),
    vlrrec double precision,
    codrec integer)
as
declare variable nomeccusto varchar(30);
BEGIN
  /* Recebimento   */
  for select cli.RAZAOSOCIAL, ven.valor, ven.numerobordero
       from Venda ven
      left outer join MovimentoDetalhe movd on movd.codMovimento = ven.CodMovimento
      left outer join Clientes cli on cli.codcliente = movd.controle
      left outer join Produtos prod on prod.CodProduto = movd.CodProduto
      left outer join Fornecedor forn on forn.CodFornecedor = movd.cod_comissao
      where ven.DATAVENDA between :dta1 and :dta2 and
         ven.dataVencimento between :dtaV1 and :dtaV2 and
         ((ven.codCliente = :cliente) or (:cliente = 0)) and
         ((movd.Controle = :clienteProc) or (:clienteProc = 0)) and
         ((prod.CodPro = :contaDebito) or (:contaDebito = 0)) and
         ((ven.CODCCUSTO = :codCcusto) or (:codCcusto = 0)) and
         ((movd.cod_comissao = :fornecedor) or (:fornecedor = 0))
          and cli.RAZAOSOCIAL is not null


     into :assocTitular, :vlrRec, :codRec
   do begin
     if (codccusto = 51) then
       nomeccusto = 'ASH';
     if (codccusto = 52) then
       nomeccusto = 'PCMSO';

     select First 1 RA from clientes where razaosocial = :assocTitular and segmento = 0 and grupo_cliente = :nomeCcusto
       into :codTitular;
     Suspend;
   end
END
