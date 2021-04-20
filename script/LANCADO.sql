CREATE OR ALTER PROCEDURE LANCADO (
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
    codtitular varchar(15),
    tit varchar(20),
    assoctitular varchar(60),
    codrec integer)
as
declare variable nomeccusto varchar(30);
declare variable assocdependente varchar(60);
declare variable coddependente varchar(15);
declare variable contratado varchar(60);
declare variable codcontratado integer;
declare variable codconta varchar(15);
declare variable conta varchar(200);
declare variable hist varchar(150);
declare variable vlrrec double precision;
declare variable vlrpagto double precision;
declare variable codpag integer;
declare variable codmovdet integer;
declare variable codven integer;
declare variable codmovi integer;
declare variable faixaetaria integer;
declare variable ordem varchar(15);
declare variable n_boleto varchar(30);
declare variable datasistema date;
declare variable outras_desp double precision;
declare variable data_ent_ree date;
declare variable emissao date;
declare variable vence date;
BEGIN
  /* Recebimento   */
  for select ven.NOTAFISCAL, ven.DATAVENDA, cli.RAZAOSOCIAL, ven.DATAVENCIMENTO,
    prod.CODPRO, prod.PRODUTO, case when ven.datasistema is null then movd.LOTE else (movd.LOTE || '-DATA RECIBO' ||
    CAST((EXTRACT(DAY FROM ven.datasistema)) AS VARCHAR(2)) || '/' ||
    CAST((EXTRACT(MONTH FROM ven.datasistema)) AS VARCHAR(2)) || '/' ||
    CAST((EXTRACT(YEAR FROM ven.datasistema)) AS VARCHAR(4))) end ,  movd.VALTOTAL,
    movd.cod_Comissao, cli.RA, ven.NUMEROBORDERO, cli.NOMECLIENTE, forn.NOMEFORNECEDOR, 
    movd.CODDETALHE, 
      ven.codVenda, ven.CODMOVIMENTO, cli.COD_FAIXA, prod.PRO_COD ,ven.N_BOLETO ,ven.datasistema
      , ven.outras_desp , ven.data_ent_ree

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
     into :tit, :emissao, :assocTitular, :vence, :codConta, :conta, :hist,
        :vlrRec, :codContratado, :codDependente, :codRec, :AssocDependente, 
        :Contratado, :codMovDet, :codVen, :codMovi, :FaixaEtaria, :ordem , :n_boleto ,:datasistema ,
        :outras_desp , :data_ent_ree
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
