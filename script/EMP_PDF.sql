CREATE OR ALTER PROCEDURE EMP_PDF 
returns (
    ra varchar(10),
    razaosocial varchar(50),
    q integer)
as
BEGIN

  FOR
    select  RA ,RAZAOSOCIAL from CLIENTES where grupo_cliente = 'PCMSO' and segmento = 0 and status = 0 ORDER BY  RAZAOSOCIAL
    INTO :RA,
         :RAZAOSOCIAL
  DO
  BEGIN
for  select count( ra)
from clientes
where 
   (
      (grupo_cliente = 'PCMSO')
   and 
      (segmento = 1)
   and 
      (status = 0)
   and
      (razaosocial = :RAZAOSOCIAL)
   )
   INTO :Q
 DO
  BEGIN

  --  SUSPEND;


    if(:Q > 0) then
    SUSPEND;
  END
end
END
