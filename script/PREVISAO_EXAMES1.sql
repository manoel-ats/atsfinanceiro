CREATE or alter PROCEDURE PREVISAO_EXAMES1 (
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
    codcontratado integer,
    codconta varchar(15),
    conta varchar(200),
    hist varchar(150),
    vlrrec double precision,
    codrec integer,
    codmovdet integer,
    codven integer,
    codmovi integer,
    faixaetaria integer,
    ordem varchar(15),
    historico varchar(150),
    cod_comissao integer)
as
declare variable nomeccusto varchar(30);
BEGIN
  /* Recebimento   */
  for select ven.NOTAFISCAL, ven.DATAVENDA, cli.RAZAOSOCIAL, ven.DATAVENCIMENTO, 
    prod.CODPRO, prod.PRODUTO, movd.LOTE, movd.VALTOTAL,
    movd.cod_Comissao, cli.RA, ven.NUMEROBORDERO, cli.NOMECLIENTE,   movd.CODDETALHE,
      ven.codVenda, ven.CODMOVIMENTO, cli.COD_FAIXA, prod.PRO_COD,prod.COD_COMISSAO , movd.historico from Venda ven
      left outer join MovimentoDetalhe movd on movd.codMovimento = ven.CodMovimento 
      left outer join Clientes cli on cli.codcliente = movd.controle 
      left outer join Produtos prod on prod.CodProduto = movd.CodProduto
      where ven.DATAVENDA between :dta1 and :dta2 and
        /* ven.dataVencimento between :dtaV1 and :dtaV2 and  */
         ((ven.codCliente = :cliente) or (:cliente = 0)) and 
         ((movd.Controle = :clienteProc) or (:clienteProc = 0)) and 
         ((prod.CodPro = :contaDebito) or (:contaDebito = 0)) and
         ((ven.CODCCUSTO = :codCcusto) or (:codCcusto = 0))
         and prod.lotes = 1
         and cli.status = 0
     into :tit, :emissao, :assocTitular, :vence, :codConta, :conta, :hist,
        :vlrRec, :codContratado, :codDependente, :codRec, :AssocDependente, 
        :codMovDet, :codVen, :codMovi, :FaixaEtaria, :ordem , :cod_comissao , :historico
   do begin 
     if (codccusto = 51) then
       nomeccusto = 'ASH';
     if (codccusto = 52) then
       nomeccusto = 'PCMSO';
  
     select First 1 RA from clientes where razaosocial = :assocTitular and segmento = 0 and grupo_cliente = :nomeCcusto
       into :codTitular;
     Suspend; 
   end 
end
