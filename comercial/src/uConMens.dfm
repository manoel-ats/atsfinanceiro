object fConMens: TfConMens
  Left = 422
  Top = 179
  Width = 565
  Height = 258
  BorderIcons = [biSystemMenu]
  Caption = 'Conferir Mensalidade N'#227'o Gerada Socios Ativos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 221
    Top = 19
    Width = 54
    Height = 16
    Caption = 'Periodo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 128
    Top = 72
    Width = 15
    Height = 13
    Caption = 'DE'
  end
  object Label3: TLabel
    Left = 240
    Top = 72
    Width = 21
    Height = 13
    Caption = 'AT'#201
  end
  object Label4: TLabel
    Left = 171
    Top = 104
    Width = 16
    Height = 20
    Caption = '....'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 206
    Top = 49
    Width = 77
    Height = 13
    Caption = 'Mes de Emiss'#227'o'
  end
  object MaskEdit3: TJvDatePickerEdit
    Left = 152
    Top = 66
    Width = 83
    Height = 21
    AllowNoDate = True
    Checked = True
    DateFormat = 'dd/MM/yy'
    DateSeparator = '/'
    StoreDateFormat = True
    TabOrder = 0
  end
  object MaskEdit4: TJvDatePickerEdit
    Left = 264
    Top = 66
    Width = 86
    Height = 21
    AllowNoDate = True
    Checked = True
    DateFormat = 'dd/MM/yy'
    DateSeparator = '/'
    StoreDateFormat = True
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 148
    Top = 128
    Width = 286
    Height = 25
    Caption = 'Socios Ativos Sem Mensalidades Gerada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object ComboBox1: TComboBox
    Left = 376
    Top = 66
    Width = 89
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 3
    Text = 'ASH'
    Items.Strings = (
      'ASH'
      'PCMSO')
  end
  object BitBtn2: TBitBtn
    Left = 150
    Top = 176
    Width = 287
    Height = 25
    Caption = 'Socios  Desligado Com Mensalidade Gerada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 55
    Top = 64
  end
end
