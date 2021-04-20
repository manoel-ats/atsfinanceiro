inherited fClassificacaoFiscal: TfClassificacaoFiscal
  Width = 693
  Height = 483
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 16
    Top = 72
    Width = 94
    Height = 13
    Caption = 'Classifica'#231#227'o / CST'
  end
  object Label4: TLabel [1]
    Left = 288
    Top = 72
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 395
    Width = 685
    inherited btnGravar: TBitBtn
      Left = 179
    end
    inherited btnIncluir: TBitBtn
      Left = 179
    end
    inherited btnCancelar: TBitBtn
      Left = 292
    end
    inherited btnExcluir: TBitBtn
      Left = 292
    end
    inherited btnProcurar: TBitBtn
      Left = -77
      Top = -51
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 405
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 685
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -35
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Left = 156
      Top = -62
      Width = 355
      Height = 44
      Caption = 'Classifica'#231#227'o Fiscal'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 160
      Top = -58
      Width = 355
      Height = 44
      Caption = 'Classifica'#231#227'o Fiscal'
      Font.Name = 'Cooper Black'
    end
    object JvLabel1: TJvLabel
      Left = 1
      Top = 1
      Width = 683
      Height = 52
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Classifica'#231#227'o Fiscal'
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
    Left = 16
    Top = 86
    Width = 273
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'CLASSIFICAO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [5]
    Left = 288
    Top = 86
    Width = 377
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
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [6]
    Left = 16
    Top = 112
    Width = 649
    Height = 273
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
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
        FieldName = 'CLASSIFICAO'
        Title.Caption = 'Classifica'#231#227'o'
        Width = 260
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 360
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cds
    Left = 616
    Top = 56
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    Left = 584
    Top = 56
    object cdsCLASSIFICAO: TStringField
      FieldName = 'CLASSIFICAO'
      Required = True
      Size = 30
    end
    object cdsCODIGO_REDUZ: TStringField
      FieldName = 'CODIGO_REDUZ'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsTIPO_CLASSIFICA: TStringField
      FieldName = 'TIPO_CLASSIFICA'
      Size = 30
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Left = 552
    Top = 56
  end
  object sds: TSQLDataSet
    CommandText = 
      'select CLASSIFICAO, CODIGO_REDUZ, DESCRICAO, TIPO_CLASSIFICA fro' +
      'm CLASSIFICACAOFISCAL where TIPO_CLASSIFICA = :TIPO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 512
    Top = 56
    object sdsCLASSIFICAO: TStringField
      FieldName = 'CLASSIFICAO'
      Required = True
      Size = 30
    end
    object sdsCODIGO_REDUZ: TStringField
      FieldName = 'CODIGO_REDUZ'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsTIPO_CLASSIFICA: TStringField
      FieldName = 'TIPO_CLASSIFICA'
      Size = 30
    end
  end
end
