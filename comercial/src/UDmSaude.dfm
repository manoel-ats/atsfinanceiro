object DMSaude: TDMSaude
  OldCreateOrder = False
  Left = 224
  Top = 94
  Height = 630
  Width = 1037
  object sds_param: TSQLDataSet
    CommandText = 'select * from PARAMETRO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 8
    Top = 423
    object StringField5: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object StringField6: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object StringField8: TStringField
      FieldName = 'CONFIGURADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_paramDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object sds_paramD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object sds_paramD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object sds_paramD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object sds_paramD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object sds_paramD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object sds_paramD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object sds_paramD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object sds_paramD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object sds_paramD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object sds_paramINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
  end
  object dsp_param: TDataSetProvider
    DataSet = sds_param
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 423
  end
  object cds_param: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_param'
    Left = 120
    Top = 423
    object StringField9: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object StringField10: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cds_paramDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object cds_paramD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object cds_paramD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object cds_paramD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object cds_paramD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object cds_paramD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object cds_paramD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object cds_paramD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object cds_paramD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object cds_paramD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object cds_paramINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
    object cds_paramCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
  end
  object sds_Empresa: TSQLDataSet
    CommandText = 'select * from EMPRESA '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 56
    Top = 312
    object sdsEMPRESA: TStringField
      FieldName = 'EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object sdsRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object sdsCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object sdsDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sdsFONE_1: TStringField
      FieldName = 'FONE_1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sdsFONE_2: TStringField
      FieldName = 'FONE_2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sdsFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sdsE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsWEB: TStringField
      FieldName = 'WEB'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object sdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsIE_RG: TStringField
      FieldName = 'IE_RG'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_EmpresaSLOGAN: TStringField
      FieldName = 'SLOGAN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_EmpresaOUTRAS_INFO: TStringField
      FieldName = 'OUTRAS_INFO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object dsp_empresa: TDataSetProvider
    DataSet = sds_Empresa
    Left = 104
    Top = 312
  end
  object cds_empresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_empresa'
    Left = 144
    Top = 312
    object cds_empresaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object cds_empresaRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object cds_empresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_empresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_empresaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_empresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_empresaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_empresaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_empresaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object cds_empresaDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_empresaFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cds_empresaFONE_1: TStringField
      FieldName = 'FONE_1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cds_empresaFONE_2: TStringField
      FieldName = 'FONE_2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cds_empresaFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cds_empresaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_empresaWEB: TStringField
      FieldName = 'WEB'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_empresaLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object cds_empresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_empresaTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_empresaIE_RG: TStringField
      FieldName = 'IE_RG'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_empresaSLOGAN: TStringField
      FieldName = 'SLOGAN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_empresaOUTRAS_INFO: TStringField
      FieldName = 'OUTRAS_INFO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object sds_usuario: TSQLDataSet
    CommandText = 'select * from USUARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 22
    Top = 519
    object sdsCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sdsNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 30
    end
    object sdsSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object sdsPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
  end
  object dsp_usuario: TDataSetProvider
    DataSet = sds_usuario
    UpdateMode = upWhereKeyOnly
    Left = 86
    Top = 532
  end
  object cds_usuario_cadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_usuario'
    Left = 198
    Top = 528
    object cds_usuario_cadastroCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cds_usuario_cadastroNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 30
    end
    object cds_usuario_cadastroSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cds_usuario_cadastroPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
  end
  object cds_Usuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 69
    Top = 481
    object cds_UsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object cds_UsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object cds_UsuarioPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
    object cds_UsuarioCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    UpdateMode = upWhereKeyOnly
    Left = 141
    Top = 377
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 'select * from acesso_senha'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 61
    Top = 377
    object SQLDataSet1LOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
    end
    object SQLDataSet1SENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object SQLDataSet1PERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
    object SQLDataSet1CODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
  end
  object cdsEndereco: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dspEndereco'
    Left = 160
    Top = 8
    object cdsEnderecoCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEnderecoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEnderecoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEnderecoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEnderecoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsEnderecoUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsEnderecoCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cdsEnderecoTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEnderecoTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEnderecoE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEnderecoRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsEnderecoTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEnderecoDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsEnderecoDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEnderecoDDD2: TStringField
      FieldName = 'DDD2'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEnderecoDDD3: TStringField
      FieldName = 'DDD3'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEnderecoDDD1: TStringField
      FieldName = 'DDD1'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEnderecoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 10
    end
    object cdsEnderecoFAX: TStringField
      FieldName = 'FAX'
      Size = 10
    end
    object cdsEnderecoCOMPLE: TStringField
      FieldName = 'COMPLE'
      Size = 30
    end
  end
  object dspEndereco: TDataSetProvider
    DataSet = sqlEndereco
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 8
  end
  object sqlEndereco: TSQLDataSet
    CommandText = 'select * from ENDERECOCLIENTE where CODCLIENTE = :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 72
    Top = 8
    object sdsEnderecoCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsEnderecoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsEnderecoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsEnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsEnderecoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsEnderecoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsEnderecoUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsEnderecoCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsEnderecoTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsEnderecoTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsEnderecoE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsEnderecoRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsEnderecoTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsEnderecoDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sdsEnderecoDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsEnderecoDDD2: TStringField
      FieldName = 'DDD2'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsEnderecoDDD3: TStringField
      FieldName = 'DDD3'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsEnderecoDDD1: TStringField
      FieldName = 'DDD1'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sqlEnderecoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 10
    end
    object sqlEnderecoFAX: TStringField
      FieldName = 'FAX'
      Size = 10
    end
    object sqlEnderecoCOMPLE: TStringField
      FieldName = 'COMPLE'
      Size = 30
    end
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dspCliente'
    Left = 184
    Top = 64
    object cdsClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsClienteCONTATO: TStringField
      DisplayWidth = 60
      FieldName = 'CONTATO'
      Size = 60
    end
    object cdsClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cdsClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsClienteRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cdsClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cdsClienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object cdsClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object cdsClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cdsClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object cdsClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object cdsClientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object cdsClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object cdsClienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object cdsClienteDATANASC: TDateField
      FieldName = 'DATANASC'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsClienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object cdsClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsClienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object cdsClienteID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object cdsClienteDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object cdsClienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object cdsClienteSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object cdsClienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object cdsClienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object cdsClienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object cdsClienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object cdsClienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object cdsClienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object cdsClienteGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object cdsClienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object cdsClienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object cdsClienteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object cdsClienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object cdsClienteRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsClienteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object cdsClienteUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object cdsClienteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object cdsClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsClienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object cdsClienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object cdsClientePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsClienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object cdsClienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object cdsClienteCOD_ANS: TStringField
      FieldName = 'COD_ANS'
      Size = 10
    end
    object cdsClienteGERADEBITOAU: TStringField
      FieldName = 'GERADEBITOAU'
      FixedChar = True
      Size = 1
    end
    object cdsClienteNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Size = 30
    end
    object cdsClienteTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 60
    end
    object cdsClienteCODIGO_AGENCIA: TStringField
      FieldName = 'CODIGO_AGENCIA'
      Size = 10
    end
    object cdsClienteDIGITO_AGENCIA: TStringField
      FieldName = 'DIGITO_AGENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object cdsClienteDIGITO_CONTA: TStringField
      FieldName = 'DIGITO_CONTA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object cdsClienteSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 9
    end
    object cdsClienteTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 8
    end
    object cdsClienteCNS: TStringField
      FieldName = 'CNS'
      EditMask = '000\.0000\.0000\.0000;1;_'
      Size = 18
    end
    object cdsClienteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object cdsClienteCPF_D: TStringField
      FieldName = 'CPF_D'
      Size = 18
    end
    object cdsClienteCC: TStringField
      FieldName = 'CC'
      Size = 6
    end
    object cdsClienteCNS_ANS: TStringField
      FieldName = 'CNS_ANS'
      EditMask = '000\.0000\.0000\.0000;1;_'
      Size = 18
    end
    object cdsClienteETIQUETAS: TStringField
      FieldName = 'ETIQUETAS'
      ReadOnly = True
      Size = 1
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 64
  end
  object sdsCliente: TSQLDataSet
    CommandText = 
      'select CODCLIENTE,NOMECLIENTE,RAZAOSOCIAL, CONTATO, TIPOFIRMA, C' +
      'PF, CNPJ, INSCESTADUAL, RG, SEGMENTO, REGIAO, LIMITECREDITO, DAT' +
      'ACADASTRO, CODUSUARIO, STATUS, HOMEPAGE, PRAZORECEBIMENTO, PRAZO' +
      'ENTREGA, CODBANCO, BASE_ICMS, DATANASC, CONTA_CLIENTE, OBS, TEM_' +
      'IE, ID_COB, DATARESC, NOMEMAE, SEXO, FORMA_CORRESPOND, GRUPO_CLI' +
      'ENTE, CODINCLUCANC, EXIST_COBERT, EXISTCOPART, DATAREINC, GERAAV' +
      'ISO, GERAENV, GERABOL, EMVIAGEM, DTAALTERA, SERIE, COD_FAIXA, RA' +
      ', LIVRONASC ,UFNASC, DATANASCIMENTO ,numero,SITUACAOESCOLAR,ESTA' +
      'DORG,PARCELA,DATAEMISSAORG,COMUNICAALUNO,COD_ANS,GERADEBITOAU'#13#10',' +
      'NOMEBANCO,TITULAR,CODIGO_AGENCIA,DIGITO_AGENCIA,NUMERO_CONTA,DIG' +
      'ITO_CONTA,AGENCIA,'#13#10'(case when STATUS=0 then '#39'ATIVO'#39' else '#39'DESLI' +
      'GADO'#39' end) as SITUACAO,'#13#10'(case when TIPOFIRMA=0 then '#39'FISICA'#39' el' +
      'se '#39'JURIDICA'#39' end) as TIPO'#13#10',cns,n_contrato , cpf_d, cc , cns_an' +
      's , ETIQUETAS'#13#10'from CLIENTES where CODCLIENTE = :pcod or :pcod =' +
      ' 0 ORDER BY NOMECLIENTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 56
    Top = 56
    object i: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sdsClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object sdsClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sdsClienteCONTATO: TStringField
      DisplayWidth = 60
      FieldName = 'CONTATO'
      Size = 60
    end
    object sdsClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sdsClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sdsClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sdsClienteRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object sdsClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object sdsClienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object sdsClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object sdsClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object sdsClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sdsClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object sdsClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object sdsClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object sdsClientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object sdsClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object sdsClienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object sdsClienteDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object sdsClienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object sdsClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sdsClienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object sdsClienteID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object sdsClienteDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object sdsClienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object sdsClienteSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object sdsClienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object sdsClienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object sdsClienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object sdsClienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object sdsClienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object sdsClienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object sdsClienteGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object sdsClienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object sdsClienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object sdsClienteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object sdsClienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object sdsClienteRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sdsClienteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object sdsClienteUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object sdsClienteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object sdsClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sdsClienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sdsClienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object sdsClientePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sdsClienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object sdsClienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object sdsClienteCOD_ANS: TStringField
      FieldName = 'COD_ANS'
      Size = 10
    end
    object sdsClienteGERADEBITOAU: TStringField
      FieldName = 'GERADEBITOAU'
      FixedChar = True
      Size = 1
    end
    object sdsClienteNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Size = 30
    end
    object sdsClienteTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 60
    end
    object sdsClienteCODIGO_AGENCIA: TStringField
      FieldName = 'CODIGO_AGENCIA'
      Size = 10
    end
    object sdsClienteDIGITO_AGENCIA: TStringField
      FieldName = 'DIGITO_AGENCIA'
      FixedChar = True
      Size = 1
    end
    object sdsClienteNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object sdsClienteDIGITO_CONTA: TStringField
      FieldName = 'DIGITO_CONTA'
      FixedChar = True
      Size = 1
    end
    object sdsClienteAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object sdsClienteSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 9
    end
    object sdsClienteTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 8
    end
    object sdsClienteCNS: TStringField
      FieldName = 'CNS'
      Size = 18
    end
    object sdsClienteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object sdsClienteCPF_D: TStringField
      FieldName = 'CPF_D'
      Size = 18
    end
    object sdsClienteCC: TStringField
      FieldName = 'CC'
      Size = 6
    end
    object sdsClienteCNS_ANS: TStringField
      FieldName = 'CNS_ANS'
      Size = 18
    end
    object sdsClienteETIQUETAS: TStringField
      FieldName = 'ETIQUETAS'
      ReadOnly = True
      Size = 1
    end
  end
  object scdCliente: TSQLClientDataSet
    CommandText = 
      'select * from CLIENTES where  NOMECLIENTE like :PCLIENTE or  COD' +
      'CLIENTE=:pCODCLI order by NOMECLIENTE'#13#10#13#10
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'PCLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODCLI'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 8
    Top = 56
    object scdClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object scdClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object cdsDependente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sit'
        ParamType = ptInput
      end>
    ProviderName = 'dspDependente'
    OnNewRecord = cdsDependenteNewRecord
    OnReconcileError = cdsDependenteReconcileError
    Left = 179
    Top = 232
    object cdsDependenteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      KeyFields = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDependenteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsDependenteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      FixedChar = True
      Size = 254
    end
    object cdsDependenteCONTATO: TStringField
      DisplayWidth = 60
      FieldName = 'CONTATO'
      Size = 60
    end
    object cdsDependenteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cdsDependenteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsDependenteCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '000\.000\.000\-00;1;_'
      Size = 18
    end
    object cdsDependenteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsDependenteRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cdsDependenteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cdsDependenteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object cdsDependenteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object cdsDependenteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsDependenteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cdsDependenteSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsDependenteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object cdsDependentePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object cdsDependentePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object cdsDependenteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object cdsDependenteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object cdsDependenteDATANASC: TDateField
      FieldName = 'DATANASC'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsDependenteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object cdsDependenteOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsDependenteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object cdsDependenteID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object cdsDependenteDATARESC: TDateField
      FieldName = 'DATARESC'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsDependenteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object cdsDependenteSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsDependenteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object cdsDependenteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object cdsDependenteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object cdsDependenteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object cdsDependenteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object cdsDependenteDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object cdsDependenteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object cdsDependenteGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object cdsDependenteGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object cdsDependenteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object cdsDependenteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object cdsDependenteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object cdsDependenteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object cdsDependenteRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsDependenteCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object cdsDependenteIP: TStringField
      FieldName = 'IP'
      EditMask = '000\.00000\.00\-0;1;_'
      Size = 60
    end
    object cdsDependenteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object cdsDependenteMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object cdsDependenteMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object cdsDependenteBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object cdsDependenteBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object cdsDependenteTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object cdsDependenteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object cdsDependenteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsDependenteMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object cdsDependenteANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object cdsDependentePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsDependentePARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object cdsDependenteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsDependenteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object cdsDependenteANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object cdsDependenteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object cdsDependenteRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object cdsDependenteCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object cdsDependentePAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object cdsDependenteRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object cdsDependenteCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object cdsDependenteLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object cdsDependenteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object cdsDependenteCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object cdsDependenteUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object cdsDependenteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object cdsDependenteCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object cdsDependenteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object cdsDependenteFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object cdsDependenteLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object cdsDependenteLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object cdsDependenteTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object cdsDependenteTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object cdsDependenteINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object cdsDependenteCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object cdsDependenteDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object cdsDependenteDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object cdsDependenteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object cdsDependenteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object cdsDependenteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object cdsDependenteFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object cdsDependenteCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object cdsDependenteCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object cdsDependenteFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object cdsDependenteCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object cdsDependenteCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object cdsDependenteVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object cdsDependenteDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object cdsDependenteCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object cdsDependentePERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object cdsDependenteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object cdsDependenteDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object cdsDependenteCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object cdsDependenteETIQUETAS: TStringField
      FieldName = 'ETIQUETAS'
      Size = 1
    end
    object cdsDependenteETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 1
    end
    object cdsDependenteCOD_ANS: TStringField
      FieldName = 'COD_ANS'
      Size = 10
    end
    object cdsDependenteCNS: TStringField
      FieldName = 'CNS'
      EditMask = '000\.0000\.0000\.0000;1;_'
      Size = 18
    end
    object cdsDependenteCPF_D: TStringField
      FieldName = 'CPF_D'
      Size = 18
    end
    object cdsDependenteCC: TStringField
      FieldName = 'CC'
      Size = 6
    end
    object cdsDependenteGERADEBITOAU: TStringField
      FieldName = 'GERADEBITOAU'
      FixedChar = True
      Size = 1
    end
    object cdsDependenteAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object cdsDependenteDIGITO_CONTA: TStringField
      FieldName = 'DIGITO_CONTA'
      FixedChar = True
      Size = 1
    end
    object cdsDependenteNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object cdsDependenteDIGITO_AGENCIA: TStringField
      FieldName = 'DIGITO_AGENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsDependenteCODIGO_AGENCIA: TStringField
      FieldName = 'CODIGO_AGENCIA'
      Size = 10
    end
    object cdsDependenteTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 60
    end
    object cdsDependenteNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Size = 30
    end
    object cdsDependenteCNS_ANS: TStringField
      FieldName = 'CNS_ANS'
      EditMask = '000\.0000\.0000\.0000;1;_'
      Size = 18
    end
  end
  object dspDependente: TDataSetProvider
    DataSet = sdsDependente
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 232
  end
  object sdsDependente: TSQLDataSet
    CommandText = 
      'select '#13#10'  CODCLIENTE'#13#10', NOMECLIENTE'#13#10', udf_collatebr(RAZAOSOCIA' +
      'L)  as RAZAOSOCIAL'#13#10', CONTATO'#13#10', TIPOFIRMA'#13#10', CPF'#13#10', CNPJ'#13#10', INS' +
      'CESTADUAL'#13#10', RG'#13#10', SEGMENTO'#13#10', REGIAO'#13#10', LIMITECREDITO'#13#10', DATACA' +
      'DASTRO'#13#10', CODUSUARIO'#13#10', STATUS'#13#10', HOMEPAGE'#13#10', PRAZORECEBIMENTO'#13#10 +
      ', PRAZOENTREGA'#13#10', CODBANCO'#13#10', BASE_ICMS'#13#10', DATANASC'#13#10', CONTA_CLI' +
      'ENTE'#13#10', OBS'#13#10', TEM_IE'#13#10', ID_COB'#13#10', DATARESC'#13#10', NOMEMAE'#13#10', SEXO'#13#10 +
      ', FORMA_CORRESPOND'#13#10', GRUPO_CLIENTE'#13#10', CODINCLUCANC'#13#10', EXIST_COB' +
      'ERT'#13#10', EXISTCOPART'#13#10', DATAREINC'#13#10', GERAAVISO'#13#10', GERAENV'#13#10', GERAB' +
      'OL'#13#10', EMVIAGEM'#13#10', DTAALTERA'#13#10', SERIELETRA'#13#10', SERIE'#13#10', RA'#13#10', CURS' +
      'O'#13#10', IP'#13#10', N_CONTRATO'#13#10', MAC'#13#10', MARCA'#13#10', BANDA_UPLOAD'#13#10', BANDA_D' +
      'OWLOAD'#13#10', TORRE_CONECCAO'#13#10', COD_FAIXA'#13#10', DESCONTO'#13#10', MENSALIDADE' +
      #13#10', ANUIDADE'#13#10', PARCELA'#13#10', PARCELAGERADAS'#13#10', NUMERO'#13#10', DATANASCI' +
      'MENTO'#13#10', ANOLETIVO'#13#10', SITUACAOESCOLAR'#13#10', RGMAE'#13#10', CPFMAE'#13#10', PAI'#13 +
      #10', RGPAI'#13#10', CPFPAI'#13#10', LANCADOCLASSE'#13#10', TRANSPORTE'#13#10', CIDADENASC'#13 +
      #10', UFNASC'#13#10', NACIONALIDADE'#13#10', CERTIDAONASCNUM'#13#10', LIVRONASC'#13#10', FL' +
      'LIVRONASC'#13#10', LOCALTRABPAI'#13#10', LOCALTRABMAE'#13#10', TELTRABPAI'#13#10', TELTR' +
      'ABMAE'#13#10', INFONECESSARIAS'#13#10', CARTEIRAVACINACAO'#13#10', DIVERSO1'#13#10', DIV' +
      'ERSO2'#13#10', DATAEMISSAORG'#13#10', ESTADORG'#13#10', COMUNICAALUNO'#13#10', FONEMAE'#13#10 +
      ', CELULARMAE'#13#10', COMUNICAMAE'#13#10', FONEPAI'#13#10', CELULARPAI'#13#10', COMUNICA' +
      'PAI'#13#10', VALOR_MATRICULA'#13#10', DATATRANSF'#13#10', COR_RACA'#13#10', PERIODO'#13#10', F' +
      'OTO'#13#10', DATA_MATRICULA'#13#10', CODRESPONSAVEL'#13#10', ETIQUETAS'#13#10', ETIQUETA' +
      #13#10', COD_ANS'#13#10',CNS'#13#10', CPF_D'#13#10', CC '#13#10', GERADEBITOAU'#13#10', AGENCIA'#13#10', ' +
      'DIGITO_CONTA'#13#10', NUMERO_CONTA'#13#10', DIGITO_AGENCIA'#13#10', CODIGO_AGENCIA' +
      #13#10', TITULAR'#13#10', NOMEBANCO'#13#10',CNS_ANS'#13#10#13#10'from CLIENTES where  RAZAO' +
      'SOCIAL = :id and segmento = 1 AND GRUPO_CLIENTE = :tipo  and ID_' +
      'COB = :sit  order by   nomecliente , RA ,status  '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sit'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 32
    Top = 224
    object sdsDependenteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sdsDependenteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object sdsDependenteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      FixedChar = True
      Size = 254
    end
    object sdsDependenteCONTATO: TStringField
      DisplayWidth = 60
      FieldName = 'CONTATO'
      Size = 60
    end
    object sdsDependenteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sdsDependenteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sdsDependenteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsDependenteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sdsDependenteRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object sdsDependenteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object sdsDependenteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object sdsDependenteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object sdsDependenteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object sdsDependenteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sdsDependenteSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object sdsDependenteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object sdsDependentePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object sdsDependentePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object sdsDependenteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object sdsDependenteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object sdsDependenteDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object sdsDependenteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object sdsDependenteOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sdsDependenteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object sdsDependenteID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object sdsDependenteDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object sdsDependenteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object sdsDependenteSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sdsDependenteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object sdsDependenteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object sdsDependenteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object sdsDependenteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object sdsDependenteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object sdsDependenteDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object sdsDependenteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object sdsDependenteGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object sdsDependenteGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object sdsDependenteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object sdsDependenteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object sdsDependenteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object sdsDependenteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object sdsDependenteRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sdsDependenteCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object sdsDependenteIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object sdsDependenteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object sdsDependenteMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object sdsDependenteMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object sdsDependenteBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object sdsDependenteBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object sdsDependenteTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object sdsDependenteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object sdsDependenteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object sdsDependenteMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object sdsDependenteANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object sdsDependentePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sdsDependentePARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object sdsDependenteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sdsDependenteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object sdsDependenteANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object sdsDependenteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sdsDependenteRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object sdsDependenteCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object sdsDependentePAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object sdsDependenteRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object sdsDependenteCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object sdsDependenteLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object sdsDependenteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object sdsDependenteCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object sdsDependenteUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object sdsDependenteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object sdsDependenteCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object sdsDependenteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object sdsDependenteFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object sdsDependenteLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object sdsDependenteLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object sdsDependenteTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object sdsDependenteTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object sdsDependenteINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object sdsDependenteCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object sdsDependenteDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object sdsDependenteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object sdsDependenteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object sdsDependenteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object sdsDependenteFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object sdsDependenteCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object sdsDependenteCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object sdsDependenteFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object sdsDependenteCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object sdsDependenteCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object sdsDependenteVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object sdsDependenteDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object sdsDependenteCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object sdsDependentePERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object sdsDependenteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object sdsDependenteDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object sdsDependenteCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object sdsDependenteETIQUETAS: TStringField
      FieldName = 'ETIQUETAS'
      Size = 1
    end
    object sdsDependenteETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 1
    end
    object sdsDependenteCOD_ANS: TStringField
      FieldName = 'COD_ANS'
      Size = 10
    end
    object sdsDependenteCNS: TStringField
      FieldName = 'CNS'
      Size = 18
    end
    object sdsDependenteCPF_D: TStringField
      FieldName = 'CPF_D'
      Size = 18
    end
    object sdsDependenteCC: TStringField
      FieldName = 'CC'
      Size = 6
    end
    object sdsDependenteGERADEBITOAU: TStringField
      FieldName = 'GERADEBITOAU'
      FixedChar = True
      Size = 1
    end
    object sdsDependenteAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object sdsDependenteDIGITO_CONTA: TStringField
      FieldName = 'DIGITO_CONTA'
      FixedChar = True
      Size = 1
    end
    object sdsDependenteNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object sdsDependenteDIGITO_AGENCIA: TStringField
      FieldName = 'DIGITO_AGENCIA'
      FixedChar = True
      Size = 1
    end
    object sdsDependenteCODIGO_AGENCIA: TStringField
      FieldName = 'CODIGO_AGENCIA'
      Size = 10
    end
    object sdsDependenteTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 60
    end
    object sdsDependenteNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Size = 30
    end
    object sdsDependenteCNS_ANS: TStringField
      FieldName = 'CNS_ANS'
      Size = 18
    end
    object sdsDependenteDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
  end
  object cdsFaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'dspFaixa'
    Left = 176
    Top = 272
    object cdsFaixaCODFAIXA: TIntegerField
      FieldName = 'CODFAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsFaixaIDADE_MIN: TSmallintField
      FieldName = 'IDADE_MIN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaixaIDADE_MAX: TSmallintField
      FieldName = 'IDADE_MAX'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaixaVALOR_PLANO: TFloatField
      FieldName = 'VALOR_PLANO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cdsFaixaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaixaUSO: TStringField
      FieldName = 'USO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaixaCODIGOS: TIntegerField
      FieldName = 'CODIGOS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaixaPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsFaixaVALORPARCELA: TFloatField
      FieldName = 'VALORPARCELA'
      DisplayFormat = ',##0.00'
    end
    object cdsFaixaVALOR_A: TFloatField
      FieldName = 'VALOR_A'
      DisplayFormat = ',##0.00'
    end
    object cdsFaixaVALOR_B: TFloatField
      FieldName = 'VALOR_B'
      DisplayFormat = ',##0.00'
    end
    object cdsFaixaVALOR_C: TFloatField
      FieldName = 'VALOR_C'
      DisplayFormat = ',##0.00'
    end
    object cdsFaixaVALOR_D: TFloatField
      FieldName = 'VALOR_D'
      DisplayFormat = ',##0.00'
    end
  end
  object dspFaixa: TDataSetProvider
    DataSet = sdsFaixa
    Left = 112
    Top = 272
  end
  object sdsFaixa: TSQLDataSet
    CommandText = 'select * from FAIXA_ETARIA where USO = :id order by CODIGOS'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 64
    Top = 272
    object sdsFaixaCODFAIXA: TIntegerField
      FieldName = 'CODFAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsFaixaIDADE_MIN: TSmallintField
      FieldName = 'IDADE_MIN'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFaixaIDADE_MAX: TSmallintField
      FieldName = 'IDADE_MAX'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFaixaVALOR_PLANO: TFloatField
      FieldName = 'VALOR_PLANO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFaixaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFaixaUSO: TStringField
      FieldName = 'USO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFaixaCODIGOS: TIntegerField
      FieldName = 'CODIGOS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFaixaPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sdsFaixaVALORPARCELA: TFloatField
      FieldName = 'VALORPARCELA'
    end
    object sdsFaixaVALOR_A: TFloatField
      FieldName = 'VALOR_A'
    end
    object sdsFaixaVALOR_B: TFloatField
      FieldName = 'VALOR_B'
    end
    object sdsFaixaVALOR_C: TFloatField
      FieldName = 'VALOR_C'
    end
    object sdsFaixaVALOR_D: TFloatField
      FieldName = 'VALOR_D'
    end
  end
  object dspCombo: TDataSetProvider
    DataSet = sdsCombo
    Options = [poAllowCommandText]
    Left = 272
    Top = 88
  end
  object cdsCombo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'puso'
        ParamType = ptInput
      end>
    ProviderName = 'dspCombo'
    Left = 272
    Top = 136
    object cdsComboCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object cdsComboDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cdsComboUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object cdsComboCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object cdsComboOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
    object cdsComboCODHOS: TIntegerField
      FieldName = 'CODHOS'
    end
    object cdsComboDIVERSOS: TStringField
      FieldName = 'DIVERSOS'
      Size = 50
    end
    object cdsComboDESC1: TStringField
      FieldName = 'DESC1'
      Size = 80
    end
    object cdsComboDESC2: TStringField
      FieldName = 'DESC2'
      Size = 80
    end
    object cdsComboDESC3: TStringField
      FieldName = 'DESC3'
      Size = 80
    end
    object cdsComboDESC4: TStringField
      FieldName = 'DESC4'
      Size = 80
    end
    object cdsComboDESC5: TStringField
      FieldName = 'DESC5'
      Size = 80
    end
    object cdsComboDESC6: TStringField
      FieldName = 'DESC6'
      Size = 80
    end
  end
  object sdsCombo: TSQLDataSet
    CommandText = 'select * from DADOS_COMBOS where uso =:puso order by descricao'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'puso'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 272
    Top = 40
    object sdsComboCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object sdsComboDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object sdsComboUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object sdsComboCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object sdsComboOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
    object sdsComboCODHOS: TIntegerField
      FieldName = 'CODHOS'
    end
    object sdsComboDIVERSOS: TStringField
      FieldName = 'DIVERSOS'
      Size = 50
    end
    object sdsComboDESC1: TStringField
      FieldName = 'DESC1'
      Size = 80
    end
    object sdsComboDESC2: TStringField
      FieldName = 'DESC2'
      Size = 80
    end
    object sdsComboDESC3: TStringField
      FieldName = 'DESC3'
      Size = 80
    end
    object sdsComboDESC4: TStringField
      FieldName = 'DESC4'
      Size = 80
    end
    object sdsComboDESC5: TStringField
      FieldName = 'DESC5'
      Size = 80
    end
    object sdsComboDESC6: TStringField
      FieldName = 'DESC6'
      Size = 80
    end
  end
  object scdsGuias: TSQLDataSet
    CommandText = 'select * from GUIAS where  :pg = NUMERO_GUIA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pg'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 256
    Top = 232
    object scdsGuiasID_GUIAS: TIntegerField
      FieldName = 'ID_GUIAS'
      Required = True
    end
    object scdsGuiasNUMERO_GUIA: TStringField
      FieldName = 'NUMERO_GUIA'
    end
    object scdsGuiasDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object scdsGuiasNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 70
    end
    object scdsGuiasNOME_EMPRESA: TStringField
      FieldName = 'NOME_EMPRESA'
      Size = 70
    end
    object scdsGuiasNOME_EXECUTANTE: TStringField
      FieldName = 'NOME_EXECUTANTE'
      Size = 100
    end
    object scdsGuiasSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Size = 7
    end
    object scdsGuiasNUMERO_PROFISSIONAL: TStringField
      FieldName = 'NUMERO_PROFISSIONAL'
      Size = 15
    end
    object scdsGuiasSIGLA_UNIDADE: TStringField
      FieldName = 'SIGLA_UNIDADE'
      Size = 2
    end
    object scdsGuiasCODIGO_ESPECIALIDADE: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE'
      Size = 5
    end
    object scdsGuiasCODIGO_CID10_1: TStringField
      FieldName = 'CODIGO_CID10_1'
      Size = 5
    end
    object scdsGuiasCODIGO_CID10_2: TStringField
      FieldName = 'CODIGO_CID10_2'
      Size = 5
    end
    object scdsGuiasCODIGO_CID10_3: TStringField
      FieldName = 'CODIGO_CID10_3'
      Size = 5
    end
    object scdsGuiasCODIGO_CID10_4: TStringField
      FieldName = 'CODIGO_CID10_4'
      Size = 5
    end
    object scdsGuiasDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object scdsGuiasGRAU_RISCO: TStringField
      FieldName = 'GRAU_RISCO'
      Size = 2
    end
    object scdsGuiasTIPO_CONSULTA: TStringField
      FieldName = 'TIPO_CONSULTA'
      Size = 1
    end
    object scdsGuiasAPTO: TIntegerField
      FieldName = 'APTO'
    end
    object scdsGuiasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 240
    end
    object scdsGuiasTIPO_GUIA: TStringField
      FieldName = 'TIPO_GUIA'
    end
    object scdsGuiasCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object scdsGuiasTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasRG: TStringField
      FieldName = 'RG'
      Size = 24
    end
    object scdsGuiasCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object scdsGuiasCARGO: TStringField
      FieldName = 'CARGO'
      Size = 60
    end
    object scdsGuiasFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
    object scdsGuiasPIS: TStringField
      FieldName = 'PIS'
    end
    object scdsGuiasDATA1: TDateField
      FieldName = 'DATA1'
    end
    object scdsGuiasCK1: TStringField
      FieldName = 'CK1'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME1: TStringField
      FieldName = 'EXAME1'
      Size = 60
    end
    object scdsGuiasCKA1: TStringField
      FieldName = 'CKA1'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO1: TStringField
      FieldName = 'ALTERADO1'
      Size = 60
    end
    object scdsGuiasDATA2: TDateField
      FieldName = 'DATA2'
    end
    object scdsGuiasCK2: TStringField
      FieldName = 'CK2'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME2: TStringField
      FieldName = 'EXAME2'
      Size = 60
    end
    object scdsGuiasCKA2: TStringField
      FieldName = 'CKA2'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO2: TStringField
      FieldName = 'ALTERADO2'
      Size = 60
    end
    object scdsGuiasDATA3: TDateField
      FieldName = 'DATA3'
    end
    object scdsGuiasCK3: TStringField
      FieldName = 'CK3'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME3: TStringField
      FieldName = 'EXAME3'
      Size = 60
    end
    object scdsGuiasCKA3: TStringField
      FieldName = 'CKA3'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO3: TStringField
      FieldName = 'ALTERADO3'
      Size = 60
    end
    object scdsGuiasDATA4: TDateField
      FieldName = 'DATA4'
    end
    object scdsGuiasCK4: TStringField
      FieldName = 'CK4'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME4: TStringField
      FieldName = 'EXAME4'
      Size = 60
    end
    object scdsGuiasCKA4: TStringField
      FieldName = 'CKA4'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO4: TStringField
      FieldName = 'ALTERADO4'
      Size = 60
    end
    object scdsGuiasDATA5: TDateField
      FieldName = 'DATA5'
    end
    object scdsGuiasCK5: TStringField
      FieldName = 'CK5'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME5: TStringField
      FieldName = 'EXAME5'
      Size = 60
    end
    object scdsGuiasCKA5: TStringField
      FieldName = 'CKA5'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO5: TStringField
      FieldName = 'ALTERADO5'
      Size = 60
    end
    object scdsGuiasDATA6: TDateField
      FieldName = 'DATA6'
    end
    object scdsGuiasCK6: TStringField
      FieldName = 'CK6'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME6: TStringField
      FieldName = 'EXAME6'
      Size = 60
    end
    object scdsGuiasCKA6: TStringField
      FieldName = 'CKA6'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO6: TStringField
      FieldName = 'ALTERADO6'
      Size = 60
    end
    object scdsGuiasDATA7: TDateField
      FieldName = 'DATA7'
    end
    object scdsGuiasCK7: TStringField
      FieldName = 'CK7'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME7: TStringField
      FieldName = 'EXAME7'
      Size = 60
    end
    object scdsGuiasCKA7: TStringField
      FieldName = 'CKA7'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO7: TStringField
      FieldName = 'ALTERADO7'
      Size = 60
    end
    object scdsGuiasDATA8: TDateField
      FieldName = 'DATA8'
    end
    object scdsGuiasCK8: TStringField
      FieldName = 'CK8'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME8: TStringField
      FieldName = 'EXAME8'
      Size = 60
    end
    object scdsGuiasCKA8: TStringField
      FieldName = 'CKA8'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO8: TStringField
      FieldName = 'ALTERADO8'
      Size = 60
    end
    object scdsGuiasDATA9: TDateField
      FieldName = 'DATA9'
    end
    object scdsGuiasCK9: TStringField
      FieldName = 'CK9'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME9: TStringField
      FieldName = 'EXAME9'
      Size = 60
    end
    object scdsGuiasCKA9: TStringField
      FieldName = 'CKA9'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO9: TStringField
      FieldName = 'ALTERADO9'
      Size = 60
    end
    object scdsGuiasDATA10: TDateField
      FieldName = 'DATA10'
    end
    object scdsGuiasCK10: TStringField
      FieldName = 'CK10'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME10: TStringField
      FieldName = 'EXAME10'
      Size = 60
    end
    object scdsGuiasCKA10: TStringField
      FieldName = 'CKA10'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO10: TStringField
      FieldName = 'ALTERADO10'
      Size = 60
    end
    object scdsGuiasDATA11: TDateField
      FieldName = 'DATA11'
    end
    object scdsGuiasCK11: TStringField
      FieldName = 'CK11'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME11: TStringField
      FieldName = 'EXAME11'
      Size = 60
    end
    object scdsGuiasCKA11: TStringField
      FieldName = 'CKA11'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO11: TStringField
      FieldName = 'ALTERADO11'
      Size = 60
    end
    object scdsGuiasDATA12: TDateField
      FieldName = 'DATA12'
    end
    object scdsGuiasCK12: TStringField
      FieldName = 'CK12'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME12: TStringField
      FieldName = 'EXAME12'
      Size = 60
    end
    object scdsGuiasCKA12: TStringField
      FieldName = 'CKA12'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO12: TStringField
      FieldName = 'ALTERADO12'
      Size = 60
    end
    object scdsGuiasDATA13: TDateField
      FieldName = 'DATA13'
    end
    object scdsGuiasCK13: TStringField
      FieldName = 'CK13'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME13: TStringField
      FieldName = 'EXAME13'
      Size = 60
    end
    object scdsGuiasCKA13: TStringField
      FieldName = 'CKA13'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO13: TStringField
      FieldName = 'ALTERADO13'
      Size = 60
    end
    object scdsGuiasDATA14: TDateField
      FieldName = 'DATA14'
    end
    object scdsGuiasCK14: TStringField
      FieldName = 'CK14'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME14: TStringField
      FieldName = 'EXAME14'
      Size = 60
    end
    object scdsGuiasCKA14: TStringField
      FieldName = 'CKA14'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO14: TStringField
      FieldName = 'ALTERADO14'
      Size = 60
    end
    object scdsGuiasDATA15: TDateField
      FieldName = 'DATA15'
    end
    object scdsGuiasCK15: TStringField
      FieldName = 'CK15'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME15: TStringField
      FieldName = 'EXAME15'
      Size = 60
    end
    object scdsGuiasCKA15: TStringField
      FieldName = 'CKA15'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO15: TStringField
      FieldName = 'ALTERADO15'
      Size = 60
    end
    object scdsGuiasDATA16: TDateField
      FieldName = 'DATA16'
    end
    object scdsGuiasCK16: TStringField
      FieldName = 'CK16'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME16: TStringField
      FieldName = 'EXAME16'
      Size = 60
    end
    object scdsGuiasCKA16: TStringField
      FieldName = 'CKA16'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO16: TStringField
      FieldName = 'ALTERADO16'
      Size = 60
    end
    object scdsGuiasDATA17: TDateField
      FieldName = 'DATA17'
    end
    object scdsGuiasCK17: TStringField
      FieldName = 'CK17'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME17: TStringField
      FieldName = 'EXAME17'
      Size = 60
    end
    object scdsGuiasCKA17: TStringField
      FieldName = 'CKA17'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO17: TStringField
      FieldName = 'ALTERADO17'
      Size = 60
    end
    object scdsGuiasDATA18: TDateField
      FieldName = 'DATA18'
    end
    object scdsGuiasCK18: TStringField
      FieldName = 'CK18'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME18: TStringField
      FieldName = 'EXAME18'
      Size = 60
    end
    object scdsGuiasCKA18: TStringField
      FieldName = 'CKA18'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO18: TStringField
      FieldName = 'ALTERADO18'
      Size = 60
    end
    object scdsGuiasDATA19: TDateField
      FieldName = 'DATA19'
    end
    object scdsGuiasCK19: TStringField
      FieldName = 'CK19'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME19: TStringField
      FieldName = 'EXAME19'
      Size = 60
    end
    object scdsGuiasCKA19: TStringField
      FieldName = 'CKA19'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO19: TStringField
      FieldName = 'ALTERADO19'
      Size = 60
    end
    object scdsGuiasDATA20: TDateField
      FieldName = 'DATA20'
    end
    object scdsGuiasCK20: TStringField
      FieldName = 'CK20'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME20: TStringField
      FieldName = 'EXAME20'
      Size = 60
    end
    object scdsGuiasCKA20: TStringField
      FieldName = 'CKA20'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO20: TStringField
      FieldName = 'ALTERADO20'
      Size = 60
    end
    object scdsGuiasDATA21: TDateField
      FieldName = 'DATA21'
    end
    object scdsGuiasCK21: TStringField
      FieldName = 'CK21'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME21: TStringField
      FieldName = 'EXAME21'
      Size = 60
    end
    object scdsGuiasCKA21: TStringField
      FieldName = 'CKA21'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO21: TStringField
      FieldName = 'ALTERADO21'
      Size = 60
    end
    object scdsGuiasDATA22: TDateField
      FieldName = 'DATA22'
    end
    object scdsGuiasCK22: TStringField
      FieldName = 'CK22'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME22: TStringField
      FieldName = 'EXAME22'
      Size = 60
    end
    object scdsGuiasCKA22: TStringField
      FieldName = 'CKA22'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO22: TStringField
      FieldName = 'ALTERADO22'
      Size = 60
    end
    object scdsGuiasDATA23: TDateField
      FieldName = 'DATA23'
    end
    object scdsGuiasCK23: TStringField
      FieldName = 'CK23'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME23: TStringField
      FieldName = 'EXAME23'
      Size = 60
    end
    object scdsGuiasCKA23: TStringField
      FieldName = 'CKA23'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO23: TStringField
      FieldName = 'ALTERADO23'
      Size = 60
    end
    object scdsGuiasDATA24: TDateField
      FieldName = 'DATA24'
    end
    object scdsGuiasCK24: TStringField
      FieldName = 'CK24'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME24: TStringField
      FieldName = 'EXAME24'
      Size = 60
    end
    object scdsGuiasCKA24: TStringField
      FieldName = 'CKA24'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO24: TStringField
      FieldName = 'ALTERADO24'
      Size = 60
    end
    object scdsGuiasDATA25: TDateField
      FieldName = 'DATA25'
    end
    object scdsGuiasCK25: TStringField
      FieldName = 'CK25'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME25: TStringField
      FieldName = 'EXAME25'
      Size = 60
    end
    object scdsGuiasCKA25: TStringField
      FieldName = 'CKA25'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO25: TStringField
      FieldName = 'ALTERADO25'
      Size = 60
    end
    object scdsGuiasDATA26: TDateField
      FieldName = 'DATA26'
    end
    object scdsGuiasCK26: TStringField
      FieldName = 'CK26'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME26: TStringField
      FieldName = 'EXAME26'
      Size = 60
    end
    object scdsGuiasCKA26: TStringField
      FieldName = 'CKA26'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO26: TStringField
      FieldName = 'ALTERADO26'
      Size = 60
    end
    object scdsGuiasDATA27: TDateField
      FieldName = 'DATA27'
    end
    object scdsGuiasCK27: TStringField
      FieldName = 'CK27'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME27: TStringField
      FieldName = 'EXAME27'
      Size = 60
    end
    object scdsGuiasCKA27: TStringField
      FieldName = 'CKA27'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO27: TStringField
      FieldName = 'ALTERADO27'
      Size = 60
    end
    object scdsGuiasDATA28: TDateField
      FieldName = 'DATA28'
    end
    object scdsGuiasCK28: TStringField
      FieldName = 'CK28'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME28: TStringField
      FieldName = 'EXAME28'
      Size = 60
    end
    object scdsGuiasCKA28: TStringField
      FieldName = 'CKA28'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO28: TStringField
      FieldName = 'ALTERADO28'
      Size = 60
    end
    object scdsGuiasDATA29: TDateField
      FieldName = 'DATA29'
    end
    object scdsGuiasCK29: TStringField
      FieldName = 'CK29'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME29: TStringField
      FieldName = 'EXAME29'
      Size = 60
    end
    object scdsGuiasCKA29: TStringField
      FieldName = 'CKA29'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO29: TStringField
      FieldName = 'ALTERADO29'
      Size = 60
    end
    object scdsGuiasDATA30: TDateField
      FieldName = 'DATA30'
    end
    object scdsGuiasCK30: TStringField
      FieldName = 'CK30'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME30: TStringField
      FieldName = 'EXAME30'
      Size = 60
    end
    object scdsGuiasCKA30: TStringField
      FieldName = 'CKA30'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO30: TStringField
      FieldName = 'ALTERADO30'
      Size = 60
    end
    object scdsGuiasDATA31: TDateField
      FieldName = 'DATA31'
    end
    object scdsGuiasCK31: TStringField
      FieldName = 'CK31'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME31: TStringField
      FieldName = 'EXAME31'
      Size = 60
    end
    object scdsGuiasCKA31: TStringField
      FieldName = 'CKA31'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO31: TStringField
      FieldName = 'ALTERADO31'
      Size = 60
    end
    object scdsGuiasDATA32: TDateField
      FieldName = 'DATA32'
    end
    object scdsGuiasCK32: TStringField
      FieldName = 'CK32'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME32: TStringField
      FieldName = 'EXAME32'
      Size = 60
    end
    object scdsGuiasCKA32: TStringField
      FieldName = 'CKA32'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO32: TStringField
      FieldName = 'ALTERADO32'
      Size = 60
    end
    object scdsGuiasDATA33: TDateField
      FieldName = 'DATA33'
    end
    object scdsGuiasCK33: TStringField
      FieldName = 'CK33'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME33: TStringField
      FieldName = 'EXAME33'
      Size = 60
    end
    object scdsGuiasCKA33: TStringField
      FieldName = 'CKA33'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO33: TStringField
      FieldName = 'ALTERADO33'
      Size = 60
    end
    object scdsGuiasDATA34: TDateField
      FieldName = 'DATA34'
    end
    object scdsGuiasCK34: TStringField
      FieldName = 'CK34'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME34: TStringField
      FieldName = 'EXAME34'
      Size = 60
    end
    object scdsGuiasCKA34: TStringField
      FieldName = 'CKA34'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO34: TStringField
      FieldName = 'ALTERADO34'
      Size = 60
    end
    object scdsGuiasDATA35: TDateField
      FieldName = 'DATA35'
    end
    object scdsGuiasCK35: TStringField
      FieldName = 'CK35'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasEXAME35: TStringField
      FieldName = 'EXAME35'
      Size = 60
    end
    object scdsGuiasCKA35: TStringField
      FieldName = 'CKA35'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALTERADO35: TStringField
      FieldName = 'ALTERADO35'
      Size = 60
    end
    object scdsGuiasCKANEXO1: TStringField
      FieldName = 'CKANEXO1'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO1: TStringField
      FieldName = 'ANEXO1'
      Size = 60
    end
    object scdsGuiasCKANEXO2: TStringField
      FieldName = 'CKANEXO2'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO2: TStringField
      FieldName = 'ANEXO2'
      Size = 60
    end
    object scdsGuiasCKANEXO3: TStringField
      FieldName = 'CKANEXO3'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO3: TStringField
      FieldName = 'ANEXO3'
      Size = 60
    end
    object scdsGuiasCKANEXO4: TStringField
      FieldName = 'CKANEXO4'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO4: TStringField
      FieldName = 'ANEXO4'
      Size = 60
    end
    object scdsGuiasCKANEXO5: TStringField
      FieldName = 'CKANEXO5'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO5: TStringField
      FieldName = 'ANEXO5'
      Size = 60
    end
    object scdsGuiasCKANEXO6: TStringField
      FieldName = 'CKANEXO6'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO6: TStringField
      FieldName = 'ANEXO6'
      Size = 60
    end
    object scdsGuiasCKANEXO7: TStringField
      FieldName = 'CKANEXO7'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO7: TStringField
      FieldName = 'ANEXO7'
      Size = 60
    end
    object scdsGuiasCKANEXO8: TStringField
      FieldName = 'CKANEXO8'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO8: TStringField
      FieldName = 'ANEXO8'
      Size = 60
    end
    object scdsGuiasCKANEXO9: TStringField
      FieldName = 'CKANEXO9'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO9: TStringField
      FieldName = 'ANEXO9'
      Size = 60
    end
    object scdsGuiasCKANEXO10: TStringField
      FieldName = 'CKANEXO10'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO10: TStringField
      FieldName = 'ANEXO10'
      Size = 60
    end
    object scdsGuiasCKANEXO11: TStringField
      FieldName = 'CKANEXO11'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO11: TStringField
      FieldName = 'ANEXO11'
      Size = 60
    end
    object scdsGuiasCKANEXO12: TStringField
      FieldName = 'CKANEXO12'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO12: TStringField
      FieldName = 'ANEXO12'
      Size = 60
    end
    object scdsGuiasCKANEXO13: TStringField
      FieldName = 'CKANEXO13'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO13: TStringField
      FieldName = 'ANEXO13'
      Size = 60
    end
    object scdsGuiasCKANEXO14: TStringField
      FieldName = 'CKANEXO14'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO14: TStringField
      FieldName = 'ANEXO14'
      Size = 60
    end
    object scdsGuiasCKANEXO15: TStringField
      FieldName = 'CKANEXO15'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO15: TStringField
      FieldName = 'ANEXO15'
      Size = 60
    end
    object scdsGuiasCKANEXO16: TStringField
      FieldName = 'CKANEXO16'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO16: TStringField
      FieldName = 'ANEXO16'
      Size = 60
    end
    object scdsGuiasCKANEXO17: TStringField
      FieldName = 'CKANEXO17'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO17: TStringField
      FieldName = 'ANEXO17'
      Size = 60
    end
    object scdsGuiasCKANEXO18: TStringField
      FieldName = 'CKANEXO18'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANEXO18: TStringField
      FieldName = 'ANEXO18'
      Size = 60
    end
    object scdsGuiasCKQ: TStringField
      FieldName = 'CKQ'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasQUEIXAP: TStringField
      FieldName = 'QUEIXAP'
      Size = 60
    end
    object scdsGuiasCKH: TStringField
      FieldName = 'CKH'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasHISTORICOMEDICO: TStringField
      FieldName = 'HISTORICOMEDICO'
      Size = 300
    end
    object scdsGuiasCKA: TStringField
      FieldName = 'CKA'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasALCOOL: TStringField
      FieldName = 'ALCOOL'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasFUMO: TStringField
      FieldName = 'FUMO'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasCKAF: TStringField
      FieldName = 'CKAF'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANTECEDENTESFAMILIARES: TStringField
      FieldName = 'ANTECEDENTESFAMILIARES'
      Size = 300
    end
    object scdsGuiasCKC: TStringField
      FieldName = 'CKC'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasCICATRIZES: TStringField
      FieldName = 'CICATRIZES'
      Size = 300
    end
    object scdsGuiasCKAPE: TStringField
      FieldName = 'CKAPE'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasANTECEDENTESPESSOAIS: TStringField
      FieldName = 'ANTECEDENTESPESSOAIS'
      Size = 300
    end
    object scdsGuiasCKACI: TStringField
      FieldName = 'CKACI'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasACIDENTES: TStringField
      FieldName = 'ACIDENTES'
      Size = 300
    end
    object scdsGuiasPESO: TFloatField
      FieldName = 'PESO'
    end
    object scdsGuiasALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object scdsGuiasIMC: TFloatField
      FieldName = 'IMC'
    end
    object scdsGuiasPA: TStringField
      FieldName = 'PA'
      Size = 60
    end
    object scdsGuiasFC: TStringField
      FieldName = 'FC'
      Size = 60
    end
    object scdsGuiasCKOD: TStringField
      FieldName = 'CKOD'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasCKOE: TStringField
      FieldName = 'CKOE'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasCKAPV: TStringField
      FieldName = 'CKAPV'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasMOLESTIA: TStringField
      FieldName = 'MOLESTIA'
      Size = 60
    end
    object scdsGuiasCKP: TStringField
      FieldName = 'CKP'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasPELE: TStringField
      FieldName = 'PELE'
      Size = 60
    end
    object scdsGuiasCKAPA: TStringField
      FieldName = 'CKAPA'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasOUVIDOS: TStringField
      FieldName = 'OUVIDOS'
      Size = 60
    end
    object scdsGuiasCKCP: TStringField
      FieldName = 'CKCP'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasCABECA: TStringField
      FieldName = 'CABECA'
      Size = 60
    end
    object scdsGuiasCKABD: TStringField
      FieldName = 'CKABD'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasABDOMEN: TStringField
      FieldName = 'ABDOMEN'
      Size = 300
    end
    object scdsGuiasCKAP: TStringField
      FieldName = 'CKAP'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasAP: TStringField
      FieldName = 'AP'
      Size = 300
    end
    object scdsGuiasCKACV: TStringField
      FieldName = 'CKACV'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasAPCARDIO: TStringField
      FieldName = 'APCARDIO'
      Size = 300
    end
    object scdsGuiasCKAPN: TStringField
      FieldName = 'CKAPN'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasSISTEMANERVOSO: TStringField
      FieldName = 'SISTEMANERVOSO'
      Size = 100
    end
    object scdsGuiasCKAGU: TStringField
      FieldName = 'CKAGU'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasAPURO: TStringField
      FieldName = 'APURO'
      Size = 100
    end
    object scdsGuiasCKAOM: TStringField
      FieldName = 'CKAOM'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasAOSTEO: TStringField
      FieldName = 'AOSTEO'
      Size = 100
    end
    object scdsGuiasOBSFICHA: TStringField
      FieldName = 'OBSFICHA'
      Size = 300
    end
    object scdsGuiasA: TStringField
      FieldName = 'A'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasI: TStringField
      FieldName = 'I'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasADA: TStringField
      FieldName = 'ADA'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasAIA: TStringField
      FieldName = 'AIA'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasPAIR: TStringField
      FieldName = 'PAIR'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasDANO: TStringField
      FieldName = 'DANO'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasHISTORICOAV: TStringField
      FieldName = 'HISTORICOAV'
      Size = 300
    end
    object scdsGuiasCONDUTA: TStringField
      FieldName = 'CONDUTA'
      Size = 300
    end
    object scdsGuiasAFASTAMENTO: TStringField
      FieldName = 'AFASTAMENTO'
      FixedChar = True
      Size = 1
    end
    object scdsGuiasDATAAFASTAMENTO: TDateField
      FieldName = 'DATAAFASTAMENTO'
    end
    object scdsGuiasDATARETORNO: TDateField
      FieldName = 'DATARETORNO'
    end
    object scdsGuiasDIASPERDIDOS: TIntegerField
      FieldName = 'DIASPERDIDOS'
    end
  end
  object dspGuias: TDataSetProvider
    DataSet = scdsGuias
    Left = 256
    Top = 296
  end
  object cdsGuias: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pg'
        ParamType = ptInput
      end>
    ProviderName = 'dspGuias'
    Left = 256
    Top = 352
    object cdsGuiasID_GUIAS: TIntegerField
      FieldName = 'ID_GUIAS'
      Required = True
    end
    object cdsGuiasNUMERO_GUIA: TStringField
      FieldName = 'NUMERO_GUIA'
    end
    object cdsGuiasDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cdsGuiasNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 70
    end
    object cdsGuiasNOME_EMPRESA: TStringField
      FieldName = 'NOME_EMPRESA'
      Size = 70
    end
    object cdsGuiasNOME_EXECUTANTE: TStringField
      FieldName = 'NOME_EXECUTANTE'
      Size = 100
    end
    object cdsGuiasSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Size = 7
    end
    object cdsGuiasNUMERO_PROFISSIONAL: TStringField
      FieldName = 'NUMERO_PROFISSIONAL'
      Size = 15
    end
    object cdsGuiasSIGLA_UNIDADE: TStringField
      FieldName = 'SIGLA_UNIDADE'
      Size = 2
    end
    object cdsGuiasCODIGO_ESPECIALIDADE: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE'
      Size = 5
    end
    object cdsGuiasCODIGO_CID10_1: TStringField
      FieldName = 'CODIGO_CID10_1'
      Size = 5
    end
    object cdsGuiasCODIGO_CID10_2: TStringField
      FieldName = 'CODIGO_CID10_2'
      Size = 5
    end
    object cdsGuiasCODIGO_CID10_3: TStringField
      FieldName = 'CODIGO_CID10_3'
      Size = 5
    end
    object cdsGuiasCODIGO_CID10_4: TStringField
      FieldName = 'CODIGO_CID10_4'
      Size = 5
    end
    object cdsGuiasDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object cdsGuiasGRAU_RISCO: TStringField
      FieldName = 'GRAU_RISCO'
      Size = 2
    end
    object cdsGuiasTIPO_CONSULTA: TStringField
      FieldName = 'TIPO_CONSULTA'
      Size = 1
    end
    object cdsGuiasAPTO: TIntegerField
      FieldName = 'APTO'
    end
    object cdsGuiasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 240
    end
    object cdsGuiasTIPO_GUIA: TStringField
      FieldName = 'TIPO_GUIA'
    end
    object cdsGuiasCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsGuiasTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasRG: TStringField
      FieldName = 'RG'
      Size = 24
    end
    object cdsGuiasCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsGuiasCARGO: TStringField
      FieldName = 'CARGO'
      Size = 60
    end
    object cdsGuiasFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
    object cdsGuiasPIS: TStringField
      FieldName = 'PIS'
    end
    object cdsGuiasDATA1: TDateField
      FieldName = 'DATA1'
    end
    object cdsGuiasCK1: TStringField
      FieldName = 'CK1'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME1: TStringField
      FieldName = 'EXAME1'
      Size = 60
    end
    object cdsGuiasCKA1: TStringField
      FieldName = 'CKA1'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO1: TStringField
      FieldName = 'ALTERADO1'
      Size = 60
    end
    object cdsGuiasDATA2: TDateField
      FieldName = 'DATA2'
    end
    object cdsGuiasCK2: TStringField
      FieldName = 'CK2'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME2: TStringField
      FieldName = 'EXAME2'
      Size = 60
    end
    object cdsGuiasCKA2: TStringField
      FieldName = 'CKA2'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO2: TStringField
      FieldName = 'ALTERADO2'
      Size = 60
    end
    object cdsGuiasDATA3: TDateField
      FieldName = 'DATA3'
    end
    object cdsGuiasCK3: TStringField
      FieldName = 'CK3'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME3: TStringField
      FieldName = 'EXAME3'
      Size = 60
    end
    object cdsGuiasCKA3: TStringField
      FieldName = 'CKA3'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO3: TStringField
      FieldName = 'ALTERADO3'
      Size = 60
    end
    object cdsGuiasDATA4: TDateField
      FieldName = 'DATA4'
    end
    object cdsGuiasCK4: TStringField
      FieldName = 'CK4'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME4: TStringField
      FieldName = 'EXAME4'
      Size = 60
    end
    object cdsGuiasCKA4: TStringField
      FieldName = 'CKA4'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO4: TStringField
      FieldName = 'ALTERADO4'
      Size = 60
    end
    object cdsGuiasDATA5: TDateField
      FieldName = 'DATA5'
    end
    object cdsGuiasCK5: TStringField
      FieldName = 'CK5'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME5: TStringField
      FieldName = 'EXAME5'
      Size = 60
    end
    object cdsGuiasCKA5: TStringField
      FieldName = 'CKA5'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO5: TStringField
      FieldName = 'ALTERADO5'
      Size = 60
    end
    object cdsGuiasDATA6: TDateField
      FieldName = 'DATA6'
    end
    object cdsGuiasCK6: TStringField
      FieldName = 'CK6'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME6: TStringField
      FieldName = 'EXAME6'
      Size = 60
    end
    object cdsGuiasCKA6: TStringField
      FieldName = 'CKA6'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO6: TStringField
      FieldName = 'ALTERADO6'
      Size = 60
    end
    object cdsGuiasDATA7: TDateField
      FieldName = 'DATA7'
    end
    object cdsGuiasCK7: TStringField
      FieldName = 'CK7'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME7: TStringField
      FieldName = 'EXAME7'
      Size = 60
    end
    object cdsGuiasCKA7: TStringField
      FieldName = 'CKA7'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO7: TStringField
      FieldName = 'ALTERADO7'
      Size = 60
    end
    object cdsGuiasDATA8: TDateField
      FieldName = 'DATA8'
    end
    object cdsGuiasCK8: TStringField
      FieldName = 'CK8'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME8: TStringField
      FieldName = 'EXAME8'
      Size = 60
    end
    object cdsGuiasCKA8: TStringField
      FieldName = 'CKA8'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO8: TStringField
      FieldName = 'ALTERADO8'
      Size = 60
    end
    object cdsGuiasDATA9: TDateField
      FieldName = 'DATA9'
    end
    object cdsGuiasCK9: TStringField
      FieldName = 'CK9'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME9: TStringField
      FieldName = 'EXAME9'
      Size = 60
    end
    object cdsGuiasCKA9: TStringField
      FieldName = 'CKA9'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO9: TStringField
      FieldName = 'ALTERADO9'
      Size = 60
    end
    object cdsGuiasDATA10: TDateField
      FieldName = 'DATA10'
    end
    object cdsGuiasCK10: TStringField
      FieldName = 'CK10'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME10: TStringField
      FieldName = 'EXAME10'
      Size = 60
    end
    object cdsGuiasCKA10: TStringField
      FieldName = 'CKA10'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO10: TStringField
      FieldName = 'ALTERADO10'
      Size = 60
    end
    object cdsGuiasDATA11: TDateField
      FieldName = 'DATA11'
    end
    object cdsGuiasCK11: TStringField
      FieldName = 'CK11'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME11: TStringField
      FieldName = 'EXAME11'
      Size = 60
    end
    object cdsGuiasCKA11: TStringField
      FieldName = 'CKA11'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO11: TStringField
      FieldName = 'ALTERADO11'
      Size = 60
    end
    object cdsGuiasDATA12: TDateField
      FieldName = 'DATA12'
    end
    object cdsGuiasCK12: TStringField
      FieldName = 'CK12'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME12: TStringField
      FieldName = 'EXAME12'
      Size = 60
    end
    object cdsGuiasCKA12: TStringField
      FieldName = 'CKA12'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO12: TStringField
      FieldName = 'ALTERADO12'
      Size = 60
    end
    object cdsGuiasDATA13: TDateField
      FieldName = 'DATA13'
    end
    object cdsGuiasCK13: TStringField
      FieldName = 'CK13'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME13: TStringField
      FieldName = 'EXAME13'
      Size = 60
    end
    object cdsGuiasCKA13: TStringField
      FieldName = 'CKA13'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO13: TStringField
      FieldName = 'ALTERADO13'
      Size = 60
    end
    object cdsGuiasDATA14: TDateField
      FieldName = 'DATA14'
    end
    object cdsGuiasCK14: TStringField
      FieldName = 'CK14'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME14: TStringField
      FieldName = 'EXAME14'
      Size = 60
    end
    object cdsGuiasCKA14: TStringField
      FieldName = 'CKA14'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO14: TStringField
      FieldName = 'ALTERADO14'
      Size = 60
    end
    object cdsGuiasDATA15: TDateField
      FieldName = 'DATA15'
    end
    object cdsGuiasCK15: TStringField
      FieldName = 'CK15'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME15: TStringField
      FieldName = 'EXAME15'
      Size = 60
    end
    object cdsGuiasCKA15: TStringField
      FieldName = 'CKA15'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO15: TStringField
      FieldName = 'ALTERADO15'
      Size = 60
    end
    object cdsGuiasDATA16: TDateField
      FieldName = 'DATA16'
    end
    object cdsGuiasCK16: TStringField
      FieldName = 'CK16'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME16: TStringField
      FieldName = 'EXAME16'
      Size = 60
    end
    object cdsGuiasCKA16: TStringField
      FieldName = 'CKA16'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO16: TStringField
      FieldName = 'ALTERADO16'
      Size = 60
    end
    object cdsGuiasDATA17: TDateField
      FieldName = 'DATA17'
    end
    object cdsGuiasCK17: TStringField
      FieldName = 'CK17'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME17: TStringField
      FieldName = 'EXAME17'
      Size = 60
    end
    object cdsGuiasCKA17: TStringField
      FieldName = 'CKA17'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO17: TStringField
      FieldName = 'ALTERADO17'
      Size = 60
    end
    object cdsGuiasDATA18: TDateField
      FieldName = 'DATA18'
    end
    object cdsGuiasCK18: TStringField
      FieldName = 'CK18'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME18: TStringField
      FieldName = 'EXAME18'
      Size = 60
    end
    object cdsGuiasCKA18: TStringField
      FieldName = 'CKA18'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO18: TStringField
      FieldName = 'ALTERADO18'
      Size = 60
    end
    object cdsGuiasDATA19: TDateField
      FieldName = 'DATA19'
    end
    object cdsGuiasCK19: TStringField
      FieldName = 'CK19'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME19: TStringField
      FieldName = 'EXAME19'
      Size = 60
    end
    object cdsGuiasCKA19: TStringField
      FieldName = 'CKA19'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO19: TStringField
      FieldName = 'ALTERADO19'
      Size = 60
    end
    object cdsGuiasDATA20: TDateField
      FieldName = 'DATA20'
    end
    object cdsGuiasCK20: TStringField
      FieldName = 'CK20'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME20: TStringField
      FieldName = 'EXAME20'
      Size = 60
    end
    object cdsGuiasCKA20: TStringField
      FieldName = 'CKA20'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO20: TStringField
      FieldName = 'ALTERADO20'
      Size = 60
    end
    object cdsGuiasDATA21: TDateField
      FieldName = 'DATA21'
    end
    object cdsGuiasCK21: TStringField
      FieldName = 'CK21'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME21: TStringField
      FieldName = 'EXAME21'
      Size = 60
    end
    object cdsGuiasCKA21: TStringField
      FieldName = 'CKA21'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO21: TStringField
      FieldName = 'ALTERADO21'
      Size = 60
    end
    object cdsGuiasDATA22: TDateField
      FieldName = 'DATA22'
    end
    object cdsGuiasCK22: TStringField
      FieldName = 'CK22'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME22: TStringField
      FieldName = 'EXAME22'
      Size = 60
    end
    object cdsGuiasCKA22: TStringField
      FieldName = 'CKA22'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO22: TStringField
      FieldName = 'ALTERADO22'
      Size = 60
    end
    object cdsGuiasDATA23: TDateField
      FieldName = 'DATA23'
    end
    object cdsGuiasCK23: TStringField
      FieldName = 'CK23'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME23: TStringField
      FieldName = 'EXAME23'
      Size = 60
    end
    object cdsGuiasCKA23: TStringField
      FieldName = 'CKA23'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO23: TStringField
      FieldName = 'ALTERADO23'
      Size = 60
    end
    object cdsGuiasDATA24: TDateField
      FieldName = 'DATA24'
    end
    object cdsGuiasCK24: TStringField
      FieldName = 'CK24'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME24: TStringField
      FieldName = 'EXAME24'
      Size = 60
    end
    object cdsGuiasCKA24: TStringField
      FieldName = 'CKA24'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO24: TStringField
      FieldName = 'ALTERADO24'
      Size = 60
    end
    object cdsGuiasDATA25: TDateField
      FieldName = 'DATA25'
    end
    object cdsGuiasCK25: TStringField
      FieldName = 'CK25'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME25: TStringField
      FieldName = 'EXAME25'
      Size = 60
    end
    object cdsGuiasCKA25: TStringField
      FieldName = 'CKA25'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO25: TStringField
      FieldName = 'ALTERADO25'
      Size = 60
    end
    object cdsGuiasDATA26: TDateField
      FieldName = 'DATA26'
    end
    object cdsGuiasCK26: TStringField
      FieldName = 'CK26'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME26: TStringField
      FieldName = 'EXAME26'
      Size = 60
    end
    object cdsGuiasCKA26: TStringField
      FieldName = 'CKA26'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO26: TStringField
      FieldName = 'ALTERADO26'
      Size = 60
    end
    object cdsGuiasDATA27: TDateField
      FieldName = 'DATA27'
    end
    object cdsGuiasCK27: TStringField
      FieldName = 'CK27'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME27: TStringField
      FieldName = 'EXAME27'
      Size = 60
    end
    object cdsGuiasCKA27: TStringField
      FieldName = 'CKA27'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO27: TStringField
      FieldName = 'ALTERADO27'
      Size = 60
    end
    object cdsGuiasDATA28: TDateField
      FieldName = 'DATA28'
    end
    object cdsGuiasCK28: TStringField
      FieldName = 'CK28'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME28: TStringField
      FieldName = 'EXAME28'
      Size = 60
    end
    object cdsGuiasCKA28: TStringField
      FieldName = 'CKA28'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO28: TStringField
      FieldName = 'ALTERADO28'
      Size = 60
    end
    object cdsGuiasDATA29: TDateField
      FieldName = 'DATA29'
    end
    object cdsGuiasCK29: TStringField
      FieldName = 'CK29'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME29: TStringField
      FieldName = 'EXAME29'
      Size = 60
    end
    object cdsGuiasCKA29: TStringField
      FieldName = 'CKA29'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO29: TStringField
      FieldName = 'ALTERADO29'
      Size = 60
    end
    object cdsGuiasDATA30: TDateField
      FieldName = 'DATA30'
    end
    object cdsGuiasCK30: TStringField
      FieldName = 'CK30'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME30: TStringField
      FieldName = 'EXAME30'
      Size = 60
    end
    object cdsGuiasCKA30: TStringField
      FieldName = 'CKA30'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO30: TStringField
      FieldName = 'ALTERADO30'
      Size = 60
    end
    object cdsGuiasDATA31: TDateField
      FieldName = 'DATA31'
    end
    object cdsGuiasCK31: TStringField
      FieldName = 'CK31'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME31: TStringField
      FieldName = 'EXAME31'
      Size = 60
    end
    object cdsGuiasCKA31: TStringField
      FieldName = 'CKA31'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO31: TStringField
      FieldName = 'ALTERADO31'
      Size = 60
    end
    object cdsGuiasDATA32: TDateField
      FieldName = 'DATA32'
    end
    object cdsGuiasCK32: TStringField
      FieldName = 'CK32'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME32: TStringField
      FieldName = 'EXAME32'
      Size = 60
    end
    object cdsGuiasCKA32: TStringField
      FieldName = 'CKA32'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO32: TStringField
      FieldName = 'ALTERADO32'
      Size = 60
    end
    object cdsGuiasDATA33: TDateField
      FieldName = 'DATA33'
    end
    object cdsGuiasCK33: TStringField
      FieldName = 'CK33'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME33: TStringField
      FieldName = 'EXAME33'
      Size = 60
    end
    object cdsGuiasCKA33: TStringField
      FieldName = 'CKA33'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO33: TStringField
      FieldName = 'ALTERADO33'
      Size = 60
    end
    object cdsGuiasDATA34: TDateField
      FieldName = 'DATA34'
    end
    object cdsGuiasCK34: TStringField
      FieldName = 'CK34'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME34: TStringField
      FieldName = 'EXAME34'
      Size = 60
    end
    object cdsGuiasCKA34: TStringField
      FieldName = 'CKA34'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO34: TStringField
      FieldName = 'ALTERADO34'
      Size = 60
    end
    object cdsGuiasDATA35: TDateField
      FieldName = 'DATA35'
    end
    object cdsGuiasCK35: TStringField
      FieldName = 'CK35'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasEXAME35: TStringField
      FieldName = 'EXAME35'
      Size = 60
    end
    object cdsGuiasCKA35: TStringField
      FieldName = 'CKA35'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALTERADO35: TStringField
      FieldName = 'ALTERADO35'
      Size = 60
    end
    object cdsGuiasCKANEXO1: TStringField
      FieldName = 'CKANEXO1'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO1: TStringField
      FieldName = 'ANEXO1'
      Size = 60
    end
    object cdsGuiasCKANEXO2: TStringField
      FieldName = 'CKANEXO2'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO2: TStringField
      FieldName = 'ANEXO2'
      Size = 60
    end
    object cdsGuiasCKANEXO3: TStringField
      FieldName = 'CKANEXO3'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO3: TStringField
      FieldName = 'ANEXO3'
      Size = 60
    end
    object cdsGuiasCKANEXO4: TStringField
      FieldName = 'CKANEXO4'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO4: TStringField
      FieldName = 'ANEXO4'
      Size = 60
    end
    object cdsGuiasCKANEXO5: TStringField
      FieldName = 'CKANEXO5'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO5: TStringField
      FieldName = 'ANEXO5'
      Size = 60
    end
    object cdsGuiasCKANEXO6: TStringField
      FieldName = 'CKANEXO6'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO6: TStringField
      FieldName = 'ANEXO6'
      Size = 60
    end
    object cdsGuiasCKANEXO7: TStringField
      FieldName = 'CKANEXO7'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO7: TStringField
      FieldName = 'ANEXO7'
      Size = 60
    end
    object cdsGuiasCKANEXO8: TStringField
      FieldName = 'CKANEXO8'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO8: TStringField
      FieldName = 'ANEXO8'
      Size = 60
    end
    object cdsGuiasCKANEXO9: TStringField
      FieldName = 'CKANEXO9'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO9: TStringField
      FieldName = 'ANEXO9'
      Size = 60
    end
    object cdsGuiasCKANEXO10: TStringField
      FieldName = 'CKANEXO10'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO10: TStringField
      FieldName = 'ANEXO10'
      Size = 60
    end
    object cdsGuiasCKANEXO11: TStringField
      FieldName = 'CKANEXO11'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO11: TStringField
      FieldName = 'ANEXO11'
      Size = 60
    end
    object cdsGuiasCKANEXO12: TStringField
      FieldName = 'CKANEXO12'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO12: TStringField
      FieldName = 'ANEXO12'
      Size = 60
    end
    object cdsGuiasCKANEXO13: TStringField
      FieldName = 'CKANEXO13'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO13: TStringField
      FieldName = 'ANEXO13'
      Size = 60
    end
    object cdsGuiasCKANEXO14: TStringField
      FieldName = 'CKANEXO14'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO14: TStringField
      FieldName = 'ANEXO14'
      Size = 60
    end
    object cdsGuiasCKANEXO15: TStringField
      FieldName = 'CKANEXO15'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO15: TStringField
      FieldName = 'ANEXO15'
      Size = 60
    end
    object cdsGuiasCKANEXO16: TStringField
      FieldName = 'CKANEXO16'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO16: TStringField
      FieldName = 'ANEXO16'
      Size = 60
    end
    object cdsGuiasCKANEXO17: TStringField
      FieldName = 'CKANEXO17'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO17: TStringField
      FieldName = 'ANEXO17'
      Size = 60
    end
    object cdsGuiasCKANEXO18: TStringField
      FieldName = 'CKANEXO18'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANEXO18: TStringField
      FieldName = 'ANEXO18'
      Size = 60
    end
    object cdsGuiasCKQ: TStringField
      FieldName = 'CKQ'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasQUEIXAP: TStringField
      FieldName = 'QUEIXAP'
      Size = 60
    end
    object cdsGuiasCKH: TStringField
      FieldName = 'CKH'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasHISTORICOMEDICO: TStringField
      FieldName = 'HISTORICOMEDICO'
      Size = 300
    end
    object cdsGuiasCKA: TStringField
      FieldName = 'CKA'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasALCOOL: TStringField
      FieldName = 'ALCOOL'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasFUMO: TStringField
      FieldName = 'FUMO'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasCKAF: TStringField
      FieldName = 'CKAF'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANTECEDENTESFAMILIARES: TStringField
      FieldName = 'ANTECEDENTESFAMILIARES'
      Size = 300
    end
    object cdsGuiasCKC: TStringField
      FieldName = 'CKC'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasCICATRIZES: TStringField
      FieldName = 'CICATRIZES'
      Size = 300
    end
    object cdsGuiasCKAPE: TStringField
      FieldName = 'CKAPE'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasANTECEDENTESPESSOAIS: TStringField
      FieldName = 'ANTECEDENTESPESSOAIS'
      Size = 300
    end
    object cdsGuiasCKACI: TStringField
      FieldName = 'CKACI'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasACIDENTES: TStringField
      FieldName = 'ACIDENTES'
      Size = 300
    end
    object cdsGuiasPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsGuiasALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsGuiasIMC: TFloatField
      FieldName = 'IMC'
    end
    object cdsGuiasPA: TStringField
      FieldName = 'PA'
      Size = 60
    end
    object cdsGuiasFC: TStringField
      FieldName = 'FC'
      Size = 60
    end
    object cdsGuiasCKOD: TStringField
      FieldName = 'CKOD'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasCKOE: TStringField
      FieldName = 'CKOE'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasCKAPV: TStringField
      FieldName = 'CKAPV'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasMOLESTIA: TStringField
      FieldName = 'MOLESTIA'
      Size = 60
    end
    object cdsGuiasCKP: TStringField
      FieldName = 'CKP'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasPELE: TStringField
      FieldName = 'PELE'
      Size = 60
    end
    object cdsGuiasCKAPA: TStringField
      FieldName = 'CKAPA'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasOUVIDOS: TStringField
      FieldName = 'OUVIDOS'
      Size = 60
    end
    object cdsGuiasCKCP: TStringField
      FieldName = 'CKCP'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasCABECA: TStringField
      FieldName = 'CABECA'
      Size = 60
    end
    object cdsGuiasCKABD: TStringField
      FieldName = 'CKABD'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasABDOMEN: TStringField
      FieldName = 'ABDOMEN'
      Size = 300
    end
    object cdsGuiasCKAP: TStringField
      FieldName = 'CKAP'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasAP: TStringField
      FieldName = 'AP'
      Size = 300
    end
    object cdsGuiasCKACV: TStringField
      FieldName = 'CKACV'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasAPCARDIO: TStringField
      FieldName = 'APCARDIO'
      Size = 300
    end
    object cdsGuiasCKAPN: TStringField
      FieldName = 'CKAPN'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasSISTEMANERVOSO: TStringField
      FieldName = 'SISTEMANERVOSO'
      Size = 100
    end
    object cdsGuiasCKAGU: TStringField
      FieldName = 'CKAGU'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasAPURO: TStringField
      FieldName = 'APURO'
      Size = 100
    end
    object cdsGuiasCKAOM: TStringField
      FieldName = 'CKAOM'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasAOSTEO: TStringField
      FieldName = 'AOSTEO'
      Size = 100
    end
    object cdsGuiasOBSFICHA: TStringField
      FieldName = 'OBSFICHA'
      Size = 300
    end
    object cdsGuiasA: TStringField
      FieldName = 'A'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasI: TStringField
      FieldName = 'I'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasADA: TStringField
      FieldName = 'ADA'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasAIA: TStringField
      FieldName = 'AIA'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasPAIR: TStringField
      FieldName = 'PAIR'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasDANO: TStringField
      FieldName = 'DANO'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasHISTORICOAV: TStringField
      FieldName = 'HISTORICOAV'
      Size = 300
    end
    object cdsGuiasCONDUTA: TStringField
      FieldName = 'CONDUTA'
      Size = 300
    end
    object cdsGuiasAFASTAMENTO: TStringField
      FieldName = 'AFASTAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsGuiasDATAAFASTAMENTO: TDateField
      FieldName = 'DATAAFASTAMENTO'
    end
    object cdsGuiasDATARETORNO: TDateField
      FieldName = 'DATARETORNO'
    end
    object cdsGuiasDIASPERDIDOS: TIntegerField
      FieldName = 'DIASPERDIDOS'
    end
  end
  object cdsClienteBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBuscaCliente'
    Left = 592
    Top = 424
    object cdsClienteBuscaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsClienteBuscaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cdsClienteBuscaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cdsClienteBuscaRA: TStringField
      FieldName = 'RA'
      ReadOnly = True
      Size = 10
    end
    object cdsClienteBuscaTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object cdsClienteBuscaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ReadOnly = True
      Required = True
    end
  end
  object dspBuscaCliente: TDataSetProvider
    DataSet = sdsClienteBusca
    Options = [poAllowCommandText]
    Left = 488
    Top = 424
  end
  object sdsClienteBusca: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, udf_CollateBr(NOMECLIENTE) as NOMECLIENTE  ,u' +
      'df_CollateBr( RAZAOSOCIAL) as RAZAOSOCIAL, RA , TEM_IE, DATACADA' +
      'STRO from CLIENTES'#13#10' where  status = 0 and segmento = 0  '#13#10'ORDER' +
      ' BY NOMECLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 392
    Top = 424
    object sdsClienteBuscaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sdsClienteBuscaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object sdsClienteBuscaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object sdsClienteBuscaRA: TStringField
      FieldName = 'RA'
      ReadOnly = True
      Size = 10
    end
    object sdsClienteBuscaTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object sdsClienteBuscaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ReadOnly = True
      Required = True
    end
  end
  object dsClienteBusca: TDataSource
    DataSet = cdsClienteBusca
    Left = 696
    Top = 424
  end
  object sdsFornecedor: TSQLDataSet
    CommandText = 
      'select  codfornecedor, nomefornecedor from FORNECEDOR '#13#10'where  (' +
      '(REGIAO =  :pRegiao) or (REGIAO = :pRegiao1)  or (REGIAO = :pReg' +
      'iao2) or (REGIAO = :pRegiao3) or (:pRegiao = 0))'#13#10'order by nomef' +
      'ornecedor'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftSmallint
        Name = 'pRegiao'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao2'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao3'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 408
    Top = 64
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 408
    Top = 112
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftSmallint
        Name = 'pRegiao'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao2'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao3'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'pRegiao'
        ParamType = ptInput
      end>
    ProviderName = 'dspFornecedor'
    Left = 408
    Top = 160
    object cdsFornecedorCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsFornecedorNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 408
    Top = 208
  end
  object cdsClienteBuscaP: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pCC'
        ParamType = ptInput
      end>
    ProviderName = 'dspBuscaClienteP'
    Left = 568
    Top = 344
    object cdsClienteBuscaPCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClienteBuscaPNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsClienteBuscaPRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsClienteBuscaPRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
  end
  object dspBuscaClienteP: TDataSetProvider
    DataSet = sdsClienteBuscaP
    Options = [poAllowCommandText]
    Left = 472
    Top = 344
  end
  object sdsClienteBuscaP: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, RA from CLIENTES'#13#10' ' +
      'where  status = 0 and GRUPO_CLIENTE = :pCC'#13#10'order by nomecliente'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pCC'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 368
    Top = 344
  end
  object dsCombo: TDataSource
    DataSet = cdsCombo
    Left = 272
    Top = 179
  end
  object sdsExame: TSQLDataSet
    CommandText = 
      'select labe.*, cli.NOMECLIENTE from labexame labe , CLIENTES cli' +
      ' where cli.CODCLIENTE = labe.CODCLIENTE and codExame = :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 504
    Top = 64
    object sdsExameCODEXAME: TIntegerField
      FieldName = 'CODEXAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsExameDATASOLICITACAO: TDateField
      FieldName = 'DATASOLICITACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameDATAENTREGAMATERIAL: TDateField
      FieldName = 'DATAENTREGAMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameDATAPREVISTAENTREGA: TDateField
      FieldName = 'DATAPREVISTAENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameDATALAUDOEXAME: TDateField
      FieldName = 'DATALAUDOEXAME'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameDATARETIRADA: TDateField
      FieldName = 'DATARETIRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameTIPOEXAME: TStringField
      FieldName = 'TIPOEXAME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsExameMEDICOSOLICITANTE: TIntegerField
      FieldName = 'MEDICOSOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameCONVENIO: TStringField
      FieldName = 'CONVENIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsExameVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsExameSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsExameMATERIALRECEBIDO: TStringField
      FieldName = 'MATERIALRECEBIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsExameNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object sdsExameCOBRANCA: TStringField
      FieldName = 'COBRANCA'
      FixedChar = True
      Size = 1
    end
    object sdsExameUNICO: TStringField
      FieldName = 'UNICO'
      FixedChar = True
      Size = 1
    end
    object sdsExameNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sdsExameIMPRESSO: TStringField
      DisplayWidth = 3
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 3
    end
    object sdsExameDEVOLUCAO: TFloatField
      FieldName = 'DEVOLUCAO'
    end
    object sdsExameFORMAPGTO: TStringField
      FieldName = 'FORMAPGTO'
      Size = 30
    end
    object sdsExameORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object sdsExameDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
    end
    object sdsExameINCLUIU: TStringField
      FieldName = 'INCLUIU'
      Size = 30
    end
    object sdsExameCANCELA: TStringField
      FieldName = 'CANCELA'
      Size = 30
    end
    object sdsExameDEVOLVE: TStringField
      FieldName = 'DEVOLVE'
      Size = 30
    end
    object sdsExameRECEBEU: TStringField
      FieldName = 'RECEBEU'
      Size = 30
    end
  end
  object dspExame: TDataSetProvider
    DataSet = sdsExame
    Left = 504
    Top = 112
  end
  object cdsExame: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dspExame'
    Left = 504
    Top = 160
    object cdsExameCODEXAME: TIntegerField
      FieldName = 'CODEXAME'
      Required = True
    end
    object cdsExameDATASOLICITACAO: TDateField
      FieldName = 'DATASOLICITACAO'
    end
    object cdsExameDATAENTREGAMATERIAL: TDateField
      FieldName = 'DATAENTREGAMATERIAL'
    end
    object cdsExameDATAPREVISTAENTREGA: TDateField
      FieldName = 'DATAPREVISTAENTREGA'
    end
    object cdsExameDATALAUDOEXAME: TDateField
      FieldName = 'DATALAUDOEXAME'
    end
    object cdsExameDATARETIRADA: TDateField
      FieldName = 'DATARETIRADA'
    end
    object cdsExameCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsExameTIPOEXAME: TStringField
      FieldName = 'TIPOEXAME'
      Size = 100
    end
    object cdsExameMEDICOSOLICITANTE: TIntegerField
      FieldName = 'MEDICOSOLICITANTE'
    end
    object cdsExameCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 50
    end
    object cdsExameVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = ',##0.00'
    end
    object cdsExameSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object cdsExameMATERIALRECEBIDO: TStringField
      FieldName = 'MATERIALRECEBIDO'
      FixedChar = True
      Size = 1
    end
    object cdsExameNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object cdsExameCOBRANCA: TStringField
      FieldName = 'COBRANCA'
      FixedChar = True
      Size = 1
    end
    object cdsExameUNICO: TStringField
      FieldName = 'UNICO'
      FixedChar = True
      Size = 1
    end
    object cdsExameNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsExameIMPRESSO: TStringField
      DisplayWidth = 3
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 3
    end
    object cdsExameDEVOLUCAO: TFloatField
      FieldName = 'DEVOLUCAO'
      DisplayFormat = ',##0.00'
    end
    object cdsExameFORMAPGTO: TStringField
      FieldName = 'FORMAPGTO'
      Size = 30
    end
    object cdsExameORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object cdsExameDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
    end
    object cdsExameINCLUIU: TStringField
      FieldName = 'INCLUIU'
      Size = 30
    end
    object cdsExameCANCELA: TStringField
      FieldName = 'CANCELA'
      Size = 30
    end
    object cdsExameDEVOLVE: TStringField
      FieldName = 'DEVOLVE'
      Size = 30
    end
    object cdsExameRECEBEU: TStringField
      FieldName = 'RECEBEU'
      Size = 30
    end
  end
  object sqlVencimentoPCMSO: TSQLDataSet
    CommandText = 
      'select * from DADOS_COMBOS where USO = '#39'VENCIMENTO'#39' and OUTROS =' +
      ' '#39'PCMSO'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 656
    Top = 96
    object sqlVencimentoPCMSOCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object sqlVencimentoPCMSODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object sqlVencimentoPCMSOUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object sqlVencimentoPCMSOCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object sqlVencimentoPCMSOOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
  end
  object sqlVencimentoASH: TSQLDataSet
    CommandText = 
      'select * from DADOS_COMBOS where USO = '#39'VENCIMENTO'#39' and OUTROS =' +
      ' '#39'ASH'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 664
    Top = 160
    object sqlVencimentoASHCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object sqlVencimentoASHDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object sqlVencimentoASHUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object sqlVencimentoASHCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object sqlVencimentoASHOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
  end
  object sdslote: TSQLDataSet
    CommandText = 
      'select distinct(NUMEROLOTE) from FATURAMENTO where tipo_guia =:p' +
      'uso'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'puso'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 528
    Top = 488
    object sdsloteNUMEROLOTE: TIntegerField
      FieldName = 'NUMEROLOTE'
    end
  end
  object dsplote: TDataSetProvider
    DataSet = sdslote
    Left = 576
    Top = 488
  end
  object cdslote: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'puso'
        ParamType = ptInput
      end>
    ProviderName = 'dsplote'
    Left = 624
    Top = 488
    object cdsloteNUMEROLOTE: TIntegerField
      FieldName = 'NUMEROLOTE'
    end
  end
  object dslote: TDataSource
    DataSet = cdslote
    Left = 672
    Top = 491
  end
  object dspFaturamento: TDataSetProvider
    DataSet = sdsFaturamento
    Left = 616
    Top = 544
  end
  object sdsFaturamento: TSQLDataSet
    CommandText = 'select *  from FATURAMENTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 528
    Top = 544
    object sdsFaturamentoID_GUIAS: TIntegerField
      FieldName = 'ID_GUIAS'
      Required = True
    end
    object sdsFaturamentoREGISTRO_ANS: TStringField
      FieldName = 'REGISTRO_ANS'
      Size = 6
    end
    object sdsFaturamentoNUMERO_GUIA: TStringField
      FieldName = 'NUMERO_GUIA'
    end
    object sdsFaturamentoDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object sdsFaturamentoNUMERO_CARTAO_BENEFICIARIO: TStringField
      FieldName = 'NUMERO_CARTAO_BENEFICIARIO'
    end
    object sdsFaturamentoNOME_PLANO: TStringField
      FieldName = 'NOME_PLANO'
      Size = 40
    end
    object sdsFaturamentoVALIDADE_CARTEIRA: TDateField
      FieldName = 'VALIDADE_CARTEIRA'
    end
    object sdsFaturamentoNOME_BENEFICIARIO: TStringField
      FieldName = 'NOME_BENEFICIARIO'
      Size = 70
    end
    object sdsFaturamentoNUMERO_CARTAO_NACIONAL: TStringField
      FieldName = 'NUMERO_CARTAO_NACIONAL'
      Size = 15
    end
    object sdsFaturamentoCODIGO_OPERADORA: TStringField
      FieldName = 'CODIGO_OPERADORA'
      Size = 14
    end
    object sdsFaturamentoNOME_CONTRATADO: TStringField
      FieldName = 'NOME_CONTRATADO'
      Size = 70
    end
    object sdsFaturamentoCODIGO_CNES: TStringField
      FieldName = 'CODIGO_CNES'
      Size = 7
    end
    object sdsFaturamentoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 3
    end
    object sdsFaturamentoNOME_LOGRADOURO: TStringField
      FieldName = 'NOME_LOGRADOURO'
      Size = 40
    end
    object sdsFaturamentoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sdsFaturamentoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 15
    end
    object sdsFaturamentoMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 40
    end
    object sdsFaturamentoSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 2
    end
    object sdsFaturamentoCODIGO_MUNICIPIO: TStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Size = 10
    end
    object sdsFaturamentoCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object sdsFaturamentoNOME_EXECUTANTE: TStringField
      FieldName = 'NOME_EXECUTANTE'
      Size = 70
    end
    object sdsFaturamentoSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Size = 7
    end
    object sdsFaturamentoNUMERO_PROFISSIONAL: TStringField
      FieldName = 'NUMERO_PROFISSIONAL'
      Size = 15
    end
    object sdsFaturamentoSIGLA_UNIDADE: TStringField
      FieldName = 'SIGLA_UNIDADE'
      Size = 2
    end
    object sdsFaturamentoCODIGO_ESPECIALIDADE: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE'
      Size = 5
    end
    object sdsFaturamentoCODIGO_DOENCA: TStringField
      FieldName = 'CODIGO_DOENCA'
      Size = 1
    end
    object sdsFaturamentoTEMPO_DOENCA: TStringField
      FieldName = 'TEMPO_DOENCA'
      Size = 1
    end
    object sdsFaturamentoACIDENTE_TRABALHO: TIntegerField
      FieldName = 'ACIDENTE_TRABALHO'
    end
    object sdsFaturamentoCODIGO_CID10_1: TStringField
      FieldName = 'CODIGO_CID10_1'
      Size = 5
    end
    object sdsFaturamentoCODIGO_CID10_2: TStringField
      FieldName = 'CODIGO_CID10_2'
      Size = 5
    end
    object sdsFaturamentoCODIGO_CID10_3: TStringField
      FieldName = 'CODIGO_CID10_3'
      Size = 5
    end
    object sdsFaturamentoCODIGO_CID10_4: TStringField
      FieldName = 'CODIGO_CID10_4'
      Size = 5
    end
    object sdsFaturamentoDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object sdsFaturamentoCODIGO_PROCEDIMENTOS: TStringField
      FieldName = 'CODIGO_PROCEDIMENTOS'
      Size = 2
    end
    object sdsFaturamentoCODIGO_PROCEDIMENTOS_REALIZADO: TStringField
      FieldName = 'CODIGO_PROCEDIMENTOS_REALIZADO'
      Size = 10
    end
    object sdsFaturamentoTIPO_CONSULTA: TStringField
      FieldName = 'TIPO_CONSULTA'
      Size = 1
    end
    object sdsFaturamentoTIPO_SAIDA: TIntegerField
      FieldName = 'TIPO_SAIDA'
    end
    object sdsFaturamentoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 240
    end
    object sdsFaturamentoCODIGO_PRESTADORA: TStringField
      FieldName = 'CODIGO_PRESTADORA'
      Size = 14
    end
    object sdsFaturamentoCARATER_SOLICITACAO: TStringField
      FieldName = 'CARATER_SOLICITACAO'
      Size = 50
    end
    object sdsFaturamentoNUMERO_CARTEIRA: TStringField
      FieldName = 'NUMERO_CARTEIRA'
    end
    object sdsFaturamentoTIPO_GUIA: TStringField
      FieldName = 'TIPO_GUIA'
    end
    object sdsFaturamentoDATA_AUT: TDateField
      FieldName = 'DATA_AUT'
    end
    object sdsFaturamentoSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object sdsFaturamentoDATA_VAL_SENHA: TDateField
      FieldName = 'DATA_VAL_SENHA'
    end
    object sdsFaturamentoNAOPERADORA: TStringField
      FieldName = 'NAOPERADORA'
      Size = 14
    end
    object sdsFaturamentoNOME_PRESTADOR: TStringField
      FieldName = 'NOME_PRESTADOR'
      Size = 70
    end
    object sdsFaturamentoNOME_EXECUTANTE1: TStringField
      FieldName = 'NOME_EXECUTANTE1'
      Size = 70
    end
    object sdsFaturamentoSIGLA_CONSELHO1: TStringField
      FieldName = 'SIGLA_CONSELHO1'
      Size = 7
    end
    object sdsFaturamentoNUMERO_PROFISSIONAL1: TStringField
      FieldName = 'NUMERO_PROFISSIONAL1'
      Size = 15
    end
    object sdsFaturamentoSIGLA_UNIDADE1: TStringField
      FieldName = 'SIGLA_UNIDADE1'
      Size = 2
    end
    object sdsFaturamentoCODIGO_ESPECIALIDADE1: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE1'
      Size = 5
    end
    object sdsFaturamentoCODIGO_CNES1: TStringField
      FieldName = 'CODIGO_CNES1'
      Size = 7
    end
    object sdsFaturamentoLOGRADOURO1: TStringField
      FieldName = 'LOGRADOURO1'
      Size = 3
    end
    object sdsFaturamentoNOME_LOGRADOURO1: TStringField
      FieldName = 'NOME_LOGRADOURO1'
      Size = 40
    end
    object sdsFaturamentoNUMERO1: TStringField
      FieldName = 'NUMERO1'
      Size = 5
    end
    object sdsFaturamentoCOMPLEMENTO1: TStringField
      FieldName = 'COMPLEMENTO1'
      Size = 15
    end
    object sdsFaturamentoMUNICIPIO1: TStringField
      FieldName = 'MUNICIPIO1'
      Size = 40
    end
    object sdsFaturamentoSIGLA1: TStringField
      FieldName = 'SIGLA1'
      Size = 2
    end
    object sdsFaturamentoCODIGO_MUNICIPIO1: TStringField
      FieldName = 'CODIGO_MUNICIPIO1'
      Size = 10
    end
    object sdsFaturamentoCEP1: TStringField
      FieldName = 'CEP1'
      Size = 8
    end
    object sdsFaturamentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsFaturamentoTIPO_FATURA: TIntegerField
      FieldName = 'TIPO_FATURA'
    end
    object sdsFaturamentoNUMERO_GUIA_PRESTADOR: TStringField
      FieldName = 'NUMERO_GUIA_PRESTADOR'
    end
    object sdsFaturamentoTOTAL_GERAL_GUIA: TFloatField
      FieldName = 'TOTAL_GERAL_GUIA'
    end
    object sdsFaturamentoNUMEROLOTE: TIntegerField
      FieldName = 'NUMEROLOTE'
    end
    object sdsFaturamentoDATA_IMPORTACAO: TDateField
      FieldName = 'DATA_IMPORTACAO'
    end
  end
  object cdsFaturamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaturamento'
    Left = 712
    Top = 544
    object cdsFaturamentoID_GUIAS: TIntegerField
      FieldName = 'ID_GUIAS'
      Required = True
    end
    object cdsFaturamentoREGISTRO_ANS: TStringField
      FieldName = 'REGISTRO_ANS'
      Size = 6
    end
    object cdsFaturamentoNUMERO_GUIA: TStringField
      FieldName = 'NUMERO_GUIA'
    end
    object cdsFaturamentoDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cdsFaturamentoNUMERO_CARTAO_BENEFICIARIO: TStringField
      FieldName = 'NUMERO_CARTAO_BENEFICIARIO'
    end
    object cdsFaturamentoNOME_PLANO: TStringField
      FieldName = 'NOME_PLANO'
      Size = 40
    end
    object cdsFaturamentoVALIDADE_CARTEIRA: TDateField
      FieldName = 'VALIDADE_CARTEIRA'
    end
    object cdsFaturamentoNOME_BENEFICIARIO: TStringField
      FieldName = 'NOME_BENEFICIARIO'
      Size = 70
    end
    object cdsFaturamentoNUMERO_CARTAO_NACIONAL: TStringField
      FieldName = 'NUMERO_CARTAO_NACIONAL'
      Size = 15
    end
    object cdsFaturamentoCODIGO_OPERADORA: TStringField
      FieldName = 'CODIGO_OPERADORA'
      Size = 14
    end
    object cdsFaturamentoNOME_CONTRATADO: TStringField
      FieldName = 'NOME_CONTRATADO'
      Size = 70
    end
    object cdsFaturamentoCODIGO_CNES: TStringField
      FieldName = 'CODIGO_CNES'
      Size = 7
    end
    object cdsFaturamentoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 3
    end
    object cdsFaturamentoNOME_LOGRADOURO: TStringField
      FieldName = 'NOME_LOGRADOURO'
      Size = 40
    end
    object cdsFaturamentoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cdsFaturamentoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 15
    end
    object cdsFaturamentoMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 40
    end
    object cdsFaturamentoSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 2
    end
    object cdsFaturamentoCODIGO_MUNICIPIO: TStringField
      FieldName = 'CODIGO_MUNICIPIO'
      Size = 10
    end
    object cdsFaturamentoCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object cdsFaturamentoNOME_EXECUTANTE: TStringField
      FieldName = 'NOME_EXECUTANTE'
      Size = 70
    end
    object cdsFaturamentoSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Size = 7
    end
    object cdsFaturamentoNUMERO_PROFISSIONAL: TStringField
      FieldName = 'NUMERO_PROFISSIONAL'
      Size = 15
    end
    object cdsFaturamentoSIGLA_UNIDADE: TStringField
      FieldName = 'SIGLA_UNIDADE'
      Size = 2
    end
    object cdsFaturamentoCODIGO_ESPECIALIDADE: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE'
      Size = 5
    end
    object cdsFaturamentoCODIGO_DOENCA: TStringField
      FieldName = 'CODIGO_DOENCA'
      Size = 1
    end
    object cdsFaturamentoTEMPO_DOENCA: TStringField
      FieldName = 'TEMPO_DOENCA'
      Size = 1
    end
    object cdsFaturamentoACIDENTE_TRABALHO: TIntegerField
      FieldName = 'ACIDENTE_TRABALHO'
    end
    object cdsFaturamentoCODIGO_CID10_1: TStringField
      FieldName = 'CODIGO_CID10_1'
      Size = 5
    end
    object cdsFaturamentoCODIGO_CID10_2: TStringField
      FieldName = 'CODIGO_CID10_2'
      Size = 5
    end
    object cdsFaturamentoCODIGO_CID10_3: TStringField
      FieldName = 'CODIGO_CID10_3'
      Size = 5
    end
    object cdsFaturamentoCODIGO_CID10_4: TStringField
      FieldName = 'CODIGO_CID10_4'
      Size = 5
    end
    object cdsFaturamentoDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object cdsFaturamentoCODIGO_PROCEDIMENTOS: TStringField
      FieldName = 'CODIGO_PROCEDIMENTOS'
      Size = 2
    end
    object cdsFaturamentoCODIGO_PROCEDIMENTOS_REALIZADO: TStringField
      FieldName = 'CODIGO_PROCEDIMENTOS_REALIZADO'
      Size = 10
    end
    object cdsFaturamentoTIPO_CONSULTA: TStringField
      FieldName = 'TIPO_CONSULTA'
      Size = 1
    end
    object cdsFaturamentoTIPO_SAIDA: TIntegerField
      FieldName = 'TIPO_SAIDA'
    end
    object cdsFaturamentoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 240
    end
    object cdsFaturamentoCODIGO_PRESTADORA: TStringField
      FieldName = 'CODIGO_PRESTADORA'
      Size = 14
    end
    object cdsFaturamentoCARATER_SOLICITACAO: TStringField
      FieldName = 'CARATER_SOLICITACAO'
      Size = 50
    end
    object cdsFaturamentoNUMERO_CARTEIRA: TStringField
      FieldName = 'NUMERO_CARTEIRA'
    end
    object cdsFaturamentoTIPO_GUIA: TStringField
      FieldName = 'TIPO_GUIA'
    end
    object cdsFaturamentoDATA_AUT: TDateField
      FieldName = 'DATA_AUT'
    end
    object cdsFaturamentoSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object cdsFaturamentoDATA_VAL_SENHA: TDateField
      FieldName = 'DATA_VAL_SENHA'
    end
    object cdsFaturamentoNAOPERADORA: TStringField
      FieldName = 'NAOPERADORA'
      Size = 14
    end
    object cdsFaturamentoNOME_PRESTADOR: TStringField
      FieldName = 'NOME_PRESTADOR'
      Size = 70
    end
    object cdsFaturamentoNOME_EXECUTANTE1: TStringField
      FieldName = 'NOME_EXECUTANTE1'
      Size = 70
    end
    object cdsFaturamentoSIGLA_CONSELHO1: TStringField
      FieldName = 'SIGLA_CONSELHO1'
      Size = 7
    end
    object cdsFaturamentoNUMERO_PROFISSIONAL1: TStringField
      FieldName = 'NUMERO_PROFISSIONAL1'
      Size = 15
    end
    object cdsFaturamentoSIGLA_UNIDADE1: TStringField
      FieldName = 'SIGLA_UNIDADE1'
      Size = 2
    end
    object cdsFaturamentoCODIGO_ESPECIALIDADE1: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE1'
      Size = 5
    end
    object cdsFaturamentoCODIGO_CNES1: TStringField
      FieldName = 'CODIGO_CNES1'
      Size = 7
    end
    object cdsFaturamentoLOGRADOURO1: TStringField
      FieldName = 'LOGRADOURO1'
      Size = 3
    end
    object cdsFaturamentoNOME_LOGRADOURO1: TStringField
      FieldName = 'NOME_LOGRADOURO1'
      Size = 40
    end
    object cdsFaturamentoNUMERO1: TStringField
      FieldName = 'NUMERO1'
      Size = 5
    end
    object cdsFaturamentoCOMPLEMENTO1: TStringField
      FieldName = 'COMPLEMENTO1'
      Size = 15
    end
    object cdsFaturamentoMUNICIPIO1: TStringField
      FieldName = 'MUNICIPIO1'
      Size = 40
    end
    object cdsFaturamentoSIGLA1: TStringField
      FieldName = 'SIGLA1'
      Size = 2
    end
    object cdsFaturamentoCODIGO_MUNICIPIO1: TStringField
      FieldName = 'CODIGO_MUNICIPIO1'
      Size = 10
    end
    object cdsFaturamentoCEP1: TStringField
      FieldName = 'CEP1'
      Size = 8
    end
    object cdsFaturamentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsFaturamentoTIPO_FATURA: TIntegerField
      FieldName = 'TIPO_FATURA'
    end
    object cdsFaturamentoNUMERO_GUIA_PRESTADOR: TStringField
      FieldName = 'NUMERO_GUIA_PRESTADOR'
    end
    object cdsFaturamentoTOTAL_GERAL_GUIA: TFloatField
      FieldName = 'TOTAL_GERAL_GUIA'
    end
    object cdsFaturamentoNUMEROLOTE: TIntegerField
      FieldName = 'NUMEROLOTE'
    end
    object cdsFaturamentoDATA_IMPORTACAO: TDateField
      FieldName = 'DATA_IMPORTACAO'
    end
  end
  object dspCombo1: TDataSetProvider
    DataSet = sdsCombo1
    Left = 816
    Top = 104
  end
  object cdsCombo1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'puso'
        ParamType = ptInput
      end>
    ProviderName = 'dspCombo1'
    Left = 816
    Top = 152
    object cdsCombo1CODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object cdsCombo1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cdsCombo1USO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object cdsCombo1CODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object cdsCombo1OUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
    object cdsCombo1CODHOS: TIntegerField
      FieldName = 'CODHOS'
    end
    object cdsCombo1DIVERSOS: TStringField
      FieldName = 'DIVERSOS'
      Size = 50
    end
    object cdsCombo1DESC1: TStringField
      FieldName = 'DESC1'
      Size = 200
    end
    object cdsCombo1DESC2: TStringField
      FieldName = 'DESC2'
      Size = 200
    end
    object cdsCombo1DESC3: TStringField
      FieldName = 'DESC3'
      Size = 200
    end
    object cdsCombo1DESC4: TStringField
      FieldName = 'DESC4'
      Size = 200
    end
    object cdsCombo1DESC5: TStringField
      FieldName = 'DESC5'
      Size = 200
    end
    object cdsCombo1DESC6: TStringField
      FieldName = 'DESC6'
      Size = 200
    end
    object cdsCombo1ORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsCombo1UNICO: TIntegerField
      FieldName = 'UNICO'
    end
    object cdsCombo1TITULO: TStringField
      FieldName = 'TITULO'
      Size = 50
    end
    object cdsCombo1TITULO1: TStringField
      FieldName = 'TITULO1'
      Size = 50
    end
    object cdsCombo1TITULO2: TStringField
      FieldName = 'TITULO2'
      Size = 50
    end
    object cdsCombo1TITULO3: TStringField
      FieldName = 'TITULO3'
      Size = 50
    end
    object cdsCombo1TITULO4: TStringField
      FieldName = 'TITULO4'
      Size = 50
    end
    object cdsCombo1TITULO5: TStringField
      FieldName = 'TITULO5'
      Size = 50
    end
    object cdsCombo1TITULO6: TStringField
      FieldName = 'TITULO6'
      Size = 50
    end
    object cdsCombo1TITULO7: TStringField
      FieldName = 'TITULO7'
      Size = 50
    end
    object cdsCombo1TITULO8: TStringField
      FieldName = 'TITULO8'
      Size = 50
    end
    object cdsCombo1TITULO9: TStringField
      FieldName = 'TITULO9'
      Size = 50
    end
    object cdsCombo1TITULO10: TStringField
      FieldName = 'TITULO10'
      Size = 50
    end
    object cdsCombo1TITULO11: TStringField
      FieldName = 'TITULO11'
      Size = 50
    end
    object cdsCombo1TITULO12: TStringField
      FieldName = 'TITULO12'
      Size = 50
    end
  end
  object sdsCombo1: TSQLDataSet
    CommandText = 'select * from DADOS_COMBOS where uso =:puso ORDER BY ORDEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'puso'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 816
    Top = 56
    object sdsCombo1CODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object sdsCombo1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object sdsCombo1USO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object sdsCombo1CODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object sdsCombo1OUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
    object sdsCombo1CODHOS: TIntegerField
      FieldName = 'CODHOS'
    end
    object sdsCombo1DIVERSOS: TStringField
      FieldName = 'DIVERSOS'
      Size = 50
    end
    object sdsCombo1DESC1: TStringField
      FieldName = 'DESC1'
      Size = 200
    end
    object sdsCombo1DESC2: TStringField
      FieldName = 'DESC2'
      Size = 200
    end
    object sdsCombo1DESC3: TStringField
      FieldName = 'DESC3'
      Size = 200
    end
    object sdsCombo1DESC4: TStringField
      FieldName = 'DESC4'
      Size = 200
    end
    object sdsCombo1DESC5: TStringField
      FieldName = 'DESC5'
      Size = 200
    end
    object sdsCombo1DESC6: TStringField
      FieldName = 'DESC6'
      Size = 200
    end
    object sdsCombo1ORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object sdsCombo1UNICO: TIntegerField
      FieldName = 'UNICO'
    end
    object sdsCombo1TITULO: TStringField
      FieldName = 'TITULO'
      Size = 50
    end
    object sdsCombo1TITULO1: TStringField
      FieldName = 'TITULO1'
      Size = 50
    end
    object sdsCombo1TITULO2: TStringField
      FieldName = 'TITULO2'
      Size = 50
    end
    object sdsCombo1TITULO3: TStringField
      FieldName = 'TITULO3'
      Size = 50
    end
    object sdsCombo1TITULO4: TStringField
      FieldName = 'TITULO4'
      Size = 50
    end
    object sdsCombo1TITULO5: TStringField
      FieldName = 'TITULO5'
      Size = 50
    end
    object sdsCombo1TITULO6: TStringField
      FieldName = 'TITULO6'
      Size = 50
    end
    object sdsCombo1TITULO7: TStringField
      FieldName = 'TITULO7'
      Size = 50
    end
    object sdsCombo1TITULO8: TStringField
      FieldName = 'TITULO8'
      Size = 50
    end
    object sdsCombo1TITULO9: TStringField
      FieldName = 'TITULO9'
      Size = 50
    end
    object sdsCombo1TITULO10: TStringField
      FieldName = 'TITULO10'
      Size = 50
    end
    object sdsCombo1TITULO11: TStringField
      FieldName = 'TITULO11'
      Size = 50
    end
    object sdsCombo1TITULO12: TStringField
      FieldName = 'TITULO12'
      Size = 50
    end
  end
  object dsCombo1: TDataSource
    DataSet = cdsCombo1
    Left = 816
    Top = 195
  end
  object cdmed: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 784
    Top = 280
    object IntegerField1: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object DateField1: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText]
    Left = 680
    Top = 280
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, RA , TEM_IE, DATACA' +
      'DASTRO from CLIENTES'#13#10' where  segmento = 0  and grupo_cliente = ' +
      #39'ASH'#39' '#13#10'ORDER BY NOMECLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 584
    Top = 280
    object IntegerField2: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object StringField7: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object StringField11: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object StringField12: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object StringField13: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object DateField2: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
  end
  object dsdmed: TDataSource
    DataSet = cdmed
    Left = 888
    Top = 280
  end
  object procgrupo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'grupo'
        ParamType = ptInput
      end>
    ProviderName = 'dspPg'
    Left = 176
    Top = 120
    object procgrupoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object procgrupoRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object procgrupoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object dspPg: TDataSetProvider
    DataSet = sqlpg
    Options = [poAllowCommandText]
    Left = 120
    Top = 120
  end
  object sqlpg: TSQLDataSet
    CommandText = 
      'select codcliente ,ra ,nomecliente  from BUSCA_GRUPO (:grupo)'#13#10#13 +
      #10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'grupo'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 56
    Top = 120
    object sqlpgCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sqlpgRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlpgNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object sqlpgt: TSQLDataSet
    CommandText = 
      'select codcliente ,ra , razaosocial ,nomecliente  from BUSCA_GRU' +
      'PO_TODOS (:grupo)'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'grupo'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 48
    Top = 176
    object sqlpgtCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sqlpgtRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlpgtRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqlpgtNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
  end
  object dsppgt: TDataSetProvider
    DataSet = sqlpgt
    Options = [poAllowCommandText]
    Left = 112
    Top = 176
  end
  object procgrupoT: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'grupo'
        ParamType = ptInput
      end>
    ProviderName = 'dsppgt'
    Left = 176
    Top = 176
    object procgrupoTCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object procgrupoTRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object procgrupoTNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object procgrupoTRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
  end
  object cdsCob: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ppar'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dspCob'
    Left = 480
    Top = 8
    object cdsCobCODCOB: TIntegerField
      FieldName = 'CODCOB'
      Required = True
    end
    object cdsCobCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object cdsCobCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object cdsCobFORMA: TStringField
      FieldName = 'FORMA'
      Size = 100
    end
    object cdsCobDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsCobHORA: TTimeField
      FieldName = 'HORA'
      EditMask = '!90:00;1;_'
    end
    object cdsCobNUMERO_TITULO: TStringField
      FieldName = 'NUMERO_TITULO'
      Size = 40
    end
    object cdsCobDATAEMI: TDateField
      FieldName = 'DATAEMI'
      EditMask = '!99/99/00;1;_'
    end
    object cdsCobDATAVENC: TDateField
      FieldName = 'DATAVENC'
      EditMask = '!99/99/00;1;_'
    end
    object cdsCobDATAPREV: TDateField
      FieldName = 'DATAPREV'
      EditMask = '!99/99/00;1;_'
    end
    object cdsCobVALORNEGOCIADO: TFloatField
      FieldName = 'VALORNEGOCIADO'
    end
    object cdsCobOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object cdsCobSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsCobRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsCobRA: TStringField
      FieldName = 'RA'
      ProviderFlags = []
      Size = 10
    end
    object cdsCobGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 5
    end
  end
  object dspCob: TDataSetProvider
    DataSet = sqlCob
    Left = 416
    Top = 8
  end
  object sqlCob: TSQLDataSet
    CommandText = 
      'select  mov.* ,cli.razaosocial , cli.ra from COBRANCA1 mov  '#13#10'in' +
      'ner join CLIENTES cli on cli.CODCLIENTE = mov.CODCLI'#13#10' where cod' +
      'cli = :ppar  and codcob = :pcod'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ppar'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 352
    Top = 10
    object sqlCobCODCOB: TIntegerField
      FieldName = 'CODCOB'
      Required = True
    end
    object sqlCobCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object sqlCobCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object sqlCobFORMA: TStringField
      FieldName = 'FORMA'
      Size = 100
    end
    object sqlCobDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object sqlCobHORA: TTimeField
      FieldName = 'HORA'
    end
    object sqlCobNUMERO_TITULO: TStringField
      FieldName = 'NUMERO_TITULO'
      Size = 40
    end
    object sqlCobDATAEMI: TDateField
      FieldName = 'DATAEMI'
    end
    object sqlCobDATAVENC: TDateField
      FieldName = 'DATAVENC'
    end
    object sqlCobDATAPREV: TDateField
      FieldName = 'DATAPREV'
    end
    object sqlCobVALORNEGOCIADO: TFloatField
      FieldName = 'VALORNEGOCIADO'
    end
    object sqlCobOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object sqlCobSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sqlCobRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object sqlCobRA: TStringField
      FieldName = 'RA'
      ProviderFlags = []
      Size = 10
    end
    object sqlCobGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 5
    end
  end
  object sqlUltimo: TSQLClientDataSet
    CommandText = 
      'select first 1 codexame ,origem, codcliente  from labexame order' +
      ' by origem desc'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DM.sqlsisAdimin
    Left = 472
    Top = 264
    object sqlUltimoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object sqlUltimoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
  end
  object dsGuias: TDataSource
    DataSet = cdsGuias
    Left = 256
    Top = 408
  end
end
