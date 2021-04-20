object Form1: TForm1
  Left = 426
  Top = 22
  Width = 486
  Height = 596
  BorderIcons = [biSystemMenu]
  Caption = 'Boletos Sicredi'
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
    Top = 50
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
  object lbl1: TLabel
    Left = 113
    Top = 210
    Width = 134
    Height = 13
    Caption = 'N'#186' de Boletos a ser Gerados'
    FocusControl = dbedtCOUNT
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
    FocusControl = dbedtCOUNT
  end
  object label8: TLabel
    Left = 45
    Top = 419
    Width = 9
    Height = 13
    Caption = '...'
    Color = clActiveCaption
    ParentColor = False
  end
  object FlatGauge1: TFlatGauge
    Left = 42
    Top = 251
    Width = 346
    Height = 25
    AdvColorBorder = 0
    ColorBorder = 8623776
    Progress = 0
  end
  object lbl4: TLabel
    Left = 43
    Top = 396
    Width = 65
    Height = 13
    Caption = 'Data Emiss'#227'o'
  end
  object Label2: TLabel
    Left = 319
    Top = 281
    Width = 105
    Height = 13
    Caption = 'Sequencia do Arquivo'
  end
  object Label3: TLabel
    Left = 120
    Top = 358
    Width = 208
    Height = 13
    Caption = 'Arquivo Remessa Debito Automatico Sicredi'
  end
  object label6: TLabel
    Left = 290
    Top = 379
    Width = 105
    Height = 13
    Caption = 'Sequencia do Arquivo'
  end
  object Panel3: TPanel
    Left = 3
    Top = 490
    Width = 454
    Height = 49
    Color = clSilver
    TabOrder = 13
    object Label4: TLabel
      Left = 24
      Top = 4
      Width = 68
      Height = 13
      Caption = 'Ultimo Arquivo'
      FocusControl = DBEdit1
    end
  end
  object Panel1: TPanel
    Left = 36
    Top = 2
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
    Left = 42
    Top = 72
    Width = 347
    Height = 35
    Caption = 'Visualizar  Boletos'
    TabOrder = 1
    Visible = False
    OnClick = BitBtn1Click
  end
  object comboConta: TComboBox
    Left = 168
    Top = 47
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
    OnChange = comboContaChange
  end
  object dbedtCOUNT: TDBEdit
    Left = 41
    Top = 207
    Width = 65
    Height = 21
    DataField = 'COUNT'
    DataSource = ds1
    ReadOnly = True
    TabOrder = 3
  end
  object btn1: TButton
    Left = 42
    Top = 110
    Width = 347
    Height = 34
    Caption = 'Gerar Arquivos PDF dos Boletos'
    TabOrder = 4
    OnClick = btn1Click
  end
  object BitBtn2: TBitBtn
    Left = 307
    Top = 433
    Width = 83
    Height = 25
    Caption = 'Gerar Remessa'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object DateEdit1: TDateEdit
    Left = 121
    Top = 391
    Width = 113
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 280
    Top = 394
    Width = 109
    Height = 21
    ReadOnly = True
    TabOrder = 7
  end
  object Panel2: TPanel
    Left = -1
    Top = 332
    Width = 445
    Height = 6
    BevelInner = bvLowered
    TabOrder = 8
  end
  object Edit3: TEdit
    Left = 41
    Top = 438
    Width = 193
    Height = 21
    ReadOnly = True
    TabOrder = 9
    Text = 'C:\skyline\outbox\'
  end
  object BitBtn3: TBitBtn
    Left = 354
    Top = 56
    Width = 103
    Height = 25
    Caption = 'Visualizar  Boletos (N e Debito Automatico)'
    TabOrder = 10
    Visible = False
    OnClick = BitBtn3Click
  end
  object DBEdit1: TDBEdit
    Left = 35
    Top = 509
    Width = 49
    Height = 21
    DataField = 'PORTA'
    DataSource = DataSource1
    TabOrder = 11
  end
  object btnCorrigir: TBitBtn
    Left = 152
    Top = 504
    Width = 169
    Height = 25
    Caption = 'Corrigir Ultimo Arquivo'
    TabOrder = 12
    OnClick = btnCorrigirClick
  end
  object btn2: TBitBtn
    Left = 43
    Top = 147
    Width = 345
    Height = 26
    Caption = 'Visualizar  Boletos'
    TabOrder = 14
    OnClick = btn2Click
  end
  object btnGerarRemessa: TButton
    Left = 42
    Top = 175
    Width = 346
    Height = 27
    Caption = 'Gerar Arquivo Remessa'
    TabOrder = 15
    OnClick = btnGerarRemessaClick
  end
  object JvDateEdit1: TJvDateEdit
    Left = 160
    Top = 296
    Width = 113
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 16
  end
  object edit1: TEdit
    Left = 336
    Top = 296
    Width = 49
    Height = 21
    ReadOnly = True
    TabOrder = 17
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
      'Database=192.168.6.254/3050:C:\home\bd\saude_ash.fdb'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=sysdba'
      'WaitOnLocks=True'
      'str_relatorio=C:\home\atsfinanceiro\relatorio\')
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
    object cdsBoletoRA: TStringField
      FieldName = 'RA'
      Size = 10
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
    CommandText = 'select * from boleto('#39'Sicredi'#39' , :CONTA)'
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
    object sdsBoletoRA: TStringField
      FieldName = 'RA'
      Size = 10
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
      'select numero_conta , digito_conta from banco where banco = '#39'Sic' +
      'redi'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlboleto
    Left = 312
    Top = 49
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
  object registros: TSQLDataSet
    CommandText = 
      'select count(rec.dp) from recebimento rec'#13#10'inner join clientes c' +
      'li on rec.codcliente = cli.codcliente'#13#10'where rec.dp = 1 '#13#10'and  (' +
      '(cli.geradebitoau is null)or (cli.geradebitoau = '#39#39'))'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlboleto
    Left = 8
    Top = 184
    object registrosCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
      Required = True
    end
  end
  object ds1: TDataSource
    DataSet = registros
    Left = 56
    Top = 49
  end
  object cds_empresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_empresa'
    Left = 264
    Top = 430
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
    object sds_empresaCODIGO: TIntegerField
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
    object cds_empresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object cds_empresaDIVERSOS1: TStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object cds_empresaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object cds_empresaDIVERSOS3: TStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object cds_empresaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
    object cds_empresaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
    end
    object cds_empresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object cds_empresaSMTP: TStringField
      FieldName = 'SMTP'
      Size = 30
    end
    object cds_empresaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
  end
  object dsp_empresa: TDataSetProvider
    DataSet = sds_Empresa
    Left = 232
    Top = 430
  end
  object sds_Empresa: TSQLDataSet
    CommandText = 'select * from EMPRESA '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlboleto
    Left = 240
    Top = 390
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
    object sds_EmpresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object sds_EmpresaDIVERSOS1: TStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object sds_EmpresaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object sds_EmpresaDIVERSOS3: TStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object sds_EmpresaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
    object sds_EmpresaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
    end
    object sds_EmpresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object sds_EmpresaSMTP: TStringField
      FieldName = 'SMTP'
      Size = 30
    end
    object sds_EmpresaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
  end
  object sqlR: TSQLDataSet
    CommandText = 'select * from ARQUIVO_REMESSA('#39'Sicredi'#39' , :CONTA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
    SQLConnection = sqlboleto
    Left = 264
    Top = 462
    object sqlRDATADOC: TDateField
      FieldName = 'DATADOC'
    end
    object sqlRDATAPROCESSAMENTO: TDateField
      FieldName = 'DATAPROCESSAMENTO'
    end
    object sqlRCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sqlRNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 100
    end
    object sqlRCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sqlRIE: TStringField
      FieldName = 'IE'
      Size = 24
    end
    object sqlRENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object sqlRBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sqlRVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sqlRAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object sqlRDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      FixedChar = True
      Size = 1
    end
    object sqlRCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object sqlRDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      FixedChar = True
      Size = 1
    end
    object sqlRDATAREC: TDateField
      FieldName = 'DATAREC'
    end
    object sqlRNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object sqlRCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sqlRUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sqlRCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlRTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object sqlREMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 80
    end
    object sqlRCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sqlRINST1: TStringField
      FieldName = 'INST1'
      Size = 100
    end
    object sqlRINST2: TStringField
      FieldName = 'INST2'
      Size = 100
    end
    object sqlRNUMTITULO: TStringField
      FieldName = 'NUMTITULO'
      Size = 18
    end
    object sqlRCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object sqlRCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 10
    end
    object sqlRDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object sqlRRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlRE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 30
    end
    object sqlRN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object sqlRCPF_D: TStringField
      FieldName = 'CPF_D'
      Size = 18
    end
    object sqlRCC: TStringField
      FieldName = 'CC'
      Size = 6
    end
    object sqlRGERADEBITOAU: TStringField
      FieldName = 'GERADEBITOAU'
      FixedChar = True
      Size = 1
    end
    object sqlRTIPOD: TSmallintField
      FieldName = 'TIPOD'
    end
  end
  object dspR: TDataSetProvider
    DataSet = sqlR
    Left = 320
    Top = 462
  end
  object cdsR: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
    ProviderName = 'dspR'
    Left = 384
    Top = 462
    object cdsRDATADOC: TDateField
      FieldName = 'DATADOC'
    end
    object cdsRDATAPROCESSAMENTO: TDateField
      FieldName = 'DATAPROCESSAMENTO'
    end
    object cdsRCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsRNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 100
    end
    object cdsRCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsRIE: TStringField
      FieldName = 'IE'
      Size = 24
    end
    object cdsRENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object cdsRBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsRVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsRAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object cdsRDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsRCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object cdsRDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      FixedChar = True
      Size = 1
    end
    object cdsRDATAREC: TDateField
      FieldName = 'DATAREC'
    end
    object cdsRNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object cdsRCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsRUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsRCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsRTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object cdsREMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 80
    end
    object cdsRCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsRINST1: TStringField
      FieldName = 'INST1'
      Size = 100
    end
    object cdsRINST2: TStringField
      FieldName = 'INST2'
      Size = 100
    end
    object cdsRNUMTITULO: TStringField
      FieldName = 'NUMTITULO'
      Size = 18
    end
    object cdsRCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object cdsRCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 10
    end
    object cdsRDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsRRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsRE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 30
    end
    object cdsRN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object cdsRCPF_D: TStringField
      FieldName = 'CPF_D'
      Size = 18
    end
    object cdsRCC: TStringField
      FieldName = 'CC'
      Size = 6
    end
    object cdsRGERADEBITOAU: TStringField
      FieldName = 'GERADEBITOAU'
      FixedChar = True
      Size = 1
    end
    object cdsRTIPOD: TSmallintField
      FieldName = 'TIPOD'
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from boletoN('#39'Sicredi'#39' , :CONTA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
    SQLConnection = sqlboleto
    Left = 144
    Top = 88
    object DateField1: TDateField
      FieldName = 'DATADOC'
    end
    object DateField2: TDateField
      FieldName = 'DATAPROCESSAMENTO'
    end
    object IntegerField1: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object StringField1: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 100
    end
    object StringField2: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object StringField3: TStringField
      FieldName = 'IE'
      Size = 24
    end
    object StringField4: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object StringField5: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object FloatField1: TFloatField
      FieldName = 'VALOR'
    end
    object StringField6: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'DIGITOAGENCIA'
      FixedChar = True
      Size = 1
    end
    object StringField8: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object StringField9: TStringField
      FieldName = 'DIGITOCONTA'
      FixedChar = True
      Size = 1
    end
    object DateField3: TDateField
      FieldName = 'DATAREC'
    end
    object StringField10: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object StringField11: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object StringField12: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object StringField13: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object SmallintField1: TSmallintField
      FieldName = 'TIPO'
    end
    object StringField14: TStringField
      FieldName = 'EMPRESA'
      Size = 80
    end
    object StringField15: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object StringField16: TStringField
      FieldName = 'INST1'
      Size = 100
    end
    object StringField17: TStringField
      FieldName = 'INST2'
      Size = 100
    end
    object StringField18: TStringField
      FieldName = 'NUMTITULO'
      Size = 18
    end
    object StringField19: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object StringField20: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 10
    end
    object StringField21: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object StringField22: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object StringField23: TStringField
      FieldName = 'E_MAIL'
      Size = 30
    end
    object StringField24: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object StringField25: TStringField
      FieldName = 'CPF_D'
      Size = 18
    end
    object StringField26: TStringField
      FieldName = 'CC'
      Size = 6
    end
    object StringField27: TStringField
      FieldName = 'GERADEBITOAU'
      FixedChar = True
      Size = 1
    end
    object SmallintField2: TSmallintField
      FieldName = 'TIPOD'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 200
    Top = 88
  end
  object cdsboleto1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 264
    Top = 88
    object cdsboleto1DATADOC: TDateField
      FieldName = 'DATADOC'
    end
    object cdsboleto1DATAPROCESSAMENTO: TDateField
      FieldName = 'DATAPROCESSAMENTO'
    end
    object cdsboleto1CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsboleto1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 100
    end
    object cdsboleto1CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsboleto1IE: TStringField
      FieldName = 'IE'
      Size = 24
    end
    object cdsboleto1ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object cdsboleto1BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsboleto1VALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsboleto1AGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object cdsboleto1DIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsboleto1CONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object cdsboleto1DIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      FixedChar = True
      Size = 1
    end
    object cdsboleto1DATAREC: TDateField
      FieldName = 'DATAREC'
    end
    object cdsboleto1NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object cdsboleto1CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsboleto1UF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsboleto1CEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsboleto1TIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object cdsboleto1EMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 80
    end
    object cdsboleto1CNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsboleto1INST1: TStringField
      FieldName = 'INST1'
      Size = 100
    end
    object cdsboleto1INST2: TStringField
      FieldName = 'INST2'
      Size = 100
    end
    object cdsboleto1NUMTITULO: TStringField
      FieldName = 'NUMTITULO'
      Size = 18
    end
    object cdsboleto1CARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object cdsboleto1CODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 10
    end
    object cdsboleto1DESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsboleto1RA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsboleto1E_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 30
    end
    object cdsboleto1N_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object cdsboleto1CPF_D: TStringField
      FieldName = 'CPF_D'
      Size = 18
    end
    object cdsboleto1CC: TStringField
      FieldName = 'CC'
      Size = 6
    end
    object cdsboleto1GERADEBITOAU: TStringField
      FieldName = 'GERADEBITOAU'
      FixedChar = True
      Size = 1
    end
    object cdsboleto1TIPOD: TSmallintField
      FieldName = 'TIPOD'
    end
  end
  object DataSource1: TDataSource
    DataSet = cds_empresa
    Left = 88
    Top = 304
  end
  object RLBRemessa1: TRLBRemessa
    NumeroArquivo = 0
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRemessa
    Left = 400
    Top = 8
  end
  object sqlEmpresa: TSQLDataSet
    CommandText = 'select udf_StrZero(anoletivo  ,7 ) as anoletivo  from EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlboleto
    Left = 280
    Top = 216
    object sqlEmpresaANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ReadOnly = True
      FixedChar = True
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sqlEmpresa
    Left = 320
    Top = 216
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 360
    Top = 216
    object cdsEmpresaANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ReadOnly = True
      FixedChar = True
    end
  end
  object sqlEmpresa1: TSQLDataSet
    CommandText = 'select  seque, gerou , codigo_conta , DATABOLETO from EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlboleto
    Left = 280
    Top = 248
    object sqlEmpresa1SEQUE: TIntegerField
      FieldName = 'SEQUE'
    end
    object sqlEmpresa1GEROU: TIntegerField
      FieldName = 'GEROU'
    end
    object sqlEmpresa1CODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object sqlEmpresa1DATABOLETO: TDateField
      FieldName = 'DATABOLETO'
    end
  end
  object dspEmpresa1: TDataSetProvider
    DataSet = sqlEmpresa1
    Left = 320
    Top = 248
  end
  object cdsEmpresa1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa1'
    Left = 368
    Top = 248
    object cdsEmpresa1SEQUE: TIntegerField
      FieldName = 'SEQUE'
    end
    object cdsEmpresa1GEROU: TIntegerField
      FieldName = 'GEROU'
    end
    object cdsEmpresa1CODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object cdsEmpresa1DATABOLETO: TDateField
      FieldName = 'DATABOLETO'
    end
  end
  object sqlBanco: TSQLDataSet
    CommandText = 
      'select NUMERO_CONTA,'#13#10'SEQUENCIA_ARQUIVO,'#13#10'DIA_GEROU_ARQUIVO,'#13#10'SE' +
      'QUENCIA_DIA,'#13#10'GERANDO_ARQUIVO from banco'#13#10'where numero_conta =:c' +
      'onta'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'conta'
        ParamType = ptInput
      end>
    SQLConnection = sqlboleto
    Left = 88
    Top = 264
    object sqlBancoNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object sqlBancoSEQUENCIA_ARQUIVO: TIntegerField
      FieldName = 'SEQUENCIA_ARQUIVO'
    end
    object sqlBancoDIA_GEROU_ARQUIVO: TDateField
      FieldName = 'DIA_GEROU_ARQUIVO'
    end
    object sqlBancoSEQUENCIA_DIA: TIntegerField
      FieldName = 'SEQUENCIA_DIA'
    end
    object sqlBancoGERANDO_ARQUIVO: TIntegerField
      FieldName = 'GERANDO_ARQUIVO'
    end
  end
  object dspBanco: TDataSetProvider
    DataSet = sqlBanco
    Left = 136
    Top = 264
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'conta'
        ParamType = ptInput
      end>
    ProviderName = 'dspBanco'
    Left = 176
    Top = 264
    object cdsBancoNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object cdsBancoSEQUENCIA_ARQUIVO: TIntegerField
      FieldName = 'SEQUENCIA_ARQUIVO'
    end
    object cdsBancoDIA_GEROU_ARQUIVO: TDateField
      FieldName = 'DIA_GEROU_ARQUIVO'
    end
    object cdsBancoSEQUENCIA_DIA: TIntegerField
      FieldName = 'SEQUENCIA_DIA'
    end
    object cdsBancoGERANDO_ARQUIVO: TIntegerField
      FieldName = 'GERANDO_ARQUIVO'
    end
  end
end
