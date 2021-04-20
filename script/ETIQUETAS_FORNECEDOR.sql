CREATE OR ALTER PROCEDURE ETIQUETAS_FORNECEDOR 
returns (
    nomefornecedor varchar(60),
    logradouro varchar(50),
    bairro varchar(30),
    complemento varchar(30),
    cidade varchar(40),
    uf char(2),
    cep varchar(10),
    email varchar(30),
    etiqueta char(1))
as
declare variable i integer;
BEGIN
  FOR
    select 
        fornecedor.nomefornecedor,
        enderecofornecedor.logradouro,
        enderecofornecedor.bairro,
        enderecofornecedor.complemento,
        enderecofornecedor.cidade,
        enderecofornecedor.uf,
        enderecofornecedor.cep,
        enderecofornecedor.e_mail,
        fornecedor.etiqueta
    from fornecedor
       inner join enderecofornecedor on (fornecedor.codfornecedor = enderecofornecedor.codfornecedor)
    INTO :NOMEFORNECEDOR,
         :LOGRADOURO,
         :BAIRRO,
         :COMPLEMENTO,
         :CIDADE,
         :UF,
         :CEP,
         :EMAIL,
         :ETIQUETA
  DO
  BEGIN
    i = 1;
    while (i <= ETIQUETA) do
    begin
      SUSPEND;
    i = i+1;
    end
  END
END
