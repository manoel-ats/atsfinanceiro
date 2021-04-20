CREATE OR ALTER trigger novos_socios for clientes
active after insert or update position 0
AS
declare variable a double precision;
declare variable b double precision;
declare variable c double precision;
declare variable d double precision;
declare variable valor double precision;
declare variable codcliente integer;
declare variable cod_faixa integer;
declare variable socio_numero integer;

begin
  if (new.grupo_cliente = 'ASH') then
  begin
    if ((inserting) or ((old.cod_faixa <> new.cod_faixa) and (updating ))) then
      begin
        select faixa_etaria.valor_plano , faixa_etaria.valor_a ,faixa_etaria.valor_b ,faixa_etaria.valor_c  from faixa_etaria
        where faixa_etaria.codigos = new.cod_faixa  and faixa_etaria.uso = 'ASH'
        into : a , b ,c , d;
        if(new.numero = 0) then
        valor = a ;
        if(new.numero = 1) then
        valor = b ;
        if(new.numero = 2) then
        valor = c ;
        if(new.numero = 3) then
        valor = d ;
      end

      select CODCLIENTE , COD_FAIXA ,SOCIO_NUMERO from HIST_FAIXA
       where CODCLIENTE = old.CODCLIENTE and COD_FAIXA = old.COD_FAIXA and data_mov = old.DTAALTERA
      into :CODCLIENTE , :COD_FAIXA , :SOCIO_NUMERO;
      if(CODCLIENTE is null) then
      CODCLIENTE = 0 ;
      if(CODCLIENTE > 0) then
      begin
        UPDATE hist_faixa set valor = :valor , socio_numero = new.numero , cod_faixa = new.cod_faixa
        where CODCLIENTE = old.CODCLIENTE and COD_FAIXA = old.COD_FAIXA and data_mov = old.DTAALTERA ;
      end
      else
      begin
        if ((old.cod_faixa <> new.cod_faixa) and (updating ) and (new.numero > 0)) then
      INSERT INTO hist_faixa (CODCLIENTE,COD_FAIXA,VALOR,DATA_MOV,SOCIO_NUMERO,DATACADASTRO)
      VALUES (NEW.CODCLIENTE ,NEW.COD_FAIXA,:valor,NEW.DTAALTERA,NEW.NUMERO,NEW.DATACADASTRO);
      if(inserting and new.numero > 0) then
      INSERT INTO hist_faixa (CODCLIENTE,COD_FAIXA,VALOR,DATA_MOV,SOCIO_NUMERO,DATACADASTRO)
      VALUES (NEW.CODCLIENTE ,NEW.COD_FAIXA,:valor,NEW.DTAALTERA,NEW.NUMERO,NEW.DATACADASTRO);
      end
  end

  if (old.grupo_cliente = 'ASH') then
  begin
  if ((old.numero <> new.numero) and (updating)) then
      begin
        select faixa_etaria.valor_plano , faixa_etaria.valor_a ,faixa_etaria.valor_b ,faixa_etaria.valor_c  from faixa_etaria
        where faixa_etaria.codigos = new.cod_faixa  and faixa_etaria.uso = 'ASH'
        into : a , b ,c , d;
        if(new.numero = 0) then
        valor = a ;
        if(new.numero = 1) then
        valor = b ;
        if(new.numero = 2) then
        valor = c ;
        if(new.numero = 3) then
        valor = d ;
        if(valor is null) then
        valor = 0;
        UPDATE hist_faixa set valor = :valor , socio_numero = new.numero
        where CODCLIENTE = old.CODCLIENTE and COD_FAIXA = old.COD_FAIXA and data_mov = old.DTAALTERA ;

     end
  end
end
