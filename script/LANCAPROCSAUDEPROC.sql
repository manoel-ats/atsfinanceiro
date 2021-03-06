ALTER PROCEDURE  LANCAPROCSAUDEPROC( DTA1                             DATE
                                   , DTA2                             DATE
                                   , DTAV1                            DATE
                                   , DTAV2                            DATE
                                   , CLIENTE                          INTEGER
                                   , CLIENTEPROC                      INTEGER
                                   , CONTADEBITO                      INTEGER
                                   , FORNECEDOR                       INTEGER
                                   , CODCCUSTO                        INTEGER )
RETURNS ( TIT                              VARCHAR( 20 )
        , EMISSAO                          DATE
        , VENCE                            DATE
        , ASSOCTITULAR                     VARCHAR( 60 )
        , CODTITULAR                       VARCHAR( 15 )
        , ASSOCDEPENDENTE                  VARCHAR( 60 )
        , CODDEPENDENTE                    VARCHAR( 15 )
        , CONTRATADO                       VARCHAR( 60 )
        , CODCONTRATADO                    INTEGER
        , CODCONTA                         VARCHAR( 15 )
        , CONTA                            VARCHAR( 200 )
        , HIST                             VARCHAR( 150 )
        , VLRREC                           DOUBLE PRECISION
        , VLRPAGTO                         DOUBLE PRECISION
        , CODREC                           INTEGER
        , CODPAG                           INTEGER
        , CODMOVDET                        INTEGER
        , CODVEN                           INTEGER
        , CODMOVI                          INTEGER
        , FAIXAETARIA                      INTEGER
        , ORDEM                            VARCHAR( 15 )
        , N_BOLETO                         VARCHAR( 30 )
        , DATASISTEMA                      DATE
        , OUTRAS_DESP                      DOUBLE PRECISION
        , DATA_ENT_REE                     DATE
        , HISTORICO                        VARCHAR( 150 ) )
AS
declare variable nomeccusto varchar(30);
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
      , ven.outras_desp , ven.data_ent_ree, movd.HISTORICO

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
     into :tit, :emissao, :assocTitular, :vence, :codConta, :conta, :hist,
        :vlrRec, :codContratado, :codDependente, :codRec, :AssocDependente,
        :Contratado, :codMovDet, :codVen, :codMovi, :FaixaEtaria, :ordem , :n_boleto ,:datasistema ,
        :outras_desp , :data_ent_ree ,:HISTORICO
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

