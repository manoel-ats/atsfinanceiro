ALTER TRIGGER INCLUI_REC
AFTER INSERT
POSITION 0
AS
  DECLARE VARIABLE i integer;
  DECLARE VARIABLE status_venda char(2);
  DECLARE VARIABLE VLR_TITULO DOUBLE PRECISION;
  DECLARE VARIABLE VLR_RESTO DOUBLE PRECISION;
  DECLARE VARIABLE VLR_PARCELA DOUBLE PRECISION;
  DECLARE VARIABLE VLR_PRIM_VIA DOUBLE PRECISION;
  DECLARE VARIABLE VLR_JM DOUBLE PRECISION;
  DECLARE VARIABLE VLR_DESC DOUBLE PRECISION;
  DECLARE VARIABLE VLR_DESCa DOUBLE PRECISION;
  DECLARE VARIABLE VLR_TITULOa DOUBLE PRECISION;
  DECLARE VARIABLE VLR_RESTOa DOUBLE PRECISION;
  DECLARE VARIABLE VLR_PARCELAa DOUBLE PRECISION;
  DECLARE VARIABLE VLR_PRIM_VIAa DOUBLE PRECISION;
  DECLARE VARIABLE VLR_JMa DOUBLE PRECISION;
  DECLARE VARIABLE VLR_REC DOUBLE PRECISION;
  DECLARE VARIABLE mesAno varchar(6);
  DECLARE VARIABLE serie varchar(18);  
  Declare Variable codMov integer;
  Declare Variable codRec integer;
  DECLARE VARIABLE N_PARC INTEGER;
  DECLARE VARIABLE NATUREZA INTEGER;
  DECLARE VARIABLE CAIXA INTEGER;
  DECLARE VARIABLE DTAREC DATE;
  DECLARE VARIABLE DTAVENC DATE;
  DECLARE VARIABLE MESMOTITULO CHAR(1);
  Declare Variable existeTitulo integer;
  DECLARE VARIABLE d1 smallint;
  DECLARE VARIABLE d2 smallint;
  DECLARE VARIABLE d3 smallint;
  DECLARE VARIABLE d4 smallint;
  DECLARE VARIABLE d5 smallint;
  DECLARE VARIABLE d6 smallint;
  DECLARE VARIABLE d7 smallint;
  DECLARE VARIABLE d8 smallint;
  DECLARE VARIABLE d9 smallint;
  Declare variable dif1 smallint;
  Declare variable dif2 smallint;
  Declare variable dif3 smallint;
  Declare variable dif smallint;
  Declare variable j smallint;
  declare variable forma char(1);
DECLARE VARIABLE tipoEmpresa varchar(30);  
begin
   i = 0;
   J = 0;
   forma = new.FORMARECEBIMENTO;
   if (new.FORMARECEBIMENTO is null) then 
     forma = '1';
   SELECT D1, D2, D3, D4, D5, D6, D7, D8, D9 FROM PARAMETRO
     WHERE DADOS = 'PRAZO' and PARAMETRO = NEW.PRAZO
     INTO :D1, :D2, :D3, :D4, :D5, :D6, :D7, :D8, :D9;
   if (d1 is null) then d1 = 0;
   if (d2 is null) then d2 = 0;
   if (d3 is null) then d3 = 0;
   if (d4 is null) then d4 = 0;
   if (d5 is null) then d5 = 0;
   if (d6 is null) then d6 = 0;
   if (d7 is null) then d7 = 0;
   if (d8 is null) then d8 = 0;
   if (d9 is null) then d9 = 0;
   if ((d2-d1)=(d3-d2)) then 
   if ((d1-0) = (d2-d1)) then 
     dif = d2-d1;

   SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'EMPRESA'
     INTO :tipoEmpresa;
    if (tipoEmpresa is null) then   
     tipoEmpresa = 'vazio';
   -- Se a empresa for de Logistica a Tela de Compra e Venda n??o gera 
   -- Contas a Pagar nem a Receber
   If (tipoEmpresa <> 'LOGISTICA') then
   begin 
   /* Ve se o cliente usa 1 ti??tulo por venda                     */
   /* ou 1 ti??tulo por mes(gera somente 1 titulo independente ,   */
   /* do numero de vendas)                                        */
   
   SELECT CONFIGURADO FROM PARAMETRO WHERE PARAMETRO = 'UNICOTITULO'
     INTO :MESMOTITULO;  
   IF (MESMOTITULO = 'S') THEN
   Begin
     /* ????? usado para gerar somente 1 t????tulo m????s para o cliente  */
     /* todo movimento que o cliente tem no m????s apenas 1 t????tulo */
     /* no contas a receber ser???? criado                         */ 

     mesAno = UDF_STRZERO(UDF_MONTH(new.DATAVENCIMENTO),2) || UDF_YEAR(new.DATAVENCIMENTO);

     select serie from series where serie = :mesAno
       into :serie;
     if (serie is null) then
       insert into series(serie, ultimo_numero) values (:mesAno, 0);

     -- Verifico se ja tem lancamento no mes para o Cliente
     Select FIRST 1 codVenda, CODRECEBIMENTO, VALOR_PRIM_VIA, VALOR_RESTO, 
            VALORTITULO, VALORRECEBIDO, 
            DESCONTO, JUROS
         from RECEBIMENTO where codCliente = new.CODCLIENTE and 
         dataVencimento = new.DATAVENCIMENTO and STATUS = '5-'
         AND formarecebimento <> '4' 
       INTO :existeTitulo, :codMov, :VLR_PRIM_VIAa, :VLR_RESTOa, 
           :VLR_TITULOa, :VLR_REC, :VLR_DESCa,:VLR_JMa;

     /* Fim da Busca se existe ti??tulo */ 
     SELECT DISTINCT CODNATUREZA FROM MOVIMENTO WHERE CODMOVIMENTO = NEW.CODMOVIMENTO 
      INTO :NATUREZA;
     if (NATUREZA = 3) then
     BEGIN
       i = 0;
       VLR_PRIM_VIA = NEW.VALOR;
       VLR_TITULO = NEW.VALOR;
       VLR_DESC = NEW.DESCONTO;
       if (VLR_DESC IS NULL) THEN
         VLR_DESC = 0;
       VLR_JM =  NEW.MULTA_JUROS;
       IF (VLR_JM is null) THEN
         VLR_JM = 0;
       VLR_RESTO =  ((NEW.VALOR - VLR_DESC + VLR_JM)- NEW.ENTRADA);
       N_PARC = NEW.N_PARCELA;
       if (NEW.ENTRADA > 0) then
       begin
         if (new.FORMARECEBIMENTO = '3') THEN
           status_venda = '1-';
         ELSE
           status_venda = '7-';
         VLR_RESTO =  NEW.VALOR;
         /* Nao existe ti??tulo */
         if (existeTitulo is null) then
         begin
           select gen_id(COD_AREC,1) FROM RDB$DATABASE  
             into :codRec;
           -- Coloquei o Desconto como 0(zero), pois ele ja sai no valor_resto
           INSERT INTO RECEBIMENTO 
           (CODRECEBIMENTO, TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS , VIA, FORMARECEBIMENTO, 
            CODVENDA , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
            , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, VALORRECEBIDO, PARCELAS
            , DESCONTO, JUROS, FUNRURAL, PERDA, TROCA, N_DOCUMENTO, OUTRO_CREDITO, CAIXA, DATARECEBIMENTO, DATACONSOLIDA ) 
           VALUES 
            (:CodRec, (NEW.NOTAFISCAL || '-' || NEW.SERIE), NEW.DATAVENDA, NEW.CODCLIENTE, NEW.DATAVENCIMENTO,
            :status_venda, CAST((:i + 1) as CHAR(3)), :forma, NEW.CODVENDA, NEW.CODCCUSTO, NEW.CODVENDEDOR, NEW.CODUSUARIO,  
            'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.ENTRADA, NEW.N_PARCELA,0,:VLR_JM,0,0,0, NEW.N_DOCUMENTO, 0, new.CAIXA, NEW.DATAVENDA, new.DATAVENCIMENTO);
           update venda set NUMEROBORDERO = :codRec WHERE CODVENDA = new.CODVENDA;
         end  
         else begin
            -- Retirei isso do update abaixo,pois, o desconto da venda j???? esta no valor Valor_resto
            --DESCONTO = :VLR_DESC + :VLR_DESCa
           /* Se existe ele e pendente entao a trigger GERA_REC tab RECEBIMENTO faz o resto */ 
           update recebimento set valor_prim_via = :vlr_prim_viaa + :VLR_PRIM_VIA, 
              valor_RESTO = :VLR_RESTOa + :VLR_RESTO, VALORTITULO = :VLR_TITULO + :VLR_TITULOa,
              DESCONTO = 0 , JUROS = :VLR_JM + :VLR_JMa,
              VALORRECEBIDO = :VLR_REC + NEW.ENTRADA WHERE CODRECEBIMENTO = :codMov;
           update venda set NUMEROBORDERO = :codMov WHERE CODVENDA = new.CODVENDA; 
         end 
         i = 1;
         N_PARC = (NEW.N_PARCELA);
       end
       while (i < (N_PARC)) do
       begin
         if (NEW.STATUS = 0) then
         begin     
           status_venda = '5-';
           CAIXA = null;
           DTAREC = null; 
         end
         if (NEW.STATUS = 1) then
         begin
           status_venda = '7-';  
           caixa = new.caixa;
           DTAREC = NEW.DATAVENDA;
         end
         if ((i+1) > 1) then 
         begin
           VLR_PRIM_VIA = 0;
         end
         VLR_RESTO =  ((NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS)- NEW.ENTRADA)/N_PARC;
         /* Nao existe ti??tulo */
         if (existeTitulo is null) then
         begin
           if (dif > 0) then 
             j = (dif*(i+1));
           else if (d1 > 0) then 
           begin 
             j = d1;   
             d1 = 0;
           end 
           else if (d2 > 0) then 
           begin 
             j = d2;   
             d2 = 0;
           end 
           else if (d3 > 0) then 
           begin 
             j = d3;   
             d3 = 0;
           end 
           else if (d4 > 0) then 
           begin 
             j = d4;   
             d4 = 0;
           end 
           else if (d5 > 0) then 
           begin 
             j = d5;   
             d5 = 0;
           end 
           else if (d6 > 0) then 
           begin 
             j = d6;   
             d6 = 0;
           end 
           else if (d7 > 0) then 
           begin 
             j = d7;   
             d7 = 0;
           end 
           else if (d8 > 0) then 
           begin 
             j = d8;   
             d8 = 0;
           end 
           else if (d9 > 0) then 
           begin 
             j = d9;   
             d9 = 0;
           end 

           -- Se j = 0 ent??o n??o usa prazo , usa a data Vencimento     
           if (j = 0) then 
             dtaVenc = UDF_INCMONTH(NEW.DATAVENCIMENTO, i);
           else
             dtaVenc = UDF_INCDAY(NEW.DATAVENDA, J);
           select gen_id(COD_AREC,1) FROM RDB$DATABASE  
             into :codRec;
           INSERT INTO RECEBIMENTO 
             (CODRECEBIMENTO, TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS , VIA, FORMARECEBIMENTO, 
             CODVENDA , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
             , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, PARCELAS, VALORRECEBIDO
             , DESCONTO, JUROS, FUNRURAL, PERDA, TROCA,N_DOCUMENTO, OUTRO_CREDITO, CAIXA, DATARECEBIMENTO) 
           VALUES 
             (:CodREc, (NEW.NOTAFISCAL || '-' || NEW.SERIE), NEW.DATAVENDA, NEW.CODCLIENTE, :dtaVenc,
             :status_venda, CAST((:i+1) as CHAR(3)), :forma, NEW.CODVENDA, NEW.CODCCUSTO, NEW.CODVENDEDOR, NEW.CODUSUARIO,  
             'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.N_PARCELA,0,0,0,0,0,0, NEW.N_DOCUMENTO,0, :CAIXA, :DTAREC);
             update venda set NUMEROBORDERO = :codRec WHERE CODVENDA = new.CODVENDA;
         end
         else begin
           /* Se existe ele e pendente entao a trigger GERA_REC tab RECEBIMENTO faz o resto */ 
           vlr_prim_viaa = vlr_prim_viaa + VLR_PRIM_VIA;
           update recebimento set valor_prim_via = :vlr_prim_viaa, 
              valor_RESTO = :VLR_RESTOa + :VLR_RESTO, VALORTITULO = :VLR_TITULO + :VLR_TITULOa,
              DESCONTO = 0 , JUROS = :VLR_JM + :VLR_JMa,
              VALORRECEBIDO = :VLR_REC + NEW.ENTRADA 
              WHERE CODRECEBIMENTO = :codMov;
           update venda set NUMEROBORDERO = :codMov WHERE CODVENDA = new.CODVENDA;
         end 
         i = i + 1;
       end
     end
   end
   IF ((MESMOTITULO IS NULL) OR (MESMOTITULO = 'N')) THEN   
   begin 

     /* Gera 1 titulo para cada venda */

     SELECT DISTINCT CODNATUREZA FROM MOVIMENTO WHERE CODMOVIMENTO = NEW.CODMOVIMENTO 
      INTO :NATUREZA;
     if (NATUREZA = 3) then /* Venda ou NF*/
     BEGIN
       i = 0;
       VLR_PRIM_VIA = NEW.VALOR;
       VLR_TITULO = NEW.VALOR;
       VLR_DESC = NEW.DESCONTO;
       VLR_JM =  NEW.MULTA_JUROS;
       VLR_RESTO =  ((NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS)- NEW.ENTRADA);
       N_PARC = NEW.N_PARCELA;
       if (NEW.ENTRADA > 0) then
       begin
         status_venda = '7-';
         VLR_RESTO =  NEW.VALOR;
         INSERT INTO RECEBIMENTO 
           (TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS , VIA, FORMARECEBIMENTO, 
            CODVENDA , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
            , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, VALORRECEBIDO, PARCELAS
            , DESCONTO, JUROS, FUNRURAL, PERDA, TROCA, N_DOCUMENTO, OUTRO_CREDITO, CAIXA, DATARECEBIMENTO, DATACONSOLIDA ) 
         VALUES 
            ((NEW.NOTAFISCAL || '-' || NEW.SERIE), NEW.DATAVENDA, NEW.CODCLIENTE, NEW.DATAVENDA,
            :status_venda, CAST((:i + 1) as CHAR(3)), :forma, NEW.CODVENDA, NEW.CODCCUSTO, NEW.CODVENDEDOR, NEW.CODUSUARIO,  
            'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.ENTRADA, NEW.N_PARCELA,0,:VLR_JM,0,0,0, NEW.N_DOCUMENTO, 0, new.CAIXA, new.DATAVENDA, NEW.DATAVENCIMENTO);
         i = 1;
         N_PARC = (NEW.N_PARCELA-1);
       end
       while (i < (N_PARC + 1)) do
       begin
         if (dif > 0) then 
           j = (dif*(i+1));
         else if (d1 > 0) then 
         begin 
           j = d1;   
           d1 = 0;
         end 
         else if (d2 > 0) then 
         begin 
           j = d2;   
           d2 = 0;
         end 
         else if (d3 > 0) then 
         begin 
           j = d3;   
           d3 = 0;
         end 
         else if (d4 > 0) then 
         begin 
           j = d4;   
           d4 = 0;
         end 
         else if (d5 > 0) then 
         begin 
          j = d5;   
          d5 = 0;
         end 
         else if (d6 > 0) then 
         begin 
           j = d6;   
           d6 = 0;
         end 
         else if (d7 > 0) then 
         begin 
           j = d7;   
           d7 = 0;
         end 
         else if (d8 > 0) then 
         begin 
           j = d8;   
           d8 = 0;
         end 
         else if (d9 > 0) then 
         begin 
           j = d9;   
           d9 = 0;
         end 

         if (NEW.STATUS = 0) then
         begin     
           status_venda = '5-';
           CAIXA = null;
           DTAREC = null; 
         end
         if (NEW.STATUS = 1) then
         begin
           status_venda = '7-';  
           caixa = new.caixa;
           DTAREC = NEW.DATAVENDA;
         end
         if ((i+1) > 1) then 
         begin
           VLR_PRIM_VIA = 0;
         end
         if (i = 0) then
         begin
           i = 1;
         end

         -- Se j = 0 ent??o n??o usa prazo , usa a data Vencimento     
         if (j = 0) then 
           dtaVenc = UDF_INCMONTH(NEW.DATAVENCIMENTO, (i-1));
         else
           dtaVenc = UDF_INCDAY(NEW.DATAVENDA, J);

         VLR_RESTO =  ((NEW.VALOR - NEW.DESCONTO + NEW.MULTA_JUROS)- NEW.ENTRADA)/N_PARC;
         INSERT INTO RECEBIMENTO 
           (TITULO, EMISSAO, CODCLIENTE, DATAVENCIMENTO, STATUS , VIA, FORMARECEBIMENTO, 
           CODVENDA , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO
           , DATASISTEMA, VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, PARCELAS, VALORRECEBIDO
           , DESCONTO, JUROS, FUNRURAL, PERDA, TROCA,N_DOCUMENTO, OUTRO_CREDITO, CAIXA, DATARECEBIMENTO) 
         VALUES 
           ((NEW.NOTAFISCAL || '-' || NEW.SERIE), NEW.DATAVENDA, NEW.CODCLIENTE, :dtaVenc,
           :status_venda, CAST((:i) as CHAR(3)), :forma, NEW.CODVENDA, NEW.CODCCUSTO, NEW.CODVENDEDOR, NEW.CODUSUARIO,  
           'NOW', :VLR_PRIM_VIA, :VLR_RESTO, :VLR_TITULO, NEW.N_PARCELA,0,0,0,0,0,0, NEW.N_DOCUMENTO,0, :CAIXA, :DTAREC);
           i = i + 1;    
       end
     end     
     if (NATUREZA = 10) then     /* Devolucao de Venda */
       update RECEBIMENTO r set r.DP = 0 WHERE r.CODCLIENTE = NEW.CODCLIENTE
         AND TITULO = cast(NEW.NOTAFISCAL as VARCHAR(15)) || '-' || new.SERIE  AND STATUS = '5-'; 
       execute procedure BAIXATITULOSREC(NEW.VALOR, 0,0,0,0,NEW.DATAVENDA
                                , NEW.DATAVENDA
                                , NEW.DATAVENDA
                                , '1'
                                , ''
                                , NEW.CAIXA
                                , NEW.CODCLIENTE
                                , '7-');
       update RECEBIMENTO r set r.DP = null WHERE r.CODCLIENTE = NEW.CODCLIENTE
         AND TITULO = cast(NEW.NOTAFISCAL as VARCHAR(15)) || '-' || new.SERIE; 
     end   
   end -- Fim do IF tipoEmpresa
end
