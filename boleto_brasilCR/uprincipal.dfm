object Form1: TForm1
  Left = 455
  Top = 203
  Width = 438
  Height = 466
  BorderIcons = [biSystemMenu]
  Caption = 'Boletos Banco  Brasil Com Registro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 102
    Top = 102
    Width = 51
    Height = 20
    Caption = 'Conta :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 59
    Height = 13
    Caption = 'N'#186' Remessa'
  end
  object lbl2: TLabel
    Left = 64
    Top = 233
    Width = 12
    Height = 13
    Caption = '....'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 114
    Top = 234
    Width = 108
    Height = 13
    Caption = 'N'#186' de Boletos Gerados'
  end
  object Panel1: TPanel
    Left = 36
    Top = 47
    Width = 353
    Height = 41
    Caption = 'Aguarde... Preparando Visualiza'#231#227'o.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 12
      Width = 334
      Height = 16
      Cursor = crHourGlass
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 36
    Top = 143
    Width = 353
    Height = 49
    Caption = 'Visualizar  Boletos'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object comboConta: TComboBox
    Left = 168
    Top = 99
    Width = 127
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 46
    Top = 278
    Width = 350
    Height = 50
    Caption = 'Gerar Arquivo Remessa'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 2
    Top = 24
    Width = 81
    Height = 21
    MaxLength = 7
    ReadOnly = True
    TabOrder = 4
  end
  object btn1: TButton
    Left = 42
    Top = 358
    Width = 347
    Height = 34
    Caption = 'Gerar Arquivos PDF dos Boletos'
    TabOrder = 5
    OnClick = btn1Click
  end
  object sqlboleto: TSQLConnection
    ConnectionName = 'sisAdmin'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=localhost/3050:C:\home\bd\SAUDE_ASH.FDB'
      'ErrorResourceFile=localhost/3051:C:\home\bd\2\sge_agroselect.fdb'
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'fbclient.dll'
    Left = 88
    Top = 8
  end
  object cdsBoleto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
    ProviderName = 'dspBoleto'
    Left = 264
    Top = 8
    object cdsBoletoDATADOC: TDateField
      FieldName = 'DATADOC'
    end
    object cdsBoletoDATAPROCESSAMENTO: TDateField
      FieldName = 'DATAPROCESSAMENTO'
    end
    object cdsBoletoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsBoletoRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsBoletoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 100
    end
    object cdsBoletoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsBoletoIE: TStringField
      FieldName = 'IE'
      Size = 24
    end
    object cdsBoletoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object cdsBoletoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsBoletoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsBoletoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object cdsBoletoDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsBoletoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object cdsBoletoDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      FixedChar = True
      Size = 1
    end
    object cdsBoletoDATAREC: TDateField
      FieldName = 'DATAREC'
    end
    object cdsBoletoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object cdsBoletoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsBoletoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsBoletoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsBoletoTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object cdsBoletoEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 80
    end
    object cdsBoletoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsBoletoINST1: TStringField
      FieldName = 'INST1'
      Size = 100
    end
    object cdsBoletoINST2: TStringField
      FieldName = 'INST2'
      Size = 100
    end
    object cdsBoletoNUMTITULO: TStringField
      FieldName = 'NUMTITULO'
      Size = 18
    end
    object cdsBoletoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object cdsBoletoCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 10
    end
    object cdsBoletoDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsBoletoE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 30
    end
    object cdsBoletoN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object cdsBoletoCPF_D: TStringField
      FieldName = 'CPF_D'
      Size = 18
    end
    object cdsBoletoCC: TStringField
      FieldName = 'CC'
      Size = 6
    end
    object cdsBoletoGERADEBITOAU: TStringField
      FieldName = 'GERADEBITOAU'
      FixedChar = True
      Size = 1
    end
    object cdsBoletoTIPOD: TSmallintField
      FieldName = 'TIPOD'
    end
    object cdsBoletoRAREC: TStringField
      FieldName = 'RAREC'
      Size = 10
    end
    object cdsBoletoCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
  end
  object dspBoleto: TDataSetProvider
    DataSet = sdsBoleto
    Left = 200
    Top = 8
  end
  object sdsBoleto: TSQLDataSet
    CommandText = 
      'select * from boleto('#39'Brasil'#39' , :CONTA) order by cast (RA as int' +
      'eger)'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
    SQLConnection = sqlboleto
    Left = 144
    Top = 8
    object sdsBoletoDATADOC: TDateField
      FieldName = 'DATADOC'
    end
    object sdsBoletoDATAPROCESSAMENTO: TDateField
      FieldName = 'DATAPROCESSAMENTO'
    end
    object sdsBoletoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsBoletoRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sdsBoletoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 100
    end
    object sdsBoletoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsBoletoIE: TStringField
      FieldName = 'IE'
      Size = 24
    end
    object sdsBoletoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object sdsBoletoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sdsBoletoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsBoletoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object sdsBoletoDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      FixedChar = True
      Size = 1
    end
    object sdsBoletoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object sdsBoletoDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      FixedChar = True
      Size = 1
    end
    object sdsBoletoDATAREC: TDateField
      FieldName = 'DATAREC'
    end
    object sdsBoletoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object sdsBoletoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsBoletoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsBoletoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsBoletoTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object sdsBoletoEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 80
    end
    object sdsBoletoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsBoletoINST1: TStringField
      FieldName = 'INST1'
      Size = 100
    end
    object sdsBoletoINST2: TStringField
      FieldName = 'INST2'
      Size = 100
    end
    object sdsBoletoNUMTITULO: TStringField
      FieldName = 'NUMTITULO'
      Size = 18
    end
    object sdsBoletoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object sdsBoletoCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 10
    end
    object sdsBoletoDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object sdsBoletoE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 30
    end
    object sdsBoletoN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object sdsBoletoCPF_D: TStringField
      FieldName = 'CPF_D'
      Size = 18
    end
    object sdsBoletoCC: TStringField
      FieldName = 'CC'
      Size = 6
    end
    object sdsBoletoGERADEBITOAU: TStringField
      FieldName = 'GERADEBITOAU'
      FixedChar = True
      Size = 1
    end
    object sdsBoletoTIPOD: TSmallintField
      FieldName = 'TIPOD'
    end
    object sdsBoletoRAREC: TStringField
      FieldName = 'RAREC'
      Size = 10
    end
    object sdsBoletoCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
  end
  object RLBTitulo1: TRLBTitulo
    PrintDialog = True
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaFisica
    Sacado.TipoInscricao = tiPessoaFisica
    AceiteDocumento = adNao
    EspecieDocumento = edRecibo
    EmissaoBoleto = ebClienteEmite
    LayoutNN = lnN11
    Versao = '1.1.5'
    Left = 360
    Top = 8
  end
  object sqlconta: TSQLDataSet
    CommandText = 
      'select numero_conta , digito_conta from banco where banco = '#39'Bra' +
      'sil'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlboleto
    Left = 304
    Top = 96
    object sqlcontaNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object sqlcontaDIGITO_CONTA: TStringField
      FieldName = 'DIGITO_CONTA'
      FixedChar = True
      Size = 1
    end
  end
  object RLBRemessa1: TRLBRemessa
    NumeroArquivo = 0
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRemessaTeste
    Left = 392
    Top = 8
  end
  object sqlEmpresa1: TSQLDataSet
    CommandText = 'select  anoletivo  from EMPRESA'
    DataSource = dsEmpresa1
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlboleto
    Left = 64
    Top = 200
    object sqlEmpresa1ANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
  end
  object dspEmpresa1: TDataSetProvider
    DataSet = sqlEmpresa1
    Left = 144
    Top = 208
  end
  object cdsEmpresa1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa1'
    Left = 240
    Top = 208
    object cdsEmpresa1ANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
  end
  object dsEmpresa1: TDataSource
    DataSet = cdsEmpresa1
    Left = 312
    Top = 208
  end
  object dsEmpresa: TDataSource
    Left = 312
    Top = 176
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 240
    Top = 168
    object cdsEmpresaANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ReadOnly = True
      FixedChar = True
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sqlEmpresa
    Left = 144
    Top = 168
  end
  object sqlEmpresa: TSQLDataSet
    CommandText = 'select udf_StrZero(anoletivo  ,7 ) as anoletivo  from EMPRESA'
    DataSource = dsEmpresa
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlboleto
    Left = 64
    Top = 168
    object sqlEmpresaANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ReadOnly = True
      FixedChar = True
    end
  end
  object RLPreviewSetup1: TRLPreviewSetup
    DialogPrint = False
    Left = 24
    Top = 49
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport(Open Source) v3.24(BETA13) \251 Copyright '#169' 1999-20' +
      '07 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 320
    Top = 8
  end
end
