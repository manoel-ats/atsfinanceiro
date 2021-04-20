CREATE OR ALTER PROCEDURE CONF (
    dta1 date,
    dta2 date,
    dtav1 date,
    dtav2 date)
returns (
    ra varchar(15),
    codigo varchar(20),
    titular varchar(60),
    codrec integer,
    val_venda double precision,
    val_recebimento double precision)
as
BEGIN
  FOR
   SELECT distinct codTitular, tit, assocTitular , codrec
   FROM LANCADO(:dta1,:dta2,:dtav1,:dtav2,0,0,0,0,51)
   INTO :ra , :codigo , :titular , :codrec

  DO
  BEGIN
  --  SUSPEND;
   for
   select  sum(vlrrec)  from lancaprocsaudeproc(:dta1,:dta2,:dtav1,:dtav2,:codigo,0,0,0,51)
   where CODREC = :codrec
   into :val_venda
  do begin
 --  suspend ;

  FOR
   SELECT  VALOR_PRIM_VIA FROM RECEBIMENTO
   where  codrecebimento = :codrec
   INTO :val_recebimento

  DO
  BEGIN
    if (val_venda <> val_recebimento ) then
   SUSPEND;

  END
  end
  end

END
