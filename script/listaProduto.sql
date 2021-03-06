set term ^;
CREATE OR ALTER PROCEDURE LISTAPRODUTO(
  CODP INTEGER,
  CODPROD VARCHAR(15) CHARACTER SET WIN1252,
  GP VARCHAR(30) CHARACTER SET WIN1252,
  SUBGP VARCHAR(30) CHARACTER SET WIN1252,
  MC VARCHAR(30) CHARACTER SET WIN1252)
RETURNS(
  CODPRODUTO INTEGER,
  COD_BARRA VARCHAR(20) CHARACTER SET WIN1252,
  CODPRO VARCHAR(15) CHARACTER SET WIN1252,
  PRODUTO VARCHAR(300) CHARACTER SET WIN1252,
  PRECO_VENDA DOUBLE PRECISION,
  PRECO_COMPRAULTIMO DOUBLE PRECISION,
  QTDE_PCT DOUBLE PRECISION,
  UNIDADEMEDIDA CHAR(2) CHARACTER SET WIN1252,
  GRUPO VARCHAR(30) CHARACTER SET WIN1252,
  SUBGRUPO VARCHAR(30) CHARACTER SET WIN1252,
  MARCA VARCHAR(30) CHARACTER SET WIN1252,
  ESTOQUEATUAL DOUBLE PRECISION,
  PEDIDO DOUBLE PRECISION,
  CODALMOXARIFADO INTEGER,
  ICMS DOUBLE PRECISION,
  IPI DOUBLE PRECISION,
  TIPO VARCHAR(10) CHARACTER SET WIN1252,
  LOCALIZACAO VARCHAR(50) CHARACTER SET WIN1252,
  LOTES CHAR(1) CHARACTER SET WIN1252,
  PESO_QTDE DOUBLE PRECISION,
  PRECO_COMPRAMEDIO DOUBLE PRECISION,
  MARGEM DOUBLE PRECISION,
  CODIGO VARCHAR(15) CHARACTER SET WIN1252,
  USO VARCHAR(150) CHARACTER SET WIN1252,
  USA CHAR(3) CHARACTER SET WIN1252,
  COD_COMISSAO INTEGER,
  RATEIO CHAR(1) CHARACTER SET WIN1252,
  CONTA_DESPESA VARCHAR(15) CHARACTER SET WIN1252,
  GERADESCONTO CHAR(1) CHARACTER SET WIN1252)
AS
declare variable precoVenda double PRECISION;
  declare variable CustoMateriaPrima double PRECISION;
  declare variable precoc double PRECISION;
  declare variable tipoPreco char(1);
  declare variable tipoPrecoParametro Varchar(20);
  declare variable usaListaTerceiros char(1);
begin

    /* Verificando que tipo de Preco e usado pelo Cliente  (Preco Medio ou o ultimo   */
    /* Preco no calculo do estoque)                                                   */
    SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'PRECOESTOQUE'
    INTO :tipoPrecoParametro;

    SELECT CONFIGURADO FROM PARAMETRO WHERE PARAMETRO = 'PRECOLISTA'
    INTO :usaListaTerceiros;
    if (usaListaTerceiros is null) then
      usaListaTerceiros = 'N';

  for select p.codProduto, p.CODPRO, p.cod_barra, p.produto, p.qtde_pct, p.unidademedida,
    p.familia, p.categoria, p.marca, p.codalmoxarifado, p.icms, p.tipo, p.localizacao,
    p.LOTES, p.margem, p.VALOR_PRAZO, p.TIPOPRECOVENDA, uso.DESCRICAO, cod.CODIGO, p.USA,
    p.COD_COMISSAO, p.RATEIO, p.CONTA_DESPESA, p.PESO_QTDE, p.IPI, p.VALORUNITARIOATUAL, GERADESCONTO
    from produtos p
    left outer join USO_PRODUTO uso  on uso.COD_PRODUTO = p.CODPRODUTO
    left outer join CODIGOS cod on cod.COD_PRODUTO = p.CODPRODUTO
    where ((p.CODPRO = :codProd) OR (:codProd = 'TODOSPRODUTOS'))
      and ((p.CODPRODUTO = :codP) or (:codP = 0))
      and ((p.FAMILIA = :gp) or (:gp = 'TODOSGRUPOS'))
      and ((p.CATEGORIA = :subgp) or (:subgp = 'TODOSSUBGRUPOS'))
      and ((p.MARCA = :mc) OR (:mc = 'TODASMARCAS'))
      --and ((p.PRODUTO = :ProdutoDesc) or (:ProdutoDesc = 'TODOSPRODUTOS'))
      --and ((p.COD_BARRA = :codBarra) OR (:codBarra = 'CODIGOBARRA'))
      --and ((p.TIPO = :tipoProduto) OR (:tipoProduto = 'TODOSTIPOS'))
  into :codProduto, :codPro, :cod_barra, :produto, :qtde_pct, :unidadeMedida,
    :grupo, :subGrupo, :marca, :codAlmoxarifado, :icms, :tipo, :localizacao, :lotes, :margem,
    :precoVenda, :tipoPreco, :uso , :codigo, :usa, :cod_comissao, :rateio , :conta_despesa, :peso_qtde, :ipi, :precoc, :GERADESCONTO
  do begin
    Preco_venda = precoVenda;
    if (preco_venda is null) then
      preco_venda = 0;

    if (margem is null) then
      margem = 0;

    if (usaListaTerceiros = 'N') then
    select sum(quantidade) from MOVIMENTODETALHE d
      inner join movimento m on m.CODMOVIMENTO = d.CODMOVIMENTO
      where codProduto = :codProduto and m.STATUS = 1
    into :pedido;
    if (pedido is null) then
      pedido = 0;

    if (usaListaTerceiros = 'N') then
    select first 1 precoCusto, qtdeEstoque, precoUltimaCompra from MOVIMENTODETALHE d
      inner join movimento m on m.CODMOVIMENTO = d.CODMOVIMENTO
      where codProduto = :codProduto and baixa is not null order by m.DATAMOVIMENTO DESC, codDetalhe desc
    into :preco_compraMedio, :estoqueAtual, :preco_compraUltimo;
    if (preco_compraMedio is null) then
      preco_compraMedio = 0;

    if (preco_compraUltimo is null) then
      preco_compraUltimo = 0;

    if (estoqueAtual is null) THEN
      estoqueAtual = 0;

    --estoqueAtual = estoqueAtual - pedido;
    if (usaListaTerceiros = 'N') then
    if (tipoPrecoParametro = 'PRECOMEDIO') then
    begin
      if (margem > 0) then
        Preco_venda = preco_compraMedio * (1 + (margem / 100));
    end

    if (usaListaTerceiros = 'N') then
    if (tipoPrecoParametro = 'ULTIMOPRECO') then
    begin
      if (preco_compraUltimo > 0) then
      if (margem > 0) then
        Preco_venda = preco_compraUltimo * (1 + (margem / 100));
    end

    if (usaListaTerceiros = 'N') then
    if (tipoPrecoParametro = 'NAOALTERA') then
    begin
      if (precoVenda > 0) then
        Preco_venda = precoVenda;
    end

    if (usaListaTerceiros = 'N') then
    if (tipoPreco = 'F') then  -- Preco de Venda que est???? no cadastro Produto;
    begin
      if (precoVenda > 0) then
        Preco_venda = precoVenda;
    end

    if (usaListaTerceiros = 'N') then
    if (tipoPreco = 'M') then -- Preco de Venda = Pre????o M????dio de Compra * Margem;
    begin
      if (preco_compraMedio > 0) then
      if (margem > 0) then
        Preco_venda = preco_compraMedio * (1 + (margem / 100));
    end

    if (usaListaTerceiros = 'N') then
    if (tipoPreco = 'U') then -- Preco de Venda = Pre????o Ultima Compra * Margem;
    begin
      if (preco_compraUltimo > 0) then
      if (margem > 0) then
        Preco_venda = preco_compraUltimo * (1 + (margem / 100));
    end

    if (usaListaTerceiros = 'N') then
    if (tipoPreco is null) then  -- Preco de Venda que est?? no cadastro Produto;
    begin
      if (precoVenda > 0) then
        Preco_venda = precoVenda;
    end

    /* O custo do produto e baseado em cima das materias primas */
    select sum(m.QTDEUSADA * (case when p.VALORUNITARIOATUAL is null then p.PRECOMEDIO
     when p.VALORUNITARIOATUAL = 0 then p.PRECOMEDIO
     else p.VALORUNITARIOATUAL end ))

    from MATERIA_PRIMA m
      inner join PRODUTOS p on p.CODPRODUTO = m.CODPRODMP
      where m.CODPRODUTO = :codProduto
    into :custoMateriaPrima;
    preco_compraMedio = custoMateriaPrima;

    if (preco_compraUltimo = 0) then
      preco_compraUltimo = precoc;
    if (preco_compraMedio = 0) then
      preco_compraMedio = precoc;
    suspend;
    preco_compraMedio = 0;
    preco_compraUltimo = 0;
    estoqueAtual = 0;
  end
end;
