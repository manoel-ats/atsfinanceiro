CREATE OR ALTER PROCEDURE PREVISAO_EXAMES_T (
    dta1 date,
    dta2 date,
    cliente integer,
    clienteproc integer,
    contadebito integer,
    codccusto integer)
returns (
    ra varchar(15),
    codtitular varchar(15),
    assoctitular varchar(60),
    nomecliente varchar(60),
    codconta varchar(15),
    conta varchar(200),
    emissao date,
    cod_comissao integer,
    hist varchar(150),
    total integer)
as
declare variable nomeccusto varchar(30);
BEGIN
  /* Recebimento   */
  for select  udf_Left(cli.RA,5)as ra,  cli.RAZAOSOCIAL, prod.CODPRO, prod.PRODUTO, ven.DATAVENDA , prod.cod_comissao , count(prod.CODPRO)
     , movd.historico , cli.nomecliente
      from Venda ven 
      left outer join MovimentoDetalhe movd on movd.codMovimento = ven.CodMovimento 
      left outer join Clientes cli on cli.codcliente = movd.controle 
      left outer join Produtos prod on prod.CodProduto = movd.CodProduto
      left outer join Fornecedor forn on forn.CodFornecedor = movd.cod_comissao
      where ven.DATAVENDA between :dta1 and :dta2 and 
         ((ven.codCliente = :cliente) or (:cliente = 0)) and
         ((movd.Controle = :clienteProc) or (:clienteProc = 0)) and 
         ((prod.CodPro = :contaDebito) or (:contaDebito = 0)) and
         ((ven.CODCCUSTO = :codCcusto) or (:codCcusto = 0))
         and prod.lotes = 1
         and cli.status = 0
     group by
        cli.ra, cli.RAZAOSOCIAL, prod.CODPRO, prod.PRODUTO, ven.DATAVENDA , cod_comissao , movd.historico , cli.nomecliente

     /*into :emissao, :assocTitular, :codConta, :conta */
     into :ra , :assocTitular,:codConta,:conta,:emissao , :cod_comissao,:total, :hist , :nomecliente

   do begin

       nomeccusto = 'PCMSO';
  
     select First 1  RA from clientes where razaosocial = :assocTitular and segmento = 0 and grupo_cliente = :nomeCcusto
       into :codTitular;
     Suspend; 
   end 
end
