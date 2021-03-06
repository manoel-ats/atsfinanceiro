CREATE OR ALTER trigger atualiza_furacao for prod_chg
active after insert position 0
AS 
DECLARE VARIABLE CODP VARCHAR(15);
DECLARE VARIABLE CODFAM INTEGER;
DECLARE VARIABLE MARGEM DOUBLE PRECISION;
DECLARE VARIABLE MARGEMEMPRESA DOUBLE PRECISION;
DECLARE VARIABLE PPAGO DOUBLE PRECISION;
DECLARE VARIABLE PRECOVENDA DOUBLE PRECISION;
DECLARE VARIABLE ARREDONDAV DOUBLE PRECISION;
DECLARE VARIABLE MARCA VARCHAR(30);
DECLARE VARIABLE FAM VARCHAR(90);
DECLARE VARIABLE CAT VARCHAR(90);
DECLARE VARIABLE PRO VARCHAR(60);
DECLARE VARIABLE CODBAR VARCHAR(60);
DECLARE VARIABLE USAPROD CHAR(3);
DECLARE VARIABLE EMPRESAUSA VARCHAR(40);
BEGIN 
    Select dados From parametro where parametro = 'EMPRESA'
    into : empresausa;

    IF (NEW.FABRIC = 'FURACAO') THEN
    BEGIN
      margemempresa = 100;
      usaprod = 'SIM';
      PRO = NEW.CODIGO;
      PPAGO = NEW.PRNORM;
      --ARREDONDAV =  NEW.PRNORM;
      /* Procuro pelo PRODUTO na TABELA PRODUTOS */
      SELECT CODIGO, PRECOVENDA, MARGEM FROM LISTAPRECO WHERE CODIGO = :PRO and FORNECEDOR = 'FURACAO'
        INTO :CODP, PRECOVENDA, :MARGEM;
      IF (CODP IS NULL) THEN
      BEGIN
       -- PRODUTO NOVO --------------------------------------------------------------------------------------------
         if (empresausa = 'COMETA') then
         begin
           margemempresa = 50;
           usaprod = 'N?O';
         end
         ARREDONDAV =  ((PPAGO * 1.5) - UDF_INT(PPAGO * 1.5));
         IF (ARREDONDAV > 0.5) THEN
            ARREDONDAV =  UDF_INT(PPAGO * 1.5) + 1;
         IF (ARREDONDAV = 0) THEN
            ARREDONDAV =  UDF_INT(PPAGO * 1.5);
         ELSE IF (ARREDONDAV <= 0.5) THEN
            ARREDONDAV =  UDF_INT(PPAGO * 1.5) + 0.5;

        INSERT INTO LISTAPRECO ( DESCR, CODIGO, APLIC, FORNECEDOR, GRUPO, SUBGRUPO, UNIDADE,
          PRECOLISTA, PRECOVENDA, DATAATUALIZA, CODBARRA, USAPRODUTO, MARGEM) VALUES (
          NEW.DESCR, :PRO, NEW.APLIC, NEW.FABRIC, NEW.LINH1, NEW.LINH2, NEW.UNIDADE, 
          :PPAGO,  :ARREDONDAV, CURRENT_TIMESTAMP, :CODBAR, :usaprod, :margemempresa);
      END
      ELSE -- ATUALIZACAO DE PRODUTOS Q JA EXISTAM
      BEGIN
        ARREDONDAV =  ((PPAGO * ((:MARGEM/100)+1)) - UDF_INT(PPAGO * ((:MARGEM/100)+1)));
        IF (ARREDONDAV > 0.5) THEN
           ARREDONDAV =  UDF_INT(PPAGO * ((:MARGEM/100)+1)) + 1;
        IF (ARREDONDAV = 0) THEN
           ARREDONDAV =  UDF_INT(PPAGO * ((:MARGEM/100)+1));
        ELSE IF (ARREDONDAV <= 0.5) THEN
           ARREDONDAV =  UDF_INT(PPAGO * ((:MARGEM/100)+1)) + 0.5;
        UPDATE LISTAPRECO
        SET 
             PRECOVENDA = :ARREDONDAV,
             PRECOLISTA = :PPAGO
        WHERE CODIGO = :CODP;
      END
   END
END

