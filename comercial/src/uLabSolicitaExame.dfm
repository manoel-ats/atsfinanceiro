inherited fLabSolicitaExame: TfLabSolicitaExame
  Left = 309
  Top = 64
  Width = 827
  Height = 640
  ActiveControl = cbCliente
  Caption = 'Solicita'#231#227'o de Exame'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel [0]
    Left = 24
    Top = 528
    Width = 85
    Height = 13
    Caption = 'Total de Exames :'
  end
  object Label11: TLabel [1]
    Left = 119
    Top = 528
    Width = 12
    Height = 13
    Caption = '....'
  end
  object Label12: TLabel [2]
    Left = 272
    Top = 528
    Width = 12
    Height = 13
    Caption = '....'
  end
  object Label13: TLabel [3]
    Left = 168
    Top = 528
    Width = 90
    Height = 13
    Caption = 'Total de Excluidos:'
  end
  inherited MMJPanel1: TMMJPanel
    Width = 819
    Height = 36
    TabOrder = 1
    Background.StartColor = clMaroon
    object DBText2: TDBText
      Left = 119
      Top = 4
      Width = 201
      Height = 25
      DataField = 'GRUPO_CLIENTE'
      DataSource = dsEmpresa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 117
      Top = 6
      Width = 201
      Height = 25
      DataField = 'GRUPO_CLIENTE'
      DataSource = dsClienteBusca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 459
      Top = 3
      Width = 125
      Height = 25
      DataField = 'INSCESTADUAL'
      DataSource = dsClienteBusca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  inherited MMJPanel2: TMMJPanel
    Left = 8
    Top = 545
    Width = 793
    Align = alNone
    TabOrder = 0
    Background.StartColor = clMaroon
    Background.EndColor = clCaptionText
    object btnVER: TButton [0]
      Left = 448
      Top = 8
      Width = 17
      Height = 33
      Caption = 'btnVER'
      TabOrder = 8
      Visible = False
      OnClick = btnVERClick
    end
    object btnImp30: TBitBtn [1]
      Left = 624
      Top = 5
      Width = 39
      Height = 40
      Caption = 'Imprimir Rec > 20'
      TabOrder = 7
      Visible = False
      OnClick = btnImp30Click
    end
    inherited btnGravar: TBitBtn
      Left = 172
    end
    inherited btnIncluir: TBitBtn
      Left = 172
      Top = 4
    end
    inherited btnCancelar: TBitBtn
      Left = 292
    end
    inherited btnExcluir: TBitBtn
      Left = 291
    end
    inherited btnProcurar: TBitBtn
      Left = 36
      Enabled = False
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 680
      Width = 88
    end
    object btnImp: TBitBtn
      Left = 447
      Top = 5
      Width = 215
      Height = 40
      Caption = 'Receber * Imprimir Recibo'
      TabOrder = 6
      OnClick = btnImpClick
    end
  end
  object JvDBGrid1: TJvDBGrid [6]
    Left = 13
    Top = 179
    Width = 788
    Height = 342
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = JvDBGrid1DrawColumnCell
    AlternateRowColor = clInfoBk
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'TIPOEXAME'
        Title.Caption = 'Exame'
        Width = 197
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'Solicitante'
        Width = 197
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATASOLICITACAO'
        Title.Caption = 'Solicitado'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Title.Caption = 'Situa'#231#227'o'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEVOLUCAO'
        Title.Caption = 'Devolu'#231#227'o'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPRESSO'
        Title.Caption = 'Recebido'
        Width = 71
        Visible = True
      end>
  end
  object Panel1: TPanel [7]
    Left = 12
    Top = 36
    Width = 793
    Height = 142
    TabOrder = 3
    object Label1: TLabel
      Left = 6
      Top = 7
      Width = 43
      Height = 16
      Caption = 'Nome :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 6
      Top = 51
      Width = 105
      Height = 16
      Caption = 'Exame Solicitado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 6
      Top = 95
      Width = 110
      Height = 16
      Caption = 'M'#233'dico Solicitante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 530
      Top = 51
      Width = 99
      Height = 16
      Caption = 'Data Solicita'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 648
      Top = 51
      Width = 112
      Height = 16
      Caption = 'Data prev. Entrega'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 744
      Top = 8
      Width = 9
      Height = 13
      Caption = '...'
    end
    object Label7: TLabel
      Left = 289
      Top = 97
      Width = 199
      Height = 13
      Caption = 'Valor     0                  50%             100%     '
    end
    object Label8: TLabel
      Left = 552
      Top = 8
      Width = 16
      Height = 13
      Caption = 'RG'
    end
    object Label9: TLabel
      Left = 562
      Top = 95
      Width = 112
      Height = 16
      Caption = 'Forma Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 672
      Top = 8
      Width = 81
      Height = 33
      DataField = 'NUMERO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object cbCliente: TJvDBSearchComboBox
      Left = 6
      Top = 23
      Width = 491
      Height = 24
      DataField = 'NOMECLIENTE'
      DataSource = dsClienteBusca
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      Text = 'ABEL RODRIGUES DE CAMPOS'
      OnKeyPress = FormKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 505
      Top = 22
      Width = 32
      Height = 25
      Hint = 'Incluir novo Cadastro'
      Caption = '...'
      TabOrder = 2
      Visible = False
      OnClick = BitBtn1Click
    end
    object cbExame: TDBComboBox
      Left = 13
      Top = 68
      Width = 191
      Height = 24
      AutoComplete = False
      DataField = 'DESCRICAO'
      DataSource = dtsexame
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object cbMedico: TJvDBSearchComboBox
      Left = 6
      Top = 111
      Width = 515
      Height = 24
      DataField = 'NOME_REPRFOR'
      DataSource = dsMedico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object JvDBDateTimePicker2: TJvDBDateTimePicker
      Left = 648
      Top = 67
      Width = 113
      Height = 24
      Date = 39364.311951134260000000
      Time = 39364.311951134260000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = FormKeyPress
      DropDownDate = 39364.000000000000000000
      DataField = 'DATAPREVISTAENTREGA'
      DataSource = DtSrc
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 256
      Top = 56
      Width = 248
      Height = 41
      BiDiMode = bdRightToLeftNoAlign
      Caption = 'Cobran'#231'a'
      Columns = 4
      DataField = 'COBRANCA'
      DataSource = DtSrc
      Items.Strings = (
        ','
        'Sem'
        'Extra'
        'Parti.')
      ParentBiDiMode = False
      TabOrder = 6
      Values.Strings = (
        '0'
        '1'
        '2'
        '3')
      OnChange = DBRadioGroup1Change
    end
    object dt1: TJvDatePickerEdit
      Left = 530
      Top = 68
      Width = 98
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 7
      OnKeyPress = FormKeyPress
    end
    object Edit1: TEdit
      Left = 200
      Top = 0
      Width = 81
      Height = 21
      TabOrder = 8
      Text = 'Edit1'
      Visible = False
    end
    object Edit2: TEdit
      Left = 384
      Top = 0
      Width = 121
      Height = 21
      TabOrder = 9
      Text = 'Edit2'
      Visible = False
    end
    object JvDBSearchComboBox1: TJvDBSearchComboBox
      Left = 8
      Top = 68
      Width = 233
      Height = 24
      DataField = 'DESCRICAO'
      DataSource = dtsexame
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object cbRG: TJvDBSearchComboBox
      Left = 510
      Top = 23
      Width = 139
      Height = 24
      DataField = 'INSCESTADUAL'
      DataSource = dsClienteBusca
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 10
      Text = 'ABEL RODRIGUES DE CAMPOS'
      OnKeyPress = FormKeyPress
    end
    object cbSerie: TComboBox
      Left = 282
      Top = 0
      Width = 152
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 11
      OnClick = cbSerieClick
      Items.Strings = (
        'ASH'
        'PCMSO'
        'PARTICULAR')
    end
    object DBEdit1: TDBEdit
      Left = 560
      Top = 112
      Width = 209
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FORMAPGTO'
      DataSource = DtSrc
      TabOrder = 12
    end
    object DATAHJ: TJvDatePickerEdit
      Left = 698
      Top = 92
      Width = 98
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 13
      Visible = False
      OnKeyPress = FormKeyPress
    end
  end
  object JvDBGrid2: TJvDBGrid [8]
    Left = 13
    Top = 176
    Width = 788
    Height = 353
    DataSource = dsVER
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = JvDBGrid2DrawColumnCell
    AlternateRowColor = clInfoBk
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'TIPOEXAME'
        Title.Caption = 'Exame'
        Width = 197
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'Solicitante'
        Width = 197
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATASOLICITACAO'
        Title.Caption = 'Solicitado'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Title.Caption = 'Situa'#231#227'o'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEVOLUCAO'
        Title.Caption = 'Devolu'#231#227'o'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPRESSO'
        Title.Caption = 'Recebido'
        Width = 71
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = DMSaude.cdsExame
  end
  inherited PopupMenu1: TPopupMenu
    Left = 528
    Top = 64
    inherited Procurar1: TMenuItem
      OnClick = btnProcurarClick
    end
  end
  object sdsClienteBusca: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, RA , GRUPO_CLIENTE,' +
      ' INSCESTADUAL from CLIENTES where  STATUS = 0 '#13#10'ORDER BY NOMECLI' +
      'ENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 304
    Top = 72
  end
  object dspBuscaCliente: TDataSetProvider
    DataSet = sdsClienteBusca
    Options = [poAllowCommandText]
    Left = 352
    Top = 48
  end
  object cdsClienteBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBuscaCliente'
    Left = 384
    Top = 64
    object cdsClienteBuscaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClienteBuscaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsClienteBuscaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsClienteBuscaGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object cdsClienteBuscaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
  end
  object dsClienteBusca: TDataSource
    DataSet = cdsClienteBusca
    Left = 424
    Top = 64
  end
  object sdsMedico: TSQLDataSet
    CommandText = 'select COD_REPRFOR, NOME_REPRFOR, FUNCAO from REPR_FORNECEDOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 80
    Top = 48
  end
  object dspMedico: TDataSetProvider
    DataSet = sdsMedico
    Left = 120
    Top = 32
  end
  object cdsMedico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMedico'
    Left = 152
    Top = 32
    object cdsMedicoCOD_REPRFOR: TIntegerField
      FieldName = 'COD_REPRFOR'
      Required = True
    end
    object cdsMedicoNOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      Size = 60
    end
    object cdsMedicoFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
  end
  object dsMedico: TDataSource
    DataSet = cdsMedico
    Left = 176
    Top = 88
  end
  object sdsexame: TSQLDataSet
    CommandText = 'select * from DADOS_COMBOS '#13#10'where USO = :tipo and UNICO <> '#39'0'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 184
    Top = 336
  end
  object dstexame: TDataSetProvider
    DataSet = sdsexame
    Options = [poAllowCommandText]
    Left = 216
    Top = 336
  end
  object cdsexame: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    ProviderName = 'dstexame'
    Left = 248
    Top = 336
    object cdsexameCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsexameDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cdsexameUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object cdsexameCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object cdsexameOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
    object cdsexameCODHOS: TIntegerField
      FieldName = 'CODHOS'
    end
    object cdsexameDIVERSOS: TStringField
      FieldName = 'DIVERSOS'
      Size = 50
    end
  end
  object dtsexame: TDataSource
    DataSet = cdsexame
    Left = 280
    Top = 336
  end
  object procMedico: TSQLDataSet
    CommandText = 'select COD_REPRFOR, NOME_REPRFOR, FUNCAO from REPR_FORNECEDOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 224
    Top = 264
    object procMedicoCOD_REPRFOR: TIntegerField
      FieldName = 'COD_REPRFOR'
      Required = True
    end
    object procMedicoNOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      Size = 60
    end
    object procMedicoFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
  end
  object sqlq: TSQLDataSet
    CommandText = 
      'select DESCRICAO , OUTROS , DIVERSOS  from DADOS_COMBOS '#13#10'where ' +
      'USO = '#39'EXAMES'#39' and  DESCRICAO =:tipo '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 368
    Top = 320
  end
  object dspq: TDataSetProvider
    DataSet = sqlq
    Left = 416
    Top = 312
  end
  object cdsq: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    ProviderName = 'dspq'
    Left = 480
    Top = 312
    object cdsqDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cdsqOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
    object cdsqDIVERSOS: TStringField
      FieldName = 'DIVERSOS'
      Size = 50
    end
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 768
    Top = 88
  end
  object sqlEmpresa: TSQLDataSet
    CommandText = 'select CODIGO_CONTA , DIVERSOS2 , DIVERSOS3 from EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 312
    Top = 240
    object sqlEmpresaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object sqlEmpresaDIVERSOS3: TStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object sqlEmpresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sqlEmpresa
    Left = 392
    Top = 240
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 488
    Top = 240
    object cdsEmpresaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object cdsEmpresaDIVERSOS3: TStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object cdsEmpresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
  end
  object dsEmpresa: TDataSource
    Left = 536
    Top = 240
  end
  object cdsEX: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'po'
        ParamType = ptInput
      end>
    ProviderName = 'dspEX'
    Left = 440
    Top = 480
    object cdsEXCODEXAME: TIntegerField
      FieldName = 'CODEXAME'
      Required = True
    end
  end
  object dspEX: TDataSetProvider
    DataSet = sqlEX
    Left = 400
    Top = 480
  end
  object sqlEX: TSQLDataSet
    CommandText = 
      'select codexame , codcliente from labexame  '#13#10'         where ori' +
      'gem = :po and situacao ='#39'EXCLUIDO'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'po'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 360
    Top = 480
  end
  object sqlVER: TSQLDataSet
    CommandText = 
      'select labe.*, cli.NOMECLIENTE from labexame labe , CLIENTES cli' +
      ' where cli.CODCLIENTE = labe.CODCLIENTE and origem = :porigem'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'porigem'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 616
    Top = 376
    object sqlVERCODEXAME: TIntegerField
      FieldName = 'CODEXAME'
      Required = True
    end
    object sqlVERDATASOLICITACAO: TDateField
      FieldName = 'DATASOLICITACAO'
    end
    object sqlVERDATAENTREGAMATERIAL: TDateField
      FieldName = 'DATAENTREGAMATERIAL'
    end
    object sqlVERDATAPREVISTAENTREGA: TDateField
      FieldName = 'DATAPREVISTAENTREGA'
    end
    object sqlVERDATALAUDOEXAME: TDateField
      FieldName = 'DATALAUDOEXAME'
    end
    object sqlVERDATARETIRADA: TDateField
      FieldName = 'DATARETIRADA'
    end
    object sqlVERCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sqlVERTIPOEXAME: TStringField
      FieldName = 'TIPOEXAME'
      Size = 100
    end
    object sqlVERMEDICOSOLICITANTE: TIntegerField
      FieldName = 'MEDICOSOLICITANTE'
    end
    object sqlVERCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 50
    end
    object sqlVERVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sqlVERSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object sqlVERMATERIALRECEBIDO: TStringField
      FieldName = 'MATERIALRECEBIDO'
      FixedChar = True
      Size = 1
    end
    object sqlVERCOBRANCA: TStringField
      FieldName = 'COBRANCA'
      FixedChar = True
      Size = 1
    end
    object sqlVERUNICO: TStringField
      FieldName = 'UNICO'
      FixedChar = True
      Size = 1
    end
    object sqlVERNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sqlVERIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 3
    end
    object sqlVERDEVOLUCAO: TFloatField
      FieldName = 'DEVOLUCAO'
    end
    object sqlVERDATADEV: TDateField
      FieldName = 'DATADEV'
    end
    object sqlVERFORMAPGTO: TStringField
      FieldName = 'FORMAPGTO'
      Size = 30
    end
    object sqlVERORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object sqlVERDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
    end
    object sqlVERINCLUIU: TStringField
      FieldName = 'INCLUIU'
      Size = 30
    end
    object sqlVERCANCELA: TStringField
      FieldName = 'CANCELA'
      Size = 30
    end
    object sqlVERDEVOLVE: TStringField
      FieldName = 'DEVOLVE'
      Size = 30
    end
    object sqlVERRECEBEU: TStringField
      FieldName = 'RECEBEU'
      Size = 30
    end
    object sqlVERNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object dspVER: TDataSetProvider
    DataSet = sqlVER
    Left = 616
    Top = 424
  end
  object cdsVER: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'porigem'
        ParamType = ptInput
      end>
    ProviderName = 'dspVER'
    Left = 616
    Top = 472
    object cdsVERCODEXAME: TIntegerField
      FieldName = 'CODEXAME'
      Required = True
    end
    object cdsVERDATASOLICITACAO: TDateField
      FieldName = 'DATASOLICITACAO'
    end
    object cdsVERDATAENTREGAMATERIAL: TDateField
      FieldName = 'DATAENTREGAMATERIAL'
    end
    object cdsVERDATAPREVISTAENTREGA: TDateField
      FieldName = 'DATAPREVISTAENTREGA'
    end
    object cdsVERDATALAUDOEXAME: TDateField
      FieldName = 'DATALAUDOEXAME'
    end
    object cdsVERDATARETIRADA: TDateField
      FieldName = 'DATARETIRADA'
    end
    object cdsVERCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsVERTIPOEXAME: TStringField
      FieldName = 'TIPOEXAME'
      Size = 100
    end
    object cdsVERMEDICOSOLICITANTE: TIntegerField
      FieldName = 'MEDICOSOLICITANTE'
    end
    object cdsVERCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 50
    end
    object cdsVERVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsVERSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object cdsVERMATERIALRECEBIDO: TStringField
      FieldName = 'MATERIALRECEBIDO'
      FixedChar = True
      Size = 1
    end
    object cdsVERNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsVERCOBRANCA: TStringField
      FieldName = 'COBRANCA'
      FixedChar = True
      Size = 1
    end
    object cdsVERUNICO: TStringField
      FieldName = 'UNICO'
      FixedChar = True
      Size = 1
    end
    object cdsVERNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsVERIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 3
    end
    object cdsVERDEVOLUCAO: TFloatField
      FieldName = 'DEVOLUCAO'
    end
    object cdsVERFORMAPGTO: TStringField
      FieldName = 'FORMAPGTO'
      Size = 30
    end
    object cdsVERORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object cdsVERDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
    end
    object cdsVERINCLUIU: TStringField
      FieldName = 'INCLUIU'
      Size = 30
    end
    object cdsVERCANCELA: TStringField
      FieldName = 'CANCELA'
      Size = 30
    end
    object cdsVERDEVOLVE: TStringField
      FieldName = 'DEVOLVE'
      Size = 30
    end
    object cdsVERRECEBEU: TStringField
      FieldName = 'RECEBEU'
      Size = 30
    end
  end
  object dsVER: TDataSource
    DataSet = cdsVER
    Left = 584
    Top = 472
  end
end
