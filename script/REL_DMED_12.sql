CREATE OR ALTER PROCEDURE REL_DMED_12 (
    titular varchar(60),
    dta1 date,
    dta2 date)
returns (
    preco double precision,
    pago double precision,
    pr double precision,
    reembolso double precision,
    controle smallint,
    codrecebimento integer,
    datavencimento date,
    cod_comissao integer,
    nomefornecedor varchar(60),
    tipofirma integer,
    cnpj varchar(18),
    valorunitarioatual double precision,
    precocusto double precision,
    nomecliente varchar(50),
    cli_cpf varchar(18))
as
declare variable codr integer;
declare variable pr1 double precision;
declare variable pr2 double precision;
BEGIN
  FOR
    select  preco , pago ,  pr ,reembolso ,   controle , codrecebimento ,  datavencimento ,  cod_comissao ,
    nomefornecedor , tipofirma , cnpj , valorunitarioatual ,   precocusto ,     nomecliente ,     cli_cpf
    from D_2012 (:titular,:dta1,:dta2) --('ANTONIUS GROOT','01/01/12','12/29/12') --   GILBERTO GUILHERME JOSE WIGMANwhere  controle = 1631
    order by udf_month(:datavencimento) desc, controle , codrecebimento , pr desc
       INTO :PRECO,:PAGO ,:PR , :reembolso, :CONTROLE,:codrecebimento, :datavencimento, :COD_COMISSAO,:NOMEFORNECEDOR,
       :TIPOFIRMA,:CNPJ,  :VALORUNITARIOATUAL,:precocusto, :NOMECLIENTE ,:CLI_CPF
  DO
  BEGIN
    if(codr = :codrecebimento and :pr < 0 )then
    begin
      IF(pr1 >=0)THEN
      reembolso = 0;
    end
    pr2 = pr;

    if(:pr = :reembolso)then
    pr = 0;

    SUSPEND;

    if(codr <> :codrecebimento )then
    pr1 = PR2;
    codr = :codrecebimento;
  END
END
