CREATE OR ALTER TRIGGER mov_Estoque FOR MOVIMENTODETALHE
ACTIVE BEFORE UPDATE POSITION 0
AS 
DECLARE VARIABLE tipoPreco                	VARCHAR( 20 );
DECLARE VARIABLE pmAcumulado				DOUBLE PRECISION; 
DECLARE VARIABLE pUltimaCompra				DOUBLE PRECISION; 
DECLARE VARIABLE qtdeAcumulado             	DOUBLE PRECISION; 
DECLARE VARIABLE vlrEstoque		           	DOUBLE PRECISION;
Declare variable dta                        date;
DECLARE VARIABLE tipoMovimento 				smallint;
declare variable estoqueNegativo            char(1);
DECLARE VARIABLE vlrEstoqueAcum		       	DOUBLE PRECISION;
BEGIN 
  /* Lanca na tabela MovimentoDetalhe os campos PRECOCUSTO = PRECOMEDIO, PRECOULTIMACOMPRA */
  /* , vlrESTOQUE (Custo da Venda efetuada) e qtdeEstoque = qtde do ESTOQUE */
  /* no momento da Venda ou Compra                                                   */ 

  pmAcumulado = 0;
  qtdeAcumulado = 0;    
  vlrEstoqueAcum = 0;   
  vlrEstoque = 0; 

  /* #####################  NOVO LANCAMENTO ##################### */

  if ((old.BAIXA is null) and ((new.BAIXA = 0) OR (NEW.BAIXA = 1))) then 
  begin 
    /* Pego a data que esta sendo feito o lançamento ,pois, tenho que ver o estoque   */
    /* até a data do lançamento                                                       */
    select first 1 m.DATAMOVIMENTO, natu.BAIXAMOVIMENTO from MOVIMENTO m 
      inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = m.CODNATUREZA
        where m.CODMOVIMENTO = new.CODMOVIMENTO
      into :Dta, :tipoMovimento;  

    pmAcumulado = 0;
    qtdeAcumulado = 0;
    vlrEstoque = 0;   
 
    --Vejo o preco medio, qtdeEstoque anterior ao periodo solicitado
    SELECT first 1 movdet.QTDEESTOQUE, movdet.VLRESTOQUE, movdet.PRECOCUSTO, 
      movdet.precoultimacompra 
      FROM MOVIMENTODETALHE movdet, MOVIMENTO mov            
       inner join NATUREZAOPERACAO natu on natu.CODNATUREZA = mov.CODNATUREZA  
       WHERE (mov.CODMOVIMENTO = movdet.CODMOVIMENTO) 
         and (mov.datamovimento <= :dta) 
         and (movdet.codProduto = new.CODPRODUTO) 
         and (movdet.baixa IS NOT NULL) 
      order by mov.DATAMOVIMENTO desc, movdet.CODDETALHE desc, natu.BAIXAMOVIMENTO, mov.CODMOVIMENTO
    INTO :qtdeAcumulado, :vlrEstoqueAcum, :pmAcumulado, :pUltimaCompra;

    if (qtdeAcumulado is null) then
      qtdeAcumulado = 0;
 
    if (qtdeAcumulado < 0) then 
      estoqueNegativo = 'S';

    if (vlrEstoqueAcum is null) then
      vlrEstoqueAcum = 0;

    if (pmAcumulado is null) then
      pmAcumulado = 0;

    if (tipoMovimento = 0) then
    begin
      -- Vou deixar usar o estoque negativo pois está afetando o estoque atual.
      --if (qtdeAcumulado < 0) then
      --  qtdeAcumulado = 0;
      vlrEstoque = qtdeAcumulado * pmAcumulado;
      qtdeAcumulado = qtdeAcumulado + new.QUANTIDADE; 
    end -- SAIDA
	else begin 
      qtdeAcumulado = qtdeAcumulado - new.QUANTIDADE; 		
      vlrEstoque = (pmAcumulado * new.QUANTIDADE);	
    end

    --Calculando o Preco Medio
    -- Vou deixar usar o estoque negativo pois está afetando o estoque atual.
    --if (vlrEstoqueAcum < 0) then 
    --  vlrEstoqueAcum = 0;
    if (tipoMovimento = 0) then
    begin 
      pUltimaCompra = new.PRECO;
      -- Preco Medio
      IF ((qtdeAcumulado > 0) AND (new.PRECO > 0)) THEN 
      begin  
        vlrEstoqueAcum = 0;--vlrEstoqueAcum + (pm * qtde); --Na Compra esse valor = 0
        if (estoqueNegativo = 'S') then 
          pmAcumulado = new.PRECO;
        else  
          pmAcumulado = ((vlrEstoque + (new.QUANTIDADE * new.PRECO))/(qtdeAcumulado));
      end
      else begin 
        if (estoqueNegativo = 'S') then 
        begin 
          if (new.PRECO = 0) then -- entrada por Mov. Materiais
          begin 
            --new.PRECO = pmAcumulado;
          end 
          else begin
            pmAcumulado = new.PRECO;
            vlrEstoqueAcum = 0;
          end 
        end 
        else begin -- quando é apenas entrada o pm = 0
          --new.PRECO = pmAcumulado;
        end 
      end
    end 
    else begin
      -- E Venda entaoo mantem o PM.                   
      vlrEstoqueAcum = (pmAcumulado * new.QUANTIDADE); -- Lanca o Custo da Venda 
    end
    new.PRECOCUSTO = pmAcumulado;
    new.VLRESTOQUE = vlrEstoqueAcum; -- Custo da Venda;
    new.QTDEESTOQUE = :qtdeAcumulado;
    -- Grava o último Preço de Compra
    new.PRECOULTIMACOMPRA = :pUltimaCompra;          
  end 
  /* ##################### FIM NOVO LANCAMENTO ##################### */

END
