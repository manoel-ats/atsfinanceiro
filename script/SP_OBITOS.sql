CREATE OR ALTER PROCEDURE SP_OBITOS (
    pid integer)
returns (
    codigo integer,
    falecido varchar(100),
    sexo char(1),
    cor varchar(40),
    data_nasc date,
    idade integer,
    estado_civil varchar(30),
    profissao varchar(40),
    naturalidade varchar(40),
    endereco_fal varchar(100),
    numero varchar(5),
    bairro varchar(40),
    cidade varchar(40),
    uf char(2),
    nome_pai varchar(80),
    nome_mae varchar(80),
    estcivil_pai varchar(30),
    estcivil_mae varchar(30),
    endereco_pais varchar(100),
    numero_pais varchar(5),
    bairro_pais varchar(40),
    cidade_pais varchar(40),
    uf_pais char(2),
    deixa_bens char(1),
    deixa_testamento char(1),
    eleitor char(1),
    cidade_eleitoral varchar(40),
    cemiterio varchar(100),
    data_sep date,
    hora_sep time,
    local_fal varchar(80),
    data_fal date,
    hora_fal time,
    medico_1 varchar(80),
    medico_2 varchar(80),
    crm_1 varchar(15),
    crm_2 varchar(15),
    causa_morte varchar(100),
    obs varchar(200),
    nupcias varchar(80),
    data_casamento date,
    conjuge varchar(80),
    livro varchar(5),
    folhas varchar(5),
    num varchar(5),
    doc_apresentado varchar(200),
    registro varchar(100),
    declarante varchar(80),
    rg_cpf varchar(20),
    profissao_decl varchar(30),
    grau_parentesco varchar(30),
    fone_decl varchar(13),
    endereco_decl varchar(100),
    linha integer)
as
declare variable i integer;
BEGIN

   I=0;

   LINHA=1;
   FOR SELECT ob.CODIGO, ob.FALECIDO, ob.SEXO, ob.COR, ob.DATA_NASC, udf_age(ob.DATA_NASC), ob.ESTADO_CIVIL, ob.PROFISSAO, ob.NATURALIDADE
        , ob.ENDERECO_FAL, ob.NUMERO, ob.BAIRRO, ob.CIDADE, ob.UF, ob.NOME_PAI, ob.NOME_MAE, ob.ESTCIVIL_PAI
        , ob.ESTCIVIL_MAE, ob.ENDERECO_PAIS, ob.NUMERO_PAIS, ob.BAIRRO_PAIS, ob.CIDADE_PAIS, ob.UF_PAIS
        , ob.DEIXA_BENS, ob.DEIXA_TESTAMENTO, ob.ELEITOR, ob.CIDADE_ELEITORAL, ob.CEMITERIO, ob.DATA_SEP
        , ob.HORA_SEP, ob.LOCAL_FAL, ob.DATA_FAL, ob.HORA_FAL, ob.MEDICO_1, ob.MEDICO_2, ob.CRM_1, ob.CRM_2
        , ob.CAUSA_MORTE, ob.OBS, ob.NUPCIAS, ob.DATA_CASAMENTO, ob.CONJUGE, ob.LIVRO, ob.FOLHAS, ob.NUM
        , ob.DOC_APRESENTADO, ob.REGISTRO, ob.DECLARANTE, ob.RG_CPF, ob.PROFISSAO_DECL, ob.GRAU_PARENTESCO
        , ob.FONE_DECL, ob.ENDERECO_DECL FROM OBITOS ob
        inner join cartorio c on c.id_cartorio = ob.id_cartorio
        WHERE (ID = :PID)

   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC,:IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL
   DO
   BEGIN
  SUSPEND;
END

   LINHA=2;
   FOR SELECT ob.CODIGO, ob.FALECIDO, ob.SEXO, ob.COR, ob.DATA_NASC, udf_age(ob.DATA_NASC), ob.ESTADO_CIVIL, ob.PROFISSAO, ob.NATURALIDADE
        , ob.ENDERECO_FAL, ob.NUMERO, ob.BAIRRO, ob.CIDADE, ob.UF, ob.NOME_PAI, ob.NOME_MAE, ob.ESTCIVIL_PAI
        , ob.ESTCIVIL_MAE, ob.ENDERECO_PAIS, ob.NUMERO_PAIS, ob.BAIRRO_PAIS, ob.CIDADE_PAIS, ob.UF_PAIS
        , ob.DEIXA_BENS, ob.DEIXA_TESTAMENTO, ob.ELEITOR, ob.CIDADE_ELEITORAL, ob.CEMITERIO, ob.DATA_SEP
        , ob.HORA_SEP, ob.LOCAL_FAL, ob.DATA_FAL, ob.HORA_FAL, ob.MEDICO_1, ob.MEDICO_2, ob.CRM_1, ob.CRM_2
        , ob.CAUSA_MORTE, ob.OBS, ob.NUPCIAS, ob.DATA_CASAMENTO, ob.CONJUGE, ob.LIVRO, ob.FOLHAS, ob.NUM
        , ob.DOC_APRESENTADO, ob.REGISTRO, ob.DECLARANTE, ob.RG_CPF, ob.PROFISSAO_DECL, ob.GRAU_PARENTESCO
        , ob.FONE_DECL, ob.ENDERECO_DECL FROM OBITOS ob
        inner join cartorio c on c.id_cartorio = ob.id_cartorio
        WHERE (ID = :PID)
   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC,:IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL
   DO
   BEGIN
  SUSPEND;
END

   LINHA=3;
   FOR SELECT ob.CODIGO, ob.FALECIDO, ob.SEXO, ob.COR, ob.DATA_NASC, udf_age(ob.DATA_NASC), ob.ESTADO_CIVIL, ob.PROFISSAO, ob.NATURALIDADE
        , ob.ENDERECO_FAL, ob.NUMERO, ob.BAIRRO, ob.CIDADE, ob.UF, ob.NOME_PAI, ob.NOME_MAE, ob.ESTCIVIL_PAI
        , ob.ESTCIVIL_MAE, ob.ENDERECO_PAIS, ob.NUMERO_PAIS, ob.BAIRRO_PAIS, ob.CIDADE_PAIS, ob.UF_PAIS
        , ob.DEIXA_BENS, ob.DEIXA_TESTAMENTO, ob.ELEITOR, ob.CIDADE_ELEITORAL, ob.CEMITERIO, ob.DATA_SEP
        , ob.HORA_SEP, ob.LOCAL_FAL, ob.DATA_FAL, ob.HORA_FAL, ob.MEDICO_1, ob.MEDICO_2, ob.CRM_1, ob.CRM_2
        , ob.CAUSA_MORTE, ob.OBS, ob.NUPCIAS, ob.DATA_CASAMENTO, ob.CONJUGE, ob.LIVRO, ob.FOLHAS, ob.NUM
        , ob.DOC_APRESENTADO, ob.REGISTRO, ob.DECLARANTE, ob.RG_CPF, ob.PROFISSAO_DECL, ob.GRAU_PARENTESCO
        , ob.FONE_DECL, ob.ENDERECO_DECL FROM OBITOS ob
        inner join cartorio c on c.id_cartorio = ob.id_cartorio
        WHERE (ID = :PID)
   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC,:IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL
   DO
   BEGIN
  SUSPEND;
END

   LINHA=4;
   FOR SELECT ob.CODIGO, ob.FALECIDO, ob.SEXO, ob.COR, ob.DATA_NASC, udf_age(ob.DATA_NASC), ob.ESTADO_CIVIL, ob.PROFISSAO, ob.NATURALIDADE
        , ob.ENDERECO_FAL, ob.NUMERO, ob.BAIRRO, ob.CIDADE, ob.UF, ob.NOME_PAI, ob.NOME_MAE, ob.ESTCIVIL_PAI
        , ob.ESTCIVIL_MAE, ob.ENDERECO_PAIS, ob.NUMERO_PAIS, ob.BAIRRO_PAIS, ob.CIDADE_PAIS, ob.UF_PAIS
        , ob.DEIXA_BENS, ob.DEIXA_TESTAMENTO, ob.ELEITOR, ob.CIDADE_ELEITORAL, ob.CEMITERIO, ob.DATA_SEP
        , ob.HORA_SEP, ob.LOCAL_FAL, ob.DATA_FAL, ob.HORA_FAL, ob.MEDICO_1, ob.MEDICO_2, ob.CRM_1, ob.CRM_2
        , ob.CAUSA_MORTE, ob.OBS, ob.NUPCIAS, ob.DATA_CASAMENTO, ob.CONJUGE, ob.LIVRO, ob.FOLHAS, ob.NUM
        , ob.DOC_APRESENTADO, ob.REGISTRO, ob.DECLARANTE, ob.RG_CPF, ob.PROFISSAO_DECL, ob.GRAU_PARENTESCO
        , ob.FONE_DECL, ob.ENDERECO_DECL FROM OBITOS ob
        inner join cartorio c on c.id_cartorio = ob.id_cartorio
        WHERE (ID = :PID)
   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC,:IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL
   DO
   BEGIN
  SUSPEND;
END

   LINHA=5;
   FOR SELECT ob.CODIGO, ob.FALECIDO, ob.SEXO, ob.COR, ob.DATA_NASC, udf_age(ob.DATA_NASC), ob.ESTADO_CIVIL, ob.PROFISSAO, ob.NATURALIDADE
        , ob.ENDERECO_FAL, ob.NUMERO, ob.BAIRRO, ob.CIDADE, ob.UF, ob.NOME_PAI, ob.NOME_MAE, ob.ESTCIVIL_PAI
        , ob.ESTCIVIL_MAE, ob.ENDERECO_PAIS, ob.NUMERO_PAIS, ob.BAIRRO_PAIS, ob.CIDADE_PAIS, ob.UF_PAIS
        , ob.DEIXA_BENS, ob.DEIXA_TESTAMENTO, ob.ELEITOR, ob.CIDADE_ELEITORAL, ob.CEMITERIO, ob.DATA_SEP
        , ob.HORA_SEP, ob.LOCAL_FAL, ob.DATA_FAL, ob.HORA_FAL, ob.MEDICO_1, ob.MEDICO_2, ob.CRM_1, ob.CRM_2
        , ob.CAUSA_MORTE, ob.OBS, ob.NUPCIAS, ob.DATA_CASAMENTO, ob.CONJUGE, ob.LIVRO, ob.FOLHAS, ob.NUM
        , ob.DOC_APRESENTADO, ob.REGISTRO, ob.DECLARANTE, ob.RG_CPF, ob.PROFISSAO_DECL, ob.GRAU_PARENTESCO
        , ob.FONE_DECL, ob.ENDERECO_DECL FROM OBITOS ob
        inner join cartorio c on c.id_cartorio = ob.id_cartorio
        WHERE (ID = :PID)
   INTO:CODIGO,:FALECIDO,:SEXO,:COR,:DATA_NASC, :IDADE,:ESTADO_CIVIL,:PROFISSAO,:NATURALIDADE
        ,:ENDERECO_FAL,:NUMERO,:BAIRRO,:CIDADE,:UF,:NOME_PAI,:NOME_MAE,:ESTCIVIL_PAI
        ,:ESTCIVIL_MAE,:ENDERECO_PAIS,:NUMERO_PAIS,:BAIRRO_PAIS,:CIDADE_PAIS,:UF_PAIS
        ,:DEIXA_BENS,:DEIXA_TESTAMENTO,:ELEITOR,:CIDADE_ELEITORAL,:CEMITERIO,:DATA_SEP
        ,:HORA_SEP,:LOCAL_FAL,:DATA_FAL,:HORA_FAL,:MEDICO_1,:MEDICO_2,:CRM_1,:CRM_2
        ,:CAUSA_MORTE,:OBS,:NUPCIAS,:DATA_CASAMENTO,:CONJUGE,:LIVRO,:FOLHAS,:NUM
        ,:DOC_APRESENTADO,:REGISTRO,:DECLARANTE,:RG_CPF,:PROFISSAO_DECL,:GRAU_PARENTESCO
        ,:FONE_DECL,:ENDERECO_DECL
   DO
   BEGIN
  SUSPEND;
END


END
