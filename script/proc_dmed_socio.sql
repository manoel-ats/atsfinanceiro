CREATE OR ALTER PROCEDURE DMED (
    nome_titular varchar(50))
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
declare variable ano integer;
declare variable mes integer;
declare variable vlr_t double precision;
declare variable vlr_r double precision;
declare variable meses integer;
declare variable nome varchar(60);
declare variable cod_cli integer;
declare variable nome_cli varchar(60);
declare variable tit_dep1 varchar(60);
declare variable mes_saiu integer;
declare variable mes_entrou integer;
BEGIN

ano = 2010;
  for
    select cli.nomecliente, cli.RAZAOSOCIAL , case when cli.dataresc is not null then udf_month(cli.dataresc)else 13 end ,
    case when cli.datacadastro > '12/31/2009' then udf_month(cli.datacadastro) else 0 end from clientes cli where cli.razaosocial = :nome_titular
    and grupo_cliente = 'ASH' and ((cli.dataresc is null) or (cli.dataresc > '12/31/09'))
    into :nome_cli ,:RAZAOSOCIAL ,:mes_saiu ,:mes_entrou
  do
  begin
    -- CODIGO DO TITULAR
    select first 1 cli.codcliente from clientes cli
      where cli.NOMECLIENTE = :RAZAOSOCIAL  and grupo_cliente = 'ASH'    
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
     movd.VALTOTAL as valor  , rep.cpf
    
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
         group by cli.codcliente,cli.nomecliente ,prod.PRODUTO, forn.NOMEFORNECEDOR, forn.cnpj , rep.cpf , movd.VALTOTAL

    INTO :codcliente,:NOMECLIENTE,:PRODUTO,:NOMEFORNECEDOR,:CNPJ,:VALOR, :CPF
    do begin
      if ((valor > 0) and (produto <> 'MENSALIDADE')) then
        vlr_t = vlr_t + valor;
      if (valor < 0) then
        vlr_r = vlr_r + valor;  
    end

    if (MES = 1 and mes < mes_saiu and mes >= mes_entrou ) then
    begin
      JAN = VAL + vlr_t;
      jan_r = vlr_r;
    end
    if (MES = 2 and mes < mes_saiu and mes >= mes_entrou ) then
    begin
      FEV = VAL + vlr_t;
      FEV_r = vlr_r;
    end
    if (MES = 3 and mes < mes_saiu and mes >= mes_entrou) then
    begin
      MAR = VAL + vlr_t;
      mar_r = vlr_r;
    end
    if (MES = 4 and mes < mes_saiu and mes >= mes_entrou) then
    begin
      abr = VAL + vlr_t;
      abr_r = vlr_r;
    end
    if (MES = 5 and mes < mes_saiu and mes >= mes_entrou) then
    begin
      mai = VAL + vlr_t;
      mai_r = vlr_r;
    end
    if (MES = 6 and mes < mes_saiu and mes >= mes_entrou )  then
    begin
      jun = VAL + vlr_t;
      jun_r = vlr_r;
    end
    if (MES = 7 and mes < mes_saiu and mes >= mes_entrou) then
    begin
      jul = VAL + vlr_t;
      jul_r = vlr_r;
    end
    if (MES = 8 and mes < mes_saiu and mes >= mes_entrou) then
    begin
      ago = VAL + vlr_t;
      ago_r = vlr_r;
    end
    if (MES = 9 and mes < mes_saiu and mes >= mes_entrou ) then
    begin
      setr = VAL + vlr_t;
      setr_r = vlr_r;
    end
    if (MES = 10 and mes < mes_saiu and mes >= mes_entrou ) then
    begin
      out = VAL + vlr_t;
      out_r = vlr_r;
    end
    if (MES = 11 and mes < mes_saiu and mes >= mes_entrou) then
    begin
      nov = VAL + vlr_t;
      nov_r = vlr_r;
    end
    if (MES = 12 and mes < mes_saiu and mes >= mes_entrou) then
    begin
      dez = VAL + vlr_t;
      dez_r = vlr_r;
    end
    if (MES = 12 ) then

      SUSPEND;

    vlr_r = 0;
    vlr_t = 0;

    mes = mes + 1;
  END
  end
END
