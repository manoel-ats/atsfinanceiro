CREATE OR ALTER PROCEDURE ARQUIVO_REMESSA (
    banco varchar(18),
    numero_conta varchar(10))
returns (
    datadoc date,
    dataprocessamento date,
    codcliente integer,
    nomecliente varchar(100),
    cnpj varchar(18),
    ie varchar(24),
    endereco varchar(200),
    bairro varchar(60),
    valor double precision,
    agencia varchar(10),
    digitoagencia char(1),
    conta varchar(10),
    digitoconta char(1),
    datarec date,
    numero varchar(30),
    cidade varchar(40),
    uf char(2),
    cep varchar(10),
    tipo smallint,
    empresa varchar(80),
    cnpj_cpf varchar(20),
    inst1 varchar(100),
    inst2 varchar(100),
    numtitulo varchar(18),
    carteira char(3),
    codigo_cedente varchar(10),
    descproduto varchar(300),
    ra varchar(10),
    e_mail varchar(30),
    n_contrato varchar(60),
    cpf_d varchar(18),
    cc varchar(6),
    geradebitoau char(1),
    tipod smallint)
as
declare variable codcli integer;
declare variable codvenda integer;
BEGIN
  Select  ban.CODIGO_AGENCIA , BAN.DIGITO_AGENCIA , ban.NUMERO_CONTA , ban.DIGITO_CONTA , ban.INSTRUCAO1,
    ban.INSTRUCAO2 ,ban.CARTEIRA , ban.CODIGO_CEDENTE  FROM BANCO ban
  where ban.BANCO = :BANCO AND NUMERO_CONTA = :NUMERO_CONTA 
  into :agencia ,:digitoagencia ,:conta ,:digitoconta , :inst1 ,:inst2 , :carteira ,:codigo_cedente  ; 

  Select e.RAZAO , udf_digits(e.CNPJ_CPF)  from EMPRESA e
  into :Empresa , :CNPJ_CPF  ;
 
  For Select rec.CODCLIENTE, rec.EMISSAO, rec.VALOR_RESTO,rec.DATAVENCIMENTO , udf_digits(rec.TITULO),CODVENDA 
  FROM RECEBIMENTO rec inner join clientes cli on rec.codcliente = cli.codcliente where rec.DP = 1
  /*and cli.geradebitoau is null*/
  order by rec.CODCLIENTE
  into :codCli, :DATADOC, :VALOR ,:DATAREC ,:NUMTITULO ,:CODVENDA

  do begin 
    DataProcessamento = DataDoc;
    Select c.ra ,c.codcliente, c.ra ||' - ' ||c.NOMECLIENTE, udf_digits(c.CNPJ), udf_digits(c.INSCESTADUAL) ,
    c.TIPOFIRMA ,c.n_contrato , c.cpf_d , c.cc  ,c.geradebitoau ,c.prazoentrega
    from CLIENTES c 
      where c.CODCLIENTE = :codCli   ORDER BY C.RA
      into :ra, :codCliente, :NOMECLIENTE, :CNPJ, :IE ,:Tipo , :n_contrato , :cpf_d , :cc , :geradebitoau , :tipod;
 /*
  FOR select  movd.descproduto  
    from venda ven
    left join  movimentodetalhe movd on ven.codmovimento = movd.codmovimento 
    WHERE VEN.CODVENDA = :CODVENDA
    INTO :DESCPRODUTO 
  do begin
 */

    select first 1 e.LOGRADOURO,e.COMPLEMENTO , e.BAIRRO ,e.CIDADE ,e.UF , udf_digits(e.CEP), e.e_mail
    from ENDERECOCLIENTE e 

      where e.CODCLIENTE = :codCliente and e.TIPOEND = 0
      into :Endereco, :Numero, :Bairro , :Cidade , :UF , :CEP , :e_mail ;
    suspend;
 /*- end */
  end 
END
