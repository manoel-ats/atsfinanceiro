inherited fLotes: TfLotes
  Left = 66
  Top = 74
  Width = 712
  Height = 491
  Caption = 'Lotes'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 8
    Top = 60
    Width = 37
    Height = 13
    Caption = 'Produto'
  end
  object Label4: TLabel [1]
    Left = 128
    Top = 61
    Width = 21
    Height = 13
    Caption = 'Lote'
  end
  object Label5: TLabel [2]
    Left = 442
    Top = 61
    Width = 79
    Height = 13
    Caption = 'Data Fabrica'#231#227'o'
  end
  object Label6: TLabel [3]
    Left = 527
    Top = 61
    Width = 63
    Height = 13
    Caption = 'Data Vencto.'
  end
  object Label7: TLabel [4]
    Left = 608
    Top = 61
    Width = 68
    Height = 13
    Caption = 'Qtde. Estoque'
  end
  object Label8: TLabel [5]
    Left = 358
    Top = 61
    Width = 28
    Height = 13
    Caption = 'Pre'#231'o'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 403
    Width = 704
    TabOrder = 6
    inherited btnProcurar: TBitBtn
      Enabled = False
      OnClick = btnProcurarClick
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 704
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    TabOrder = 7
    inherited Label1: TLabel
      Left = 234
      Top = -79
      Width = 216
      Caption = 'Cad. de Lotes'
    end
    inherited Label2: TLabel
      Left = 238
      Top = -78
      Width = 216
      Caption = 'Cad. de Lotes'
    end
    object JvLabel1: TJvLabel
      Left = 1
      Top = 1
      Width = 702
      Height = 52
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cadastro de Lotes'
      ShadowColor = clNavy
      ShadowSize = 4
      Transparent = True
      AutoOpenURL = False
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -37
      HotTrackFont.Name = 'Cooper Blk BT'
      HotTrackFont.Style = []
    end
  end
  object DBEdit1: TDBEdit [8]
    Left = 8
    Top = 75
    Width = 80
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CODPRO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnExit = DBEdit1Exit
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [9]
    Left = 126
    Top = 75
    Width = 228
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'LOTE'
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
  object DBEdit3: TDBEdit [10]
    Left = 441
    Top = 75
    Width = 84
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DATAFABRICACAO'
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
  object DBEdit4: TDBEdit [11]
    Left = 526
    Top = 75
    Width = 80
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DATAVENCIMENTO'
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
  object btnProdutoProcura: TBitBtn [12]
    Left = 88
    Top = 73
    Width = 35
    Height = 26
    PopupMenu = PopupMenu1
    TabOrder = 8
    TabStop = False
    OnClick = btnProdutoProcuraClick
    Glyph.Data = {
      C2070000424DC20700000000000036000000280000001E000000150000000100
      1800000000008C070000120B0000120B00000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A01F70A01F80AF0070
      A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBF108FBF2F8FB00F0F0F0000001F4F600F7FB0
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0070A020AFDF3FCFFF50909FF0C090806F500000002F607FBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F70AF
      108FC03FCFFF3FCFFF50909FFFCF9FFFCF9F4F4030101F1F2F80B0BFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00609F1F9FCF3FCFFF1F9FCF3F
      CFFF4FCFFF50A0BFF0C090FFCF9FAF8F6F0000005F90B0BFBFBFBFBFBF005080
      2F80B000609FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0F7FB02FBFEF3FCFFF3FCFFF2090C070DFFF90E0
      FFAFE0FFAF9F80FFCF9FCFA080000000508FAF00609F409FC0609FB01F1F1F1F
      30400F70A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF108FC03FCFFF40CFFF5FD0FF7FDFFF409FC0AFE0FFD0F0FFE0F0FF
      EFEFF0A09080806F50304F5F308FBF80D0F07FDFFF5F8F9F9F8060000000102F
      3F00609FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF0070A01080
      BF4FD0FF6FD0FF8FDFFFA0E0FFC0EFFFBFE0F05F9FC0F0FFFFF0FFFFDFF0FFBF
      E0FF5FAFCF0F90C050C0EF50D0FF3FCFFF50909FFFCF9F6F5F400000000F5F80
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF0F7FAF30AFDF4FAFDF90E0FF
      AFEFFFCFEFFFDFF0FFEFFFFFF0FFFF2F9FC02F9FC060BFDF409FC00F8FB00070
      A000AFD030BFEF3FCFFF3FCFFF309FBFF0C090CFA0800000001F709FBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBF00609F90DFFF3F8FBFD0F0FFE0F0FFF0
      FFFFF0FFFFE0F0FFCFF0FF90D0EF1F9FCF00A0CF0090C000AFD00080B000AFD0
      20BFEF3FCFFF3FCFFF3FCFFF809080CFA0800000001F6F90BFBFBFBFBFBFBFBF
      BFBFBFBF0000BFBFBFBFBFBF00609FD0F0FF80BFD07FB0CFF0FFFFDFF0FFC0EF
      FFAFE0FF8FDFFF70DFFF50D0FF1FA0D00070AF0090C0007FAF00A0CF0F9FCF3F
      CFFF3FCFFF3FCFFF3FC0F050808000304F0070A0BFBFBFBFBFBFBFBFBFBFBFBF
      0000BFBFBFBFBFBF00609F8FBFD0D0E0F02F80AF207FAF60B0DF60BFDF60D0FF
      4FCFFF3FCFFF3FCFFF3FCFFF30C0FF1F9FD00090BF00A0CF00A0CF10A0D030C0
      FF1FAFDF1090C00070AF005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBF00609F00609FBFBFBFBFBFBF0F70A020A0D020A0DF20A0DF30
      C0FF3FCFFF3FCFFF3FCFFF3FCFFF30C0FF20A0DF006F9F0070A0005080BFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F7FAF20AFDF108FC01F9F
      CF109FD01090C0007FB0006F9F005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A0007FAF00609FBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0000}
  end
  object DBEdit5: TDBEdit [13]
    Left = 607
    Top = 75
    Width = 89
    Height = 24
    TabStop = False
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    DataField = 'ESTOQUE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [14]
    Left = 356
    Top = 75
    Width = 82
    Height = 24
    DataField = 'PRECO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBGrid1: TJvDBGrid [15]
    Left = 8
    Top = 101
    Width = 688
    Height = 297
    DataSource = DtSrc
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    AlternateRowColor = clMoneyGreen
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
        FieldName = 'LOTE'
        Title.Caption = 'Lote'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAFABRICACAO'
        Title.Caption = 'Data Fabrica'#231#227'o'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAVENCIMENTO'
        Title.Caption = 'Data Vencimento'
        Width = 122
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'ESTOQUE'
        Title.Alignment = taCenter
        Title.Caption = 'Estoque'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Produto'
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Title.Caption = 'Pre'#231'o'
        Width = 74
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cdslotes
    Left = 176
    Top = 24
  end
  object sdslote: TSQLDataSet
    CommandText = 
      'SELECT lote.*, prod.PRODUTO, prod.CODPRO FROM LOTES lote, PRODUT' +
      'OS prod WHERE prod.CODPRODUTO = lote.CODPRODUTO AND lote.CODPROD' +
      'UTO = :PPROD and lote.ESTOQUE > 0.009 '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PPROD'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 72
    Top = 24
    object sdsloteCODLOTE: TIntegerField
      FieldName = 'CODLOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsloteLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object sdsloteCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsloteDATAFABRICACAO: TDateField
      FieldName = 'DATAFABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsloteDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsloteESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdslotePRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 300
    end
    object sdsloteCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object sdslotePRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
  object dsplotes: TDataSetProvider
    DataSet = sdslote
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 24
  end
  object cdslotes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PPROD'
        ParamType = ptInput
      end>
    ProviderName = 'dsplotes'
    Left = 136
    Top = 24
    object cdslotesCODLOTE: TIntegerField
      FieldName = 'CODLOTE'
      Required = True
    end
    object cdslotesLOTE: TStringField
      FieldName = 'LOTE'
      Required = True
      Size = 200
    end
    object cdslotesCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cdslotesDATAFABRICACAO: TDateField
      FieldName = 'DATAFABRICACAO'
      EditMask = '!99/99/00;1;_'
    end
    object cdslotesDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      EditMask = '!99/99/00;1;_'
    end
    object cdslotesESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
    end
    object cdslotesPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object cdslotesCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdslotesPRECO: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
  end
end
