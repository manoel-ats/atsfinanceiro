CREATE OR ALTER PROCEDURE BAIXATITULOSPAG (
    valor double precision,
    funrural double precision,
    juros double precision,
    desconto double precision,
    perda double precision,
    databaixa date,
    datarec date,
    dataconsolida date,
    formarec char(1),
    ndoc varchar(20),
    caixa smallint,
    fornecedor integer,
    status char(2))
as
declare variable vlr double precision = 0;
declare variable vlresto double precision = 0;
declare variable vlratual double precision = 0;
declare variable vlpago double precision = 0;
declare variable vlju double precision = 0;
declare variable vlfun double precision = 0;
declare variable vldesc double precision = 0;
declare variable vlper double precision = 0;
declare variable vljut double precision = 0;
declare variable vlfunt double precision = 0;
declare variable vldesct double precision = 0;
declare variable vlpert double precision = 0;
declare variable codrec integer;
BEGIN
  VLPER = 0; 
  VLJU = 0; 
  VLFUN = 0; 
  VLDESC = 0; 
  /* VALOR = VALOR_RECEBIDO */
  VLRATUAL = (VALOR - FUNRURAL - JUROS + PERDA + DESCONTO);
  VLPAGO = (VALOR - JUROS - FUNRURAL);
  VLJUT = JUROS;
  VLFUNT = FUNRURAL;
  VLDESCT = DESCONTO;
  VLPERT = PERDA;

  /* Se Valor for negativo entao baixa o ti­tulo */

  FOR SELECT CODPAGAMENTO, VALOR_RESTO FROM PAGAMENTO WHERE CODFORNECEDOR = :FORNECEDOR AND DP = 0 
     AND STATUS IN ('5-') order by CODPAGAMENTO /* busco pelos tiÂ­tulos a baixar */
  INTO :CODREC, :VLRESTO 
  DO BEGIN
        VLJU = VLJUT - VLJU;
        IF (VLJU < 0) then
          VLJU = 0; 
        VLJUT = VLJUT - VLJU;   
        VLFUN = VLFUNT - VLFUN;
        IF (VLFUN < 0) then
          VLFUN = 0; 
        VLFUNT = VLFUNT - VLFUN;
        IF (VLDESC > VLDESCT) THEN
           VLDESC = 0;   
        VLDESC = VLDESCT - VLDESC;
        IF (VLDESC < 0) then
          VLDESC = 0; 
        VLDESCT = VLDESCT - VLDESC;
        IF (VLPER > VLPERT) THEN
          VLPER = 0;   
        VLPER = VLPERT - VLPER;
        IF (VLPER < 0) then
          VLPER = 0; 
        VLPERT = VLPERT - VLPER;
      /* Valor total a baixar - valor pago = valor atual */
      IF (VLRATUAL > VLRESTO) THEN
      BEGIN
        VLRATUAL = VLRATUAL - VLRESTO;
        VLPAGO = VLPAGO - VLRESTO;  
        VLR = VLRESTO;
      END
      ELSE BEGIN
        VLR = VLRATUAL;
        VLRATUAL = 0;
      END   
    /*  manoel IF ((VLR - VLDESC - VLPER) < 0) then
      begin
        IF (VLR = VLDESC) then
        begin
          vlpert = vlper;
          vlper = 0;
        end         
        IF (VLR = VLPER) then
        begin
          vldesct = vldesc;
          vldesc = 0; 
        end
        IF (VLR < VLDESC) then
        begin
          vldesct = vldesc - VLR;
          vldesc = vlr;
        end         
        IF (VLR < VLPER) then
        begin
          vlpert = vlper - VLR;
          vlper = vlr;
        end         
     
      end */
      IF (VLR > 0) THEN
      BEGIN   
         UPDATE PAGAMENTO SET
            STATUS = :STATUS
            , VALORRECEBIDO = (:VLR - :VLDESC - :VLPER)
            , VALOR_RESTO = (:VLR)
            , FORMAPAGAMENTO = :FORMAREC
            , DATABAIXA = :DATABAIXA
            , DATAPAGAMENTO = :DATAREC
            , DATACONSOLIDA = :DATACONSOLIDA
            , N_DOCUMENTO = :NDOC
            , CAIXA = :CAIXA
            , FUNRURAL = :VLFUN
            , JUROS = :VLJU
            , DESCONTO = :VLDESC
            , PERDA = :VLPER
            WHERE CODPAGAMENTO = :CODREC;

            /*Carlos : Retirei do UPDATE , pois, estes campos nao deve ser alterados. */
            /*,outro_credito = :vldesct */
            /*,outro_debito = :vlpert */

      END
      /*, DATAVENCIMENTO = :DATAVENC */

     /* Se Valor e negativo entao baixa o ti­tulo */
      IF (VALOR < 0) THEN
      BEGIN   
         UPDATE PAGAMENTO SET
            STATUS = :STATUS
            , VALORRECEBIDO = :vlpago
            , FORMAPAGAMENTO = :FORMAREC
            , DATABAIXA = :DATABAIXA
            , DATAPAGAMENTO = :DATAREC
            , DATACONSOLIDA = :DATACONSOLIDA
            , N_DOCUMENTO = :NDOC
            , CAIXA = :CAIXA
            , FUNRURAL = :VLFUN
            , JUROS = :VLJU
            , DESCONTO = :VLDESC
            , PERDA = :VLPER
            WHERE CODPAGAMENTO = :CODREC;

            /*Carlos : Retirei do UPDATE , pois, estes campos nao deve ser alterados. */
            /*,outro_credito = :vldesct */
            /*,outro_debito = :vlpert */

      END
      /*, DATAVENCIMENTO = :DATAVENC */
  END
END
