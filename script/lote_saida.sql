CREATE OR ALTER TRIGGER LOTE_SAIDA FOR MOVIMENTODETALHE ACTIVE
AFTER UPDATE 
POSITION 1
as
  DECLARE VARIABLE QTDEESTOQ DOUBLE PRECISION; 
  DECLARE VARIABLE TQTDEESTOQ DOUBLE PRECISION; 
  DECLARE VARIABLE ESTOQATUAL DOUBLE PRECISION; 
begin
 /* 1 = SAIDA */
 /* Retiro do LOTE a Quantidade Vendida ou Movimentada */
 if ((OLD.BAIXA IS NULL) AND (NEW.BAIXA = '1')) then
   IF (NEW.LOTE <> '') THEN
   BEGIN
     /* Procuro na tabela LOTES se já existe */
     SELECT FIRST 1 ESTOQUE FROM LOTES WHERE LOTE = OLD.LOTE 
       and CODPRODUTO = OLD.CODPRODUTO
     INTO :ESTOQATUAL;
     BEGIN
       IF (ESTOQATUAL IS NULL) THEN   
         ESTOQATUAL = 0;
       IF (ESTOQATUAL > NEW.QUANTIDADE) THEN
         TQTDEESTOQ = ESTOQATUAL - NEW.QUANTIDADE;
       IF (NEW.QUANTIDADE >= ESTOQATUAL) THEN
         TQTDEESTOQ = NEW.QUANTIDADE - ESTOQATUAL;
       UPDATE LOTES SET ESTOQUE = :TQTDEESTOQ WHERE LOTE = OLD.LOTE 
          and CODPRODUTO = OLD.CODPRODUTO;
     END
   end
end