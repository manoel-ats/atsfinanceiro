CREATE OR ALTER PROCEDURE CX_LAB (
    dat date,
    dat1 date)
returns (
    codexame integer,
    dataentregamaterial date,
    dataprevistaentrega date,
    datalaudoexame date,
    dataretirada date,
    codcliente integer,
    datasolicitacao date,
    tipoexame varchar(100),
    medicosolicitante integer,
    convenio varchar(50),
    valor double precision,
    situacao varchar(30),
    materialrecebido char(1),
    devolucao double precision,
    datadev date,
    numero varchar(20),
    incluiu varchar(30),
    cancela varchar(30),
    devolve varchar(30),
    impresso char(3),
    recebeu varchar(30),
    datasistema date,
    nomecliente varchar(50))
as
declare variable datasol date;
BEGIN

  for select  min( labe.datasolicitacao)
             from labexame labe
 where 
       (

          (labe.convenio = 'PARTICULAR')
    
    
       and 
         (labe.datasistema between :dat and :dat1)
    
       or
         (labe.datasistema is null)
      /* and
         (labe.datasolicitacao between :dat and :dat1)
      */

       )
    INTO :DATASOL
  DO
  BEGIN
   -- SUSPEND;




  FOR
    select 
        labe.datasolicitacao,
        labe.tipoexame,
        labe.medicosolicitante,
        labe.convenio,
        labe.valor,
        labe.situacao,
        labe.materialrecebido,
        labe.devolucao,
        labe.datadev,
        labe.numero,
        labe.incluiu,
        labe.cancela,
        labe.devolve,
        labe.impresso,
        labe.recebeu,
        labe.datasistema,
        cli.nomecliente,
labe.CODEXAME ,
labe.DATAENTREGAMATERIAL ,
labe.DATAPREVISTAENTREGA ,
labe.DATALAUDOEXAME ,
labe.DATARETIRADA ,
labe.CODCLIENTE


    from labexame labe
       inner join clientes cli on (labe.codcliente = cli.codcliente)
    where 
       (
          (cli.codcliente = labe.codcliente)
       and 
          (labe.convenio = 'PARTICULAR')
    
    
       and 
         (labe.datasistema between :dat and :dat1)
    
       or
         (labe.datasistema is null)
       and
         (labe.datasolicitacao between :datasol and :dat1)
    
    
       )
    INTO :DATASOLICITACAO,
         :TIPOEXAME,
         :MEDICOSOLICITANTE,
         :CONVENIO,
         :VALOR,
         :SITUACAO,
         :MATERIALRECEBIDO,
         :DEVOLUCAO,
         :DATADEV,
         :NUMERO,
         :INCLUIU,
         :CANCELA,
         :DEVOLVE,
         :IMPRESSO,
         :RECEBEU,
         :DATASISTEMA,
         :NOMECLIENTE,
         :CODEXAME ,
         :DATAENTREGAMATERIAL ,
         :DATAPREVISTAENTREGA ,
         :DATALAUDOEXAME ,
         :DATARETIRADA ,
         :CODCLIENTE

  DO
  BEGIN
  --  if(:CONVENIO = 'PARTICULAR') then
    SUSPEND;
  END
   END
END
