CREATE OR ALTER PROCEDURE REL_EXAMES (
    data date,
    data1 date,
    codigo integer,
    grupo varchar(50),
    tipo varchar(100),
    codmedico integer)
returns (
    valor double precision,
    tipoexame varchar(100),
    quant integer)
as
BEGIN
  FOR
    select 
        sum(labexame.valor),
        count(labexame.tipoexame),
        labexame.tipoexame
    from clientes
       inner join labexame on (clientes.codcliente = labexame.codcliente)
       where  labexame.datasolicitacao between :data and :data1
         and ((labexame.codcliente = :codigo) or (:codigo = 9999999))
         and ((labexame.convenio = :grupo) or (:grupo = 'TODOS OS GRUPOS CADASTRADOS'))
         and ((labexame.tipoexame = :tipo) or (:tipo = 'TODOS OS EXAMES CADASTRADOS'))
         and ((labexame.medicosolicitante = :codmedico) or (:codmedico = 9999999))
         and labexame.situacao <> 'CANCELADO'
       group by labexame.tipoexame
    INTO :VALOR,
         :QUANT,
         :TIPOEXAME
  DO
  BEGIN
    SUSPEND;
  END
END
