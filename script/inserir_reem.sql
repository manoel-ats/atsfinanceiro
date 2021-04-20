CREATE OR ALTER PROCEDURE INSERIR_REEM 
returns (
    ra varchar(10),
    razaosocial varchar(50),
    nomecliente varchar(50),
    cod_cliente integer,
    reembolso double precision,
    valor double precision,
    perda double precision)
as
declare variable codcliente integer;
BEGIN

  FOR
    select CODCLIENTE
    from clientes
    where segmento = 0 and GRUPO_CLIENTE = 'ASH'
    and ((dataresc is null) or (dataresc > '12/31/10'))
    and cnpj <> '000.000.000-00'  -- and ra = '0010000'
    order by ra
    into : codcliente
    do begin
         FOR
           select
             cli.ra,
             cli.razaosocial,
             cli.nomecliente,
             ven.desconto ,
             VEN.valor,
             movd.controle,
             movd.preco--,
           --  REC.DESCONTO ,
           --  REC.PERDA
             FROM RECEBIMENTO rec
             inner join venda ven on ven.numerobordero = rec.codrecebimento
             inner join movimentodetalhe movd on movd.codmovimento = ven.codmovimento
             inner join CLIENTES cli on cli.CODCLIENTE =  movd.controle
             WHERE rec.DATARECEBIMENTO BETWEEN '01/01/11' AND '12/31/11' 
             AND (rec.STATUS = '7-') AND rec.CODCLIENTE = :codcliente AND rec.CODALMOXARIFADO = 51
             And rec.desconto <> 0
             AND  ven.DESCONTO <> 0
             AND VEN.valor = 0
             AND REC.DESCONTO = REC.PERDA
             order by
             cli.ra
              INTO :RA,:RAZAOSOCIAL, :nomecliente, :REEMBOLSO ,:valor,:COD_CLIENTE , :perda
         DO
         BEGIN
           --  IF(rec_desconto <> PERDA)then
           --  rec_desconto = perda ;
           --  IF(rec_desconto = PERDA)then
            -- REC_perda = rec_desconto  ;
         --- PERDA = (perda * -1) ;
         --- IF(reEMBOLSO = PERDA)then
         --- rec_PERDA = PERDA ;
         -- IF(REC_DESCONTO <> REC_perda)THEN
        --  REC_PERDA = REC_DESCONTO;
         SUSPEND;
         END
     END
END
