CREATE OR ALTER PROCEDURE SP_CR (
    PVENDA INTEGER)
RETURNS (
    PARCELA VARCHAR(150),
    PARCELA1 VARCHAR(150),
    PARCELA2 VARCHAR(150),
    PARCELA3 VARCHAR(150),
    PARCELA4 VARCHAR(150),
    PARCELA5 VARCHAR(150),
    PARCELA6 VARCHAR(150),
    PARCELA7 VARCHAR(150),
    PARCELA8 VARCHAR(150),
    PARCELA9 VARCHAR(150),
    PARCELA10 VARCHAR(150))
AS
DECLARE VARIABLE I INTEGER;
DECLARE VARIABLE TIT VARCHAR( 18 );
DECLARE VARIABLE VENC DATE;
DECLARE VARIABLE VALOR_N DOUBLE PRECISION;
DECLARE VARIABLE VALOR_R DOUBLE PRECISION;
DECLARE VARIABLE VALOR_P DOUBLE PRECISION;
DECLARE VARIABLE PARC INTEGER;
DECLARE VARIABLE DATA DATE;
DECLARE VARIABLE STATUS VARCHAR(30);
begin
  /* Procedure Text */

   I = 1;

  for select TITULO,DATAVENCIMENTO,VALORTITULO,VALOR_RESTO,VALORRECEBIDO,VIA,DATARECEBIMENTO, CASE STATUS
   WHEN '5-' THEN 'Pendente' WHEN '7-' THEN 'Recebido' WHEN '1-' THEN 'Aguardando' end as Situacao
  from RECEBIMENTO WHERE (CODVENDA = :PVENDA) ORDER BY VIA

  into :tit,:venc,:valor_n,:valor_r,:valor_p,:parc,:data,:status
  do begin
    IF (I = 1) THEN
    begin
      PARCELA = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA = PARCELA || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA = PARCELA || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 2) THEN
    begin
      PARCELA1 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA1 = PARCELA1 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA1 = PARCELA1 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 3) THEN
    begin
      PARCELA2 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA2 = PARCELA2 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA2 = PARCELA2 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 4) THEN
    begin
      PARCELA3 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA3 = PARCELA3 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA3 = PARCELA3 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 5) THEN
    begin
      PARCELA4 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA4 = PARCELA4 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA4 = PARCELA4 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end

    IF (I = 6) THEN
    begin
      PARCELA5 = extract(day from venc) || '/' ||extract(month from venc)
      || '/' || extract(year from venc) || '    ' || cast(valor_n as numeric(9,2));
      if (status = 'Recebido') then
        PARCELA5 = PARCELA5 || '    ' || cast(valor_p as numeric(9,2)) || '    ' || parc
        || '    ' || extract(day from data) || '/' ||extract(month from data)
        || '/' || extract(year from data) || '    ' || status;
      if (status <> 'Recebido') then
        PARCELA5 = PARCELA5 || '    ' || cast(valor_r as numeric(9,2)) || '    ' || parc
        || '    ' || '__/__/____' || '    ' || status;
    end


    I = I + 1;

    end
  suspend;
end

