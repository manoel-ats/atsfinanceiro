CREATE OR ALTER PROCEDURE CONF_RECEBIMENTO_S 
returns (
    razaosocial varchar(50),
    recebido double precision,
    juros double precision,
    total double precision,
    reembolso double precision,
    recebidos double precision,
    valorn double precision,
    pagou double precision)
as
declare variable codcliente integer;
declare variable pendente double precision;
declare variable duvidoso double precision;
declare variable cancelado double precision;
BEGIN
   pagou = 0 ;
  FOR
    select CODCLIENTE
    from clientes
    where segmento = 0 and GRUPO_CLIENTE = 'ASH'
    and ((dataresc is null) or (dataresc > '12/31/10'))
    and cnpj = '000.000.000-00'
    order by ra
    into : codcliente
    do begin
         FOR
           select
             cli.razaosocial,
             SUM(rec.VALORRECEBIDO + rec.JUROS) as RECEBIDO,
             SUM(rec.JUROS) as JUROS,
             SUM(CASE WHEN (rec.STATUS = '5-') THEN REC.VALOR_RESTO ELSE 0 END) AS PENDENTE,
             SUM(CASE WHEN (rec.STATUS = '8-') THEN REC.VALOR_RESTO ELSE 0 END) AS DUVIDOSO,
             SUM(CASE WHEN (rec.STATUS = '7-') THEN (REC.VALOR_RESTO ) ELSE REC.VALOR_RESTO END) AS TOTAL,
             SUM(CASE WHEN (rec.STATUS = '14') THEN (REC.VALOR_RESTO ) ELSE 0 END)  AS CANCELADO ,
             SUM(CASE WHEN (rec.STATUS = '7') THEN (REC.DESCONTO) ELSE REC.DESCONTO END) AS REEMBOLSO ,
             SUM((rec.VALORRECEBIDO + rec.JUROS)-(REC.DESCONTO*-1)) as RECEBIDOS
             FROM RECEBIMENTO rec
             inner join CLIENTES cli on cli.CODCLIENTE = rec.CODCLIENTE
             WHERE rec.DATARECEBIMENTO BETWEEN '01/01/11' AND '12/31/11'
             AND (rec.STATUS = '7-') AND rec.CODCLIENTE = :codcliente AND CODALMOXARIFADO = 51
             group by
             cli.razaosocial
             INTO :RAZAOSOCIAL, :RECEBIDO ,:JUROS , :PENDENTE , :DUVIDOSO ,:TOTAL , :CANCELADO , :REEMBOLSO ,:RECEBIDOS
         DO
         BEGIN
       select sum(preco)
         FROM Conferir_S(:codcliente,'01/01/11','12/31/11')where preco < 0
         into :VALORN ;
        begin
        /* */
        END
        if(VALORN is null ) then
        VALORN = 0;
        pagou =  RECEBIDOS - juros - reembolso ;

         SUSPEND;
         END
     END
END
