CREATE OR ALTER PROCEDURE CALCULA_ICMS_SUBSTITUICAO (
    NUMERO_NF Integer,
    UF Varchar(2),
    CFOP Varchar(20),
    VALORTOTAL Double precision,
    NOTAFISCALVENDA Integer,
    SERIE Char(20), ipi double precision,
    ICMS_DESTACADO_DESC VARCHAR(60),
    ICMS_DESTACADO_DESC2 VARCHAR(100))
AS
DECLARE VARIABLE ICMS_SUBST DOUBLE PRECISION; 
DECLARE VARIABLE ICMS_SUBST_IND DOUBLE PRECISION;
DECLARE VARIABLE ICMS_SUBST_IND_DESC DOUBLE PRECISION;
DECLARE VARIABLE PICMS_SUBST DOUBLE PRECISION;  -- Por Produto
DECLARE VARIABLE PICMS_SUBST_IND DOUBLE PRECISION; -- Por Produto
DECLARE VARIABLE PICMS_SUBST_IND_DESC DOUBLE PRECISION; -- Por Produto
DECLARE VARIABLE VALOR_SUB DOUBLE PRECISION;
DECLARE VARIABLE VALOR_RESTO DOUBLE PRECISION;
DECLARE VARIABLE VALOR_SUBDesc DOUBLE PRECISION;
DECLARE VARIABLE VlrStr varchar(32);
DECLARE VARIABLE PercStr varchar(32);
DECLARE VARIABLE Fatura varchar(200);
DECLARE VARIABLE DataStr varchar(32);
DECLARE VARIABLE ViaStr varchar(2);
DECLARE VARIABLE ICMS_DESTACADO DOUBLE PRECISION;
DECLARE VARIABLE TipoST varchar(10);
Declare variable codMov INTEGER;
begin
  TipoST = 'CFOP';
  -- Inicio por PRODUTO
  -- Vejo no cadastro da ClassificaoFiscal se tem substituicao tributaria se 
  -- tiver o calculo é por produto e não pelo cfop 
  
  select first 1 ven.CODMOVIMENTO from VENDA ven where ven.NOTAFISCAL = :notafiscalVenda and ven.SERIE = :serie
    into :codMov;
  
  For Select cf.ICMS_SUBST, cf.ICMS_SUBST_IC, cf.ICMS_SUBST_IND from CLASSIFICACAOFISCAL cf
      inner join produtos prod on prod.CLASSIFIC_FISCAL = cf.CLASSIFICAO
      inner join MOVIMENTODETALHE md on md.CODPRODUTO = prod.CODPRODUTO
    where md.CODMOVIMENTO = :codMov
    into :PICMS_SUBST, :PICMS_SUBST_IND, :PICMS_SUBST_IND_DESC
    do begin
      if (PICMS_SUBST IS NULL) THEN 
        TipoST = 'PRODUTO';   
    end 
  -- fim por PRODUTO   
    
  if (TipoST = 'CFOP') then   -- Calculado pelo CFOP 
  begin 
    select first 1 e.DIVERSOS1, e.DIVERSOS2 || e.DIVERSOS3 from EMPRESA e
      into :icms_destacado_desc, :icms_destacado_desc2;    
  
  icms_subst = 0;

  SELECT FIRST 1 ei.ICMS_SUBSTRIB, ei.ICMS_SUBSTRIB_IC, ei.ICMS_SUBSTRIB_IND
    FROM ESTADO_ICMS  ei WHERE UF = :UF AND CFOP = :CFOP
    INTO :ICMS_SUBST, :ICMS_SUBST_IND, :ICMS_SUBST_IND_DESC;
    /* Busca os indices da TAB ESTADO_ICMS */
  if (ICMS_SUBST is null) then 
    icms_subst = 0;

  if (ICMS_SUBST > 0) then 
  begin       
      IF (UF = 'SP') THEN
      BEGIN 
         if (icms_subst > 0) then 
           icms_subst = 1 + (icms_subst / 100);

         if (ICMS_SUBST_IND is null) then 
           icms_subst_ind = 0;
         
         if (icms_subst_ind > 0) then 
           icms_subst_ind = icms_subst_ind / 100;


         if (ICMS_SUBST_IND_DESC is null) then 
           icms_subst_ind_desc = 0;

         if (icms_subst_ind_desc > 0) then 
           icms_subst_ind_desc = icms_subst_ind_desc / 100;


         VALOR_SUB = VALORTOTAL * icms_subst; 
         VALOR_SUBDesc = (VALORTOTAL-ipi) * icms_subst_ind_desc; 
         ICMS_SUBST = (Valor_SUB  * icms_subst_ind) - Valor_SubDesc;
         VALORTOTAL = VALORTOTAL + ICMS_SUBST;

         if (icms_subst > 0) then 
         begin 
           fatura = '';
           For select UDF_DAY(dataVencimento) || '/' || UDF_MONTH(dataVencimento) || '/' || UDF_YEAR(dataVencimento)
                , via, valor_resto from RECEBIMENTO where  titulo = :notafiscalVenda || '-' || :serie
             into :DataStr, :ViaStr, :Valor_resto
             do begin
                fatura = fatura || :notafiscalVenda || '/' || viaStr || ' - ' || DataStr || ' - ';
                select * from FU_FORMATAR((:valor_resto + :icms_subst), '########.##0,00')
                  into :VlrStr;
                fatura = fatura || vlrStr;
             end  
           
           update recebimento set valor_resto = (valor_resto + :icms_subst) where titulo = :notafiscalVenda || '-' || :serie and via = 1;
           UPDATE NOTAFISCAL SET BASE_ICMS_SUBST = :VALOR_SUB, VALOR_ICMS_SUBST = :ICMS_SUBST, 
              VALOR_TOTAL_NOTA = :VALORTOTAL, CORPONF5 = :ICMS_DESTACADO_DESC, CORPONF6 = :ICMS_DESTACADO_DESC2
              , FATURA = :fatura
             where NUMNF = :NUMERO_NF;
         end
         else begin  
           --UPDATE NOTAFISCAL SET     VALOR_TOTAL_NOTA = :VALORTOTAL, CORPONF5 = :ICMS_DESTACADO_DESC, CORPONF6 = :ICMS_DESTACADO_DESC2
           -- where NUMNF = :NUMERO_NF;
         end  
         
       END
       ELSE BEGIN -- Fora de SP
         
       end
  end 
  end -- Fim do Calculo pelo CFOP
end

