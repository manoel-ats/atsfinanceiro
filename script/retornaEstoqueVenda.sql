CREATE OR ALTER TRIGGER retorna_estoqueVenda FOR VENDA
ACTIVE AFTER DELETE POSITION 0
AS 
  DECLARE VARIABLE dataIni date;
  DECLARE VARIABLE dataFim date;
  declare variable codP int;
BEGIN
  /* Volta o campo BAIXA para null na tab MOVIMENTODETALHE */ 
  update MOVIMENTODETALHE set BAIXA = null where CODMOVIMENTO = old.CODMOVIMENTO;

  for SELECT m.DataMovimento, movdet.codproduto FROM movimento m
    inner join MOVIMENTODETALHE movdet on movdet.CODMOVIMENTO = m.CODMOVIMENTO
    where m.CODMOVIMENTO = old.CODMOVIMENTO
  INTO :dataIni, :codP
  do begin 
    select max(m.dataMovimento) from movimento m 
      inner join MOVIMENTODETALHE md on md.codmovimento = m.CODMOVIMENTO
      where md.codproduto = :codP
    into :dataFim;
    execute PROCEDURE CORRIGEESTOQUE(:codP, :codP, :dataIni, :dataFim, 'N');
  end

END
