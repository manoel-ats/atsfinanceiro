CREATE OR ALTER PROCEDURE AUD_SIP (
    dia date,
    data1 date,
    data2 date,
    codalmox integer)
returns (
    datavencimento date,
    datapagamento date,
    status char(10),
    valortitulo double precision,
    valorrecebido double precision,
    nome varchar(200),
    contapai varchar(10),
    nome1 varchar(200),
    nomefornecedor varchar(60))
as
BEGIN
  FOR
    select rec.DATAVENCIMENTO , rec.DATAPAGAMENTO,rec.status,
    SUM(rec.VALORTITULO  ) AS VALORTITULO , 
    sum(rec.VALORRECEBIDO ) as VALORRECEBIDO,
    pl.nome , pl.contapai,  pla.nome  ,cli.nomefornecedor
    from PAGAMENTO rec
    inner join FORNECEDOR cli on cli.CODFORNECEDOR = rec.CODFORNECEDOR
    inner join PLANO pl on pl.codigo = rec.contacredito
    left outer join PLANO pla on pla.conta = pl.contapai
    where (rec.DATAINCLUSAO between  :DATA1 and :DATA2) and
    ((rec.STATUS = '5-')or((rec.STATUS = '7-')and(rec.datapagamento > :dia)))
    --and rec.CODFORNECEDOR = 28
    AND CODALMOXARIFADO = :codalmox
    and ((pl.contapai = '4.1.1.09') 
    or (pl.contapai = '4.1.1.10') 
    or (pl.contapai = '4.1.1.11') 
    or (pl.contapai = '4.1.1.12')
    or (pl.contapai = '4.1.1.13')
    or ((pl.contapai = '4.1.1.02')and(pl.nome = 'DIFERENÇA PAGAMENTO'))
    )
    group by 
    
    pla.conta, pl.contapai, pl.nome,cli.nomefornecedor, pla.nome ,rec.DATAVENCIMENTO ,rec.DATAPAGAMENTO ,rec.status
    INTO :DATAVENCIMENTO,
         :DATAPAGAMENTO,
         :STATUS,
         :VALORTITULO,
         :VALORRECEBIDO,
         :NOME,
         :CONTAPAI,
         :NOME1,
         :NOMEFORNECEDOR
  DO
  BEGIN
    status = 'Pendente';

    if(:dia < :DATAPAGAMENTO)then
    begin
      if(status = '7-')then
      status = 'Pendente';
      valorrecebido = 0;
   end
    if(status = '5-')then
      status = 'Pendente';
    SUSPEND;
  END
END
