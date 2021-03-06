ALTER TRIGGER GERA_PAG
AFTER UPDATE
POSITION 0
AS
  DECLARE VARIABLE status_compra char(2);
  DECLARE VARIABLE VLR_RESTO DOUBLE PRECISION;
  DECLARE VARIABLE CODORIG INTEGER;  
begin
  CODORIG =  OLD.CODPAGAMENTO;
  -- Gera Novo Título o valor recebido não seja total
  -- Testa se foi mexido no valorRecebido, do contrário não faz nada.
  if ((NEW.VALORRECEBIDO <> OLD.VALORRECEBIDO) or (NEW.PERDA <> OLD.PERDA) or (NEW.DESCONTO <> OLD.DESCONTO)) THEN
  begin
  IF ((OLD.STATUS <> '7-') and (NEW.STATUS = '7-') and (OLD.STATUS <> '1-')) THEN
    IF (((NEW.VALORRECEBIDO)+0.001) < OLD.VALOR_RESTO) THEN
    begin
     status_compra = '5-';
     VLR_RESTO =  ((OLD.VALOR_RESTO - NEW.DESCONTO - NEW.PERDA - NEW.TROCA)- NEW.VALORRECEBIDO);
     IF (VLR_RESTO > 0) then
     INSERT INTO PAGAMENTO 
       (TITULO, EMISSAO, CODFORNECEDOR, DATAVENCIMENTO, STATUS , VIA, FORMAPAGAMENTO, 
       CODALMOXARIFADO, CODCOMPRADOR, CODUSUARIO
       , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, PARCELAS, CAIXA, 
       CODCOMPRA, CONTADEBITO, CONTACREDITO, PERDA, TROCA, FUNRURAL, CODORIGEM, JUROS, DESCONTO, VALORRECEBIDO) 
     VALUES 
       (OLD.TITULO, OLD.EMISSAO, OLD.CODFORNECEDOR, OLD.DATAVENCIMENTO, 
       :status_compra, CAST((CAST(OLD.VIA as INTEGER) + 1) as CHAR(3)),OLD.FORMAPAGAMENTO, OLD.CODALMOXARIFADO, OLD.CODCOMPRADOR, 
        OLD.CODUSUARIO,
       'NOW', 0, :VLR_RESTO, OLD.VALORTITULO, OLD.PARCELAS, OLD.CAIXA, OLD.CODCOMPRA, OLD.CONTADEBITO, 
       OLD.CONTACREDITO, 0,0,0, :CODORIG, 0, 0, 0);
   end
  IF ((OLD.STATUS <> '1-') and (NEW.STATUS = '1-')) THEN
    IF (((NEW.VALORRECEBIDO)+0.001) < OLD.VALOR_RESTO) THEN
    begin
     status_compra = '5-';
     VLR_RESTO =  ((OLD.VALOR_RESTO - NEW.DESCONTO - NEW.PERDA - NEW.TROCA)- NEW.VALORRECEBIDO);
     IF (VLR_RESTO > 0) then
     INSERT INTO PAGAMENTO 
       (TITULO, EMISSAO, CODFORNECEDOR, DATAVENCIMENTO, STATUS , VIA, FORMAPAGAMENTO, 
       CODALMOXARIFADO, CODCOMPRADOR, CODUSUARIO
       , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, PARCELAS, CAIXA, 
       CODCOMPRA, CONTADEBITO, CONTACREDITO, PERDA, TROCA, FUNRURAL, CODORIGEM, JUROS, DESCONTO, VALORRECEBIDO) 
     VALUES 
       (OLD.TITULO, OLD.EMISSAO, OLD.CODFORNECEDOR, OLD.DATAVENCIMENTO, 
       :status_compra, CAST((CAST(OLD.VIA as INTEGER) + 1) as CHAR(3)), OLD.FORMAPAGAMENTO, OLD.CODALMOXARIFADO, OLD.CODCOMPRADOR, 
        OLD.CODUSUARIO,
       'NOW', 0, :VLR_RESTO, OLD.VALORTITULO, OLD.PARCELAS, OLD.CAIXA, OLD.CODCOMPRA, OLD.CONTADEBITO, 
       OLD.CONTACREDITO, 0,0,0, :CODORIG,0,0, 0);
   end
  end
end
