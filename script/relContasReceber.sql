set term ^;
ALTER PROCEDURE  RELCONTASRECEBER
RETURNS ( STATUS                           VARCHAR( 2 )
        , STATUSP                          VARCHAR( 15 )
        , DATARECEBIMENTO                  DATE
        , VALORRECEBIDO                    DOUBLE PRECISION
        , VIA                              CHAR( 10 )
        , N_DOCUMENTO                      VARCHAR( 20 )
        , EMISSAO                          DATE
        , CODRECEBIMENTO                   INTEGER
        , TITULO                           VARCHAR( 30 )
        , DATAVENCIMENTO                   DATE
        , VALOR_RESTO                      DOUBLE PRECISION
        , VALORTITULO                      DOUBLE PRECISION
        , DESCONTO                         DOUBLE PRECISION
        , SALDO                            DOUBLE PRECISION
        , VALORREC                         DOUBLE PRECISION
        , NOMECLIENTE                      VARCHAR( 50 )
        , CODCLIENTE                       INTEGER
        , HISTORICO                        VARCHAR( 150 )
        , CODMOVIMENTO                     INTEGER
        , RAZAOSOCIAL                      VARCHAR( 50 )
        , CAIXA                            INTEGER
        , CODALMOXARIFADO                  INTEGER
        , CODVENDEDOR                      INTEGER
        , CODVENDA                         INTEGER
        , DP                               INTEGER
        , BL                               INTEGER
        , DUP_REC_NF                       VARCHAR( 15 )
        , VALOR_PRIM_VIA                   DOUBLE PRECISION
        , FORMARECEBIMENTO                 CHAR( 1 ) 
        , GERARQREM                        INTEGER
        , DATAGERARQREM                    DATE

)
AS
declare variable tituloatual varchar(20);
begin
   tituloAtual = 'vazio';
   valorTitulo = 0;
   for SELECT rec.TITULO, rec.VALOR_PRIM_VIA, rec.CODCLIENTE 
      FROM RECEBIMENTO rec
      where rec.Valor_prim_via > 0
      into :titulo, valorTitulo, :codcliente
   do begin  
     valor_prim_via = valorTitulo;
     saldo = valorTitulo;
     for SELECT rec.STATUS, rec.DATARECEBIMENTO
      , (rec.VALORRECEBIDO+rec.JUROS+rec.FUNRURAL-rec.PERDA-rec.DESCONTO) as VALORRECEBIDO
      , rec.DESCONTO
      , UDF_PADL(CAST(UDF_TRIM(rec.VIA) AS VARCHAR(2)),0,2) || '/'|| 
      CAST(UDF_PADL(rec.PARCELAS,0,2) as varchar(2)) as VIA
      , rec.N_DOCUMENTO, rec.EMISSAO, rec.CODRECEBIMENTO
      , rec.TITULO, rec.DATAVENCIMENTO, rec.VALOR_RESTO
      , cli.NOMECLIENTE
      ,rec.CODCLIENTE, rec.HISTORICO 
      ,CASE rec.STATUS WHEN '5-' THEN 'PENDENTE' WHEN '7-' THEN 'RECEBIDO'
      WHEN '8-' THEN 'CRED. DUVIDOSO' WHEN '9-' THEN 'EM COBRANCA' 
      WHEN '10' THEN 'NOVO TITULO' WHEN '3-' THEN 'PROTESTO' ELSE 'OUTROS' END AS STATUSP 
      , cli.RAZAOSOCIAL, v.CODMOVIMENTO, rec.CAIXA, rec.CODALMOXARIFADO
      , rec.CODVENDEDOR, rec.DP, rec.DUP_REC_NF, rec.CODVENDA, rec.FORMARECEBIMENTO ,rec.BL , REC.GERARQREM,REC.DATAGERARQREM
      FROM RECEBIMENTO rec 
      left outer join CLIENTES cli on cli.CODCLIENTE = rec.CODCLIENTE 
      left outer join VENDA v on v.CODVENDA = rec.CODVENDA
      where (rec.codcliente = :codCliente)  and rec.titulo = :titulo 
      group by 
        cli.NOMECLIENTE, 
        rec.CODCLIENTE 
        , rec.TITULO,  rec.EMISSAO
        , rec.DATAVENCIMENTO, rec.CODRECEBIMENTO,  rec.VALOR_RESTO, 
        rec.STATUS, rec.DATARECEBIMENTO, rec.VALORRECEBIDO
        , rec.VIA, rec.N_DOCUMENTO 
        , rec.HISTORICO, rec.DESCONTO, rec.JUROS, rec.FUNRURAL, rec.PARCELAS, rec.PERDA
        , cli.RAZAOSOCIAL, v.CODMOVIMENTO, rec.CAIXA, rec.CODALMOXARIFADO
        , rec.CODVENDEDOR, rec.DP, rec.DUP_REC_NF, rec.CODVENDA, rec.FORMARECEBIMENTO ,rec.BL , REC.GERARQREM,REC.DATAGERARQREM
      into :status, :dataRecebimento, :valorRecebido, :desconto,  :via
        , :N_documento, :emissao, :codRecebimento
        , :titulo, :dataVencimento, :valor_resto 
        , :nomeCliente, :codCliente, :historico, :statusP
        , :razaoSocial, :codMovimento, :caixa, codAlmoxarifado
        , :codVendedor, :DP, :DUP_REC_NF, :codVenda, :FORMARECEBIMENTO ,:BL ,:GERARQREM ,:DATAGERARQREM

      do begin
        if (valorRecebido is null) THEN 
          valorRecebido = 0;
        saldo = saldo - valorRecebido;
        if (tituloAtual = titulo) then  
          valorTitulo = null;
        valorRec = valor_resto - valorRecebido;
        suspend;
        tituloAtual = titulo;
        dataRecebimento = null;
        valorRecebido = 0;
        historico = null;
        n_documento = null; 
        codVenda = null;
        codMovimento = null;
      end
   end
end
