CREATE OR ALTER PROCEDURE CONTAR_DEMITIDO (
    nome varchar(50),
    data date)
returns (
    demitido integer)
as
declare variable dia smallint;
declare variable mes smallint;
declare variable ano smallint;
BEGIN
          dia = udf_day (:data);
          mes = udf_month(:data);
          ano = udf_year (:data);
          mes = mes - 1;
          data = UDF_ENCDATE(ano, mes, dia);
  FOR


    select count(cli.codcliente) , udf_day(:data) as dia, udf_month(:data ) as mes  ,udf_year(:data)as ano  from CLIENTES cli
            where (CLI.RAZAOSOCIAL  = :nome ) and cli.GRUPO_CLIENTE = 'PCMSO'
            and cli.STATUS = 1
            and cli.dataresc > :data
            and cli.segmento = 1
    INTO :DEMITIDO,
         :DIA,
         :MES,
         :ANO


  DO
  BEGIN

    SUSPEND;
  END
END
