CREATE OR ALTER PROCEDURE TOTAL_D_2015D 
returns (
    ra varchar(10),
    razaosocial varchar(50),
    preco double precision,
    pago double precision,
    pr double precision,
    reembolso double precision,
    precocusto double precision)
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
    select 
        sum(d_2015d.preco)as preco,
        sum(d_2015d.pago)as pago,
        sum(d_2015d.pr) as pr,
        sum(d_2015d.reembolso) as reembolso,
        sum(d_2015d.precocusto) as precocusto
    
    
    from d_2015d
    where d_2015d.razaosocial = :RAZAOSOCIAL
    group by
    
        d_2015d.razaosocial
    INTO :preco,
         :pago,
         :pr,
         :reembolso,
         :precocusto
  DO
  BEGIN
    SUSPEND;
  END
end

END
