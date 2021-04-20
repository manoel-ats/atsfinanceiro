inherited fProdFornecedor: TfProdFornecedor
  Left = 233
  Top = 159
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Top = 0
    Height = 60
    Align = alTop
    inherited btnGravar: TBitBtn
      Left = 5
      Top = 2
      Width = 77
      Height = 55
      Layout = blGlyphTop
    end
    inherited btnIncluir: TBitBtn
      Left = 5
      Top = 2
      Width = 77
      Height = 55
      Layout = blGlyphTop
    end
    inherited btnCancelar: TBitBtn
      Left = 86
      Top = 2
      Width = 77
      Height = 55
      Layout = blGlyphTop
    end
    inherited btnExcluir: TBitBtn
      Left = 86
      Top = 2
      Width = 77
      Height = 55
      Layout = blGlyphTop
    end
    inherited btnProcurar: TBitBtn
      Left = 258
      Top = 3
      Width = 77
      Height = 55
      Visible = False
      Layout = blGlyphTop
    end
    inherited btnSair: TBitBtn
      Left = 167
      Top = 2
      Width = 77
      Height = 55
      Layout = blGlyphTop
    end
  end
  inherited MMJPanel2: TMMJPanel
    Top = 60
    Height = 354
    Align = alClient
    Font.Color = clWhite
    Font.Style = [fsBold]
    ParentFont = False
    inherited Label1: TLabel
      Top = -100
      Visible = False
    end
    inherited Label2: TLabel
      Top = -100
      Visible = False
    end
    object Label3: TLabel
      Left = 13
      Top = 9
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label4: TLabel
      Left = 493
      Top = 9
      Width = 21
      Height = 13
      Caption = 'Un.'
      Transparent = True
    end
    object Label5: TLabel
      Left = 528
      Top = 9
      Width = 78
      Height = 13
      Caption = 'Valor Unit'#225'rio'
      Transparent = True
    end
    object Label6: TLabel
      Left = 175
      Top = 9
      Width = 45
      Height = 13
      Caption = 'Produto'
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 12
      Top = 25
      Width = 121
      Height = 21
      DataField = 'CODIGO'
      DataSource = DtSrc
      TabOrder = 0
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 134
      Top = 22
      Width = 38
      Height = 25
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object DBEdit2: TDBEdit
      Left = 492
      Top = 25
      Width = 33
      Height = 21
      DataField = 'UNIDADE'
      DataSource = DtSrc
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 12
      Top = 47
      Width = 601
      Height = 260
      Color = clMenu
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Caption = 'Produto'
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADE'
          Title.Caption = 'UN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECOLISTA'
          Title.Caption = 'Valor'
          Visible = True
        end>
    end
    object DBEdit3: TDBEdit
      Left = 527
      Top = 25
      Width = 86
      Height = 21
      DataField = 'PRECOLISTA'
      DataSource = DtSrc
      TabOrder = 2
      OnExit = DBEdit3Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit4: TDBEdit
      Left = 174
      Top = 25
      Width = 315
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'PRODUTO'
      DataSource = DtSrc
      ReadOnly = True
      TabOrder = 5
    end
    object DBNavigator1: TDBNavigator
      Left = 192
      Top = 320
      Width = 224
      Height = 25
      DataSource = DtSrc
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cds
    Left = 192
    Top = 180
  end
  object sds: TSQLDataSet
    CommandText = 
      'select LISTA.CODLISTAPRECO, LISTA.UNIDADE, LISTA.CODPRODUTO, LIS' +
      'TA.CODFORNECEDOR, PROD.PRODUTO, LISTA.CODIGO, LISTA.PRECOLISTA f' +
      'rom LISTAPRECO LISTA, PRODUTOS PROD'#13#10'where PROD.CODPRODUTO = LIS' +
      'TA.CODPRODUTO AND lista.codFORNECEDOR = :forn'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'forn'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 96
    Top = 180
    object sdsCODLISTAPRECO: TIntegerField
      FieldName = 'CODLISTAPRECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sdsCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 300
    end
    object sdsCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsPRECOLISTA: TFloatField
      FieldName = 'PRECOLISTA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 180
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'forn'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    Left = 160
    Top = 180
    object cdsCODLISTAPRECO: TIntegerField
      FieldName = 'CODLISTAPRECO'
      Required = True
    end
    object cdsUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object cdsCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object cdsPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object cdsCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 15
    end
    object cdsPRECOLISTA: TFloatField
      FieldName = 'PRECOLISTA'
    end
  end
end
