inherited fEstado: TfEstado
  Width = 690
  Height = 484
  Font.Height = -13
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label3: TLabel [0]
    Left = 9
    Top = 55
    Width = 36
    Height = 16
    Caption = 'CFOP'
  end
  object Label4: TLabel [1]
    Left = 108
    Top = 55
    Width = 18
    Height = 16
    Caption = 'UF'
  end
  object Label8: TLabel [2]
    Left = 155
    Top = 55
    Width = 61
    Height = 16
    Caption = 'Aliq. ICMS'
  end
  object Label6: TLabel [3]
    Left = 221
    Top = 55
    Width = 74
    Height = 16
    Caption = 'Red.B. C'#225'lc.'
  end
  object Label7: TLabel [4]
    Left = 312
    Top = 55
    Width = 15
    Height = 16
    Caption = 'IPI'
  end
  object Label5: TLabel [5]
    Left = 9
    Top = 111
    Width = 86
    Height = 16
    Caption = 'Procura CFOP'
  end
  object Label9: TLabel [6]
    Left = 233
    Top = 111
    Width = 126
    Height = 16
    Caption = 'Procura CFOP Nome'
  end
  object Label10: TLabel [7]
    Left = 374
    Top = 55
    Width = 57
    Height = 16
    Caption = 'Sub. Trib.'
  end
  object Label11: TLabel [8]
    Left = 438
    Top = 55
    Width = 61
    Height = 16
    Caption = 'Perc. Sub.'
  end
  object Label12: TLabel [9]
    Left = 518
    Top = 55
    Width = 62
    Height = 16
    Caption = 'Perc. Icms'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 403
    Width = 682
    TabOrder = 8
    inherited btnIncluir: TBitBtn [0]
      Left = 180
    end
    inherited btnGravar: TBitBtn [1]
      Left = 180
    end
    inherited btnCancelar: TBitBtn
      Left = 293
    end
    inherited btnExcluir: TBitBtn
      Left = 293
    end
    inherited btnProcurar: TBitBtn
      Left = 66
      Caption = 'CFOP'
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 406
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 682
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    TabOrder = 9
    inherited Label1: TLabel
      Top = -74
    end
    inherited Label2: TLabel
      Top = -75
    end
    object DBText2: TDBText
      Left = 12
      Top = 9
      Width = 661
      Height = 41
      DataField = 'CFNOME'
      DataSource = DtSrc
      PopupMenu = PopupMenu1
      Transparent = True
    end
  end
  object DBEdit1: TDBEdit [12]
    Left = 8
    Top = 71
    Width = 97
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'CFOP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [13]
    Left = 107
    Top = 71
    Width = 38
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [14]
    Left = 153
    Top = 71
    Width = 64
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ICMS'
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
  object DBGrid1: TDBGrid [15]
    Left = 8
    Top = 130
    Width = 673
    Height = 264
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CFOP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFNOME'
        Title.Caption = 'CFOP - Nome'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REDUCAO'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IPI'
        Width = 80
        Visible = True
      end>
  end
  object DBEdit4: TDBEdit [16]
    Left = 221
    Top = 71
    Width = 84
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'REDUCAO'
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
  object DBEdit5: TDBEdit [17]
    Left = 308
    Top = 71
    Width = 57
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'IPI'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [18]
    Left = 372
    Top = 71
    Width = 61
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ICMS_SUBSTRIB'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit [19]
    Left = 436
    Top = 71
    Width = 69
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ICMS_SUBSTRIB_IC'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit8: TDBEdit [20]
    Left = 516
    Top = 71
    Width = 69
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ICMS_SUBSTRIB_IND'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = cds_estado
    Left = 408
  end
  object sds: TSQLDataSet
    CommandText = 
      'select esta.CFOP'#13#10'        , esta.UF'#13#10'        , esta.ICMS'#13#10'      ' +
      '  , esta.REDUCAO'#13#10'        , cfo.CFNOME'#13#10'        , esta.IPI , est' +
      'a.ICMS_SUBSTRIB, esta.ICMS_SUBSTRIB_IC'#13#10', esta.ICMS_SUBSTRIB_IND' +
      #13#10'FROM ESTADO_ICMS esta '#13#10'left outer join CFOP cfo on cfo.CFCOD ' +
      '= esta.CFOP '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 288
    Top = 8
    object sdsUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 3
    end
    object sdsICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object sdsCFNOME: TStringField
      FieldName = 'CFNOME'
      ProviderFlags = []
      Size = 250
    end
    object sdsIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCFOP: TStringField
      DisplayWidth = 30
      FieldName = 'CFOP'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sdsICMS_SUBSTRIB: TFloatField
      FieldName = 'ICMS_SUBSTRIB'
    end
    object sdsICMS_SUBSTRIB_IC: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IC'
    end
    object sdsICMS_SUBSTRIB_IND: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IND'
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Left = 328
    Top = 8
  end
  object cds_estado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    OnPostError = cds_estadoPostError
    OnReconcileError = cds_estadoReconcileError
    Left = 368
    Top = 8
    object cds_estadoCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_estadoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 3
    end
    object cds_estadoICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cds_estadoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_estadoCFNOME: TStringField
      FieldName = 'CFNOME'
      ProviderFlags = []
      Size = 250
    end
    object cds_estadoIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cds_estadoICMS_SUBSTRIB: TFloatField
      FieldName = 'ICMS_SUBSTRIB'
    end
    object cds_estadoICMS_SUBSTRIB_IC: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IC'
    end
    object cds_estadoICMS_SUBSTRIB_IND: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IND'
    end
  end
end
