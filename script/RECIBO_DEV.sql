CREATE PROCEDURE RECIBO_DEV (
    nome varchar(60),
    data date)
returns (
    valor double precision,
    tipoexame varchar(100),
    nomecliente varchar(50),
    numero varchar(20),
    datadev date,
    rg varchar(18))
as
declare variable nprod integer;
BEGIN
  NPROD = 0;
  FOR

    select 
        labexame.devolucao,
        labexame.tipoexame,
        labexame.numero,
        clientes.nomecliente,
        labexame.datadev,
        clientes.cnpj
    from clientes
       inner join labexame on (clientes.codcliente = labexame.codcliente)
       /*inner join labexameresultado on (labexame.codexame = labexameresultado.codexame) */
       where clientes.nomecliente = :nome and labexame.datasolicitacao = :data  and labexame.situacao = 'DEVOLVIDO'
    INTO :VALOR,
         :TIPOEXAME,
         :NUMERO,
         :NOMECLIENTE,
         :DATADEV,
         :RG
  DO
  BEGIN
    NPROD = NPROD + 1;
    if(:valor is not null) then
    SUSPEND;
  END
  WHILE (NPROD < 20 ) do
          BEGIN
            /* imprimi linhas vazias */
            NPROD = NPROD + 1;
            VALOR = null;
            TIPOEXAME = null;
            NUMERO = null;

            SUSPEND;          
          END
END
