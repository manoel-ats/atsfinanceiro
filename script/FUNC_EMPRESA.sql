CREATE OR ALTER PROCEDURE FUNC_EMPRESA (
    nome varchar(50),
    data date)
returns (
    codcliente integer,
    nomecliente varchar(50),
    razaosocial varchar(50),
    contato varchar(30),
    grupo_cliente varchar(30),
    emp varchar(10),
    ra varchar(10),
    dataresc date,
    datacadastro date)
as
declare variable dia smallint;
declare variable mes smallint;
declare variable ano smallint;
BEGIN
  FOR
    select  cli.codcliente, 
        cli.nomecliente, 
        cli.razaosocial,
        cli.contato,
        cli.grupo_cliente,
        cli.RA,
        udf_Left(cli.RA,5),
        cli.dataresc,
        cli.datacadastro
from clientes cli
   left outer join enderecocliente ende on (cli.codcliente = ende.codcliente)
    where 
       (
          (cli.grupo_cliente = 'PCMSO')
       and 
          (cli.razaosocial <> cli.nomecliente)
       and 
          ((cli.razaosocial = :nome) or (:nome = 'TODOS AS EMPRESAS ATIVAS CADASTRADOS NO SISTEMA HJ'))
       and 
          ((cli.status = 0)or
             (
                (cli.status = 1)
             and 
                (cli.dataresc > :data)
             )
          )
       and 
          (cli.segmento = 1)
       and 
          (cli.datacadastro <= :data)
       )
    INTO :CODCLIENTE,
         :NOMECLIENTE,
         :RAZAOSOCIAL,
         :CONTATO,
         :GRUPO_CLIENTE,
         :RA,
         :EMP,
         :DATARESC,
         :DATACADASTRO
  DO
  BEGIN
    SUSPEND;
  END
        mes = UDF_MONTH(data);
        dia = udf_day(data);
        ano = UDF_YEAR(data);
        mes = mes - 1 ;
        data = UDF_ENCDATE(ano, mes, dia);
  FOR
    select  cli.codcliente, 
        cli.nomecliente, 
        cli.razaosocial,
        cli.contato,
        cli.grupo_cliente,
        cli.RA,
        udf_Left(cli.RA,5),
        cli.dataresc,
        cli.datacadastro
from clientes cli

    where 
       (
          (cli.grupo_cliente = 'PCMSO')
       and 
          (cli.razaosocial <> cli.nomecliente)
       and 
          ((cli.razaosocial = :nome) or (:nome = 'TODOS AS EMPRESAS ATIVAS CADASTRADOS NO SISTEMA HJ'))
       and 


             (
                (cli.status = 1)
             and 
                (cli.dataresc > :data)
             )


       and 
          (cli.segmento = 1)
       and 
          (cli.datacadastro <= :data)
       )
    INTO :CODCLIENTE,
         :NOMECLIENTE,
         :RAZAOSOCIAL,
         :CONTATO,
         :GRUPO_CLIENTE,
         :RA,
         :EMP,
         :DATARESC,
         :DATACADASTRO
  DO
  BEGIN

    SUSPEND;
  END
END
