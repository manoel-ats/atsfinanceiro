CREATE OR ALTER PROCEDURE CORRIGE_DATANASC 
as
declare variable codcliente integer;
declare variable datanasc date;
declare variable situacaoescolar varchar(2);
declare variable contato varchar(30);
BEGIN
  FOR
    select 
          cli.codcliente,cli.datanasc, cli.situacaoescolar ,cli.contato
     from clientes cli
    where cli.grupo_cliente = 'ASH'
      and cli.datacadastro < '01/01/12'
      and ((cli.dataresc is null )or(cli.dataresc > '12/31/10'))


    order by 1
    INTO :CODCLIENTE,:DATANASC,:SITUACAOESCOLAR ,:contato
  DO
  BEGIN
     update EXPORTA_DMED exp  set exp.datanasc = :DATANASC , exp.TIPO_DEPENDENTE = :SITUACAOESCOLAR ,exp.contato = :contato
      where exp.CODCLIENTE = :CODCLIENTE;
  END
END
