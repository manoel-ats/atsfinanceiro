ALTER PROCEDURE CALCULA_ICMS (
    NUMERO_NF Integer,
    UF Char(2),
    CFOP Varchar(10),
    FRETE Double precision,
    SEGURO Double precision,
    OUTROS Double precision,
    TOTAL_PROD Double precision,
    INDICE_MANUAL Char(1),
    ICMS_INFO Double precision,
    REDUZ_INFO Double precision
    )
AS
DECLARE VARIABLE IND_ICMS DOUBLE PRECISION;
DECLARE VARIABLE IND_REDUZICMS DOUBLE PRECISION;
DECLARE VARIABLE IND_IPI DOUBLE PRECISION;
DECLARE VARIABLE IND_ICMSE DOUBLE PRECISION;
DECLARE VARIABLE IND_REDUZICMSE DOUBLE PRECISION;
DECLARE VARIABLE IND_IPIE DOUBLE PRECISION;
DECLARE VARIABLE ICMS DOUBLE PRECISION;
DECLARE VARIABLE IPI DOUBLE PRECISION;
DECLARE VARIABLE BASE_ICMS DOUBLE PRECISION;
DECLARE VARIABLE BASE_ICMSE DOUBLE PRECISION;
DECLARE VARIABLE VAL_TOTAL DOUBLE PRECISION;
DECLARE VARIABLE VALOR DOUBLE PRECISION;
declare variable cod integer;
declare variable NotaFiscalVenda integer;
declare variable serie varchar(20);
DECLARE VARIABLE VlrStr varchar(32);
DECLARE VARIABLE PercStr varchar(32);
DECLARE VARIABLE ICMS_DESTACADO DOUBLE PRECISION;
DECLARE VARIABLE ICMS_DESTACADO_DESC VARCHAR(60);
DECLARE VARIABLE ICMS_DESTACADO_DESC2 VARCHAR(100);  
DECLARE VARIABLE ICMS_SUBST DOUBLE PRECISION; 
begin
  BASE_ICMS = 0;
  BASE_ICMSE = 0;
  VAL_TOTAL = 0;
  IPI = 0;
  ICMS = 0;

  SELECT FIRST 1 ei.ICMS_SUBSTRIB
    FROM ESTADO_ICMS  ei WHERE UF = :UF AND CFOP = :CFOP
    INTO :ICMS_SUBST;
  if (icms_subst is null) then 
    icms_subst = 0;

  select v.codmovimento, v.NOTAFISCAL, v.SERIE from venda v
    inner join notafiscal n on n.CODVENDA = v.CODVENDA where n.NUMNF = :numero_nf
  into :cod, :notaFiscalVenda, :serie; 

  SELECT s.ICMS_DESTACADO FROM SERIES s WHERE s.SERIE = :SERIE 
    into :icms_destacado;

  if (icms_destacado is null) then 
    icms_destacado = 0;

  /* ==============================================================*/
  --Preenchimento DADOS ADICIONAIS ICMS DESTACADO
  if (icms_destacado > 0) then 
  begin 
    select * from FU_FORMATAR(:TOTAL_PROD, '########.##0,00')
      into :VlrStr;

    select * from FU_FORMATAR((:TOTAL_PROD * (:icms_destacado/100)), '########.##0,00')
      into :PercStr;

    if (icms_destacado > 0) then 
    begin 
      ICMS_DESTACADO_DESC = 'Base Calculo ICMS = ' || :VlrStr;
      ICMS_DESTACADO_DESC2 = 'Aliquota = ' || cast(:icms_destacado as varchar(5)) || '% - Icms = ' || :PercStr;
    end 
  end 
  /* ==============================================================*/  

    SELECT FIRST 1 ICMS, CASE WHEN (REDUCAO > 0) THEN (REDUCAO/100) ELSE 1 END, IPI  FROM ESTADO_ICMS WHERE UF = :UF AND CFOP = :CFOP
      INTO :IND_ICMS, :IND_REDUZICMS, :IND_IPI;
    IF (INDICE_MANUAL = 'N') THEN
    BEGIN 
      /* Busca os indices da TAB ESTADO_ICMS */
      IF (UF = 'SP') THEN
      BEGIN 
        FOR SELECT prod.IPI, mov.ICMS, prod.BASE_ICMS,
            SUM(mov.VLR_BASE*mov.QUANTIDADE) 
            FROM MOVIMENTODETALHE mov, PRODUTOS prod 
            --inner join VENDA v on v.CODMOVIMENTO = mov.CODMOVIMENTO
            WHERE mov.CODPRODUTO = prod.CODPRODUTO 
            and mov.CODMOVIMENTO = :cod GROUP BY prod.IPI, mov.ICMS, prod.BASE_ICMS
         INTO :IND_IPIE, :IND_ICMSE, :IND_REDUZICMSE, :VALOR
         DO BEGIN
            if ((reduz_info is not Null) and (reduz_info >= 0)) then  
              ind_reduzicmse = reduz_info; 
            --if (reduz_info is Null) then 
            --  ind_reduzicmse = 0; 

            if (ind_ipie is null) then 
              ind_ipie = 0;
            IF (IND_IPIE > 0) THEN
              IND_IPIE = (IND_IPIE/100);
            else
              IND_IPIE = 0;
            if (ind_ipie = 0) then 
              ind_ipie = ind_ipi; 
            IPI = IPI + (IND_IPIE * VALOR);
            if (ind_reduzicmse is null) then 
              ind_reduzicmse = 0;
            --if (ind_reduzicmse = 0) then 
            --  ind_reduzicmse = ind_reduzicms;
            IF (IND_REDUZICMSE > 1) THEN
            begin
              if (ind_reduzicmse = 100) then 
                 IND_REDUZICMSE = 1;
              else
                 IND_REDUZICMSE = (1-(IND_REDUZICMSE/100));
            end  
            --else
            --   IND_REDUZICMSE = 1;
            if (ind_icmse is null) then 
              ind_icmse = 0;
            --if (ind_icmse = 0) then 
            --  ind_icmse = ind_icms;
            if (ind_icmse > 0) then  
              IND_ICMSE = (IND_ICMSE/100);
          
            if ((ind_icmse > 0) and (ind_reduzicmse = 0)) then 
              ind_reduzicmse = ind_reduzicms;

            VAL_TOTAL = VALOR + VAL_TOTAL;
            BASE_ICMSE = BASE_ICMSE + (VALOR * IND_REDUZICMSE);
            ICMS = ICMS + ((VALOR * IND_REDUZICMSE) * IND_ICMSE);
         END
         if (ipi is null) then 
           ipi = 0;
         
        BASE_ICMS = FRETE + SEGURO + OUTROS;             

        if (icms_subst > 0) then 
           BASE_ICMS = FRETE + SEGURO + OUTROS;             
         
         VAL_TOTAL = VAL_TOTAL + BASE_ICMS + IPI;
         ICMS = ICMS + (BASE_ICMS * (IND_ICMS/100));
         BASE_ICMS = BASE_ICMSE +BASE_ICMS;
         if (IND_ICMS = 0) then 
           BASE_ICMS = 0;
         UPDATE NOTAFISCAL SET BASE_ICMS = :BASE_ICMS, VALOR_ICMS = :ICMS, VALOR_IPI = :IPI,
              CORPONF5 = :ICMS_DESTACADO_DESC, CORPONF6 = :ICMS_DESTACADO_DESC2,             
              VALOR_TOTAL_NOTA = :VAL_TOTAL, BASE_ICMS_SUBST = 0, VALOR_ICMS_SUBST = 0
               where NUMNF = :NUMERO_NF;
       END
       ELSE BEGIN -- Fora de SP
        BASE_ICMS = TOTAL_PROD + FRETE + SEGURO + OUTROS;
        if (ind_icms is null) then 
          ind_icms = 0;  
        if (IND_ICMS = 0) then 
          BASE_ICMS = 0;
        if (ind_ipi is null) then 
          ind_ipi = 0;
        if (ind_ipi > 0) then  
          IPI = (BASE_ICMS) * (IND_IPI / 100) ;
        else 
          IPI = 0; 
        if (base_icms > 0) then 
          VAL_TOTAL = BASE_ICMS + IPI;
        else 
          VAL_TOTAL = TOTAL_PROD + FRETE + SEGURO + OUTROS; 
        BASE_ICMS = (BASE_ICMS * (1-IND_REDUZICMS));-- + IPI;
        ICMS = (BASE_ICMS) * (IND_ICMS / 100);
        UPDATE NOTAFISCAL SET BASE_ICMS = :BASE_ICMS, VALOR_ICMS = :ICMS, VALOR_IPI = :IPI, 
            CORPONF5 = :ICMS_DESTACADO_DESC, CORPONF6 = :ICMS_DESTACADO_DESC2,             
            VALOR_TOTAL_NOTA = :VAL_TOTAL, BASE_ICMS_SUBST = 0, VALOR_ICMS_SUBST = 0
          where NUMNF = :NUMERO_NF;
       end
    END
    IF (INDICE_MANUAL = 'S') THEN
    BEGIN  
      BASE_ICMS = TOTAL_PROD + FRETE + SEGURO + OUTROS;
      IPI = (BASE_ICMS) * (IND_IPI / 100);
      VAL_TOTAL = BASE_ICMS;
      IF (REDUZ_INFO IS NULL) THEN
        REDUZ_INFO = 1;
      IF (REDUZ_INFO = 0) THEN
        REDUZ_INFO = 1;
      IF (ICMS_INFO IS NULL) THEN
        ICMS_INFO = 0;
      IF (ICMS_INFO = 0) THEN
        ICMS_INFO = 0;
      if (ind_icms is null) then 
        ind_icms = 0;
      if (icms_info = 0) then 
        icms_info = ind_icms;
      if (reduz_info > 1) then 
        reduz_info = reduz_info / 100;
      
      BASE_ICMS = (BASE_ICMS * (REDUZ_INFO));
      ICMS = (BASE_ICMS) * (ICMS_INFO / 100);
      if (ICMS_INFO = 0) then 
      begin 
        ICMS = 0;
      end 
      if (reduz_info = 1) then 
        base_icms =  0;
      --icms = 100;
      UPDATE NOTAFISCAL SET BASE_ICMS = :BASE_ICMS, VALOR_ICMS = :ICMS, 
          CORPONF5 = :ICMS_DESTACADO_DESC, CORPONF6 = :ICMS_DESTACADO_DESC2,             
          VALOR_TOTAL_NOTA = :VAL_TOTAL, BASE_ICMS_SUBST = 0, VALOR_ICMS_SUBST = 0
        where NUMNF = :NUMERO_NF;
    END
    if ((BASE_ICMS + IPI) <> VAL_TOTAL) then 
      VAL_TOTAL = BASE_ICMS + IPI;

    
    -- ICMS DE SUBSTITUICAO TRIBUTARIA
    EXECUTE PROCEDURE CALCULA_ICMS_SUBSTITUICAO (:NUMERO_NF,  :UF, :CFOP, :VAL_TOTAL, :notafiscalVenda , :serie, :ipi
         ,:icms_destacado_desc, :icms_destacado_desc2);

end