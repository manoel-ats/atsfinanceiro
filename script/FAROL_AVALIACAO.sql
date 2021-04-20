CREATE PROCEDURE FAROL_AVALIACAO (
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
declare variable avaliacao integer;
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
              (p.codproduto = 212)
    
    group by mes
    INTO :MES,
         :AVALIACAO
   DO
   BEGIN
     if(mes =1) then  janeiro = AVALIACAO;
     if(mes =2) then fevereiro = AVALIACAO;
     if(mes = 3) then Marco = AVALIACAO;
     if(mes = 4) then Abril = AVALIACAO;
     if(mes = 5) then  Maio = AVALIACAO;
     if(mes = 6) then  Junho = AVALIACAO;
     if(mes = 7) then  Julho = AVALIACAO;
     if(mes = 8) then  Agosto = AVALIACAO;
     if(mes = 9) then  Setembro = AVALIACAO;
     if(mes = 10) then Outubro = AVALIACAO;
     if(mes = 11) then Novembro = AVALIACAO;
     if(mes = 12) then Dezembro = AVALIACAO;

     if(fevereiro is null ) then fevereiro = 0;
     if(Marco is null ) then Marco = 0;
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
