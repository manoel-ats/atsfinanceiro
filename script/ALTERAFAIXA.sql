CREATE OR ALTER PROCEDURE ALTERAFAIXA (
    dataalteracao date,
    grupocliente varchar(30))
as
declare variable mesaniversario smallint;
declare variable mesatual smallint;
declare variable idade smallint;
declare variable faixaatual smallint;
declare variable faixa smallint;
declare variable codcli integer;
declare variable valor double precision;
declare variable desconto double precision;
declare variable cliente varchar(100);
declare variable valoratual double precision;
BEGIN
  if (grupoCliente = 'ASH') then
  begin 
    mesAtual = udf_month(dataAlteracao);
    /* Lista todo mundo com suas respectivas idades e m?s de anivers?rio */ 
    for SELECT UDF_MONTH(cli.DATANASC) as mesAniversario,UDF_AGE2(cli.DATANASC, udf_MonthEnd(udf_year(:DATAALTERACAO),udf_month(:DATAALTERACAO))) as idade,       cli.COD_FAIXA, cli.CODCLIENTE 
     from CLIENTES cli where cli.GRUPO_CLIENTE = 'ASH' and status = 0
    into :mesAniversario, :idade, :faixaAtual, :codcli
    do BEGIN
      /* Verifica se o anivers?rio e no m?s atual, se for verifica na tabela se trocou de faixa */
      if (mesAtual = mesAniversario) then
      BEGIN
        select fx.VALOR_PLANO from FAIXA_ETARIA fx
        where (fx.USO = :grupoCliente) and FX.CODIGOS = :FAIXAATUAL
        into :valorATUAL;            
        select fx.CODIGOS, fx.VALOR_PLANO, fx.DESCONTO from FAIXA_ETARIA fx
        where (fx.USO = :grupoCliente) and ((fx.IDADE_MAX + 1) > :idade) and ((fx.IDADE_MIN - 1) < :idade)
        into :faixa, :valor, :desconto;
      
        /* Se faixa diferente , altera o cadastro */
        if (faixa is not null) then
        if (faixa <> faixaAtual) then  
        begin 
          update CLIENTES cli  set cli.ANUIDADE = :valorATUAL , 
            cli.PARCELA = :FAIXAATUAL where cli.CODCLIENTE = :codcli;
          update CLIENTES cli  set cli.COD_FAIXA = :faixa , cli.MENSALIDADE = :valor , 
            cli.DESCONTO = :desconto, cli.DTAALTERA = CURRENT_DATE ,cli.DATATRANSF = CURRENT_DATE
          where cli.CODCLIENTE = :codcli;
        end
        faixa = null;
        valor = null;
        desconto = null;
      end 
    end
  end
  if (grupoCliente = 'PCMSO') then
  begin 
    /* Verifica o n?mero de funcion?rios da empresa */
    for select count(cli.codcliente), cli.razaosocial from CLIENTES cli 
      where cli.GRUPO_CLIENTE = :grupoCliente
        and ((cli.STATUS = 0) or ((cli.STATUS = 1) and (cli.DATARESC > :dataalteracao)))
        and cli.segmento = 1 and (cli.datacadastro <= :dataalteracao)
      group by cli.razaosocial
    into :idade, :cliente
    do begin
      select fx.CODIGOS, fx.VALOR_PLANO, fx.DESCONTO from FAIXA_ETARIA fx
        where (fx.USO = :grupoCliente) and ((fx.IDADE_MAX + 1) > :idade) and ((fx.IDADE_MIN - 1) < :idade)
        into :faixa, :valor, :desconto;
            
      if (valor is null) then
        valor = 0;
      if (desconto is null) then
        desconto = 0;
      /* Se faixa diferente , altera o cadastro #### veja o WHERE #### */
      update CLIENTES cli  set cli.COD_FAIXA = :faixa , cli.MENSALIDADE = :valor , 
        cli.DESCONTO = :desconto, cli.DTAALTERA = CURRENT_DATE
      where cli.GRUPO_CLIENTE = :grupoCliente and cli.RAZAOSOCIAL = :cliente and cli.segmento = 0 and ((cli.COD_FAIXA <> :faixa) OR (cli.COD_FAIXA IS NULL));
      faixa = null;
      valor = null;
      desconto = null;

    end

  end
   
  
END
