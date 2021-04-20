CREATE OR ALTER PROCEDURE BAIXATITULOSREC (
    valor double precision,
    funrural double precision,
    juros double precision,
    desconto double precision,
    perda double precision,
    data date,
    datarec date,
    dataconsolida date,
    formarec char(1),
    ndoc varchar(20),
    caixa smallint,
    cliente integer,
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
  VLRATUAL = (VALOR - FUNRURAL - JUROS + PERDA + DESCONTO);
  VLPAGO = (VALOR - JUROS - FUNRURAL);
  VLJUT = JUROS;
  VLFUNT = FUNRURAL;
  VLDESCT = DESCONTO;
  VLPERT = PERDA;

  /* Se Valor é negativo então baixa o título */

  FOR SELECT CODRECEBIMENTO, VALOR_RESTO FROM RECEBIMENTO WHERE CODCLIENTE = :CLIENTE AND DP = 0 
     AND STATUS IN ('5-') order by CODRECEBIMENTO /* busco pelos tÃ­tulos a baixar */
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
      IF ((VLR - VLDESC - VLPER) < 0) then
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
     
      end
      IF (VLR > 0) THEN
      BEGIN   
         UPDATE RECEBIMENTO SET
            STATUS = :STATUS
            , VALORRECEBIDO = (:VLR - :VLDESC - :VLPER)
            , VALOR_RESTO = (:VLR)
            , FORMARECEBIMENTO = :FORMAREC
            , DATABAIXA = :DATA
            , DATARECEBIMENTO = :DATAREC
            , DATACONSOLIDA = :DATACONSOLIDA
            , N_DOCUMENTO = :NDOC
            , CAIXA = :CAIXA
            , FUNRURAL = :VLFUN
            , JUROS = :VLJU
            , DESCONTO = :VLDESC
            , PERDA = :VLPER
            , outro_credito = :vldesct
            , outro_debito = :vlpert
            , DP = null
            , USERID = null
            WHERE CODRECEBIMENTO = :CODREC;
      END

     /* Se Valor é negativo então baixa o título */
      IF (VALOR < 0) THEN
      BEGIN   
         UPDATE RECEBIMENTO SET
            STATUS = :STATUS
            , VALORRECEBIDO = 0
            , VALOR_RESTO = 0
            , FORMARECEBIMENTO = :FORMAREC
            , DATABAIXA = :DATA
            , DATARECEBIMENTO = :DATAREC
            , DATACONSOLIDA = :DATACONSOLIDA
            , N_DOCUMENTO = :NDOC
            , CAIXA = :CAIXA
            , FUNRURAL = :VLFUN
            , JUROS = :VLJU
            , DESCONTO = :VLDESC
            , PERDA = :VLPER
            , outro_credito = :vldesct
            , outro_debito = :vlpert
            , DP = null
            , USERID = null
            WHERE CODRECEBIMENTO = :CODREC;
      END
/*/quando for ZERO no recebimento */
      IF (VALOR = 0) THEN
      BEGIN   
         UPDATE RECEBIMENTO SET
            STATUS = :STATUS
            , VALORRECEBIDO = 0
            , VALOR_RESTO = 0
            , FORMARECEBIMENTO = :FORMAREC
            , DATABAIXA = :DATA
            , DATARECEBIMENTO = :DATAREC
            , DATACONSOLIDA = :DATACONSOLIDA
            , N_DOCUMENTO = :NDOC
            , CAIXA = :CAIXA
            , FUNRURAL = 0
            , JUROS = 0
            , DESCONTO = 0
            , PERDA = 0
            , outro_credito = 0
            , outro_debito = 0
            , DP = null
            , USERID = null
            WHERE CODRECEBIMENTO = :CODREC;
      END



  END

END
