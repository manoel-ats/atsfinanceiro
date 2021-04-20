CREATE OR ALTER PROCEDURE GERA_MENSAL (
    codigo integer)
returns (
    valorm double precision)
as
begin

    valorm = 0;
   For select first 1 case when emviagem = 'S' then (hist.valor * 0.25) else hist.valor end
      from CLIENTES cli, hist_faixa hist
     where hist.codcliente = cli.codcliente
       and hist.datacadastro > '02/28/11'
       and cli.STATUS = 0
       and cli.codcliente = :codigo
       and cli.numero > 0
    order by hist.data_mov desc
    into :valorm
   do begin
   if (valorm is null) then
   valorm = 0;

   end
        suspend;
end
