CREATE OR ALTER PROCEDURE LANCAPROCSAUDEPROC_CONF (
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
    tit varchar(20),
    ra varchar(15),
    codemp varchar(15),
    emissao date,
    vence date,
    assoctitular varchar(60),
    codtitular varchar(15),
    assocdependente varchar(60),
    empresa varchar(20),
    coddependente varchar(15),
    contratado varchar(60),
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
    n_boleto varchar(30),
    datasistema date,
    outras_desp double precision,
    data_ent_ree date)
as
declare variable nomeccusto varchar(30);
BEGIN
  /* Recebimento   */
  for select ven.NOTAFISCAL, cli.ra,  ven.DATAVENDA, cli.RAZAOSOCIAL, ven.DATAVENCIMENTO,
    prod.CODPRO, prod.PRODUTO, case when ven.datasistema is null then movd.LOTE else (movd.LOTE || '-DATA RECIBO' ||
    CAST((EXTRACT(DAY FROM ven.datasistema)) AS VARCHAR(2)) || '/' ||
    CAST((EXTRACT(MONTH FROM ven.datasistema)) AS VARCHAR(2)) || '/' ||
    CAST((EXTRACT(YEAR FROM ven.datasistema)) AS VARCHAR(4))) end ,  movd.VALTOTAL,
    movd.cod_Comissao, cli.RA, udf_Left(cli.RA,5), ven.NUMEROBORDERO, cli.NOMECLIENTE, forn.NOMEFORNECEDOR,
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
          and cli.RAZAOSOCIAL is not null
     into :tit , :ra, :emissao, :assocTitular, :vence, :codConta, :conta, :hist,
        :vlrRec, :codContratado, :codDependente,:empresa ,:codRec, :AssocDependente,
        :Contratado, :codMovDet, :codVen, :codMovi, :FaixaEtaria, :ordem , :n_boleto ,:datasistema ,
        :outras_desp , :data_ent_ree
   do begin 
     if (codccusto = 51) then
       nomeccusto = 'ASH';
     if (codccusto = 52) then
       nomeccusto = 'PCMSO';

     select First 1 RA from  clientes where codcliente = :tit and segmento = 0 and grupo_cliente = :nomeCcusto
       into :codemp;
  
     select First 1 RA  from  clientes where razaosocial = :assocTitular and segmento = 0 and grupo_cliente = :nomeCcusto
       into :codTitular ;

   --  if(codtitular <> codemp ) then
     if(codemp <> empresa ) then
     Suspend; 
   end 
END
