object fRelDMED: TfRelDMED
  Left = 277
  Top = 141
  Width = 903
  Height = 443
  Caption = 'fRelDMED'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 392
    Top = 384
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object btnMen: TBitBtn
    Left = 568
    Top = 62
    Width = 75
    Height = 27
    Caption = 'Imprimir'
    TabOrder = 0
    OnClick = btnMenClick
  end
  object GroupBox1: TGroupBox
    Left = 649
    Top = 49
    Width = 220
    Height = 42
    Caption = 'Per'#237'odo de Recebimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 89
      Top = 21
      Width = 19
      Height = 16
      Caption = 'at'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object meDta5: TMaskEdit
      Left = 5
      Top = 14
      Width = 80
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditMask = '!99/99/00;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 0
      Text = '01/01/12'
      OnKeyPress = FormKeyPress
    end
    object meDta6: TMaskEdit
      Left = 110
      Top = 14
      Width = 74
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditMask = '!99/99/00;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 1
      Text = '31/12/12'
      OnKeyPress = FormKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 186
      Top = 7
      Width = 32
      Height = 32
      TabOrder = 2
      TabStop = False
      Glyph.Data = {
        1E070000424D1E070000000000003600000028000000160000001A0000000100
        180000000000E806000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
        C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C000000000FF00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0
        C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0
        C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000007F7F7F7F7F7F7F
        7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F7F7F7F7F7F7F7F7F
        7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F000000000000
        7F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F0000000000007F7F
        7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F00007F00007F0000
        7F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F00007F00007F00007F00
        00000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF0000FF00007F00
        007F00007F00007F0000000000007F7F7F0000FF00007F00007F00007F00007F
        00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C00000FF
        00007F00007F00007F00007F00007F00000000000000007F00007F00007F0000
        7F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
        C00000FF0000FF00007F00007F00007F00007F00007F00007F00007F00007F00
        007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00007F00007F00007F
        00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
        7F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00
        007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
        00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F
        7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C00000FF00007F00007F00007F00007F00007F00007F0000000000007F7F7F7F
        7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F00007F000000
        0000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
        C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F00007F0000
        7F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C00000C0C0
        C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F0000FF0000FF00
        007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F0000007F7F7F
        0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F7F7F
        7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000007F7F
        7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000000000007F7F7F7F
        7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F00007F00007F00007F00
        00007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00007F00007F000000
        0000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F00007F00007F
        0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F0000
        7F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF0000FF0000FF0000
        7F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00
        00FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C000
        00FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000}
    end
  end
  object edCliente: TJvDBSearchEdit
    Left = 152
    Top = 64
    Width = 325
    Height = 24
    DataSource = DataSource1
    DataField = 'NOMECLIENTE'
    Color = 13562879
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnExit = edClienteExit
    OnKeyPress = FormKeyPress
  end
  object edCodCliente: TEdit
    Left = 76
    Top = 64
    Width = 73
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnExit = edCodClienteExit
    OnKeyPress = FormKeyPress
  end
  object btnLimpa: TBitBtn
    Left = 479
    Top = 63
    Width = 32
    Height = 32
    TabOrder = 4
    TabStop = False
    Glyph.Data = {
      1E070000424D1E070000000000003600000028000000160000001A0000000100
      180000000000E806000000000000000000000000000000000000C0C0C0C0C0C0
      C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
      C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      0000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C000000000FF00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0
      C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0
      C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000007F7F7F7F7F7F7F
      7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F7F7F7F7F7F7F7F7F
      7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F000000000000
      7F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F0000000000007F7F
      7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F00007F00007F0000
      7F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F00007F00007F00007F00
      00000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF0000FF00007F00
      007F00007F00007F0000000000007F7F7F0000FF00007F00007F00007F00007F
      00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C00000FF
      00007F00007F00007F00007F00007F00000000000000007F00007F00007F0000
      7F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
      C00000FF0000FF00007F00007F00007F00007F00007F00007F00007F00007F00
      007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      0000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00007F00007F00007F
      00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
      7F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00
      007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
      00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F
      7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C00000FF00007F00007F00007F00007F00007F00007F0000000000007F7F7F7F
      7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F00007F000000
      0000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
      C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F00007F0000
      7F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C00000C0C0
      C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F0000FF0000FF00
      007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0
      0000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F0000007F7F7F
      0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F7F7F
      7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000007F7F
      7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000000000007F7F7F7F
      7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F00007F00007F00007F00
      00007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00007F00007F000000
      0000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F00007F00007F
      0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F0000
      7F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF0000FF0000FF0000
      7F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00
      00FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C000
      00FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      0000}
  end
  object fgrupo: TBitBtn
    Left = 512
    Top = 64
    Width = 37
    Height = 28
    Caption = 'F 5'
    TabOrder = 5
    OnClick = fgrupoClick
  end
  object Edit2: TEdit
    Left = 24
    Top = 64
    Width = 49
    Height = 21
    TabOrder = 6
    Text = 'Edit2'
  end
  object BitBtn4: TBitBtn
    Left = 640
    Top = 198
    Width = 129
    Height = 25
    Caption = 'Relatorio Dmed Varej'#227'o'
    TabOrder = 7
    OnClick = BitBtn4Click
  end
  object bt_relDmed: TBitBtn
    Left = 424
    Top = 200
    Width = 145
    Height = 22
    Caption = 'Relatorio Dmed'
    TabOrder = 8
    OnClick = bt_relDmedClick
  end
  object Edit1: TEdit
    Left = 368
    Top = 264
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'Edit1'
    Visible = False
  end
  object Edit3: TEdit
    Left = 368
    Top = 304
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'Edit3'
    Visible = False
  end
  object Edit4: TEdit
    Left = 368
    Top = 336
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'Edit4'
    Visible = False
  end
  object Memo1: TMemo
    Left = 0
    Top = 256
    Width = 841
    Height = 105
    TabOrder = 12
  end
  object BitBtn2: TBitBtn
    Left = 208
    Top = 224
    Width = 75
    Height = 25
    Caption = 'BitBtn2'
    TabOrder = 13
    OnClick = BitBtn2Click
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 24
    Top = 8
  end
  object cds12: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta2'
        ParamType = ptInput
      end>
    ProviderName = 'dsp12'
    Left = 136
    Top = 136
  end
  object dsp12: TDataSetProvider
    DataSet = sql12
    Options = [poAllowCommandText]
    Left = 96
    Top = 136
  end
  object sql12: TSQLDataSet
    CommandText = 'select * from D_2012 (:titular , :dta1 ,:dta2)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta2'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 56
    Top = 136
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL,RA from CLIENTES'#13#10' w' +
      'here segmento = 0 and GRUPO_CLIENTE = :pCC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCC'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 48
    Top = 88
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 88
    Top = 88
  end
  object cdsClienteBusca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCC'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider3'
    Left = 128
    Top = 88
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
    object cdsClienteBuscaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsClienteBuscaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsClienteBusca
    Left = 168
    Top = 88
  end
  object sqlI: TSQLDataSet
    CommandText = 'select  * FROM D_2012D  where  razaosocial = :prazao'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'prazao'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 56
    Top = 275
    object sqlICODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sqlIPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object sqlIPAGO: TFloatField
      FieldName = 'PAGO'
    end
    object sqlIPR: TFloatField
      FieldName = 'PR'
    end
    object sqlIREEMBOLSO: TFloatField
      FieldName = 'REEMBOLSO'
    end
    object sqlICONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object sqlICODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
    object sqlIDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object sqlICOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object sqlINOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 60
    end
    object sqlITIPOFIRMA: TIntegerField
      FieldName = 'TIPOFIRMA'
    end
    object sqlICNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sqlIVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object sqlIPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object sqlIRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlIRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqlINOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object sqlICLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 18
    end
    object sqlISITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sqlISEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sqlIDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object sqlIVALORANT: TFloatField
      FieldName = 'VALORANT'
    end
  end
  object dspI: TDataSetProvider
    DataSet = sqlI
    Options = [poAllowCommandText]
    Left = 104
    Top = 272
  end
  object dsI: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'prazao'
        ParamType = ptInput
      end>
    ProviderName = 'dspI'
    Left = 152
    Top = 272
    object dsICODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object dsIPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object dsIPAGO: TFloatField
      FieldName = 'PAGO'
    end
    object dsIPR: TFloatField
      FieldName = 'PR'
    end
    object dsIREEMBOLSO: TFloatField
      FieldName = 'REEMBOLSO'
    end
    object dsICONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object dsICODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
    object dsIDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object dsICOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object dsINOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 60
    end
    object dsITIPOFIRMA: TIntegerField
      FieldName = 'TIPOFIRMA'
    end
    object dsICNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object dsIVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object dsIPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object dsIRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object dsIRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object dsINOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object dsICLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 18
    end
    object dsISITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object dsISEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object dsIDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object dsIVALORANT: TFloatField
      FieldName = 'VALORANT'
    end
  end
  object sqlBR: TSQLDataSet
    CommandText = 
      'select distinct '#13#10'    d_2012d.ra,'#13#10'    d_2012d.razaosocial,    '#13 +
      #10'    d_2012d.cli_cpf'#13#10'from d_2012d'#13#10'where d_2012d.razaosocial = ' +
      'd_2012d.nomecliente and d_2012d.cli_cpf is null'#13#10#13#10'order by d_20' +
      '12d.ra'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 648
    Top = 240
    object sqlBRRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlBRRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqlBRCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 18
    end
  end
  object dspBR: TDataSetProvider
    DataSet = sqlBR
    Options = [poAllowCommandText]
    Left = 696
    Top = 240
  end
  object cdsBR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBR'
    Left = 736
    Top = 240
    object cdsBRRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsBRRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsBRCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 18
    end
  end
  object sqlTR: TSQLDataSet
    CommandText = 
      'select distinct '#13#10'    d_2012d.ra,'#13#10'    d_2012d.razaosocial,'#13#10'   ' +
      ' d_2012d.cli_cpf,'#13#10'    enderecocliente.logradouro,'#13#10'    endereco' +
      'cliente.bairro,'#13#10'    enderecocliente.complemento,'#13#10'    enderecoc' +
      'liente.cidade,'#13#10'    enderecocliente.uf,'#13#10'    enderecocliente.cep' +
      ','#13#10'    enderecocliente.ramal'#13#10'from d_2012d'#13#10'   inner join client' +
      'es on (d_2012d.razaosocial = clientes.razaosocial)'#13#10'   inner joi' +
      'n enderecocliente on (clientes.codcliente = enderecocliente.codc' +
      'liente)'#13#10'where '#13#10'  '#13#10'      (d_2012d.razaosocial = d_2012d.nomecl' +
      'iente)'#13#10'   and '#13#10'      '#13#10'         (enderecocliente.complemento l' +
      'ike '#39'VAREJ'#195'O%'#39')'#13#10'   and '#13#10'      (clientes.grupo_cliente = '#39'ASH'#39')' +
      #13#10'  '#13#10'order by d_2012d.ra'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 648
    Top = 144
    object sqlTRRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlTRRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqlTRCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 18
    end
    object sqlTRLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sqlTRBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sqlTRCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sqlTRCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sqlTRUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sqlTRCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sqlTRRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
  end
  object dspTR: TDataSetProvider
    DataSet = sqlTR
    Options = [poAllowCommandText]
    Left = 696
    Top = 144
  end
  object cdsTR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTR'
    Left = 728
    Top = 144
    object cdsTRRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsTRRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsTRCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 18
    end
    object cdsTRLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsTRBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsTRCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsTRCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsTRUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsTRCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsTRRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 
      'select distinct '#13#10'    d_2012d.ra,'#13#10'    d_2012d.razaosocial,'#13#10'   ' +
      'd_2012d.cli_cpf,'#13#10'    enderecocliente.logradouro,'#13#10'    enderecoc' +
      'liente.bairro,'#13#10'    enderecocliente.complemento,'#13#10'    enderecocl' +
      'iente.cidade,'#13#10'    enderecocliente.uf,'#13#10'    enderecocliente.cep,' +
      #13#10'    enderecocliente.ramal'#13#10'from clientes'#13#10'   inner join d_2012' +
      'd on (clientes.razaosocial = d_2012d.razaosocial)'#13#10'   inner join' +
      ' enderecocliente on (clientes.codcliente = enderecocliente.codcl' +
      'iente)'#13#10'where '#13#10'   ('#13#10'      (d_2012d.razaosocial = d_2012d.nomec' +
      'liente)'#13#10'   and '#13#10'      ('#13#10'         (enderecocliente.complemento' +
      ' not like '#39'VAREJ'#195'O%'#39')'#13#10'      or '#13#10'         (enderecocliente.comp' +
      'lemento is null )'#13#10'      or '#13#10'         (enderecocliente.compleme' +
      'nto = '#39#39')'#13#10'      )'#13#10'   and '#13#10'      (clientes.grupo_cliente = '#39'AS' +
      'H'#39')'#13#10'   )'#13#10'order by d_2012d.ra'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 408
    Top = 144
    object SQLDataSet2RA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object SQLDataSet2RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object SQLDataSet2CLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 18
    end
    object SQLDataSet2LOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object SQLDataSet2BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SQLDataSet2COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SQLDataSet2CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SQLDataSet2UF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object SQLDataSet2CEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object SQLDataSet2RAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet2
    Options = [poAllowCommandText]
    Left = 456
    Top = 144
  end
  object cdsV: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 496
    Top = 144
    object cdsVRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsVRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsVCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 18
    end
    object cdsVLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsVBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsVCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsVCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsVUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsVCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsVRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
  end
  object SQLDataSet3: TSQLDataSet
    CommandText = 
      'select distinct '#13#10'    CORRECAO.ra,'#13#10'    CORRECAO.razaosocial,'#13#10' ' +
      '   enderecocliente.logradouro,'#13#10'    enderecocliente.bairro,'#13#10'   ' +
      ' enderecocliente.complemento,'#13#10'    enderecocliente.cidade,'#13#10'    ' +
      'enderecocliente.uf,'#13#10'    enderecocliente.cep,'#13#10'    enderecoclien' +
      'te.ramal'#13#10'from   CORRECAO'#13#10'   inner join clientes on (CORRECAO.r' +
      'azaosocial = clientes.razaosocial)'#13#10'   inner join enderecoclient' +
      'e on (clientes.codcliente = enderecocliente.codcliente)'#13#10'where '#13 +
      #10'   ((enderecocliente.complemento not like '#39'VAREJ'#195'O%'#39')or(enderec' +
      'ocliente.complemento is null )or(enderecocliente.complemento = '#39 +
      #39'))'#13#10'   and '#13#10'      (clientes.grupo_cliente = '#39'ASH'#39')'#13#10'   '#13#10'order' +
      ' by CORRECAO.ra'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 144
    Top = 184
    object SQLDataSet3RA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object SQLDataSet3RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object SQLDataSet3LOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object SQLDataSet3BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SQLDataSet3COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SQLDataSet3CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SQLDataSet3UF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object SQLDataSet3CEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object SQLDataSet3RAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet3
    Options = [poAllowCommandText]
    Left = 192
    Top = 184
  end
  object cdsCC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 240
    Top = 184
    object cdsCCRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsCCRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsCCLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsCCBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsCCCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsCCCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsCCUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsCCCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsCCRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
  end
end
