CREATE OR ALTER PROCEDURE VALIDAR_CNPJ_CPF 
returns (
    ok char(1),
    nomefornecedor varchar(120))
as
declare variable trab varchar(2);
declare variable wcal varchar(12);
declare variable wsom integer;
declare variable wdig smallint;
declare variable wint smallint;
declare variable wcpf varchar(18);
begin 
   /*
   Valida um CPF
   */
for
    select distinct(
        d_2015d.nomefornecedor),

        d_2015d.cnpj
    from d_2015d
    WHERE d_2015d.tipofirma ='0'
    AND d_2015d.nomefornecedor <>''
    INTO :NOMEFORNECEDOR,
         :wcpf
  DO
  BEGIN



   select r_OnlyDigit from Fu_OnlyDigit(:wcpf) into :wcpf;
   wsom = 0;
   wcal = substring(:wcpf from 1 for 9);
   wint = 1;
while (:wint <= 9) do begin
   select r_Copy from Fu_Copy(:wcpf, :wint, 1) into :trab;
   wsom = :wsom + cast(:trab as smallint) * (11 - :wint);
   wint = :wint + 1;
   end
select r_mod from Fu_mod(:wsom, 11) into :wdig;
   wdig = 11 - :wdig;
if ((:wdig = 10) or (:wdig = 11)) then
   wcal = :wcal || '0';
   else
   wcal = :wcal || cast(:wdig as char(1));
wsom = 0;
   wint = 1;
while (:wint <= 10) do begin
   select r_Copy from Fu_Copy(:wcpf, :wint, 1) into :trab;
   wsom = :wsom + cast(:trab as smallint) * (12 - :wint);
   wint = :wint + 1;
   end
select r_mod from Fu_mod(:wsom, 11) into :wdig;
   wdig = 11 - :wdig;
if ((:wdig = 10) or (:wdig = 11)) then
   wcal = :wcal || '0';
   else
   wcal = :wcal || cast(:wdig as char(1));
if (:wcpf <> :wcal) then
   ok = 'N';
   else
   ok = 'S';
suspend;
   end
end
