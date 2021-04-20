inherited fCategoria: TfCategoria
  Left = 5
  Top = 32
  Width = 697
  Height = 490
  OldCreateOrder = True
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 9
    Top = 69
    Width = 72
    Height = 13
    Caption = 'Familia / Grupo'
  end
  object Label4: TLabel [1]
    Left = 353
    Top = 69
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 402
    Width = 689
    inherited btnGravar: TBitBtn
      Left = 180
    end
    inherited btnIncluir: TBitBtn
      Left = 180
    end
    inherited btnCancelar: TBitBtn
      Left = 293
    end
    inherited btnExcluir: TBitBtn
      Left = 293
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Top = -47
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 406
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 689
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Left = 115
      Top = -68
      Width = 419
      Height = 44
      Caption = 'Cadastro de Categorias'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 119
      Top = -67
      Width = 419
      Height = 44
      Caption = 'Cadastro de Categorias'
      Font.Name = 'Cooper Black'
    end
    object JvLabel1: TJvLabel
      Left = 1
      Top = 1
      Width = 687
      Height = 52
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cadastro de Categorias'
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
  object ComboBox1: TComboBox [4]
    Left = 9
    Top = 85
    Width = 344
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
    OnKeyPress = FormKeyPress
  end
  object DBEdit1: TDBEdit [5]
    Left = 353
    Top = 85
    Width = 328
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'DESCCATEGORIA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [6]
    Left = 8
    Top = 110
    Width = 673
    Height = 251
    TabStop = False
    DataSource = DtSrc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCCATEGORIA'
        Title.Caption = 'Descri'#231#227'o da Categoria'
        Width = 600
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator [7]
    Left = 232
    Top = 368
    Width = 224
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 5
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_categoria
  end
  object DataSource1: TDataSource
    DataSet = DM.cds_familia
    Left = 544
    Top = 8
  end
  object cds_familia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_familia'
    Left = 204
    Top = 232
    object cds_familiaDESCFAMILIA: TStringField
      FieldName = 'DESCFAMILIA'
      Required = True
      Size = 30
    end
    object cds_familiaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
  end
  object dsp_familia: TDataSetProvider
    DataSet = sds_familia
    Options = [poAllowCommandText]
    Left = 167
    Top = 232
  end
  object sds_familia: TSQLDataSet
    CommandText = 'select * from FAMILIAPRODUTOS '#13#10'where DESCFAMILIA = :pcod '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 131
    Top = 232
    object sds_familiaDESCFAMILIA: TStringField
      FieldName = 'DESCFAMILIA'
      Required = True
      Size = 30
    end
    object sds_familiaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
  end
end
