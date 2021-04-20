CREATE PROCEDURE ATEDASO (
    dataini date,
    datafin date)
returns (
    antedimento integer,
    nome_executante varchar(100))
as
BEGIN
  FOR
    select 
        count( guias.nome_executante )  ,
        guias.nome_executante
    from guias
    where 
       (
          (guias.numero_guia <> 'Maris')
       and 
          (guias.numero_guia <> 'Ana Paula')
        )
    
       and   (guias.data_atendimento between :DATAINI and :DATAFIN)
    
    
    
       group by guias.nome_executante
    INTO :antedimento,
         :NOME_EXECUTANTE
  DO
  BEGIN
    SUSPEND;
  END
END
