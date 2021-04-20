CREATE OR ALTER PROCEDURE RELCRPORVENCIMENTO (
    data1 date,
    data2 date,
    pcli integer,
    pstatus char(3),
    codccusto integer,
    datadia date)
returns (
    titulo varchar(15),
    codrec integer,
    dtemissao date,
    dtvencto date,
    dtrecebido date,
    codcliente integer,
    nomecliente varchar(60),
    vlrtitulo double precision,
    tottitulo double precision,
    vlrrec double precision,
    vlrdeve double precision,
    status varchar(20),
    juros double precision,
    valorjuros double precision,
    ra varchar(10),
    v_multa double precision,
    dia double precision)
as
declare variable vlrprim double precision;
declare variable ntit varchar(15);
declare variable jurosrec double precision;
declare variable multa double precision;
BEGIN
  totTitulo = 0;
  vlrPrim = 0;
  vlrTitulo = 0;
  vlrDeve = 0;
  vlrRec = 0;
  nTit = '0';

 --  select current_date from rdb$database 
 --  into :DATADIA;

   select CAST (DADOS as DOUBLE PRECISION) from PARAMETRO WHERE PARAMETRO = 'RECEBERJUROS'
   into :JUROS;
   multa = 2;
   v_multa = 0 ;
 /* Procedure usada em relatório para mostrar o valor total de vendas por cliente */ 
  For select rec.CODRECEBIMENTO, rec.TITULO, rec.EMISSAO, 
    rec.DATAVENCIMENTO, rec.CODCLIENTE, cli.NOMECLIENTE,cli.RA, rec.VALOR_RESTO, rec.VALORRECEBIDO, rec.JUROS,
    case rec.STATUS when '5-' then 'Pendente' when '7-' then 'Recebido' when '8-' then 'Suspenso' end
    ,rec.DATARECEBIMENTO , rec.valor_prim_via, rec.VALORTITULO ,udf_DaysBetween(:DATADIA,REC.DATAVENCIMENTO) AS DIA
     from RECEBIMENTO rec
    inner join CLIENTES cli on cli.CODCLIENTE=rec.CODCLIENTE 
    where (rec.DATAVENCIMENTO between :DATA1 and :DATA2)
    and rec.valortitulo > 0
    and ((rec.CODCLIENTE = :pcli) or (:pcli = 9999999)) and ((rec.Status = :pstatus) or (:pstatus = '00'))
    and ((rec.CODALMOXARIFADO = :CODCCUSTO) OR (:CODCCUSTO = 0)) 
    order by rec.CODCLIENTE, rec.Emissao, codRecebimento
   
    into :codRec, :Titulo, :dtEmissao, :dtVencto, :codCliente,:nomeCliente ,:RA, :vlrDeve, :vlrRec ,:JUROSREC,
      :status, :dtRecebido, :vlrPrim, :vlrTitulo , :DIA 
    do begin
    if(:dia > 30) then
      v_multa = (vlrtitulo * (multa/100)) ;

      VALORJUROS = VLRDEVE*(((JUROS/100)/30) * DIA);
    IF (VALORJUROS < 0.01) THEN 
      VALORJUROS = 0;         
    if (Titulo = nTit) then
      begin  
        Titulo = null;
        vlrTitulo = null;
      end 
      if (vlrPrim is null) then
        totTitulo = 0;
      else   
        totTitulo = vlrPRim; 
      
      if (status = 'Recebido') then 
         vlrDeve = 0;

      if (status = 'Recebido') then 
         VALORJUROS = JUROSREC;
         
      suspend;
      if (Titulo is not null) then 
      begin 
        nTit = Titulo;
      end 
      vlrDeve = 0;
  
      vlrPrim = 0;
      vlrTitulo = 0;
      vlrRec = 0;
      v_multa = 0;
    end
   
END
