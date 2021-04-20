CREATE OR ALTER PROCEDURE DMED_ANTES_INSERT (
    nome_titular varchar(50))
returns (
    codcliente integer,
    ra varchar(10),
    razaosocial varchar(50),
    tit_dep varchar(50),
    val double precision,
    faixa integer,
    nomecliente varchar(50),
    cpf1 varchar(18),
    produto varchar(300),
    nomefornecedor varchar(70),
    cnpj varchar(18),
    valor double precision,
    cpf varchar(11),
    datatransf date,
    mes_vcto integer,
    mes_pagto integer,
    vlr_pago double precision,
    vlr_pago_mes double precision,
    vlr_mensal double precision,
    vlr_outros double precision,
    vlr_reembolso double precision,
    datanasc date,
    codrec integer)
as
declare variable ano integer;
declare variable mes integer;
declare variable vlr_t double precision;
declare variable total_mensal double precision;
declare variable percent_mensal double precision;
declare variable vlr_r double precision;
declare variable meses integer;
declare variable nome varchar(60);
declare variable cod_cli integer;
declare variable nome_cli varchar(60);
declare variable tit_dep1 varchar(60);
declare variable mes_saiu integer;
declare variable mes_entrou integer;
declare variable imprimiu char(1);
declare variable imp_mes integer;
declare variable codvenda integer;
BEGIN
  ano = 2011;
  imprimiu = 'N';

  /* CODIGO DO TITULAR */
  select first 1 cli.codcliente from clientes cli
    where cli.NOMECLIENTE = :NOME_TITULAR  and grupo_cliente = 'ASH'    
  INTO :cod_cli;

  for
    select cli.ra,  cli.nomecliente, cli.RAZAOSOCIAL , case when cli.dataresc is not null then udf_month(cli.dataresc)else 13 end ,
    case when cli.datacadastro > '12/31/2010' then udf_month(cli.datacadastro) else 0 end , cli.cnpj , cli.datanasc from clientes cli where cli.razaosocial = :nome_titular
    and grupo_cliente = 'ASH' and ((cli.dataresc is null) or (cli.dataresc > '12/31/10'))
    into :ra,  :nome_cli ,:RAZAOSOCIAL ,:mes_saiu ,:mes_entrou , :cpf1 , :datanasc
  do
  begin
    nomecliente = nome_cli;
    mes = 1 ;
    vlr_t = 0;
    vlr_r = 0;
    ano = 2010;
    while(mes < 14) do begin

    if (mes = 13) then
    begin
    ano = 2011;
    mes = 1 ;
    end
    select sum(val)
      from faixas (:cod_cli , :NOME_TITULAR , udf_EncDate(:ano, :mes, 30))
      into :total_mensal;

    /* Valor Pago  */
    Select sum(rec.VALORRECEBIDO-rec.DESCONTO)/*,rec.codrecebimento */ from recebimento rec
      Where rec.codCliente = :cod_cli
        and rec.DATAVENCIMENTO between UDF_MONTHSTART(:ano, :mes) and udf_MonthEnd(:ano, :mes)
   --   and rec.DATARECEBIMENTO < '12/31/2011'
        and rec.DATARECEBIMENTO between '01/01/11' and  '12/31/2011'
        and rec.status = '7-'  and rec.codrecebimento is not null
  --   group by rec.codrecebimento-- UDF_MONTH(rec.DATARECEBIMENTO)
     into  :VLR_PAGO_MES ;--, :codrec ;
     mes_pagto = mes;

      
    if (valor is null) then 
      valor = 0;

    select tit_dep , val , faixa , datatransf
          from faixas (:cod_cli , :RAZAOSOCIAL , udf_EncDate(:ano, :mes, 30))
         where tit_dep = :nome_cli
          ORDER BY tit_dep
      into :tit_dep , :val , :faixa ,:datatransf;

    if (total_mensal > 0) then 
      percent_mensal = val / total_mensal;

    imp_mes = 0 ;

    FOR select
     cli.codcliente ,prod.PRODUTO, forn.NOMEFORNECEDOR, forn.cnpj ,
     movd.VALTOTAL as valor  , rep.cpf , ven.codvenda
    
     from Venda ven 
          left outer join MovimentoDetalhe movd on movd.codMovimento = ven.CodMovimento 
          left outer join Clientes cli on cli.codcliente = movd.controle 
          left outer join Produtos prod on prod.CodProduto = movd.CodProduto
          left outer join Fornecedor forn on forn.CodFornecedor = movd.cod_comissao
          left outer join repr_fornecedor rep on rep.cod_fornecedor = forn.codfornecedor
          where
             (ven.codCliente = :cod_cli)  and (ven.CODCCUSTO = 51)
             and ven.datavencimento between udf_EncDate(:ano, :mes, 1) and udf_MonthEnd(:ano, :mes)
             and cli.nomecliente = :nome_cli and prod.produto <> 'MULTA / JUROS'
         group by cli.codcliente,prod.PRODUTO, forn.NOMEFORNECEDOR, forn.cnpj , rep.cpf , movd.VALTOTAL , ven.codvenda

    INTO :codcliente,:PRODUTO,:NOMEFORNECEDOR,:CNPJ,:VALOR, :CPF  ,:CODVENDA
    do begin
    vlr_t = 0 ;
      if ((valor > 0) and (produto <> 'MENSALIDADE') and (produto <> 'MENSALIDADE ANTECIPADA')) then
        vlr_t =  valor;    /*vlr_t + */
      if (valor < 0) then
        vlr_r =  valor;  /*vlr_r + */
      if (mes <= mes_saiu and mes >= mes_entrou ) then
      begin
        MES_VCTO      = MES;
        VLR_PAGO      = valor;
        VLR_MENSAL    = val;
        VLR_OUTROS    = vlr_t; 
        VLR_REEMBOLSO = vlr_r;
        if(imp_mes > 0) then
        VLR_MENSAL    = 0;
        if(imp_mes > 0) then
        VALOR    = 0;
        if(imp_mes > 0) then
        VLR_PAGO    = 0;
        if(mes_pagto = 0) then
        VLR_PAGO    = 0;
        if(mes_pagto = 0) then
        VLR_MENSAL    = 0;

      /*  if(imp_mes > 0) then */
      /*  vlr_outros = 0; -- manoel 24/02/2011 */
      if (vlr_pago_mes is null)then
      vlr_pago_mes = 0;
      if (vlr_pago_mes >0)then
        insert into dmed2011 (codcliente, RA , RAZAOSOCIAL , TIT_DEP, VAL  , FAIXA, NOMECLIENTE , CPF1
        , PRODUTO , NOMEFORNECEDOR , CNPJ , VALOR , CPF, DATATRANSF, MES_VCTO , MES_PAGTO , VLR_PAGO
        , VLR_PAGO_MES , VLR_MENSAL , VLR_OUTROS , VLR_REEMBOLSO , datanasc )
        values (:codcliente, :RA , :RAZAOSOCIAL , :TIT_DEP, :VAL  , :FAIXA, :NOMECLIENTE , :CPF1
        , :PRODUTO , :NOMEFORNECEDOR , :CNPJ , :VALOR , :CPF, :DATATRANSF, :MES_VCTO , :MES_PAGTO , :VLR_PAGO
        , :VLR_PAGO_MES , :VLR_MENSAL , :VLR_OUTROS , :VLR_REEMBOLSO ,:datanasc );

      end

      if (vlr_pago_mes > 0)then
      suspend;
      vlr_r = 0;
     -- VLR_PAGO_MES = 0; --  manoel  25/03  noite para o 237 tem que comentar
      imp_mes = imp_mes + 1;        

      imprimiu = 'S';  
    end
    if (val is null) then 
      val = 0;

    if (imprimiu = 'N') then 
    begin 
      if (mes <= mes_saiu and mes >= mes_entrou ) then
      begin
        MES_VCTO      = MES;
        VLR_PAGO      = valor;                                                                           
        VLR_MENSAL    = val;
        VLR_OUTROS    = vlr_t; 
        VLR_REEMBOLSO = vlr_r; 
      end
      if ((vlr_pago_mes > 0) and (vlr_mensal > 0)) then 
     begin
     insert into dmed2011 (codcliente, RA , RAZAOSOCIAL , TIT_DEP, VAL  , FAIXA, NOMECLIENTE , CPF1
        , PRODUTO , NOMEFORNECEDOR , CNPJ , VALOR , CPF, DATATRANSF, MES_VCTO , MES_PAGTO , VLR_PAGO
        , VLR_PAGO_MES , VLR_MENSAL , VLR_OUTROS , VLR_REEMBOLSO , datanasc)

       values (:codcliente, :RA , :RAZAOSOCIAL , :TIT_DEP, :VAL  , :FAIXA, :NOMECLIENTE , :CPF1
        , :PRODUTO , :NOMEFORNECEDOR , :CNPJ , :VALOR , :CPF, :DATATRANSF, :MES_VCTO , :MES_PAGTO , :VLR_PAGO
        , :VLR_PAGO_MES , :VLR_MENSAL , :VLR_OUTROS , :VLR_REEMBOLSO , :datanasc );

        SUSPEND;
    END
    end  
    val   = 0;
    vlr_r = 0;
    vlr_t = 0;
    MES_VCTO      = 0;
    VLR_PAGO      = 0;
    VLR_MENSAL    = 0;
    VLR_OUTROS    = 0; 
    VLR_REEMBOLSO = 0;
    valor = 0;
    produto = '';
    nomefornecedor = '';
    cnpj = '';
    mes_pagto     = 0;
    if(ano = 2010)then
    mes = mes + 1;

    imprimiu = 'N';
    if ((mes = 1) and (ano = 2012)) then
    begin
    mes = 14 ;
    end

  END
  end
END
