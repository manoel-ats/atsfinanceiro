object fLogs: TfLogs
  Left = 192
  Top = 107
  Width = 696
  Height = 480
  BorderIcons = [biSystemMenu]
  Caption = 'fLogs'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBMemo1: TDBMemo
    Left = 456
    Top = 89
    Width = 232
    Height = 364
    Align = alRight
    BevelKind = bkFlat
    BorderStyle = bsNone
    Ctl3D = False
    DataField = 'DATA_SET'
    DataSource = DataSource1
    ParentCtl3D = False
    TabOrder = 0
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 89
    Width = 456
    Height = 364
    Align = alLeft
    Ctl3D = False
    DataSource = DataSource1
    FixedColor = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Caption = 'Usu'#225'rio'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MICRO'
        Title.Caption = 'Micro'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TABELA'
        Title.Caption = 'Tabela'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Title.Caption = 'Hora'
        Visible = True
      end>
  end
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 89
    Align = alTop
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 2
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clBackground
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 53
      Top = 16
      Width = 40
      Height = 13
      Caption = 'Tabela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 40
      Width = 85
      Height = 13
      Caption = 'Modificado por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 61
      Top = 63
      Width = 32
      Height = 13
      Caption = 'Micro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Panel1: TPanel
      Left = 216
      Top = 6
      Width = 233
      Height = 71
      TabOrder = 3
      object Label8: TLabel
        Left = 16
        Top = 21
        Width = 12
        Height = 13
        Caption = 'de'
      end
      object Label9: TLabel
        Left = 121
        Top = 20
        Width = 6
        Height = 13
        Caption = 'a'
      end
      object CheckBox1: TCheckBox
        Left = 80
        Top = 2
        Width = 73
        Height = 17
        Caption = 'Por data'
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object Data1: TDateEdit
        Left = 14
        Top = 35
        Width = 98
        Height = 25
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
      end
      object Data2: TDateEdit
        Left = 120
        Top = 35
        Width = 98
        Height = 25
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
      end
    end
    object cbTabela: TComboBox
      Left = 95
      Top = 8
      Width = 105
      Height = 21
      BevelKind = bkFlat
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
    end
    object cbUsuario: TComboBox
      Left = 95
      Top = 32
      Width = 105
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      TabOrder = 1
    end
    object cbMicro: TComboBox
      Left = 95
      Top = 56
      Width = 105
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 464
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Procurar'
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFAE4D9CAB9B066766F648F
        92B7C4DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFF949EB670667DAD8DA070545A777E77FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFF78A9DB668CC27F75A4B48195725F4A779F76AECCB9FFF2FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFACE2FF
        6CC3FB3A8ACB697DACA886917C574993807BD0C6D6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFE7FAFF99D6FE59C1FF1A77
        C2757DB8B376987F5B697B9A9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFF7FBF2FFA8D4FF5BB8FF377AC98A8BC773
        708058816C837F6D8883747B786A726D64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFE3EFFBA0D3FB7FBFFF4972A9848D96928866A99E80
        CBC0A4CCC1ABAFA796867F765D5855FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFE4FFEED7EDEBC8DCFFA9C2EE938688FFC8A0FEEEC9FFFBD7FFF6DAFFFF
        EBF1E9DC8C8784625F61FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF7F8DBC9B8D8C4A1FFF6C7F8F6AFFEFCDDFBFDFFEAEBF9F1F3EDF4F7DE60
        61517E8080FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5D2C3B0F6
        E4BFF6E2B2FFFBBAFBFAD8F6F7F3FDFFFFFFFFF1FFFFEA908B7C7E797BFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9BCA6FFFFD9E7D8A7FCF7C0
        FFFFD9F8F9E5FFFFEEFDFAD4FFF9D4AEA493796D73FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC3BBA4FFFBD7F3E6B8F6EDC1FFFCD5FDFED7FFFE
        D2FFF9C7FFFED7BEAE9E8A7C82FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFCBC5B2EADFC3FFFEDCF3E5C1E8E1BAEFECBFF9F1BCFFFFCFFFF5D1AA
        998CA99EA1FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2DBD2D9
        CEC0FFFFEEFFFDE0F2E6C2FAF2C3FAEBBAFBE2BAD3B9A1968A80DBDCDAFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF6F7E4D8D6F3E4E2FFF8DF
        FCEBCAFFF1C7F8E1BBE3C4ABC8AEA2CCC4BDF6FFFBFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFCFFF8EBF3D5C4CDC5AD95C6B392C8B590D7BB
        9DDEBBAEF4D9D5FFFFFBFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
    end
    object BitBtn2: TBitBtn
      Left = 552
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 5
      OnClick = BitBtn2Click
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B803000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF8484848484848484848484
        84848484848484848484848484848484848484FF00FFC6C6C6848484C6C6C6FF
        00FFC6C6C6FF00FF0000FF00FF84848484848484848484848484848484848484
        8484848484848484848484848484FFFFFF848484FFFFFF848484FF00FFFF00FF
        0000FF00FFA376007F5B007F5B007F5B004B4B4B4B4B4B848484848484848484
        FFFFFFFFFFFFFFFFFF7F5B007F5B007F5B00A37600FF00FF0000FF00FFFF00FF
        FF00FFFF00FF7F5B00A37600A376004B4B4B4B4B4B848484FFFFFFFFFFFFFFFF
        FF7F5B00FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF7F5B
        00A37600A37600A376004B4B4BFFFFFFFFFFFFFFFFFFFFFFFF7F5B00FF00FFFF
        00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF7F5B00A37600A37600A3
        76004B4B4BFFFFFFFFFFFFFFFFFFFFFFFF7F5B00FF00FFFF00FFFF00FFFF00FF
        0000FF00FFFF00FFFF00FFFF00FF7F5B00A37600A37600A376004B4B4BFFFFDF
        FFFF80F7EF70FFFF007F5B00FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
        FF00FFFF00FF7F5B00A37600A37600A376004B4B4BFFFF80FFFF80FFFF80FFFF
        807F5B00FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF7F5B
        00A37600A37600A376004B4B4BFFFF80FFFF80FFFF80FFFF807F5B00FF00FFFF
        00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF7F5B00A37600A37600A3
        76004B4B4BFFFF00FFFF80FFFF80FFFFDF7F5B00FF00FFFF00FFFF00FFFF00FF
        0000FF00FFFF00FFFF00FFFF00FFA376007F5B007F5B007F5B007F5B007F5B00
        7F5B007F5B007F5B00A37600FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF6F6F6F4B4B4B4B4B4B4B4B4B4B4B4B6F6F6FFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4B4B4B00
        DF0000DF0000DF0000DF004B4B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6F6F6F4B4B4B4B4B4B4B4B4B
        4B4B4B6F6F6FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0000}
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsLog
    Left = 240
    Top = 208
  end
  object sdsTabela: TSQLDataSet
    CommandText = 'select distinct TABELA from LOGS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 168
    Top = 168
    object sdsTabelaTABELA: TStringField
      FieldName = 'TABELA'
      Size = 80
    end
  end
  object sdsUsuario: TSQLDataSet
    CommandText = 'select distinct USUARIO from LOGS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 200
    Top = 168
    object sdsUsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 80
    end
  end
  object sdsMicro: TSQLDataSet
    CommandText = 'select distinct MICRO from LOGS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 240
    Top = 168
    object sdsMicroMICRO: TStringField
      FieldName = 'MICRO'
      Size = 50
    end
  end
  object sdsLog: TSQLDataSet
    CommandText = 'select * from LOGS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 144
    Top = 208
    object sdsLogID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      Required = True
    end
    object sdsLogTABELA: TStringField
      FieldName = 'TABELA'
      Size = 80
    end
    object sdsLogDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsLogUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 80
    end
    object sdsLogMICRO: TStringField
      FieldName = 'MICRO'
      Size = 50
    end
    object sdsLogHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsLogCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Size = 50
    end
    object sdsLogCAMPO2: TStringField
      FieldName = 'CAMPO2'
      Size = 50
    end
    object sdsLogCAMPO3: TStringField
      FieldName = 'CAMPO3'
      Size = 50
    end
    object sdsLogCAMPO4: TStringField
      FieldName = 'CAMPO4'
      Size = 50
    end
    object sdsLogDATA_SET: TMemoField
      FieldName = 'DATA_SET'
      BlobType = ftMemo
    end
  end
  object dspLog: TDataSetProvider
    DataSet = sdsLog
    Options = [poAllowCommandText]
    Left = 176
    Top = 208
  end
  object cdsLog: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLog'
    Left = 208
    Top = 208
    object cdsLogID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLogTABELA: TStringField
      FieldName = 'TABELA'
      Size = 80
    end
    object cdsLogDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsLogUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 80
    end
    object cdsLogMICRO: TStringField
      FieldName = 'MICRO'
      Size = 50
    end
    object cdsLogHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsLogCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Size = 50
    end
    object cdsLogCAMPO2: TStringField
      FieldName = 'CAMPO2'
      Size = 50
    end
    object cdsLogCAMPO3: TStringField
      FieldName = 'CAMPO3'
      Size = 50
    end
    object cdsLogCAMPO4: TStringField
      FieldName = 'CAMPO4'
      Size = 50
    end
    object cdsLogDATA_SET: TMemoField
      FieldName = 'DATA_SET'
      BlobType = ftMemo
    end
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    DrawMenuBar = False
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    AutoDetect = True
    Active = True
    Left = 280
    Top = 176
  end
end
