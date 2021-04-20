CREATE OR ALTER PROCEDURE AUDITORIA_CONTAS (
    dia date,
    dataini date,
    datafin date,
    codalmox integer)
returns (
    valortitulo double precision,
    valor_resto double precision,
    valor_prim_via double precision,
    status char(16),
    valorrecebido double precision,
    valorrec double precision,
    perda double precision,
    nome varchar(50),
    contapai varchar(50),
    nome1 varchar(50))
as
declare variable datapagamento date;
BEGIN
  FOR
    select
    sum(rec.VALORTITULO) as VALORTITULO ,sum(rec.VALOR_RESTO) as VALOR_RESTO ,
    sum(rec.VALOR_PRIM_VIA) as VALOR_PRIM_VIA ,
    CASE rec.STATUS WHEN '5-' THEN 'PENDENTE' when '6-' then 'PENDENTE CONTAB.' when '7-' then 'PAGO' when '8-' then 'SUSPENSO' END AS STATUS,
    rec.DATAPAGAMENTO, sum(rec.VALORRECEBIDO ) as VALORRECEBIDO,
     sum(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC , sum(rec.perda) as perda ,
    pl.nome , pl.contapai
    from PAGAMENTO rec  
    inner join PLANO pl on pl.codigo = rec.contacredito
    where rec.DATAINCLUSAO between :dataini and :datafin  AND CODALMOXARIFADO = :codalmox
    and ((plano.contapai = '4.1.1.09') or (plano.contapai = '4.1.1.10') or (plano.contapai = '4.1.1.11') or (plano.contapai = '4.1.1.12')or (plano.contapai = '4.1.1.13'))
    group by  pl.contapai, rec.STATUS, rec.DATAPAGAMENTO,pl.nome
    INTO :VALORTITULO,
         :VALOR_RESTO,:VALOR_PRIM_VIA,:STATUS,:DATAPAGAMENTO,
         :VALORRECEBIDO,:VALORREC , :PERDA ,:NOME ,:CONTAPAI

  DO
  BEGIN

  for select p.nome from plano p where  p.conta = :CONTAPAI
  into :nome1
  do 
  begin

    if((:dia < :datapagamento) or (:dia = :datapagamento)) then
    begin
      if(status = 'PAGO')then
      status = 'PENDENTE';
      valorrec = (valorrecebido + perda);
      valorrecebido = 0;

    end
    SUSPEND;
  END
  end
END
