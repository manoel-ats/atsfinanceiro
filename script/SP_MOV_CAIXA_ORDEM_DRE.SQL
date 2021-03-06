set term ^;
create or ALTER PROCEDURE  SP_MOV_CAIXA_ORDEM_DRE( DTAINI                           DATE
                                       , DTAFIM                           DATE
                                       , COD_CAIXA                        SMALLINT )
RETURNS ( DTAPAGTO                         DATE
        , ORDEM                            SMALLINT
        , DESCRICAO                        VARCHAR( 300 )
        , VALORC                           DOUBLE PRECISION
        , VALORD                           DOUBLE PRECISION
        , VALOR                            DOUBLE PRECISION
        , CONTACONTABIL                    VARCHAR( 200 )
        , CAIXA                            VARCHAR( 60 )
        , CODCONTA                         VARCHAR( 20 )
        , FORMA                            VARCHAR( 20 )
        , N_DOC                            VARCHAR( 20 )
        , ORDENA                           SMALLINT
        , COMPENSADO                       VARCHAR( 10 ) )
AS
declare variable uso char(1);
declare variable nomedescricao char(60);          
BEGIN 
  select D6 from parametro where parametro = 'MODULO'
   into :uso; 
  if (uso = 'S') then
  begin  
    SELECT FIRST 1 VALOR FROM SP_MOV_CAIXA_ASH_DRE(:DTAINI, :DTAFIM, :COD_CAIXA)
    INTO :VALOR;
    
    FOR SELECT DTAPAGTO, ORDEM, DESCRICAO, VALORC, VALORD, CONTACONTABIL, CAIXA, CODCONTA, FORMA, N_DOC, ordena
      FROM SP_MOV_CAIXA_ASH_DRE(:DTAINI, :DTAFIM, :COD_CAIXA) ORDER BY DTAPAGTO, forma, ORDEM 
    INTO :DTAPAGTO, :ORDEM, :DESCRICAO, :VALORC, :VALORD, :CONTACONTABIL, :CAIXA, :CODCONTA, :FORMA, :N_DOC, :ordena
    DO BEGIN
      VALOR = VALOR + VALORD - VALORC;

     SELECT FIRST 1 NOME FROM PLANO WHERE CODREDUZIDO = :CODCONTA
     into :nomedescricao;
    if (codconta is not null) then

    descricao = nomedescricao ;  
     
    if ((valord = 0) and (valorc = 0)) then
      begin
        --n�o imprimir quando os 2 s�o Zero
      end
      else 
        SUSPEND;
     END
  end
  else begin 
    SELECT FIRST 1 VALOR FROM SP_MOV_CAIXA_DRE(:DTAINI, :DTAFIM, :COD_CAIXA)
      INTO :VALOR;
  
    FOR SELECT DTAPAGTO, ORDEM, DESCRICAO, VALORC, VALORD, CONTACONTABIL, CAIXA, CODCONTA, FORMA, N_DOC, COMPENSADO
      FROM SP_MOV_CAIXA_DRE(:DTAINI, :DTAFIM, :COD_CAIXA) ORDER BY DTAPAGTO, ORDEM, N_DOC 
    INTO :DTAPAGTO, :ORDEM, :DESCRICAO, :VALORC, :VALORD, :CONTACONTABIL, :CAIXA, :CODCONTA
       , :FORMA, :N_DOC, :COMPENSADO
    DO BEGIN
      VALOR = VALOR + VALORD - VALORC;

      if ((valord = 0) and (valorc = 0)) then
      begin
        --n�o imprimir quando os 2 s�o Zero
      end
      else 
        SUSPEND;
    END
  end
END
