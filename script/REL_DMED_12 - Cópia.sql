CREATE OR ALTER PROCEDURE REL_DMED_12 
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
BEGIN
  FOR
    select  preco , pago ,  pr ,reembolso ,   controle , codrecebimento ,  datavencimento ,  cod_comissao ,
    nomefornecedor , tipofirma , cnpj , valorunitarioatual ,   precocusto ,     nomecliente ,     cli_cpf
    from D_2012 ('GILBERTO GUILHERME JOSE WIGMAN','01/01/12','12/31/12') --where controle = 835
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
    if(:pr = :reembolso)then
    pr = 0;
    SUSPEND;
    codr = :codrecebimento;
    pr1 = PR;

  END
END
