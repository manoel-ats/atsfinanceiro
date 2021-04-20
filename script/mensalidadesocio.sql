CREATE OR ALTER PROCEDURE MENSALIDADE_SOCIO 
returns (
    datarecebimento date,
    valorrecebido double precision,
    codcliente integer,
    razaosocial varchar(50),
    ra varchar(10),
    total double precision)
as
declare variable nome varchar(60);
BEGIN
 nome = '';
  FOR
    select 
        recebimento.datarecebimento,
        recebimento.valorrecebido,
        recebimento.codcliente,
        clientes.razaosocial,
        clientes.ra
    from clientes
       inner join recebimento on (clientes.codcliente = recebimento.codcliente)
    where 
       (
          (clientes.grupo_cliente = 'ASH')
       and 
          (clientes.segmento = 0)
       and 
          (recebimento.datarecebimento between '01/01/10' and '12/31/10')
       and 
          (recebimento.valorrecebido > 0)
       )
    order by recebimento.codcliente
    INTO :DATARECEBIMENTO,
         :VALORRECEBIDO,
         :CODCLIENTE,
         :RAZAOSOCIAL,
         :RA

   DO
   BEGIN
  /*
   if(nome <> :razaosocial) then
   select  SUM(val)
    from TOTAL_FAIXAS
    where tit = :RAZAOSOCIAL
   into  :total ;
  */
   nome = razaosocial ;
     SUSPEND;
   END

END
