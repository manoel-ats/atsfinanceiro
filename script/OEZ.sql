CREATE OR ALTER PROCEDURE OEZ 
returns (
    ra varchar(10),
    nomecliente varchar(50),
    razaosocial varchar(50),
    contato varchar(30),
    cnpj varchar(18),
    inscestadual varchar(24),
    datacadastro date,
    datanasc date,
    nomemae varchar(80),
    sexo char(1),
    cod_faixa integer,
    situacaoescolar varchar(2),
    livronasc varchar(10),
    ufnasc varchar(2),
    datatransf date,
    cns varchar(18),
    cns_ans varchar(18),
    endereco varchar(200),
    bairro varchar(60),
    numero varchar(30),
    cidade varchar(40),
    uf char(2),
    cep varchar(10),
    e_mail varchar(30))
as
declare variable codcliente integer;
BEGIN
  FOR
    select 
        clientes.codcliente,
        clientes.ra,
        clientes.nomecliente,
        clientes.razaosocial,
        clientes.contato,
        clientes.cnpj,
        clientes.inscestadual,
        clientes.datacadastro,
      --  clientes.status,
        clientes.datanasc,--CLIENTES.OBS DATANASC,
        clientes.nomemae,
        clientes.sexo,--CLIENTES.GERAAVISO--CLIENTES.GERAENV--CLIENTES.GERABOL--CLIENTES.EMVIAGEM--CLIENTES.DTAALTERA SEXO,

        clientes.cod_faixa,
        clientes.situacaoescolar,
        clientes.livronasc,
        clientes.ufnasc,
        clientes.datatransf,
   --     clientes.cod_ans,
        clientes.cns,
        clientes.cns_ans
    from clientes
    where 
       (
          (clientes.grupo_cliente = 'ASH')
       and 
          (clientes.status = 0)
       )
    order by clientes.ra
    INTO :CODCLIENTE,
         :RA,
         :NOMECLIENTE,
         :RAZAOSOCIAL,
         :CONTATO,
         :CNPJ,
         :INSCESTADUAL,
         :DATACADASTRO,
      --   :STATUS,
         :DATANASC,
         :NOMEMAE,
         :SEXO,
         :COD_FAIXA,
         :SITUACAOESCOLAR,
         :LIVRONASC,
         :UFNASC,
         :DATATRANSF,
     --    :COD_ANS,
         :CNS,
         :CNS_ANS
  DO
  BEGIN

     select first 1 e.LOGRADOURO,e.COMPLEMENTO , e.BAIRRO ,e.CIDADE ,e.UF , udf_digits(e.CEP), e.e_mail
    from ENDERECOCLIENTE e 

      where e.CODCLIENTE = :codCliente and e.TIPOEND = 0
      into :Endereco, :Numero, :Bairro , :Cidade , :UF , :CEP , :e_mail ;

    SUSPEND;
   -- Endereco = null ; --:Numero, :Bairro , :Cidade , :UF , :CEP , :e_mail
  END
END
