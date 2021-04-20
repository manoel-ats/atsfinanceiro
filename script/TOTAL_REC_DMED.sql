CREATE OR ALTER PROCEDURE TOTAL_REC_DMED 
returns (
    ra varchar(10),
    razaosocial varchar(50),
    recebido double precision,
    total double precision,
    reembolso double precision,
    recebidos double precision)
as
declare variable codcliente integer;
declare variable nomecliente varchar(50);
BEGIN
for
select CODCLIENTE, NOMECLIENTE , RAZAOSOCIAL ,RA
   from clientes  
   where segmento = 0 and GRUPO_CLIENTE = 'ASH'
   and ((dataresc is null) or (dataresc > '12/31/13'))
order by ra 
   INTO :CODCLIENTE,:NOMECLIENTE,:RAZAOSOCIAL,:RA
  DO
  BEGIN

  FOR
    SELECT SUM(rec.VALORRECEBIDO + rec.JUROS) as RECEBIDO,
     SUM(CASE WHEN (rec.STATUS = '7-') THEN (REC.VALOR_RESTO ) ELSE REC.VALOR_RESTO END) AS TOTAL,
     SUM(CASE WHEN (rec.STATUS = '7') THEN (REC.DESCONTO) ELSE REC.DESCONTO END) AS REEMBOLSO ,
     SUM((rec.VALORRECEBIDO + rec.JUROS)) as RECEBIDOS
     FROM RECEBIMENTO rec
     inner join CLIENTES cli on cli.CODCLIENTE = rec.CODCLIENTE
     WHERE rec.DATARECEBIMENTO BETWEEN '01/01/14' AND '12/31/14'
     AND (rec.STATUS = '7-')
     AND rec.CODCLIENTE = :codcliente
     AND CODALMOXARIFADO = 51
    INTO :RECEBIDO,
         :TOTAL,
         :REEMBOLSO,
         :RECEBIDOS
  DO
  BEGIN
    SUSPEND;
  END
end

END
