CREATE PROCEDURE LANCAPROCSAUDEEXAMES1 (
    dta1 date,
    dta2 date,
    cliente integer,
    clienteproc integer,
    contadebito integer,
    codccusto integer)
returns (
    tit varchar(20),
    emissao date,
    vence date,
    assoctitular varchar(60),
    codtitular varchar(15),
    assocdependente varchar(60),
    coddependente varchar(15),
    codconta varchar(15),
    conta varchar(200),
    historico varchar(150))
as
declare variable nomeccusto varchar(30);
BEGIN
  /* Recebimento   */
  for select ven.NOTAFISCAL, ven.DATAVENDA, cli.RAZAOSOCIAL, ven.DATAVENCIMENTO,
    prod.CODPRO, prod.PRODUTO,cli.RA, cli.NOMECLIENTE , movd.historico
       from Venda ven
      left outer join MovimentoDetalhe movd on movd.codMovimento = ven.CodMovimento 
      left outer join Clientes cli on cli.codcliente = movd.controle
      left outer join Produtos prod on prod.CodProduto = movd.CodProduto
      where
         ven.DATAVENDA between :dta1 and :dta2 and 
          prod.lotes = 1 and
         ((ven.codCliente = :cliente) or (:cliente = 0)) and 
         ((movd.Controle = :clienteProc) or (:clienteProc = 0)) and 
         ((prod.CodPro = :contaDebito) or (:contaDebito = 0)) and
         ((ven.CODCCUSTO = :codCcusto) or (:codCcusto = 0)) and 
         cli.RAZAOSOCIAL is not null and
         cli.status = 0
     into :tit, :emissao, :assocTitular, :vence, :codConta, :conta,:codDependente, :AssocDependente , :historico
   do begin 

      nomeccusto = 'PCMSO';
  
     select First 1 RA from clientes where razaosocial = :assocTitular and segmento = 0 and grupo_cliente = :nomeCcusto
       into :codTitular;
     Suspend; 
   end 
END
