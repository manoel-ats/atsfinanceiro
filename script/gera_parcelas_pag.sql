CREATE OR ALTER PROCEDURE GERA_PARCELAS_PAG (
    cod_pag integer)
as
declare variable i integer;
declare variable status_venda char(2);
declare variable vlr_resto double precision;
declare variable n_parc integer;
declare variable parc integer;
declare variable parct integer;
declare variable v_codorigem integer;
declare variable data_emissao date;
declare variable data_venc date;
declare variable cod_us smallint;
declare variable cod_cc integer;
declare variable cod_clien integer;
declare variable v_vlrtitulo double precision;
declare variable v_vlrrecebido double precision;
declare variable v_desconto double precision;
declare variable v_juros double precision;
declare variable cod_caixa smallint;
declare variable cod_forn integer;
declare variable vlr_prim_via double precision;
declare variable cod_vend smallint;
declare variable cod_cd integer;
declare variable cod_ccre integer;
declare variable forma char(1);
declare variable n_titulo varchar(18);
declare variable dt_emissao date;
declare variable cod_fornec integer;
declare variable codcliente integer;
declare variable historico varchar(150);
declare variable n_documento varchar(20);
declare variable datainclusao date;
begin
  VLR_RESTO = 0;
   V_VLRTITULO = 0;
   V_DESCONTO = 0;
   V_JUROS = 0;
   V_VLRRECEBIDO = 0;
   N_PARC = 0;
  /* Pegando os dados do título lançado */
    SELECT CODPAGAMENTO, EMISSAO, DATAVENCIMENTO, CODUSUARIO, CODALMOXARIFADO, CAIXA, 
      CODFORNECEDOR, VALOR_PRIM_VIA, VALORRECEBIDO, DESCONTO, JUROS, PARCELAS, CODCOMPRADOR, 
      CONTADEBITO, CONTACREDITO, FORMAPAGAMENTO , TITULO , CODCLIENTE , HISTORICO  , n_documento ,DATAINCLUSAO FROM PAGAMENTO
      where CODPAGAMENTO = :cod_pag
      INTO :V_CODORIGEM, :DATA_EMISSAO, :DATA_VENC, :COD_US, :COD_CC, :COD_CAIXA , :COD_CLIEN,
      :V_VLRTITULO, :V_VLRRECEBIDO, :V_DESCONTO, :V_JUROS, :PARC, :COD_VEND, :COD_CD, :COD_CCRE, :FORMA ,
      :n_titulo ,:codcliente ,:HISTORICO, :n_documento ,:DATAINCLUSAO ;
      i = 1;
      N_PARC = PARC;
      PARCT = PARC;
      status_venda = '7-';
      /* Uso este IF para ver se foi pagamento avista, se foi só muda o status e datarecebimento */
      if (:V_VLRRECEBIDO = :V_VLRTITULO) THEN
      begin
        if (:V_VLRRECEBIDO > 0) then
        begin
          UPDATE PAGAMENTO SET STATUS = :status_venda,
            VIA = 1,  dataPAGAMENTO = :DATA_VENC, DATABAIXA = :DATA_VENC
          WHERE CODPAGAMENTO = :V_CODORIGEM;
          i = 1;
          N_PARC = (PARC - 1);
        end
      end
      if (:V_VLRRECEBIDO <> :V_VLRTITULO) THEN
      begin
        /* se é parcelado tem que alterar o valor_resto da primeira parcela */
        VLR_RESTO =  udf_RoundDec(((V_VLRTITULO - V_DESCONTO + V_JUROS)- V_VLRRECEBIDO),2)/N_PARC;
        IF (PARC > 1) THEN
        begin
          UPDATE PAGAMENTO SET
            valor_resto = udf_RoundDec(:VLR_RESTO,2)
            WHERE CODPAGAMENTO = :V_CODORIGEM;
        end

        N_PARC = PARC;
        /* Verifico se houve entrada  gero uma parcela como entrada*/
        if (:V_VLRRECEBIDO > 0) then
        begin
          VLR_RESTO =  udf_RoundDec(((V_VLRTITULO - V_DESCONTO + V_JUROS)- V_VLRRECEBIDO),2);
          UPDATE PAGAMENTO SET
            valor_resto = udf_RoundDec(:VLR_RESTO,2),
            DATAPAGAMENTO = :DATA_VENC,
            STATUS = :status_venda
            WHERE CODPAGAMENTO = :V_CODORIGEM;
          N_PARC = (PARC - 1);
        end
            
        i = 1;
            
            
        while (i < :PARC) do
        begin
          status_venda = '5-';
          if ((i+1) > 1) then
          begin
            VLR_PRIM_VIA = 0;
          end
          /*IF (PARCT = 2) THEN */
          /*   N_PARC = 1; */
              VLR_RESTO =  udf_RoundDec(((V_VLRTITULO - V_DESCONTO + V_JUROS)- V_VLRRECEBIDO),2)/N_PARC;
              
              INSERT INTO PAGAMENTO
                (TITULO, EMISSAO, CODFORNECEDOR, DATAVENCIMENTO, STATUS , VIA, FORMAPAGAMENTO,
                CODALMOXARIFADO, CODCOMPRADOR, CODUSUARIO
                , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, PARCELAS, CAIXA, 
                CONTADEBITO,
                CONTACREDITO, OUTRO_DEBITO, VALORRECEBIDO, DESCONTO, JUROS, FUNRURAL, PERDA,
                TROCA, outro_credito, TITULO , codcliente , HISTORICO,n_documento ,DATAINCLUSAO )
              VALUES
                ((:N_TITULO), :DATA_EMISSAO, :COD_CLIEN, udf_IncMonth(:DATA_VENC, :i),
                :status_venda, CAST((:i + 1) as CHAR(3)),'1', :COD_CC, :COD_VEND, :COD_US,
                'NOW', udf_RoundDec(:VLR_PRIM_VIA,2), udf_RoundDec(:VLR_RESTO,2), udf_RoundDec(:V_VLRTITULO,2), :PARC, :COD_CAIXA, :COD_CD,
                :COD_CCRE, 0,0,0,0,0,0,0,0,:n_titulo, :codcliente,:HISTORICO,:n_documento ,:DATAINCLUSAO );
              i = i + 1;
            end
          end
        end
