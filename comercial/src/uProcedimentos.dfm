inherited fProcedimentos: TfProcedimentos
  Left = 393
  Top = 87
  Width = 702
  Height = 522
  Caption = 'Procedimentos'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 305
    Top = 160
    Width = 70
    Height = 13
    Caption = 'Procedimentos'
  end
  object Label4: TLabel [1]
    Left = 305
    Top = 214
    Width = 78
    Height = 13
    Caption = 'Fator Moderador'
  end
  object Label5: TLabel [2]
    Left = 305
    Top = 246
    Width = 93
    Height = 13
    Caption = 'Ind'#237'ce de desconto'
  end
  object Label6: TLabel [3]
    Left = 305
    Top = 279
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label7: TLabel [4]
    Left = 305
    Top = 112
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label8: TLabel [5]
    Left = 304
    Top = 314
    Width = 87
    Height = 13
    Caption = 'Ordem impress'#227'o :'
  end
  object Label9: TLabel [6]
    Left = 11
    Top = 62
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label10: TLabel [7]
    Left = 74
    Top = 62
    Width = 65
    Height = 13
    Caption = 'Procedimento'
  end
  object Label11: TLabel [8]
    Left = 380
    Top = 113
    Width = 41
    Height = 13
    Caption = 'FAMILIA'
    FocusControl = DBEdit4
  end
  object Label12: TLabel [9]
    Left = 304
    Top = 378
    Width = 93
    Height = 13
    Caption = 'CONTA_DESPESA'
    FocusControl = DBEdit5
  end
  object Panel2: TPanel [10]
    Left = 426
    Top = 352
    Width = 267
    Height = 81
    TabOrder = 21
    object Label13: TLabel
      Left = 60
      Top = 6
      Width = 101
      Height = 13
      Caption = 'Periodo para Retorno'
    end
    object r4: TCheckBox
      Left = 5
      Top = 24
      Width = 57
      Height = 17
      Caption = '6 Meses'
      TabOrder = 0
    end
  end
  inherited MMJPanel1: TMMJPanel
    Top = 441
    Width = 694
    TabOrder = 6
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 694
    TabOrder = 7
    inherited Label1: TLabel
      Left = 96
      Width = 429
      Caption = 'Cadastro de Procedimentos'
    end
    inherited Label2: TLabel
      Left = 98
      Top = 8
      Width = 429
      Caption = 'Cadastro de Procedimentos'
    end
  end
  object JvDBGrid1: TJvDBGrid [13]
    Left = 8
    Top = 124
    Width = 289
    Height = 249
    DataSource = DtSrc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = JvDBGrid1CellClick
    OnDblClick = JvDBGrid1DblClick
    OnKeyDown = JvDBGrid1KeyUp
    OnKeyUp = JvDBGrid1KeyUp
    OnMouseDown = JvDBGrid1MouseDown
    OnMouseUp = JvDBGrid1MouseDown
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
        FieldName = 'CODPRO'
        Title.Caption = 'C'#243'digo'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Procedimentos'
        Width = 186
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit [14]
    Left = 305
    Top = 176
    Width = 321
    Height = 21
    DataField = 'PRODUTO'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object JvDBCalcEdit1: TJvDBCalcEdit [15]
    Left = 409
    Top = 214
    Width = 121
    Height = 21
    TabOrder = 2
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
    DataField = 'VALORUNITARIOATUAL'
    DataSource = DtSrc
  end
  object JvDBCalcEdit2: TJvDBCalcEdit [16]
    Left = 409
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
    DataField = 'ESTOQUEREPOSICAO'
    DataSource = DtSrc
  end
  object JvDBCalcEdit3: TJvDBCalcEdit [17]
    Left = 409
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 4
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
    DataField = 'VALOR_PRAZO'
    DataSource = DtSrc
  end
  object DBEdit2: TDBEdit [18]
    Left = 305
    Top = 129
    Width = 64
    Height = 21
    DataField = 'CODPRO'
    DataSource = DtSrc
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [19]
    Left = 408
    Top = 314
    Width = 61
    Height = 21
    DataField = 'PRO_COD'
    DataSource = DtSrc
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object rgAsh: TJvCheckBox [20]
    Left = 304
    Top = 346
    Width = 43
    Height = 17
    Caption = 'ASH'
    TabOrder = 9
    OnClick = rgAshClick
    LinkedControls = <>
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object rgPcmso: TJvCheckBox [21]
    Left = 360
    Top = 346
    Width = 59
    Height = 17
    Caption = 'PCMSO'
    TabOrder = 10
    OnClick = rgPcmsoClick
    LinkedControls = <>
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object JvDBSearchEdit2: TJvDBSearchComboBox [22]
    Left = 72
    Top = 77
    Width = 401
    Height = 21
    DataField = 'PRODUTO'
    DataSource = DtSrc
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 11
  end
  object JvDBSearchComboBox1: TJvDBSearchComboBox [23]
    Left = 8
    Top = 77
    Width = 57
    Height = 21
    DataField = 'CODPRO'
    DataSource = DtSrc
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 12
  end
  object DBEdit4: TDBEdit [24]
    Left = 380
    Top = 129
    Width = 245
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FAMILIA'
    DataSource = DtSrc
    TabOrder = 13
  end
  object DBEdit5: TDBEdit [25]
    Left = 304
    Top = 394
    Width = 105
    Height = 21
    DataField = 'CONTA_DESPESA'
    DataSource = DtSrc
    TabOrder = 14
  end
  object Panel1: TPanel [26]
    Left = 3
    Top = 104
    Width = 637
    Height = 8
    TabOrder = 15
  end
  object r1: TCheckBox [27]
    Left = 499
    Top = 376
    Width = 49
    Height = 17
    Caption = '1 Ano'
    TabOrder = 16
  end
  object r2: TCheckBox [28]
    Left = 562
    Top = 376
    Width = 57
    Height = 17
    Caption = '2 Anos'
    TabOrder = 17
  end
  object r3: TCheckBox [29]
    Left = 627
    Top = 376
    Width = 57
    Height = 17
    Caption = '3 Anos'
    TabOrder = 18
  end
  object btnprev: TButton [30]
    Left = 604
    Top = 401
    Width = 49
    Height = 17
    Caption = 'Incluir'
    TabOrder = 19
    OnClick = btnprevClick
  end
  object rgPrev: TJvCheckBox [31]
    Left = 448
    Top = 402
    Width = 148
    Height = 17
    Caption = 'Incluir Previs'#227'o de Exames'
    TabOrder = 20
    LinkedControls = <>
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  inherited DtSrc: TDataSource
    DataSet = cds
    OnDataChange = DtSrcDataChange
  end
  object sds: TSQLDataSet [34]
    CommandText = 
      'select CODPRODUTO, VALORUNITARIOATUAL, VALOR_PRAZO, ESTOQUEREPOS' +
      'ICAO, PRODUTO, CONTA_DESPESA, CODPRO, CONTA_RECEITA, CONTA_ESTOQ' +
      'UE, PRO_COD, TIPO , LOTES,FAMILIA , COD_COMISSAO from PRODUTOS o' +
      'rder by codproduto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 392
    Top = 8
  end
  object dsp: TDataSetProvider [35]
    DataSet = sds
    Left = 424
    Top = 8
  end
  object cds: TClientDataSet [36]
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 464
    Top = 8
    object cdsCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cdsVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object cdsESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
    end
    object cdsPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object cdsCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object cdsCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      Size = 15
    end
    object cdsCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      Size = 15
    end
    object cdsVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object cdsCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 15
    end
    object cdsTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object cdsLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object cdsFAMILIA: TStringField
      FieldName = 'FAMILIA'
      Size = 30
    end
    object cdsCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
  end
  object sdsProcConta: TSQLDataSet [37]
    CommandText = 'select conta, nome from plano where conta = :pconta'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pconta'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 561
    Top = 226
    object sdsProcContaCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object sdsProcContaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
  end
  inherited XPMenu1: TXPMenu
    Top = 132
  end
end
