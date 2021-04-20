CREATE PROCEDURE SPGERAMENSALIDADE (
    codigo integer,
    emissao date,
    vencimento date,
    usadatacadastro char(1))
as
declare variable valor_p double precision;
declare variable d double precision;
declare variable cod_b integer;
declare variable cod_c varchar(10);
declare variable prazao varchar(50);
declare variable v integer;
declare variable p integer;
declare variable cod_f integer;
declare variable cod_r integer;
declare variable dia smallint;
declare variable mes smallint;
declare variable ano smallint;
declare variable ccusto varchar(10);
declare variable ccusto1 varchar(10);
declare variable codprod integer;
declare variable codsoc integer;
declare variable qtdefuncionario integer;
declare variable viagem char(1);
declare variable databusca date;
declare variable valorm double precision;
declare variable valormt double precision;
declare variable codtd integer;
declare variable codmov integer;
declare variable valort integer;
declare variable valor_total double precision;
begin
        /* codProd = null; */
       /* Verifico se não foi lançado mensalidade neste vencimento */
       Select  ven.codVenda from Venda ven, MovimentoDetalhe movd where movd.codMovimento = ven.codMovimento and
         ven.codCliente = :CODIGO and((movd.codProduto = 744)or(movd.codProduto = 745 ))and ven.DATAVENCIMENTO = :vencimento
       into :V;
       if (V is null) then
      begin

    select DESCONTO, CODBANCO, COD_FAIXA, PRAZORECEBIMENTO, GRUPO_CLIENTE, RAZAOSOCIAL
    from CLIENTES where CODCLIENTE = :codigo
    into :D, :COD_B, :COD_F, :DIA, :ccusto, :PRAZAO;

    ccusto1 = ccusto;
    if (ccusto is null) then
      ccusto = '0';
    if (ccusto = '') then
      ccusto = '0';
    if (ccusto = 'ASH') then
      ccusto = '51';
    if (ccusto = 'PCMSO') then
      ccusto = '52';
   

    IF (usaDataCadastro = 'S') THEN
    begin
      mes = UDF_MONTH(vencimento); 
      ano = UDF_YEAR(vencimento);
      if (dia is not null) THEN
        vencimento = UDF_ENCDATE(ano, mes, dia);
    end

    select CODIGO_CEDENTE from BANCO where CODBANCO = :COD_B
    into :COD_C;
    
    if (cod_c is null) THEN 
      cod_c = codigo;    

    if (ccusto = '51') then
    begin
      valormt = 0;
      For select cli.codcliente
            from CLIENTES cli, FAIXA_ETARIA faixa
      where faixa.CODIGOS = cli.COD_FAIXA
        and cli.STATUS = 0
        and cli.RAZAOSOCIAL = :PRAZAO
        and cli.GRUPO_CLIENTE = :CCUSTO1
        and faixa.USO = :CCUSTO1
      into :codtd
      do begin
        select valorm from gera_mensal(:codtd)
        into :valorm;
        valormt = valormt + valorm;
      end


   select gen_id(genmov,1) FROM RDB$DATABASE
    into :codMov;
   /* MOVIMENTO 17/02/2012 */

   INSERT INTO movimento
    (codMovimento, CODCLIENTE, DATAMOVIMENTO, CODNATUREZA, STATUS , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO)
    VALUES 
    (:codMov,:codigo, :emissao,  3, 0, :ccusto, 1, 1 );

    if(valormt = 0 )then
    begin
    For select UDF_ROUNDDEC(sum(case when emviagem = 'S' then (faixa.VALOR_PLANO * 0.25) else faixa.VALOR_PLANO end),2)
    from clientes cli , FAIXA_ETARIA faixa
      where faixa.CODIGOS = cli.COD_FAIXA and cli.STATUS = 0
      AND cli.RAZAOSOCIAL = :PRAZAO AND cli.GRUPO_CLIENTE = :CCUSTO1 and faixa.USO = :CCUSTO1
    into :VALOR_TOTAL
    do begin
    valort = 0;
    end
    end else begin
    valor_total = valormt ;
    end
    For select case when emviagem = 'S' then (faixa.VALOR_PLANO * 0.25) else faixa.VALOR_PLANO end ,cli.codcliente

    from clientes cli , FAIXA_ETARIA faixa
      where faixa.CODIGOS = cli.COD_FAIXA and cli.STATUS = 0
      AND cli.RAZAOSOCIAL = :PRAZAO AND cli.GRUPO_CLIENTE = :CCUSTO1 and faixa.USO = :CCUSTO1
      order by cli.codcliente
    into :VALOR_P  , :codsoc
    do begin
      if (valormt > 0) then
      begin
      select valorm from gera_mensal(:codsoc)
        into :valorm;
        valor_p = valorm;
      end
      VALOR_P = UDF_ROUNDDEC(VALOR_P, 2);
      /*codSoc = CODIGO; */
      if (D is not null) then
      begin 
        VALOR_P = :VALOR_P * (1 - (D / 100));
        VALOR_P = UDF_ROUNDDEC(VALOR_P, 2);
      end
    /*  select first 1 CODPRODUTO FROM PRODUTOS WHERE PRODUTO LIKE 'MENSALIDADE' */
     /*   into :codProd; */



     /* MOVIMENTODETALHO 17/02/2012 */
      /* Campo CONTROLE informa quem Ã© o BENEFICIARIO(usou o convÃªnio) */
      INSERT INTO movimentoDetalhe (codDetalhe, codMovimento, codProduto, controle, quantidade, preco, cod_comissao, lote ,DTAVCTO ,PRECOCUSTO ,DTAFAB  )
      Values(gen_id(genmovdet, 1), :codMov, 744, :codsoc, 1, :VALOR_P, NULL, NULL ,NULL ,NULL,NULL );

   end

      /* Emissao, Data Vencimento, Cód. Cliente, Cód.Cliente */
     execute procedure LANCARECEITASAUDE_MENSALIDADE(:EMISSAO, :VENCIMENTO, :CODIGO, :CodSoc, 744, null, null,
     0, :valor_total, 0, null, :cCusto, null, :codmov ,null,null,null,null);

   end
    if (ccusto = '52') then
    begin
    /*
    if((udf_month(:vencimento)-1) = 0) then
    begin
      databusca = cast((udf_month(:vencimento)) || '/15/' || udf_year(:vencimento) as date);
    end else

      databusca = cast((udf_month(udf_incmonth(:vencimento,-1))) || '/15/' || udf_year(:vencimento) as date);
    */
     /*  dia 19/01/2016*/
     databusca = cast((udf_month(:emissao)) || '/15/' || udf_year(:emissao) as date);

    -- ate 20/02/19 For select faixa.VALOR_PLANO , cli.codCliente from CLIENTES cli, FAIXA_ETARIA faixa
    For select case cli.parcela when 2 then faixa.valor_a else faixa.VALOR_PLANO end VALOR_PLANO , cli.codCliente from CLIENTES cli, FAIXA_ETARIA faixa
      where faixa.CODIGOS = cli.COD_FAIXA and (cli.STATUS = 0)
      and cli.RAZAOSOCIAL = :PRAZAO and cli.GRUPO_CLIENTE = :CCUSTO1 and faixa.USO = :CCUSTO1 and cli.SEGMENTO = 0
       
    into :VALOR_P, :codSoc
    do begin


      select count(cli.codcliente) from CLIENTES cli
        where cli.RazaoSocial = :PRAZAO and cli.GRUPO_CLIENTE = :CCUSTO1
        and ((cli.STATUS = 0) or ((cli.STATUS = 1) and (cli.DATARESC > :dataBusca)))
        and cli.segmento = 1 and (cli.datacadastro <= :dataBusca)
      into :qtdeFuncionario;

      if (D is not null) then
      begin 
        VALOR_P = (VALOR_P * QtdeFUNCIONARIO) * (1 - (D / 100));
        VALOR_P = UDF_ROUNDDEC(VALOR_P, 2);
      end 
      if (D is null) then
      begin
        valor_p = (VALOR_P * QtdeFUNCIONARIO);
        VALOR_P = UDF_ROUNDDEC(VALOR_P, 2);
      end 

       /* codProd = null; */
       /* Verifico se não foi lançado mensalidade neste vencimento */
       Select ven.codVenda from Venda ven, MovimentoDetalhe movd where movd.codMovimento = ven.codMovimento and
         ven.codCliente = :CODIGO and ((CODPRODUTO = 744) or (CODPRODUTO = 745)) and ven.DATAVENCIMENTO = :vencimento and movd.CONTROLE = :codSoc
       into :V;
      
      if (V is null) then
      begin
        
        /* Emissao, Data Vencimento, Cód. Cliente, Cód.Cliente */
        execute procedure lancaReceitaSaude(:EMISSAO, :VENCIMENTO, :CODIGO, :CodSoc, 744 , null, null,
        0, :VALOR_P, 0, null, :cCusto, null, null,null,null,null,null,null);
      end
   end
  end /*fim pcmso */
 end
end
