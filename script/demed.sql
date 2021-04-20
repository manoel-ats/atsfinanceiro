CREATE OR ALTER PROCEDURE DMED (
    ano integer)
returns (
    codcliente integer,
    razaosocial varchar(50),
    tit_dep varchar(50),
    val double precision,
    faixa integer,
    nomecliente varchar(50),
    produto varchar(300),
    nomefornecedor varchar(50),
    cnpj varchar(18),
    valor double precision,
    cpf varchar(11),
    datatransf date,
    jan double precision,
    jan_r double precision,
    fev double precision,
    fev_r double precision,
    mar double precision,
    mar_r double precision,
    abr double precision,
    abr_r double precision,
    mai double precision,
    mai_r double precision,
    jun double precision,
    jun_r double precision,
    jul double precision,
    jul_r double precision,
    ago double precision,
    ago_r double precision,
    setr double precision,
    setr_r double precision,
    out double precision,
    out_r double precision,
    nov double precision,
    nov_r double precision,
    dez double precision,
    dez_r double precision)
as
declare variable mes integer;
declare variable vlr_t double precision;
declare variable vlr_r double precision;
declare variable meses integer;
declare variable nome varchar(60);
declare variable cod_cli integer;
declare variable nome_cli varchar(60);
declare variable tit_dep1 varchar(60);
BEGIN
  for
    select cli.nomecliente, cli.RAZAOSOCIAL from clientes cli where cli.razaosocial = 'PAULO MARIA VAN SCHAIK'
    into :nome_cli ,:RAZAOSOCIAL
  do
  begin
    -- CODIGO DO TITULA
    select cli.codcliente from clientes cli
      where cli.NOMECLIENTE = :RAZAOSOCIAL
    INTO :cod_cli;

    mes = 1 ;
    vlr_t = 0;
    vlr_r = 0;
    while(mes < 13) do begin


    select tit_dep , val , faixa , datatransf
          from faixas (:cod_cli , :RAZAOSOCIAL , udf_EncDate(:ano, :mes, 30))
         where tit_dep = :nome_cli
          ORDER BY tit_dep
      into :tit_dep , :val , :faixa ,:datatransf;



    FOR select
     cli.codcliente,cli.nomecliente ,prod.PRODUTO, forn.NOMEFORNECEDOR, forn.cnpj ,
     sum(movd.VALTOTAL) as valor  , rep.cpf
    
     from Venda ven 
          left outer join MovimentoDetalhe movd on movd.codMovimento = ven.CodMovimento 
          left outer join Clientes cli on cli.codcliente = movd.controle 
          left outer join Produtos prod on prod.CodProduto = movd.CodProduto
          left outer join Fornecedor forn on forn.CodFornecedor = movd.cod_comissao
          left outer join repr_fornecedor rep on rep.cod_fornecedor = forn.codfornecedor
    
          where
             (ven.codCliente = :cod_cli)  and (ven.CODCCUSTO = 51)
             and ven.datavencimento between udf_EncDate(:ano, :mes, 1) and udf_MonthEnd(:ano, :mes)
             and ven.codcliente = :cod_cli  and cli.nomecliente = :nome_cli
         group by cli.codcliente,cli.nomecliente ,prod.PRODUTO, forn.NOMEFORNECEDOR, forn.cnpj , rep.cpf

    INTO :codcliente,:NOMECLIENTE,:PRODUTO,:NOMEFORNECEDOR,:CNPJ,:VALOR, :CPF
    do begin
      if ((valor > 0) and (produto <> 'MENSALIDADE')) then
        vlr_t = vlr_t + valor;
      if (valor < 0) then
        vlr_r = vlr_r + valor;
    end 

    if (MES = 1) then
    begin
      JAN = VAL + vlr_t;
      jan_r = vlr_r;
    end
    if (MES = 2) then
    begin
      FEV = VAL + vlr_t;
      FEV_r = vlr_r;
    end
    if (MES = 3) then
    begin
      MAR = VAL + vlr_t;
      mar_r = vlr_r;
    end
    if (MES = 4) then
    begin
      abr = VAL + vlr_t;
      abr_r = vlr_r;
    end
    if (MES = 5) then
    begin
      mai = VAL + vlr_t;
      mai_r = vlr_r;
    end
    if (MES = 6) then
    begin
      jun = VAL + vlr_t;
      jun_r = vlr_r;
    end
    if (MES = 7) then
    begin
      jul = VAL + vlr_t;
      jul_r = vlr_r;
    end
    if (MES = 8) then
    begin
      ago = VAL + vlr_t;
      ago_r = vlr_r;
    end
    if (MES = 9) then
    begin
      setr = VAL + vlr_t;
      setr_r = vlr_r;
    end
    if (MES = 10) then
    begin
      out = VAL + vlr_t;
      out_r = vlr_r;
    end
    if (MES = 11) then
    begin
      nov = VAL + vlr_t;
      nov_r = vlr_r;
    end
    if (MES = 12) then
    begin
      dez = VAL + vlr_t;
      dez_r = vlr_r;
    end
    if (MES = 12) then
      SUSPEND;

    vlr_r = 0;
    vlr_t = 0;



     --mes = mes + 1;
    mes = mes + 1;
  END
  end
END
