CREATE OR ALTER PROCEDURE SP_MOV_CAIXA_ORDEM (
    dtaini date,
    dtafim date,
    cod_caixa smallint)
returns (
    dtapagto date,
    ordem smallint,
    descricao varchar(300),
    valord double precision,
    valorc double precision,
    valor double precision,
    contacontabil varchar(200),
    caixa varchar(60),
    codconta varchar(20),
    forma varchar(20),
    n_doc varchar(20),
    ordena smallint,
    compensado varchar(10))
as
declare variable uso char(1);
BEGIN 
  select D6 from parametro where parametro = 'MODULO'
   into :uso; 
  if (uso = 'S') then
  begin  
    SELECT FIRST 1 VALOR FROM SP_MOV_CAIXA_ASH(:DTAINI, :DTAFIM, :COD_CAIXA)
    INTO :VALOR;
    
    FOR SELECT DTAPAGTO, ORDEM, DESCRICAO, VALORC, VALORD, CONTACONTABIL, CAIXA, CODCONTA, FORMA, N_DOC, ordena
      FROM SP_MOV_CAIXA_ASH(:DTAINI, :DTAFIM, :COD_CAIXA) ORDER BY DTAPAGTO, forma, ORDEM 
    INTO :DTAPAGTO, :ORDEM, :DESCRICAO, :VALORC, :VALORD, :CONTACONTABIL, :CAIXA, :CODCONTA, :FORMA, :N_DOC, :ordena
    DO BEGIN
      VALOR = VALOR + VALORD - VALORC;
      if ((valord = 0) and (valorc = 0)) then
      begin
        --não imprimir quando os 2 são Zero
      end
      else 
        SUSPEND;
    END
  end
  else begin 
    SELECT FIRST 1 VALOR FROM SP_MOV_CAIXA(:DTAINI, :DTAFIM, :COD_CAIXA)
      INTO :VALOR;
  
    FOR SELECT DTAPAGTO, ORDEM, DESCRICAO, VALORC, VALORD, CONTACONTABIL, CAIXA, CODCONTA, FORMA, N_DOC, COMPENSADO
      FROM SP_MOV_CAIXA(:DTAINI, :DTAFIM, :COD_CAIXA) ORDER BY DTAPAGTO, ORDEM, N_DOC 
    INTO :DTAPAGTO, :ORDEM, :DESCRICAO, :VALORC, :VALORD, :CONTACONTABIL, :CAIXA, :CODCONTA
       , :FORMA, :N_DOC, :COMPENSADO
    DO BEGIN
      VALOR = VALOR + VALORD - VALORC;
      if ((valord = 0) and (valorc = 0)) then
      begin
        --não imprimir quando os 2 são Zero
      end
      else 
        SUSPEND;
    END
  end
END
