CREATE PROCEDURE FAROL_MUDANCA (
    dataini date,
    datafin date)
returns (
    mes integer,
    janeiro integer,
    fevereiro integer,
    marco integer,
    abril integer,
    maio integer,
    junho integer,
    julho integer,
    agosto integer,
    setembro integer,
    outubro integer,
    novembro integer,
    dezembro integer)
as
declare variable mudanca integer;
BEGIN
  FOR
    select
      case
        when extract(month from v.datavenda) in (1) then 1
        when extract(month from v.datavenda) in (2) then 2
        when extract(month from v.datavenda) in (3) then 3
        when extract(month from v.datavenda) in (4) then 4
        when extract(month from v.datavenda) in (5) then 5
        when extract(month from v.datavenda) in (6) then 6
        when extract(month from v.datavenda) in (7) then 7
        when extract(month from v.datavenda) in (8) then 8
        when extract(month from v.datavenda) in (9) then 9
        when extract(month from v.datavenda) in (10) then 10
        when extract(month from v.datavenda) in (11) then 11
        when extract(month from v.datavenda) in (12) then 12

      end  mes,
      count(v.codcliente)

    from venda v
           inner join clientes c on (v.codcliente = c.codcliente )
           inner join movimentodetalhe md  on (v.codmovimento = md.codmovimento)
           inner join produtos p  on (md.codproduto = p.codproduto)
    where v.datavenda between :dataini and :datafin
     and (c.grupo_cliente = 'PCMSO')
           and 
              (p.codproduto = 186)
    
    group by mes
    INTO :MES,
         :MUDANCA
   DO
   BEGIN

     if(mes =1) then  janeiro = MUDANCA;
     if(mes =2) then fevereiro = MUDANCA;
     if(mes = 3) then Marco = MUDANCA;
     if(mes = 4) then Abril = MUDANCA;
     if(mes = 5) then  Maio = MUDANCA;
     if(mes = 6) then  Junho = MUDANCA;
     if(mes = 7) then  Julho = MUDANCA;
     if(mes = 8) then  Agosto = MUDANCA;
     if(mes = 9) then  Setembro = MUDANCA;
     if(mes = 10) then Outubro = MUDANCA;
     if(mes = 11) then Novembro = MUDANCA;
     if(mes = 12) then Dezembro = MUDANCA;

     if(fevereiro is null ) then  fevereiro = 0;
     if(Marco is null ) then  Marco = 0;
     if(Abril is null ) then Abril = 0;
     if(Maio is null ) then Maio = 0;
     if(Junho is null ) then  Junho= 0;
     if(Julho is null ) then Julho = 0;
     if(Agosto is null ) then Agosto = 0;
     if(Setembro is null ) then Setembro = 0;
     if(Outubro is null ) then Outubro = 0;
     if(Novembro is null ) then Novembro = 0;
     if(Dezembro is null ) then Dezembro = 0;
    SUSPEND;

   END
 END
