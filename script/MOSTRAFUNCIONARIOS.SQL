CREATE OR ALTER PROCEDURE MOSTRAFUNCIONARIOS(
  DATAPRESENCA DATE)
RETURNS(
  CODIGO INTEGER,
  NOME VARCHAR(100) CHARACTER SET WIN1252)
AS
declare variable codigofrequencia integer;
declare variable nomefun varchar(100);
BEGIN
  /* Procedure body */
  for select cod_funcionario, NOME_FUNCIONARIO from FUNCIONARIO WHERE STATUS = 'S'
  into :codigo, :nomefun do begin
    nome = nomefun;
    for select cod_frequencia from FREQUENCIA where cod_funcionario = :codigo
      and data = :datapresenca
    into :codigofrequencia
    do begin
    end
    if (:codigofrequencia is null) then
     suspend;
   codigofrequencia = null;
  END
END;
