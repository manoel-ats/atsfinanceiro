object fRelPcmo: TfRelPcmo
  Left = 404
  Top = 189
  Width = 495
  Height = 457
  BorderIcons = [biSystemMenu]
  Caption = 'fRelPcmo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 76
    Top = 37
    Width = 58
    Height = 13
    Caption = 'EMPRESA :'
  end
  object Label2: TLabel
    Left = 4
    Top = 37
    Width = 42
    Height = 13
    Caption = 'CODIGO'
  end
  object lbl1: TLabel
    Left = 16
    Top = 120
    Width = 16
    Height = 13
    Caption = 'lbl1'
  end
  object lbl2: TLabel
    Left = 136
    Top = 23
    Width = 182
    Height = 13
    Caption = 'Funcionarios no dia Gerou a Cobran'#231'a'
  end
  object lbl3: TLabel
    Left = 48
    Top = 120
    Width = 90
    Height = 13
    Caption = ': Empresas Ativas  '
  end
  object lbl4: TLabel
    Left = 64
    Top = 3
    Width = 202
    Height = 16
    Caption = 'Dia Vencimento da Mensalidade :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object bvl1: TBevel
    Left = 8
    Top = 256
    Width = 457
    Height = 169
    Shape = bsFrame
  end
  object lbl5: TLabel
    Left = 155
    Top = 259
    Width = 175
    Height = 20
    Caption = 'FUNCIONARIOS ATIVO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 25
    Top = 287
    Width = 118
    Height = 13
    Caption = 'DATA CADASTRO   DE:'
  end
  object Label4: TLabel
    Left = 60
    Top = 327
    Width = 21
    Height = 13
    Caption = 'AT'#200
  end
  object Bevel1: TBevel
    Left = 16
    Top = 280
    Width = 145
    Height = 134
  end
  object Label5: TLabel
    Left = 224
    Top = 286
    Width = 35
    Height = 13
    Caption = 'ATUAL'
  end
  object BitBtn1: TBitBtn
    Left = 9
    Top = 79
    Width = 75
    Height = 33
    Caption = 'IMPRIMIR '
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object JvDBSearchEdit2: TJvDBSearchComboBox
    Left = 75
    Top = 52
    Width = 374
    Height = 21
    DataField = 'RAZAOSOCIAL'
    DataSource = DataSource1
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 1
    Text = 'ACALANTO JARDIM DE INF'#194'NCIA LTDA-ME'
  end
  object BitBtn2: TBitBtn
    Left = 89
    Top = 80
    Width = 100
    Height = 32
    Caption = 'IMPRIMIR TODAS'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object JvDBSearchComboBox1: TJvDBSearchComboBox
    Left = 6
    Top = 52
    Width = 65
    Height = 21
    DataField = 'RA'
    DataSource = DataSource1
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 3
    Text = '10261'
  end
  object BitBtn3: TBitBtn
    Left = 288
    Top = 80
    Width = 67
    Height = 32
    Caption = 'Gerar PDF'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object mmo1: TMemo
    Left = 8
    Top = 136
    Width = 457
    Height = 113
    TabOrder = 5
  end
  object edt1: TEdit
    Left = 47
    Top = -11
    Width = 73
    Height = 21
    Color = clYellow
    ReadOnly = True
    TabOrder = 6
    Visible = False
  end
  object datavenc: TJvDateEdit
    Left = 273
    Top = 1
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object BitBtn4: TBitBtn
    Left = 185
    Top = 352
    Width = 129
    Height = 41
    Caption = 'IMPRIMIR INDIVIDUAL '
    TabOrder = 8
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 328
    Top = 352
    Width = 125
    Height = 40
    Caption = 'IMPRIMIR TODAS'
    TabOrder = 9
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 194
    Top = 80
    Width = 86
    Height = 32
    Caption = 'IMPRIMIR = S'
    TabOrder = 10
    OnClick = BitBtn6Click
  end
  object BitBtn7: TBitBtn
    Left = 360
    Top = 256
    Width = 75
    Height = 25
    Caption = 'BitBtn7'
    TabOrder = 11
    Visible = False
    OnClick = BitBtn7Click
  end
  object BitBtn8: TBitBtn
    Left = 21
    Top = 369
    Width = 129
    Height = 37
    Caption = 'IMP:IND.PERIODO'
    TabOrder = 12
    OnClick = BitBtn8Click
  end
  object JvDateEdit1: TJvDateEdit
    Left = 25
    Top = 302
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object JvDateEdit2: TJvDateEdit
    Left = 25
    Top = 341
    Width = 121
    Height = 21
    TabOrder = 14
  end
  object BitBtn9: TBitBtn
    Left = 360
    Top = 80
    Width = 113
    Height = 32
    Caption = 'LIMPAR ANTERIOR'
    TabOrder = 15
    OnClick = BitBtn9Click
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 408
    Top = 8
  end
  object SQL: TSQLClientDataSet
    CommandText = 
      'select  RA ,RAZAOSOCIAL from EMP_PDF'#13#10'/*'#13#10'select  RA ,RAZAOSOCIA' +
      'L from CLIENTES where grupo_cliente = '#39'PCMSO'#39' and segmento = 0 a' +
      'nd status = 0 ORDER BY  RAZAOSOCIAL'#13#10'*/'#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DM.sqlsisAdimin
    Left = 216
    Top = 176
    object SQLRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object SQLRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = SQL
    Left = 296
    Top = 176
  end
  object contar: TSQLClientDataSet
    CommandText = 
      'select  RA ,RAZAOSOCIAL from CLIENTES where grupo_cliente = '#39'PCM' +
      'SO'#39' and segmento = 0 and status = 0 ORDER BY  RAZAOSOCIAL'#13#10
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DM.sqlsisAdimin
    Left = 104
    Top = 176
    object StringField1: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'RA'
      Size = 10
    end
  end
end
