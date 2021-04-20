CREATE OR ALTER PROCEDURE REL_DMED_11 (
    titular varchar(50))
returns (
    codcliente integer,
    ra varchar(10),
    razaosocial varchar(50),
    cpf varchar(18),
    nomecliente varchar(50),
    vlr_mensal double precision,
    clir integer,
    nomefornecedorr varchar(60),
    cnpjr varchar(18),
    nomer varchar(50),
    valorr double precision,
    valorrn double precision,
    valorrp double precision,
    valor_total double precision,
    clirp integer,
    nomerp varchar(50),
    valorrp1 double precision,
    valor_recibo double precision)
as
declare variable imprimiu char(1);
BEGIN

  FOR
    select 
    dm.codcliente,dm.ra,dm.cpf,dm.razaosocial,dm.nomecliente, sum(dm.vlr_mensal)
    from dmed_mensalidade  dm  where dm.razaosocial = :titular
    group by
    dm.codcliente,dm.ra,dm.cpf,dm.razaosocial,dm.nomecliente
    ORDER BY dm.razaosocial
    INTO :CODCLIENTE,:RA,:CPF,:RAZAOSOCIAL,:NOMECLIENTE,:VLR_MENSAL
  DO
  BEGIN
  imprimiu = 'N';
  valorRN = 0;
  valorrp = 0;
  valor_total = 0;
  valorrp1 = 0;

    for
      select
      cod_cliente , nomecliente1 ,  sum(preco)
      from lan_dmed  where lan_dmed.cod_cliente = :CODCLIENTE and lan_dmed.preco > 0
      group by
      cod_cliente ,  nomecliente1
      INTO :cliRp , :nomeRp ,:valorRp1
    do
    begin
       imprimiu = 'S';
      valor_total = VLR_MENSAL + valorRP1;
      SUSPEND;
      VLR_MENSAL = 0;
      valor_total = 0 ;
      valorrp1 = 0;

    END

    for
      select
      cod_cliente ,nomefornecedor, cnpj ,nomecliente1 ,  sum(preco) , sum(valor_recibo)
      from lan_dmed  where lan_dmed.cod_cliente = :CODCLIENTE and lan_dmed.preco < 0
      group by
      cod_cliente ,nomefornecedor,cnpj ,nomecliente1
      INTO :cliR , :nomefornecedorR ,:cnpjR  ,:nomeR ,:valorR ,:valor_recibo
    do
    begin
      imprimiu = 'S';
      valor_total = VLR_MENSAL + valorRP1;
      SUSPEND;
      VLR_MENSAL = 0;
      valor_total = 0 ;
      valorrp1 = 0;
      cliR = null ;
      nomefornecedorR = null;
      cnpjR = null ;
      nomeR = null ;
      valorr = 0;
      valor_recibo = 0;

   end
   if(imprimiu = 'N' )then
    SUSPEND;
  END
END
