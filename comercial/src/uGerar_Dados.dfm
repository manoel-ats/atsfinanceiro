object fGerar_Dados: TfGerar_Dados
  Left = 276
  Top = 59
  Width = 928
  Height = 647
  Caption = 'Gerar Dados'
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
    Left = 21
    Top = 7
    Width = 22
    Height = 13
    Caption = 'C'#243'd.'
  end
  object Label3: TLabel
    Left = 152
    Top = 57
    Width = 29
    Height = 13
    Caption = 'Titular'
    FocusControl = DBEdit1
  end
  object Label4: TLabel
    Left = 64
    Top = 59
    Width = 68
    Height = 13
    Caption = 'CODCLIENTE'
    FocusControl = DBEdit2
  end
  object DBGrid5: TDBGrid
    Left = 152
    Top = 249
    Width = 655
    Height = 76
    DataSource = dsREE
    TabOrder = 18
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object edCodCliente: TEdit
    Left = 36
    Top = 24
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
    ReadOnly = True
    TabOrder = 0
  end
  object edCliente: TJvDBSearchEdit
    Left = 160
    Top = 24
    Width = 368
    Height = 24
    DataSource = DataSource1
    DataField = 'RAZAOSOCIAL'
    CharCase = ecUpperCase
    Color = 13562879
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'EDCLIENTE'
    OnExit = edClienteExit
  end
  object GroupBox1: TGroupBox
    Left = 572
    Top = 7
    Width = 220
    Height = 57
    Caption = 'Per'#237'odo de Recebimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
      Width = 77
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
      Text = '01/01/14'
    end
    object meDta6: TMaskEdit
      Left = 110
      Top = 14
      Width = 71
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
      Text = '31/12/14'
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
  object btnLimpa: TBitBtn
    Left = 530
    Top = 23
    Width = 32
    Height = 32
    TabOrder = 3
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
  object Edit1: TEdit
    Left = 60
    Top = 4
    Width = 49
    Height = 19
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit1: TDBEdit
    Left = 152
    Top = 73
    Width = 654
    Height = 21
    DataField = 'RAZAOSOCIAL'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 152
    Top = 98
    Width = 655
    Height = 54
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn2: TBitBtn
    Left = 24
    Top = 137
    Width = 75
    Height = 25
    Caption = 'Conferir'
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object DBEdit2: TDBEdit
    Left = 64
    Top = 73
    Width = 57
    Height = 21
    DataField = 'RA'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 8
  end
  object DBGrid2: TDBGrid
    Left = 168
    Top = 161
    Width = 655
    Height = 232
    DataSource = dsConferir
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn3: TBitBtn
    Left = 24
    Top = 169
    Width = 105
    Height = 25
    Caption = 'Inserir (Conferir)'
    TabOrder = 10
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 17
    Top = 281
    Width = 105
    Height = 25
    Caption = 'Inserir Mensalidade'
    TabOrder = 11
    OnClick = BitBtn4Click
  end
  object DBGrid3: TDBGrid
    Left = 160
    Top = 408
    Width = 657
    Height = 105
    DataSource = DataSource2
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object bt_relDmed: TBitBtn
    Left = 16
    Top = 429
    Width = 129
    Height = 25
    Caption = 'Relatorio Dmed Varej'#227'o'
    TabOrder = 13
    OnClick = bt_relDmedClick
  end
  object BitBtn6: TBitBtn
    Left = 24
    Top = 209
    Width = 113
    Height = 25
    Caption = 'Inserir (Conferir TODOS)'
    TabOrder = 14
    OnClick = BitBtn6Click
  end
  object BitBtn7: TBitBtn
    Left = 8
    Top = 309
    Width = 137
    Height = 25
    Caption = 'Inserir Mensalidade TODOS'
    TabOrder = 15
    OnClick = BitBtn7Click
  end
  object BitBtn5: TBitBtn
    Left = 360
    Top = 584
    Width = 75
    Height = 25
    Caption = 'BitBtn5'
    TabOrder = 16
    OnClick = BitBtn5Click
  end
  object BitBtn8: TBitBtn
    Left = 808
    Top = 544
    Width = 75
    Height = 25
    Caption = 'BitBtn8'
    TabOrder = 17
    OnClick = BitBtn8Click
  end
  object BitBtn9: TBitBtn
    Left = 32
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Inserir Reem'
    TabOrder = 19
    OnClick = BitBtn9Click
  end
  object Checkpdf: TCheckBox
    Left = 13
    Top = 374
    Width = 45
    Height = 17
    Caption = 'pdf'
    TabOrder = 20
  end
  object BitBtn10: TBitBtn
    Left = 16
    Top = 461
    Width = 129
    Height = 25
    Caption = 'Relatorio Dmed '
    TabOrder = 21
    OnClick = BitBtn10Click
  end
  object BitBtn11: TBitBtn
    Left = 24
    Top = 581
    Width = 99
    Height = 25
    Caption = 'Exporta Dmed'
    TabOrder = 22
    OnClick = BitBtn11Click
  end
  object BitBtn12: TBitBtn
    Left = 136
    Top = 584
    Width = 99
    Height = 25
    Caption = 'Exporta Dmed'
    TabOrder = 23
    OnClick = BitBtn12Click
  end
  object Memo1: TMemo
    Left = 168
    Top = 376
    Width = 705
    Height = 217
    Lines.Strings = (
      '')
    TabOrder = 24
  end
  object BitBtn13: TBitBtn
    Left = 56
    Top = 368
    Width = 75
    Height = 25
    Caption = 'BitBtn13'
    TabOrder = 25
    OnClick = BitBtn13Click
  end
  object BitBtn14: TBitBtn
    Left = 16
    Top = 400
    Width = 41
    Height = 25
    Caption = 'V S'
    TabOrder = 26
    OnClick = BitBtn14Click
  end
  object BitBtn15: TBitBtn
    Left = 80
    Top = 400
    Width = 41
    Height = 25
    Caption = 'V N'
    TabOrder = 27
    OnClick = BitBtn15Click
  end
  object BitBtn16: TBitBtn
    Left = 24
    Top = 496
    Width = 41
    Height = 25
    Caption = 'C S'
    TabOrder = 28
    OnClick = BitBtn16Click
  end
  object BitBtn17: TBitBtn
    Left = 80
    Top = 496
    Width = 49
    Height = 25
    Caption = 'C N'
    TabOrder = 29
    OnClick = BitBtn17Click
  end
  object BitBtn18: TBitBtn
    Left = 816
    Top = 104
    Width = 91
    Height = 25
    Caption = 'Limpar Tabela'
    TabOrder = 30
    OnClick = BitBtn18Click
  end
  object BitBtn19: TBitBtn
    Left = 40
    Top = 104
    Width = 75
    Height = 25
    Caption = 'BitBtn19'
    TabOrder = 31
    OnClick = BitBtn19Click
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE , RAZAOSOCIAL ,RA ,cnpj , datares' +
      'c '#13#10'   from clientes  '#13#10'   where segmento = 0 and GRUPO_CLIENTE ' +
      '= '#39'ASH'#39#13#10'   and ((dataresc is null) or (dataresc > '#39'12/31/13'#39'))'#13 +
      #10'order by ra '#13#10#13#10'/* select * from CDSV */'#13#10'/*'#13#10'select CODCLIENTE' +
      ', NOMECLIENTE , RAZAOSOCIAL ,RA ,cnpj , dataresc '#13#10'   from clien' +
      'tes  '#13#10'   where segmento = 0 and GRUPO_CLIENTE = '#39'ASH'#39#13#10'   and (' +
      '(dataresc is null) or (dataresc > '#39'12/31/13'#39'))'#13#10'order by ra'#13#10'*/'#13 +
      #10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 232
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 272
  end
  object cdsClienteBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 328
    object cdsClienteBuscaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsClienteBuscaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsClienteBusca
    Left = 384
  end
  object dsConferir: TDataSource
    DataSet = cdsConferir
    Left = 416
    Top = 121
  end
  object cdsConferir: TClientDataSet
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
    ProviderName = 'dspConferir'
    Left = 360
    Top = 113
    object cdsConferirPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsConferirPAGO: TFloatField
      FieldName = 'PAGO'
    end
    object cdsConferirPR: TFloatField
      FieldName = 'PR'
    end
    object cdsConferirREEMBOLSO: TFloatField
      FieldName = 'REEMBOLSO'
    end
    object cdsConferirCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object cdsConferirCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object cdsConferirNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 60
    end
    object cdsConferirTIPOFIRMA: TIntegerField
      FieldName = 'TIPOFIRMA'
    end
    object cdsConferirCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsConferirVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object cdsConferirPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object cdsConferirRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsConferirRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsConferirNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object cdsConferirCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 18
    end
    object cdsConferirSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object cdsConferirSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsConferirDATANASC: TDateField
      FieldName = 'DATANASC'
    end
  end
  object dspConferir: TDataSetProvider
    DataSet = sqlConferir
    Options = [poAllowCommandText]
    Left = 312
    Top = 105
  end
  object sqlConferir: TSQLDataSet
    CommandText = 'select * from D_2012(:titular , :dta1 ,:dta2)'#13#10#13#10#13#10
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
    Left = 272
    Top = 105
    object sqlConferirPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object sqlConferirPAGO: TFloatField
      FieldName = 'PAGO'
    end
    object sqlConferirPR: TFloatField
      FieldName = 'PR'
    end
    object sqlConferirREEMBOLSO: TFloatField
      FieldName = 'REEMBOLSO'
    end
    object sqlConferirCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object sqlConferirCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object sqlConferirNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 60
    end
    object sqlConferirTIPOFIRMA: TIntegerField
      FieldName = 'TIPOFIRMA'
    end
    object sqlConferirCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sqlConferirVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object sqlConferirPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object sqlConferirRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlConferirRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqlConferirNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object sqlConferirCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 18
    end
    object sqlConferirSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sqlConferirSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sqlConferirDATANASC: TDateField
      FieldName = 'DATANASC'
    end
  end
  object cdsDmens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end>
    ProviderName = 'dspDmens'
    Left = 456
    Top = 392
    object cdsDmensCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsDmensRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsDmensRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsDmensCPF_SOCIO: TStringField
      FieldName = 'CPF_SOCIO'
      Size = 18
    end
    object cdsDmensVAL: TFloatField
      FieldName = 'VAL'
    end
    object cdsDmensFAIXA: TIntegerField
      FieldName = 'FAIXA'
    end
    object cdsDmensNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object cdsDmensMES_VCTO: TIntegerField
      FieldName = 'MES_VCTO'
    end
    object cdsDmensMES_PAGTO: TIntegerField
      FieldName = 'MES_PAGTO'
    end
    object cdsDmensVLR_PAGO_MES: TFloatField
      FieldName = 'VLR_PAGO_MES'
    end
    object cdsDmensVLR_MENSAL: TFloatField
      FieldName = 'VLR_MENSAL'
    end
    object cdsDmensCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
    end
    object cdsDmensCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
  end
  object dspDmens: TDataSetProvider
    DataSet = sqlDmens
    Options = [poAllowCommandText]
    Left = 416
    Top = 392
  end
  object sqlDmens: TSQLDataSet
    CommandText = 
      'select '#13#10'    codcliente ,'#13#10'    ra ,'#13#10'    razaosocial,'#13#10'    cpf_s' +
      'ocio,'#13#10'    val  ,'#13#10'    faixa ,'#13#10'    nomecliente ,'#13#10'    mes_vcto ' +
      ','#13#10'    mes_pagto ,'#13#10'    vlr_pago_mes ,'#13#10'    vlr_mensal ,'#13#10'    co' +
      'dmovimento ,'#13#10'    codvenda '#13#10#13#10' from dmed_antes(:titular) where ' +
      'vlr_mensal > 0'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 384
    Top = 392
    object sqlDmensCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sqlDmensRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlDmensRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqlDmensCPF_SOCIO: TStringField
      FieldName = 'CPF_SOCIO'
      Size = 18
    end
    object sqlDmensVAL: TFloatField
      FieldName = 'VAL'
    end
    object sqlDmensFAIXA: TIntegerField
      FieldName = 'FAIXA'
    end
    object sqlDmensNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object sqlDmensMES_VCTO: TIntegerField
      FieldName = 'MES_VCTO'
    end
    object sqlDmensMES_PAGTO: TIntegerField
      FieldName = 'MES_PAGTO'
    end
    object sqlDmensVLR_PAGO_MES: TFloatField
      FieldName = 'VLR_PAGO_MES'
    end
    object sqlDmensVLR_MENSAL: TFloatField
      FieldName = 'VLR_MENSAL'
    end
    object sqlDmensCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
    end
    object sqlDmensCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
  end
  object DataSource2: TDataSource
    DataSet = cdsDmens
    Left = 512
    Top = 392
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 152
    Top = 344
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider2'
    Left = 272
    Top = 344
    object ClientDataSet1CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object ClientDataSet1RA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object ClientDataSet1RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object ClientDataSet1CPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object ClientDataSet1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object ClientDataSet1VLR_MENSAL: TFloatField
      FieldName = 'VLR_MENSAL'
    end
    object ClientDataSet1CLIR: TIntegerField
      FieldName = 'CLIR'
    end
    object ClientDataSet1NOMEFORNECEDORR: TStringField
      FieldName = 'NOMEFORNECEDORR'
      Size = 50
    end
    object ClientDataSet1CNPJR: TStringField
      FieldName = 'CNPJR'
      Size = 18
    end
    object ClientDataSet1NOMER: TStringField
      FieldName = 'NOMER'
      Size = 50
    end
    object ClientDataSet1VALORR: TFloatField
      FieldName = 'VALORR'
    end
    object ClientDataSet1VALORRN: TFloatField
      FieldName = 'VALORRN'
    end
    object ClientDataSet1VALORRP: TFloatField
      FieldName = 'VALORRP'
    end
    object ClientDataSet1VALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object ClientDataSet1CLIRP: TIntegerField
      FieldName = 'CLIRP'
    end
    object ClientDataSet1NOMERP: TStringField
      FieldName = 'NOMERP'
      Size = 50
    end
    object ClientDataSet1VALORRP1: TFloatField
      FieldName = 'VALORRP1'
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    Options = [poAllowCommandText]
    Left = 232
    Top = 344
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 'select *   FROM REL_DMED_11(:titular) '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 192
    Top = 344
    object SQLDataSet2CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object SQLDataSet2RA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object SQLDataSet2RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object SQLDataSet2CPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object SQLDataSet2NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object SQLDataSet2VLR_MENSAL: TFloatField
      FieldName = 'VLR_MENSAL'
    end
    object SQLDataSet2CLIR: TIntegerField
      FieldName = 'CLIR'
    end
    object SQLDataSet2NOMEFORNECEDORR: TStringField
      FieldName = 'NOMEFORNECEDORR'
      Size = 50
    end
    object SQLDataSet2CNPJR: TStringField
      FieldName = 'CNPJR'
      Size = 18
    end
    object SQLDataSet2NOMER: TStringField
      FieldName = 'NOMER'
      Size = 50
    end
    object SQLDataSet2VALORR: TFloatField
      FieldName = 'VALORR'
    end
    object SQLDataSet2VALORRN: TFloatField
      FieldName = 'VALORRN'
    end
    object SQLDataSet2VALORRP: TFloatField
      FieldName = 'VALORRP'
    end
    object SQLDataSet2VALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object SQLDataSet2CLIRP: TIntegerField
      FieldName = 'CLIRP'
    end
    object SQLDataSet2NOMERP: TStringField
      FieldName = 'NOMERP'
      Size = 50
    end
    object SQLDataSet2VALORRP1: TFloatField
      FieldName = 'VALORRP1'
    end
  end
  object dsdmt: TDataSource
    DataSet = cdsdmt
    Left = 192
    Top = 576
  end
  object cdsdmt: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end>
    ProviderName = 'dspdmt'
    Left = 320
    Top = 576
    object cdsdmtCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsdmtRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsdmtRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsdmtVAL: TFloatField
      FieldName = 'VAL'
    end
    object cdsdmtFAIXA: TIntegerField
      FieldName = 'FAIXA'
    end
    object cdsdmtNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object cdsdmtMES_VCTO: TIntegerField
      FieldName = 'MES_VCTO'
    end
    object cdsdmtMES_PAGTO: TIntegerField
      FieldName = 'MES_PAGTO'
    end
    object cdsdmtVLR_PAGO_MES: TFloatField
      FieldName = 'VLR_PAGO_MES'
    end
    object cdsdmtVLR_MENSAL: TFloatField
      FieldName = 'VLR_MENSAL'
    end
    object cdsdmtCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
    end
    object cdsdmtCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object cdsdmtCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
  end
  object dspdmt: TDataSetProvider
    DataSet = sqldmt
    Options = [poAllowCommandText]
    Left = 280
    Top = 576
  end
  object sqldmt: TSQLDataSet
    CommandText = 'select * from DMED_MENSALIDADE where razaosocial = :titular'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 240
    Top = 576
    object sqldmtCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sqldmtRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqldmtRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqldmtVAL: TFloatField
      FieldName = 'VAL'
    end
    object sqldmtFAIXA: TIntegerField
      FieldName = 'FAIXA'
    end
    object sqldmtNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object sqldmtMES_VCTO: TIntegerField
      FieldName = 'MES_VCTO'
    end
    object sqldmtMES_PAGTO: TIntegerField
      FieldName = 'MES_PAGTO'
    end
    object sqldmtVLR_PAGO_MES: TFloatField
      FieldName = 'VLR_PAGO_MES'
    end
    object sqldmtVLR_MENSAL: TFloatField
      FieldName = 'VLR_MENSAL'
    end
    object sqldmtCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
    end
    object sqldmtCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object sqldmtCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
  end
  object DataSource4: TDataSource
    DataSet = sqldmt
    Left = 464
    Top = 360
  end
  object DataSource5: TDataSource
    DataSet = cdsdmt
    Left = 504
    Top = 360
  end
  object sqlREE: TSQLDataSet
    CommandText = 
      'select razaosocial ,'#13#10'    nomecliente ,'#13#10'    cod_cliente,'#13#10'    r' +
      'eembolso,'#13#10'    valor '#13#10#13#10' from INSERIR_REEM WHERE razaosocial = ' +
      ':PRAZAO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PRAZAO'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 224
    Top = 305
    object sqlREERAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqlREENOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object sqlREECOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object sqlREEREEMBOLSO: TFloatField
      FieldName = 'REEMBOLSO'
    end
    object sqlREEVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object dspREE: TDataSetProvider
    DataSet = sqlREE
    Options = [poAllowCommandText]
    Left = 272
    Top = 305
  end
  object cdsREE: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PRAZAO'
        ParamType = ptInput
      end>
    ProviderName = 'dspREE'
    Left = 328
    Top = 305
    object cdsREERAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsREENOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object cdsREECOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object cdsREEREEMBOLSO: TFloatField
      FieldName = 'REEMBOLSO'
    end
    object cdsREEVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object dsREE: TDataSource
    DataSet = cdsREE
    Left = 376
    Top = 305
  end
  object cdsTR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTR'
    Left = 104
    Top = 256
    object cdsTRRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsTRRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
  end
  object dspTR: TDataSetProvider
    DataSet = sqlTR
    Options = [poAllowCommandText]
    Left = 56
    Top = 256
  end
  object sqlTR: TSQLDataSet
    CommandText = 
      'select * from CDSNV'#13#10#13#10'/*select distinct '#13#10'   dmed_mensalidade.r' +
      'a,'#13#10'    dmed_mensalidade.razaosocial,'#13#10'    enderecocliente.logra' +
      'douro,'#13#10'    enderecocliente.bairro,'#13#10'    enderecocliente.complem' +
      'ento,'#13#10'    enderecocliente.cidade,'#13#10'    enderecocliente.uf,'#13#10'   ' +
      ' enderecocliente.cep,'#13#10'    enderecocliente.ramal,'#13#10'    clientes.' +
      'geraenv'#13#10#13#10'from clientes'#13#10#13#10'  inner join enderecocliente on (cli' +
      'entes.codcliente = enderecocliente.codcliente)'#13#10#13#10'  inner join d' +
      'med_mensalidade on (enderecocliente.codcliente  = dmed_mensalida' +
      'de.codcliente)'#13#10#13#10#13#10#13#10'where '#13#10#13#10#13#10'((enderecocliente.complemento ' +
      'not LIKE '#39'VAREJ'#195'O%'#39') or (enderecocliente.complemento is null) or' +
      ' (enderecocliente.complemento = '#39#39') )'#13#10#13#10'*/'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 24
    Top = 256
    object sqlTRRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlTRRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
  end
  object cdsBR: TClientDataSet
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
    ProviderName = 'dspBR'
    Left = 104
    Top = 528
    object cdsBRPRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
    end
    object cdsBRPAGO: TFloatField
      FieldName = 'PAGO'
      ReadOnly = True
    end
    object cdsBRPR: TFloatField
      FieldName = 'PR'
      ReadOnly = True
    end
    object cdsBRREEMBOLSO: TFloatField
      FieldName = 'REEMBOLSO'
      ReadOnly = True
    end
    object cdsBRCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      ReadOnly = True
    end
    object cdsBRCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ReadOnly = True
    end
    object cdsBRNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ReadOnly = True
      Size = 60
    end
    object cdsBRRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ReadOnly = True
      Size = 50
    end
    object cdsBRTIPOFIRMA: TIntegerField
      FieldName = 'TIPOFIRMA'
      ReadOnly = True
    end
    object cdsBRCNPJ: TStringField
      FieldName = 'CNPJ'
      ReadOnly = True
      Size = 18
    end
    object cdsBRVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ReadOnly = True
    end
    object cdsBRPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      ReadOnly = True
    end
    object cdsBRNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ReadOnly = True
      Size = 50
    end
    object cdsBRCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      ReadOnly = True
      Size = 18
    end
    object cdsBRRA: TStringField
      FieldName = 'RA'
      ReadOnly = True
      Size = 10
    end
    object cdsBRCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ReadOnly = True
      Size = 100
    end
  end
  object dspBR: TDataSetProvider
    DataSet = sqlBR
    Options = [poAllowCommandText]
    Left = 64
    Top = 528
  end
  object sqlBR: TSQLDataSet
    CommandText = 
      'select  sum(preco)as preco , sum(pago) as pago , sum(pr) as pr ,' +
      'sum(reembolso) as reembolso, controle ,  cod_comissao ,'#13#10'    nom' +
      'efornecedor,razaosocial , tipofirma , cnpj , sum(valorunitarioat' +
      'ual) as valorunitarioatual ,sum(precocusto)as precocusto , nomec' +
      'liente , cli_cpf ,ra ,complemento '#13#10'    from D_2012 (:titular ,:' +
      'dta1 ,:dta)'#13#10#13#10'   group by  ra ,razaosocial, controle , cod_comi' +
      'ssao,  nomefornecedor,  tipofirma ,  cnpj ,  valorunitarioatual,' +
      '  nomecliente, cli_cpf ,complemento '#13#10'    order by ra ,nomeclien' +
      'te,3 DESC '#13#10#13#10#13#10'/*'#13#10'select * from D_2012 (:titular ,:dta1 ,:dta)' +
      #13#10#13#10'*/'#13#10#13#10#13#10'/*select distinct '#13#10'    dmed_mensalidade.codcliente,' +
      #13#10'    dmed_mensalidade.ra,'#13#10'    dmed_mensalidade.razaosocial,   ' +
      ' '#13#10'    dmed_mensalidade.cpf'#13#10'from dmed_mensalidade'#13#10'where dmed_m' +
      'ensalidade.razaosocial = dmed_mensalidade.nomecliente '#13#10#13#10'order ' +
      'by ra'#13#10'*/'
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
    Left = 16
    Top = 528
    object sqlBRPRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
    end
    object sqlBRPAGO: TFloatField
      FieldName = 'PAGO'
      ReadOnly = True
    end
    object sqlBRPR: TFloatField
      FieldName = 'PR'
      ReadOnly = True
    end
    object sqlBRREEMBOLSO: TFloatField
      FieldName = 'REEMBOLSO'
      ReadOnly = True
    end
    object sqlBRCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      ReadOnly = True
    end
    object sqlBRCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ReadOnly = True
    end
    object sqlBRNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ReadOnly = True
      Size = 60
    end
    object sqlBRRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ReadOnly = True
      Size = 50
    end
    object sqlBRTIPOFIRMA: TIntegerField
      FieldName = 'TIPOFIRMA'
      ReadOnly = True
    end
    object sqlBRCNPJ: TStringField
      FieldName = 'CNPJ'
      ReadOnly = True
      Size = 18
    end
    object sqlBRVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ReadOnly = True
    end
    object sqlBRPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      ReadOnly = True
    end
    object sqlBRNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ReadOnly = True
      Size = 50
    end
    object sqlBRCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      ReadOnly = True
      Size = 18
    end
    object sqlBRRA: TStringField
      FieldName = 'RA'
      ReadOnly = True
      Size = 10
    end
    object sqlBRCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ReadOnly = True
      Size = 100
    end
  end
  object cdsVs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVs'
    Left = 256
    Top = 392
    object cdsVsRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsVsRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsVsCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
  end
  object dspVs: TDataSetProvider
    DataSet = sqlVs
    Options = [poAllowCommandText]
    Left = 216
    Top = 392
  end
  object sqlVs: TSQLDataSet
    CommandText = 
      'select * from CDSV_GERA_S'#13#10#13#10'/*select distinct '#13#10'    dmed_mensal' +
      'idade.ra,'#13#10'    dmed_mensalidade.razaosocial,'#13#10'    enderecoclient' +
      'e.logradouro,'#13#10'    enderecocliente.bairro,'#13#10' --   enderecoclient' +
      'e.complemento,'#13#10'    enderecocliente.cidade,'#13#10'    enderecocliente' +
      '.uf,'#13#10'    enderecocliente.cep,'#13#10'    enderecocliente.ramal,'#13#10'    ' +
      'clientes.geraenv'#13#10#13#10'from clientes'#13#10#13#10'  inner join enderecoclient' +
      'e on (clientes.codcliente = enderecocliente.codcliente)'#13#10#13#10'  inn' +
      'er join dmed_mensalidade on (enderecocliente.codcliente  = dmed_' +
      'mensalidade.codcliente)'#13#10#13#10'where '#13#10#13#10#13#10'enderecocliente.complemen' +
      'to LIKE '#39'VAREJ'#195'O%'#39#13#10'*/'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 168
    Top = 392
    object sqlVsRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqlVsRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlVsCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
  end
  object cdsEX: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TITULAR'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider4'
    Left = 104
    Top = 552
    object cdsEXCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsEXRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsEXRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsEXCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object cdsEXNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object cdsEXVLR_MENSAL: TFloatField
      FieldName = 'VLR_MENSAL'
    end
    object cdsEXCLIR: TIntegerField
      FieldName = 'CLIR'
    end
    object cdsEXNOMEFORNECEDORR: TStringField
      FieldName = 'NOMEFORNECEDORR'
      Size = 60
    end
    object cdsEXTIPOFIRMA: TStringField
      FieldName = 'TIPOFIRMA'
      Size = 1
    end
    object cdsEXCNPJR: TStringField
      FieldName = 'CNPJR'
      Size = 18
    end
    object cdsEXNOMER: TStringField
      FieldName = 'NOMER'
      Size = 50
    end
    object cdsEXVALORR: TFloatField
      FieldName = 'VALORR'
    end
    object cdsEXVALORRN: TFloatField
      FieldName = 'VALORRN'
    end
    object cdsEXVALORRP: TFloatField
      FieldName = 'VALORRP'
    end
    object cdsEXVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object cdsEXCLIRP: TIntegerField
      FieldName = 'CLIRP'
    end
    object cdsEXNOMERP: TStringField
      FieldName = 'NOMERP'
      Size = 50
    end
    object cdsEXVALORRP1: TFloatField
      FieldName = 'VALORRP1'
    end
    object cdsEXVALOR_RECIBO: TFloatField
      FieldName = 'VALOR_RECIBO'
    end
  end
  object DataSetProvider4: TDataSetProvider
    DataSet = SQLDataSet4
    Options = [poAllowCommandText]
    Left = 64
    Top = 552
  end
  object SQLDataSet4: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, RA, RAZAOSOCIAL, CPF, NOMECLIENTE,  VLR_MENSA' +
      'L, CLIR, NOMEFORNECEDORR, TIPOFIRMA, CNPJR, NOMER, VALORR, VALOR' +
      'RN, VALORRP, VALOR_TOTAL, CLIRP, NOMERP, VALORRP1, VALOR_RECIBO ' +
      'from EXPORTA_DMED_11(:TITULAR)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TITULAR'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 552
    object SQLDataSet4CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object SQLDataSet4RA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object SQLDataSet4RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object SQLDataSet4CPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object SQLDataSet4NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object SQLDataSet4VLR_MENSAL: TFloatField
      FieldName = 'VLR_MENSAL'
    end
    object SQLDataSet4CLIR: TIntegerField
      FieldName = 'CLIR'
    end
    object SQLDataSet4NOMEFORNECEDORR: TStringField
      FieldName = 'NOMEFORNECEDORR'
      Size = 60
    end
    object SQLDataSet4TIPOFIRMA: TStringField
      FieldName = 'TIPOFIRMA'
      Size = 1
    end
    object SQLDataSet4CNPJR: TStringField
      FieldName = 'CNPJR'
      Size = 18
    end
    object SQLDataSet4NOMER: TStringField
      FieldName = 'NOMER'
      Size = 50
    end
    object SQLDataSet4VALORR: TFloatField
      FieldName = 'VALORR'
    end
    object SQLDataSet4VALORRN: TFloatField
      FieldName = 'VALORRN'
    end
    object SQLDataSet4VALORRP: TFloatField
      FieldName = 'VALORRP'
    end
    object SQLDataSet4VALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object SQLDataSet4CLIRP: TIntegerField
      FieldName = 'CLIRP'
    end
    object SQLDataSet4NOMERP: TStringField
      FieldName = 'NOMERP'
      Size = 50
    end
    object SQLDataSet4VALORRP1: TFloatField
      FieldName = 'VALORRP1'
    end
    object SQLDataSet4VALOR_RECIBO: TFloatField
      FieldName = 'VALOR_RECIBO'
    end
  end
  object sql14: TSQLDataSet
    CommandText = 'select * from CDSTODOS'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 344
    object sql14RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sql14RA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sql14COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
  end
  object dsp14: TDataSetProvider
    DataSet = sql14
    Options = [poAllowCommandText]
    Left = 48
    Top = 344
  end
  object cds14: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp14'
    Left = 96
    Top = 344
    object StringField3: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
  end
  object sqlVn: TSQLDataSet
    CommandText = 
      'select * from CDSV_GERA_N'#13#10#13#10'/*select distinct '#13#10'    dmed_mensal' +
      'idade.ra,'#13#10'    dmed_mensalidade.razaosocial,'#13#10'    enderecoclient' +
      'e.logradouro,'#13#10'    enderecocliente.bairro,'#13#10' --   enderecoclient' +
      'e.complemento,'#13#10'    enderecocliente.cidade,'#13#10'    enderecocliente' +
      '.uf,'#13#10'    enderecocliente.cep,'#13#10'    enderecocliente.ramal,'#13#10'    ' +
      'clientes.geraenv'#13#10#13#10'from clientes'#13#10#13#10'  inner join enderecoclient' +
      'e on (clientes.codcliente = enderecocliente.codcliente)'#13#10#13#10'  inn' +
      'er join dmed_mensalidade on (enderecocliente.codcliente  = dmed_' +
      'mensalidade.codcliente)'#13#10#13#10'where '#13#10#13#10#13#10'enderecocliente.complemen' +
      'to LIKE '#39'VAREJ'#195'O%'#39#13#10'*/'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 168
    Top = 432
    object sqlVnRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqlVnRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlVnCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
  end
  object dspVn: TDataSetProvider
    DataSet = sqlVn
    Options = [poAllowCommandText]
    Left = 216
    Top = 432
  end
  object cdsVn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVn'
    Left = 256
    Top = 432
    object cdsVnRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsVnRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsVnCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
  end
  object sqlTRs: TSQLDataSet
    CommandText = 
      'select * from CDSNV_GERA_S'#13#10#13#10'/*select distinct '#13#10'   dmed_mensal' +
      'idade.ra,'#13#10'    dmed_mensalidade.razaosocial,'#13#10'    enderecoclient' +
      'e.logradouro,'#13#10'    enderecocliente.bairro,'#13#10'    enderecocliente.' +
      'complemento,'#13#10'    enderecocliente.cidade,'#13#10'    enderecocliente.u' +
      'f,'#13#10'    enderecocliente.cep,'#13#10'    enderecocliente.ramal,'#13#10'    cl' +
      'ientes.geraenv'#13#10#13#10'from clientes'#13#10#13#10'  inner join enderecocliente ' +
      'on (clientes.codcliente = enderecocliente.codcliente)'#13#10#13#10'  inner' +
      ' join dmed_mensalidade on (enderecocliente.codcliente  = dmed_me' +
      'nsalidade.codcliente)'#13#10#13#10#13#10#13#10'where '#13#10#13#10#13#10'((enderecocliente.compl' +
      'emento not LIKE '#39'VAREJ'#195'O%'#39') or (enderecocliente.complemento is n' +
      'ull) or (enderecocliente.complemento = '#39#39') )'#13#10#13#10'*/'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 168
    Top = 504
    object sqlTRsRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqlTRsRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlTRsCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
  end
  object dspTRs: TDataSetProvider
    DataSet = sqlTRs
    Options = [poAllowCommandText]
    Left = 208
    Top = 504
  end
  object cdsTRs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTRs'
    Left = 248
    Top = 504
    object cdsTRsRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsTRsRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsTRsCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
  end
  object sqlTRn: TSQLDataSet
    CommandText = 
      'select * from CDSNV_GERA_N'#13#10#13#10'/*select distinct '#13#10'   dmed_mensal' +
      'idade.ra,'#13#10'    dmed_mensalidade.razaosocial,'#13#10'    enderecoclient' +
      'e.logradouro,'#13#10'    enderecocliente.bairro,'#13#10'    enderecocliente.' +
      'complemento,'#13#10'    enderecocliente.cidade,'#13#10'    enderecocliente.u' +
      'f,'#13#10'    enderecocliente.cep,'#13#10'    enderecocliente.ramal,'#13#10'    cl' +
      'ientes.geraenv'#13#10#13#10'from clientes'#13#10#13#10'  inner join enderecocliente ' +
      'on (clientes.codcliente = enderecocliente.codcliente)'#13#10#13#10'  inner' +
      ' join dmed_mensalidade on (enderecocliente.codcliente  = dmed_me' +
      'nsalidade.codcliente)'#13#10#13#10#13#10#13#10'where '#13#10#13#10#13#10'((enderecocliente.compl' +
      'emento not LIKE '#39'VAREJ'#195'O%'#39') or (enderecocliente.complemento is n' +
      'ull) or (enderecocliente.complemento = '#39#39') )'#13#10#13#10'*/'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 168
    Top = 536
    object sqlTRnRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqlTRnRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlTRnCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
  end
  object dspTRn: TDataSetProvider
    DataSet = sqlTRn
    Options = [poAllowCommandText]
    Left = 208
    Top = 536
  end
  object cdsTRn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTRn'
    Left = 248
    Top = 536
    object cdsTRnRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsTRnRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsTRnCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
  end
end
