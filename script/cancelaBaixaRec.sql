CREATE OR ALTER PROCEDURE CANCELABAIXAREC (
    cliente integer)
as
declare variable codrec integer;
BEGIN
  FOR SELECT CODRECEBIMENTO FROM RECEBIMENTO WHERE CODCLIENTE = :CLIENTE AND DP = 1
     AND STATUS IN ('7-', '1-', '2-', '13', '9-') -- busco pelos títulos a Cancelar
  INTO :CODREC
  DO BEGIN
       UPDATE RECEBIMENTO SET
          STATUS = '5-'
          , VALOR_RESTO = VALORTITULO
          , VALORRECEBIDO = 0
          , FORMARECEBIMENTO = 1
          , DATABAIXA = null
          , DATARECEBIMENTO = null
          , DATACONSOLIDA = null
          , N_DOCUMENTO = null
          , CAIXA = null
          , FUNRURAL = 0
          , JUROS = 0
          , DESCONTO = 0
          , PERDA = 0
          , DP = null
          , USERID = null
        WHERE CODRECEBIMENTO = :CODREC;
        -- Excluo o título gerado pela baixa q está sendo cancelada.
        -- Não Excluo mais, pois, o valor_Resto só vai trazer o valor desta via
        -- DELETE FROM RECEBIMENTO WHERE CODORIGEM = :CODREC AND STATUS = '5-';
  END
END
