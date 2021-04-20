CREATE PROCEDURE AUD_RECEBER (
    dia date,
    codalmox integer)
returns (
    codrecebimento integer,
    titulo varchar(18),
    emissao date,
    datavencimento date,
    datarecebimento date,
    statusp char(14),
    status char(2),
    codcliente integer,
    outro_debito double precision,
    valortitulo double precision,
    valor_resto double precision,
    valor_prim_via double precision,
    valorrecebido double precision,
    via varchar(257),
    historico varchar(150),
    n_documento varchar(20),
    dup_rec_nf varchar(15),
    dp integer,
    bl integer,
    codvenda integer,
    nomecliente varchar(50),
    razaosocial varchar(50),
    ra varchar(10),
    valorrec double precision)
as
BEGIN
  FOR
    select rec.CODRECEBIMENTO, rec.TITULO, rec.EMISSAO, rec.outro_debito ,  rec.DATAVENCIMENTO, rec.CODCLIENTE, rec.VALORTITULO, 
     rec.VALOR_RESTO, rec.VALOR_PRIM_VIA, rec.STATUS, 
     CASE rec.STATUS WHEN '5-' THEN 'PENDENTE' WHEN '7-' THEN 'RECEBIDO' WHEN '8-' THEN 'CRÉD. DUVIDOSO' WHEN '14' THEN 'CANCELADO' END AS STATUSP,
      rec.DATARECEBIMENTO, (rec.VALORRECEBIDO + rec.juros)as VALORRECEBIDO , 
     UDF_PADL(CAST(UDF_TRIM(rec.VIA) AS VARCHAR(2)),'0',2) || '/' || CAST(UDF_PADL(rec.PARCELAS,'0',2) as varchar(2)) as VIA, rec.HISTORICO , 
    rec.N_DOCUMENTO, rec.DUP_REC_NF, rec.DP, rec.BL,rec.CODVENDA, cli.NOMECLIENTE, cli.RAZAOSOCIAL, cli.RA, (rec.DESCONTO) as VALORREC

    from RECEBIMENTO rec  
    inner join CLIENTES cli on cli.CODCLIENTE=rec.CODCLIENTE 
    WHERE
    ((rec.STATUS = '5-')or((rec.STATUS = '7-') and (rec.datarecebimento >= :dia))) and (rec.EMISSAO <= :dia) /* and (rec.DATAVENCIMENTO <= :dia) */
    and CODALMOXARIFADO = :codalmox
    order by  cli.RA ,rec.DATAVENCIMENTO
    INTO :CODRECEBIMENTO,:TITULO,:EMISSAO,:OUTRO_DEBITO,:DATAVENCIMENTO,:CODCLIENTE,
         :VALORTITULO,:VALOR_RESTO,:VALOR_PRIM_VIA,:STATUS,:STATUSP, :DATARECEBIMENTO,
         :VALORRECEBIDO,:VIA,:HISTORICO,:N_DOCUMENTO,:DUP_REC_NF,:DP,:BL,:CODVENDA,
         :NOMECLIENTE,:RAZAOSOCIAL,:RA,:VALORREC
  DO
  BEGIN
    if((:dia < :DATARECEBIMENTO ) or (:dia = :DATARECEBIMENTO ))  then
    begin
     if(status = '7-')then
     statusp = 'PENDENTE';
      valorrec = valorrecebido;
      valorrecebido = 0;
    end
    SUSPEND;
  END
END
