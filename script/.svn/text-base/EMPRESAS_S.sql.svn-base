CREATE PROCEDURE EMPRESAS_S (
    nome varchar(50),
    data date)
returns (
    codcliente integer,
    nomecliente varchar(50),
    razaosocial varchar(50),
    contato varchar(30),
    grupo_cliente varchar(30),
    ra varchar(10),
    geraaviso char(1),
    ra1 varchar(10),
    telefone varchar(9),
    telefone1 varchar(9),
    telefone2 varchar(9),
    fax varchar(9),
    cidade varchar(40))
as
declare variable codcliente1 integer;
declare variable gera varchar(1);
BEGIN
  for select cli.codcliente , cli.geraaviso , cli.nomecliente from clientes cli
  where cli.geraaviso = 'S' and cli.grupo_cliente = 'PCMSO'
  INTO :CODCLIENTE1 , :gera , :nome
  DO
  BEGIN
  FOR
    select cli.CODCLIENTE, 
              cli.NOMECLIENTE,
              cli.RAZAOSOCIAL ,         
              cli.CONTATO,
              cli.GRUPO_CLIENTE,
              udf_Left(cli.RA,5),
              cli.GERAAVISO,
              cli.RA,
              ende.TELEFONE, 
              ende.TELEFONE1,
              ende.TELEFONE2,
              ende.FAX,
              ende.CIDADE
             
    
    from CLIENTES cli 
    left outer join ENDERECOCLIENTE ende on ende.CODCLIENTE=cli.CODCLIENTE  
    where cli.GRUPO_CLIENTE = 'PCMSO' and cli.RAZAOSOCIAL <> cli.NOMECLIENTE 
    and ((CLI.RAZAOSOCIAL  = :NOME) or (:NOME = 'TODOS AS EMPRESAS ATIVAS CADASTRADOS NO SISTEMA HJ'))
    and ((cli.STATUS = 0) or ((cli.STATUS = 1) 
            and (cli.DATARESC >:data))) and cli.segmento = 1 and (cli.datacadastro <= :data) 
    group by  cli.RA,cli.NOMECLIENTE,cli.RAZAOSOCIAL, cli.CODCLIENTE,                
              cli.CONTATO,
              cli.GRUPO_CLIENTE,      
              ende.TELEFONE, 
              ende.TELEFONE1,
              ende.TELEFONE2,
              ende.FAX,
              ende.CIDADE,
     cli.GERAAVISO
    INTO :CODCLIENTE,
         :NOMECLIENTE,
         :RAZAOSOCIAL,
         :CONTATO,
         :GRUPO_CLIENTE,
         :RA,
         :GERAAVISO,
         :RA1,
         :TELEFONE,
         :TELEFONE1,
         :TELEFONE2,
         :FAX,
         :CIDADE

  DO
  BEGIN
    SUSPEND;
  END
 end
END
