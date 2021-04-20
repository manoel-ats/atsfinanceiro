object fGerar_DadosS: TfGerar_DadosS
  Left = 275
  Top = 59
  Width = 928
  Height = 647
  Caption = 'Gerar Dados'
  Color = clActiveCaption
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
    DataField = 'NOMECLIENTE'
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
      Text = '01/01/11'
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
      Text = '31/12/11'
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
    DataField = 'CODCLIENTE'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 8
  end
  object DBGrid2: TDBGrid
    Left = 152
    Top = 161
    Width = 655
    Height = 76
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
    Left = 25
    Top = 353
    Width = 105
    Height = 25
    Caption = 'Inserir Mensalidade'
    TabOrder = 11
    OnClick = BitBtn4Click
  end
  object DBGrid3: TDBGrid
    Left = 160
    Top = 352
    Width = 649
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
    Width = 99
    Height = 25
    Caption = 'Relatorio Dmed'
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
    Top = 389
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
  object DBGrid4: TDBGrid
    Left = 160
    Top = 472
    Width = 649
    Height = 120
    DataSource = dsdmt
    TabOrder = 17
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn8: TBitBtn
    Left = 816
    Top = 544
    Width = 75
    Height = 25
    Caption = 'BitBtn8'
    TabOrder = 18
    OnClick = BitBtn8Click
  end
  object DBGrid5: TDBGrid
    Left = 152
    Top = 249
    Width = 655
    Height = 76
    DataSource = dsREE
    TabOrder = 19
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn9: TBitBtn
    Left = 16
    Top = 264
    Width = 121
    Height = 25
    Caption = 'Inserir Reem _N'#194'O USAR'
    TabOrder = 20
    OnClick = BitBtn9Click
  end
  object Checkpdf: TCheckBox
    Left = 13
    Top = 414
    Width = 45
    Height = 17
    Caption = 'pdf'
    TabOrder = 21
  end
  object BitBtn10: TBitBtn
    Left = 16
    Top = 461
    Width = 129
    Height = 25
    Caption = 'Relatorio Dmed Varej'#227'o'
    TabOrder = 22
    OnClick = BitBtn10Click
  end
  object BitBtn11: TBitBtn
    Left = 24
    Top = 581
    Width = 99
    Height = 25
    Caption = 'Exporta Dmed'
    TabOrder = 23
    OnClick = BitBtn11Click
  end
  object BitBtn12: TBitBtn
    Left = 136
    Top = 584
    Width = 99
    Height = 25
    Caption = 'Exporta Dmed'
    TabOrder = 24
    OnClick = BitBtn12Click
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE , RAZAOSOCIAL ,RA ,cnpj , datares' +
      'c '#13#10'   from clientes  '#13#10'   where segmento = 0 and GRUPO_CLIENTE ' +
      '= '#39'ASH'#39#13#10'   and ((dataresc is null) or (dataresc > '#39'12/31/10'#39'))'#13 +
      #10'   and cnpj = '#39'000.000.000-00'#39' '#13#10'order by ra'#13#10#13#10
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
    object cdsClienteBuscaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
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
    object cdsClienteBuscaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsClienteBuscaDATARESC: TDateField
      FieldName = 'DATARESC'
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsClienteBusca
    Left = 384
  end
  object dsConferir: TDataSource
    DataSet = cdsConferir
    Left = 424
    Top = 121
  end
  object cdsConferir: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'assoc'
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
    object cdsConferirCOD_CLIENTE: TSmallintField
      FieldName = 'COD_CLIENTE'
    end
    object cdsConferirCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object cdsConferirNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 60
    end
    object cdsConferirCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsConferirTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
    end
    object cdsConferirDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cdsConferirCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsConferirPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object cdsConferirNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object cdsConferirCODVENDA1: TIntegerField
      FieldName = 'CODVENDA1'
    end
    object cdsConferirRA1: TStringField
      FieldName = 'RA1'
      Size = 10
    end
    object cdsConferirNOMECLIENTE1: TStringField
      FieldName = 'NOMECLIENTE1'
      Size = 50
    end
    object cdsConferirRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsConferirPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsConferirVALOR_RECIBO: TFloatField
      FieldName = 'VALOR_RECIBO'
    end
  end
  object dspConferir: TDataSetProvider
    DataSet = sqlConferir
    Options = [poAllowCommandText]
    Left = 312
    Top = 105
  end
  object sqlConferir: TSQLDataSet
    CommandText = 'select * from conferir_S (:assoc , :dta1 ,:dta2)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'assoc'
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
    object sqlConferirCOD_CLIENTE: TSmallintField
      FieldName = 'COD_CLIENTE'
    end
    object sqlConferirCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object sqlConferirNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 60
    end
    object sqlConferirCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sqlConferirTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
    end
    object sqlConferirDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object sqlConferirCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object sqlConferirPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object sqlConferirNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object sqlConferirCODVENDA1: TIntegerField
      FieldName = 'CODVENDA1'
    end
    object sqlConferirRA1: TStringField
      FieldName = 'RA1'
      Size = 10
    end
    object sqlConferirNOMECLIENTE1: TStringField
      FieldName = 'NOMECLIENTE1'
      Size = 50
    end
    object sqlConferirRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqlConferirPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object sqlConferirVALOR_RECIBO: TFloatField
      FieldName = 'VALOR_RECIBO'
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
    object cdsDmensDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object cdsDmensTIPO_DEP: TStringField
      FieldName = 'TIPO_DEP'
      Size = 2
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
      'dmovimento ,'#13#10'    codvenda ,'#13#10'    datanasc ,'#13#10'    tipo_dep'#13#10#13#10' f' +
      'rom dmed_antes_S(:titular) where vlr_mensal > 0'
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
    object sqlDmensDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object sqlDmensTIPO_DEP: TStringField
      FieldName = 'TIPO_DEP'
      Size = 2
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
    CommandText = 'select *   FROM REL_DMED_11_S(:titular) '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
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
      'eembolso,'#13#10'    valor '#13#10#13#10' from INSERIR_REEM_S WHERE razaosocial ' +
      '= :PRAZAO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
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
    Top = 328
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
    Left = 72
    Top = 328
  end
  object sqlTR: TSQLDataSet
    CommandText = 
      'select distinct '#13#10'   dmed_mensalidade.ra,'#13#10'    dmed_mensalidade.' +
      'razaosocial,'#13#10'    enderecocliente.logradouro,'#13#10'    enderecoclien' +
      'te.bairro,'#13#10'    enderecocliente.complemento,'#13#10'    enderecoclient' +
      'e.cidade,'#13#10'    enderecocliente.uf,'#13#10'    enderecocliente.cep,'#13#10'  ' +
      '  enderecocliente.ramal,'#13#10'    clientes.geraenv'#13#10#13#10'from clientes'#13 +
      #10#13#10'  inner join enderecocliente on (clientes.codcliente = endere' +
      'cocliente.codcliente)'#13#10#13#10'  inner join dmed_mensalidade on (ender' +
      'ecocliente.codcliente  = dmed_mensalidade.codcliente)'#13#10#13#10'where '#13 +
      #10#13#10#13#10'((enderecocliente.complemento not LIKE '#39'VAREJ'#195'O%'#39') or (ende' +
      'recocliente.complemento is null) or (enderecocliente.complemento' +
      ' = '#39#39') )'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 24
    Top = 328
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
    Params = <>
    ProviderName = 'dspBR'
    Left = 104
    Top = 528
    object cdsBRCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsBRRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsBRRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsBRCPF: TStringField
      FieldName = 'CPF'
      Size = 18
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
      'select distinct '#13#10'    dmed_mensalidade.codcliente,'#13#10'    dmed_men' +
      'salidade.ra,'#13#10'    dmed_mensalidade.razaosocial,    '#13#10'    dmed_me' +
      'nsalidade.cpf'#13#10'from dmed_mensalidade'#13#10'where dmed_mensalidade.raz' +
      'aosocial = dmed_mensalidade.nomecliente '#13#10#13#10'order by ra'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 528
    object sqlBRCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sqlBRRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlBRRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqlBRCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
  end
  object cdsV: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider3'
    Left = 104
    Top = 496
    object cdsVRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsVRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLDataSet3
    Options = [poAllowCommandText]
    Left = 64
    Top = 496
  end
  object SQLDataSet3: TSQLDataSet
    CommandText = 
      'select distinct '#13#10'    dmed_mensalidade.ra,'#13#10'    dmed_mensalidade' +
      '.razaosocial,'#13#10'    enderecocliente.logradouro,'#13#10'    enderecoclie' +
      'nte.bairro,'#13#10' --   enderecocliente.complemento,'#13#10'    enderecocli' +
      'ente.cidade,'#13#10'    enderecocliente.uf,'#13#10'    enderecocliente.cep,'#13 +
      #10'    enderecocliente.ramal,'#13#10'    clientes.geraenv'#13#10#13#10'from client' +
      'es'#13#10#13#10'  inner join enderecocliente on (clientes.codcliente = end' +
      'erecocliente.codcliente)'#13#10#13#10'  inner join dmed_mensalidade on (en' +
      'derecocliente.codcliente  = dmed_mensalidade.codcliente)'#13#10#13#10'wher' +
      'e '#13#10#13#10#13#10'enderecocliente.complemento LIKE '#39'VAREJ'#195'O%'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 496
    object SQLDataSet3RA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object SQLDataSet3RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
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
end
