CREATE OR ALTER PROCEDURE RECIBO_CP
RETURNS (
    LOTE Varchar(30),
    FORNECEDOR Varchar(60),
    CODPRODUTO Varchar(15),
    PRODUTO Varchar(200),
    TITULO Varchar(20),
    EMISSAO Date,
    QTDE Double precision,
    PRECO Double precision,
    VALOR Double precision,
    PESO Double precision,
    NOMEPRODUTOR Varchar(60),
    NOTAF Integer,
    PLACA Varchar(20) )
AS
declare variable quemUsa varchar(20);
  declare variable lote1 varchar(20);
  declare variable codCompra integer;
  declare variable vlr double precision;
  declare variable codMov integer;
  declare variable cp integer;
Begin 
  For select l.lote, forn.NOMEFORNECEDOR as Fornecedor, prod.CODPRO, prod.PRODUTO, p.TITULO, 
    p.EMISSAO, l.QUANTIDADE, l.PRECO, p.VALOR_RESTO, c.CODCOMPRA, p.DUP_REC_NF, p.OUTRO_DEBITO
    , c.CODMOVIMENTO, l.qtde_alt, l.CODPRODUTO
    from PAGAMENTO p
    inner join FORNECEDOR forn on forn.CODFORNECEDOR = p.CODFORNECEDOR
    left outer join compra c on c.CODCOMPRA = p.CODCOMPRA
    left outer join MOVIMENTODETALHE l on l.CODMOVIMENTO = c.CODMOVIMENTO
    left outer join PRODUTOS prod on prod.CODPRODUTO = l.CODPRODUTO 
   where p.DP = 0  
   order by codpagamento desc
   Into :Lote, :Fornecedor, :CodProduto, :Produto, :Titulo,
        :Emissao, :Qtde, :Preco, :Valor, :codCompra, :lote1, :vlr, :codMov, :peso, :cp
  Do Begin
    if (lote is null) then 
      lote = lote1;
    select codmovimento, qtde_alt from movimentodetalhe where lote = :lote 
      and (quantidade between (:vlr - 0.1) and (:vlr + 0.1)) and baixa = 0
    into :codMov, :peso;
    if ((codMov is null) or (peso is null)) then 
    begin
      select First 1 codmovimento from movimentodetalhe where lote = :lote 
        and baixa = 0
      into :codMov;  
    end 
    
    -- Pegando a placa qdo e COMPRA
    select first 1 vei.PLACA From MOVIMENTO m
      left outer join VEICULO vei on vei.COD_VEICULO = m.COD_VEICULO 
          where m.CODMOVIMENTO = :codMov
    into :Placa;

    Select DADOS FRom PARAMETRO where PARAMETRO = 'EMPRESA'
    Into :quemUsa;  
    if (quemUsa = 'CITRUS') then
    begin 
      -- se nao e compra, entao e venda entao procuro pelo lote o nome do Produtor.
      if (codCompra is null) then  
      begin 
        select first 1 f.NOMEFORNECEDOR, vei.PLACA 
          From MOVIMENTO m, MOVIMENTODETALHE md , FORNECEDOR f
          left outer join VEICULO vei on vei.COD_VEICULO = m.COD_VEICULO 
          where m.CODMOVIMENTO = md.codMovimento and m.CODFORNECEDOR = f.codFornecedor 
          and m.codmovimento = :codMov
        into :NomeProdutor, :Placa;
        select  v.NOTAFISCAL, v.CODMOVIMENTO from venda v 
          where v.codmovimento = udf_left(:titulo, udf_len(:titulo)-2) 
        into :notaf, :codMov;

        if (placa is null) then -- vou procurar a placa na Venda  
        begin 
          select v.placa from movimento m , veiculo v
          where v.cod_veiculo = m.COD_VEICULO and  m.CODMOVIMENTO = :codMov
          into :placa;
        end  

        if (notaf is null) then -- entao procura na compra 
        begin  
          select  v.NOTAFISCAL from compra v 
            where v.codmovimento = udf_left(:titulo, udf_len(:titulo)-2) 
          into :notaf;
        end 
        Select  first 1 prod.CODPRO, prod.PRODUTO
          from MOVIMENTODETALHE l 
          left outer join PRODUTOS prod on prod.CODPRODUTO = l.CODPRODUTO 
         where l.LOTE = :Lote 
        into :codProduto, :Produto;
        Qtde = (vlr); -- Total de Caixa ;
        Preco = Valor / (vlr); -- Preco Caixa
        if (peso is null) then 
          peso = qtde * 40.8;
      end 
      else begin  -- e compra 
        NomeProdutor = Fornecedor;
        Qtde = Qtde; 
        select  c.NOTAFISCAL from COMPRA c where c.codCompra = :codCompra
        into :notaf;
      end
    end
    suspend;
    fornecedor = null;
    placa = null;
    nomeProdutor = null;    
  end
end