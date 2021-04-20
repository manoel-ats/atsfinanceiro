CREATE OR ALTER PROCEDURE TOTAIS_DMED_S 
returns (
    ra varchar(10),
    razaosocial varchar(50),
    vlr_mensal double precision,
    valorrp1 double precision,
    valor_total double precision,
    valorr double precision,
    pago double precision,
    valorrps double precision,
    valortre double precision,
    final double precision)
as
BEGIN

  FOR
    select ra , RAZAOSOCIAL
    from clientes
    where segmento = 0 and GRUPO_CLIENTE = 'ASH'
    and ((dataresc is null) or (dataresc > '12/31/10'))
    and cnpj = '000.000.000-00'
    order by ra
    into :ra ,:razaosocial
  do begin

  FOR
    select 
    dm.razaosocial, sum(dm.vlr_mensal)
    from dmed_mensalidade_s  dm  where dm.razaosocial = :razaosocial  /*:titular */
    group by
    dm.razaosocial
    ORDER BY dm.razaosocial
    INTO :RAZAOSOCIAL,:VLR_MENSAL
  DO
  BEGIN
    /*imprimiu = 'N'; */
    valor_total = 0;
    valorrp1 = 0;
    pago = 0;
    select
    sum(preco)
    from lan_dmed_S  where lan_dmed_S.razaosocial = :RAZAOSOCIAL and lan_dmed_s.preco > 0
    INTO :valorRp1 ;
    begin

    IF(valorRP1 IS NULL)THEN
      valorRP1 = 0;
      valor_total = VLR_MENSAL + valorRP1;
    end

    select sum(preco)
    from lan_dmed_S  where lan_dmed_S.razaosocial = :RAZAOSOCIAL and lan_dmed_S.preco < 0
    and lan_dmed_S.produto <> 'REEMB. P/ SOCIOS'
    INTO :valorR ;
    begin
      valor_total = VLR_MENSAL + valorRP1;
      IF(valorr IS NULL ) THEN
      VALORR = 0;
      pago =   valor_total + valorR ;

    select sum(preco)
    from lan_dmed_S  where lan_dmed_S.razaosocial = :RAZAOSOCIAL and lan_dmed_S.preco < 0
    and lan_dmed_S.produto = 'REEMB. P/ SOCIOS'
    INTO :valorRPS ;
    begin
    /* valor_total = VLR_MENSAL + valorRP1; */
      IF(valorRPS IS NULL ) THEN
      valorRPS  = 0;
     /* pago =   pago + valorRPS ; */
      valorTRE = valorR + valorRPS;

    end

    end
    final = valor_total + valorTRE ;

    SUSPEND;
      VLR_MENSAL = 0;
      valor_total = 0 ;
      valorrp1 = 0;
      valorr = 0;
      PAGO =0 ;
  END
  end
END
