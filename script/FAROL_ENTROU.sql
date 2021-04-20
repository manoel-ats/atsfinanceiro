CREATE OR ALTER PROCEDURE FAROL_ENTROU (
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
declare variable entrou integer;
BEGIN
  FOR
    select
      case
        when extract(month from c.datacadastro) in (1) then 1
        when extract(month from c.datacadastro) in (2) then 2
        when extract(month from c.datacadastro) in (3) then 3
        when extract(month from c.datacadastro) in (4) then 4
        when extract(month from c.datacadastro) in (5) then 5
        when extract(month from c.datacadastro) in (6) then 6
        when extract(month from c.datacadastro) in (7) then 7
        when extract(month from c.datacadastro) in (8) then 8
        when extract(month from c.datacadastro) in (9) then 9
        when extract(month from c.datacadastro) in (10) then 10
        when extract(month from c.datacadastro) in (11) then 11
        when extract(month from c.datacadastro) in (12) then 12

      end  mes,
      count(c.codcliente)

    from clientes c

    where c.datacadastro between :dataini and :datafin
     and (c.grupo_cliente = 'PCMSO') and  ((c.datacadastro <> c.dataresc) or(c.dataresc is null ))
     and (c.segmento = 1)
    group by mes
    INTO :MES,
         :ENTROU
   DO
   BEGIN
     if(mes =1) then  janeiro = ENTROU;
     if(mes =2) then fevereiro = ENTROU;
     if(mes = 3) then Marco = ENTROU;
     if(mes = 4) then Abril = ENTROU;
     if(mes = 5) then  Maio = ENTROU;
     if(mes = 6) then  Junho = ENTROU;
     if(mes = 7) then  Julho = ENTROU;
     if(mes = 8) then  Agosto = ENTROU;
     if(mes = 9) then  Setembro = ENTROU;
     if(mes = 10) then Outubro = ENTROU;
     if(mes = 11) then Novembro = ENTROU;
     if(mes = 12) then Dezembro = ENTROU;

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
