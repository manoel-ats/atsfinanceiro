inherited fFamiliaP: TfFamiliaP
  Left = 330
  Top = 111
  Width = 583
  Height = 528
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 42
    Top = 54
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label4: TLabel [1]
    Left = 339
    Top = 53
    Width = 24
    Height = 13
    Caption = 'Valor'
    Visible = False
  end
  inherited MMJPanel1: TMMJPanel
    Top = 447
    Width = 575
    inherited btnGravar: TBitBtn
      Left = 77
    end
    inherited btnIncluir: TBitBtn
      Left = 77
    end
    inherited btnCancelar: TBitBtn
      Left = 190
    end
    inherited btnExcluir: TBitBtn
      Left = 190
    end
    inherited btnProcurar: TBitBtn
      Left = 26
      Top = -50
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 303
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 575
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    TabOrder = 2
    inherited Label1: TLabel
      Left = 45
      Top = -68
      Width = 359
      Height = 44
      Caption = 'Cadastro de Grupos'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 49
      Top = -67
      Width = 359
      Height = 44
      Caption = 'Cadastro de Grupos'
      Font.Name = 'Cooper Black'
    end
    object JvLabel1: TJvLabel
      Left = 1
      Top = 1
      Width = 573
      Height = 52
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cad. de Exames Previs'#227'o'
      ShadowColor = clNavy
      ShadowSize = 4
      Transparent = True
      AutoOpenURL = False
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -32
      HotTrackFont.Name = 'Cooper Blk BT'
      HotTrackFont.Style = []
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 40
    Top = 67
    Width = 297
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBGrid1: TDBGrid [5]
    Left = 40
    Top = 94
    Width = 401
    Height = 314
    DataSource = DtSrc
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 281
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OUTROS'
        Title.Caption = 'VALOR'
        Width = 59
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator [6]
    Left = 146
    Top = 416
    Width = 224
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 4
  end
  object DBEdit2: TDBEdit [7]
    Left = 336
    Top = 67
    Width = 89
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'OUTROS'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  inherited PopupMenu1: TPopupMenu
    Left = 400
    Top = 24
  end
  inherited DtSrc: TDataSource
    DataSet = ClientDataSet1
    Left = 184
    Top = 40
  end
  inherited XPMenu1: TXPMenu
    Left = 264
    Top = 40
  end
  object dsMarca: TDataSource
    DataSet = ClientDataSet1
    Left = 8
    Top = 168
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 232
    Top = 198
    object ClientDataSet1CODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object ClientDataSet1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object ClientDataSet1USO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object ClientDataSet1OUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText]
    Left = 184
    Top = 198
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select CODDADOS, DESCRICAO, USO,  OUTROS from DADOS_COMBOS where' +
      ' USO = '#39'PREVISAO'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 136
    Top = 198
    object SQLDataSet1CODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object SQLDataSet1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object SQLDataSet1USO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object SQLDataSet1OUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
  end
end
