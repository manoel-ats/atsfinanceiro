CREATE OR ALTER PROCEDURE REL_DMED_11 
returns (
    codcliente integer,
    ra varchar(10),
    razaosocial varchar(50),
    cpf varchar(18),
    nomecliente varchar(50),
    vlr_mensal double precision,
    clir integer,
    nomefornecedorr varchar(50),
    cnpjr varchar(18),
    nomer varchar(50),
    valorr double precision,
    valorrn double precision,
    valorrp double precision,
    valor_total double precision,
    clirp integer,
    nomerp varchar(50),
    valorrp1 double precision)
as
BEGIN
  FOR
    select 
    dm.codcliente,dm.ra,dm.cpf,dm.razaosocial,dm.nomecliente, sum(dm.vlr_mensal)
    from dmed_mensalidade  dm
    group by
    dm.codcliente,dm.ra,dm.cpf,dm.razaosocial,dm.nomecliente
    INTO :CODCLIENTE,:RA,:CPF,:RAZAOSOCIAL,:NOMECLIENTE,:VLR_MENSAL
  DO
  BEGIN
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
    for
      select
      cod_cliente ,nomefornecedor, cnpj , nomecliente1 ,  sum(preco)
      from lan_dmed  where lan_dmed.cod_cliente = :CODCLIENTE and lan_dmed.preco < 0
      group by
      cod_cliente ,nomefornecedor,cnpj, nomecliente1
      INTO :cliR , :nomefornecedorR ,:cnpjR ,:nomeR ,:valorR
    do
    begin
  /*
    if (valorR < 0) then
      valorRN = valorRN + valorR ;
    if (valorR > 0) then
      valorRP = valorRP + valorR ;
    if(VLR_MENSAL > 0) then
      valor_total = VLR_MENSAL + valorRP;
   */
      valor_total = VLR_MENSAL + valorRP1;
      SUSPEND;
      VLR_MENSAL = 0;
    --  valorRN = 0;
      valor_total = 0 ;
    --  valorrp = 0;
      valorrp1 = 0;
    end
   end
  END
END
