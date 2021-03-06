CREATE OR ALTER trigger inclui_pag for compra
active after insert position 0
AS
  DECLARE VARIABLE i integer;
  DECLARE VARIABLE status_venda char(2);
  DECLARE VARIABLE VLR_TITULO DOUBLE PRECISION;
  DECLARE VARIABLE VLR_RESTO DOUBLE PRECISION;
  DECLARE VARIABLE VLR_PARCELA DOUBLE PRECISION;
  DECLARE VARIABLE VLR_PRIM_VIA DOUBLE PRECISION;
  DECLARE VARIABLE N_PARC INTEGER;
  DECLARE VARIABLE CAIXA INTEGER;
  DECLARE VARIABLE DTAPAG DATE; 
begin
   i = 0;
   VLR_PRIM_VIA = (NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS);
   VLR_TITULO = (NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS);
   VLR_RESTO =  ((NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS));
   N_PARC = NEW.N_PARCELA;
   if (NEW.ENTRADA > 0) then
   begin
     status_venda = '7-';
     INSERT INTO PAGAMENTO
       (TITULO, EMISSAO, CODFORNECEDOR, DATAVENCIMENTO, STATUS , VIA, FORMAPAGAMENTO,
       CODCOMPRA , CODALMOXARIFADO, CODCOMPRADOR, CODUSUARIO
       , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, VALORRECEBIDO, JUROS, 
        DESCONTO, PERDA, FUNRURAL, DATAPAGAMENTO, PARCELAS, TROCA, CAIXA) 
     VALUES 
       (NEW.NOTAFISCAL, NEW.DATACOMPRA, NEW.CODFORNECEDOR, udf_IncMonth(NEW.DATAVENCIMENTO, :i),
       :status_venda, CAST((:i + 1) as CHAR(3)),NEW.FORMAPAGAMENTO, NEW.CODCOMPRA, NEW.CODCCUSTO, NEW.CODCOMPRADOR, NEW.CODUSUARIO,  
       cast('NOW' as date), :VLR_PRIM_VIA, (:VLR_RESTO - NEW.ENTRADA), :VLR_TITULO, NEW.ENTRADA, NEW.MULTA_JUROS, 0, 0, 
       0, NEW.DATACOMPRA, NEW.N_PARCELA,0, new.CAIXA);
     i = 1;
     N_PARC = (NEW.N_PARCELA - 1);
   end
   while (i < NEW.N_PARCELA) do
   begin
     if (NEW.STATUS = 0) then
     begin     
       status_venda = '5-';
       CAIXA = new.caixa;
       DTAPAG = null;
     end
     if (NEW.STATUS = 1) then
     begin
       status_venda = '7-';  
       CAIXA = new.CAIXA; 
       DTAPAG = new.DATACOMPRA;
     end
     if ((i+1) > 1) then 
     begin
       VLR_PRIM_VIA = 0;
     end
     VLR_RESTO =  ((NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS)- NEW.ENTRADA)/N_PARC;
     INSERT INTO PAGAMENTO
       (TITULO, EMISSAO, CODFORNECEDOR, DATAVENCIMENTO, STATUS , VIA, FORMAPAGAMENTO,
       CODCOMPRA , CODALMOXARIFADO, CODCOMPRADOR, CODUSUARIO
       , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, VALORRECEBIDO, JUROS 
       , DESCONTO, PERDA, FUNRURAL, PARCELAS, TROCA,CAIXA, DATAPAGAMENTO) 
     VALUES 
       (NEW.NOTAFISCAL, NEW.DATACOMPRA, NEW.CODFORNECEDOR, udf_IncMonth(NEW.DATAVENCIMENTO, :i),
       :status_venda, CAST((:i + 1) as CHAR(3)),'1', NEW.CODCOMPRA, NEW.CODCCUSTO, NEW.CODCOMPRADOR, NEW.CODUSUARIO,  
       cast('NOW' as date), :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.MULTA_JUROS, 0, 0,0,0, NEW.N_PARCELA,0, :CAIXA, :DTAPAG);
     i = i + 1;    
   end
end
