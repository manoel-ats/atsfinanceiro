object fCadDA: TfCadDA
  Left = 481
  Top = 281
  AutoScroll = False
  Caption = 'Debito Automatico'
  ClientHeight = 171
  ClientWidth = 239
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
    Left = 16
    Top = 8
    Width = 51
    Height = 13
    Caption = 'S - Sicredi '
  end
  object Label2: TLabel
    Left = 16
    Top = 24
    Width = 75
    Height = 13
    Caption = 'B - Banco Brasil'
  end
  object Label3: TLabel
    Left = 136
    Top = 16
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 96
    Width = 161
    Height = 41
    Caption = 'Imprimir'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object ComboBox1: TComboBox
    Left = 19
    Top = 41
    Width = 49
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'S'
    Items.Strings = (
      'S'
      'B')
  end
  object ComboBox2: TComboBox
    Left = 136
    Top = 40
    Width = 81
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'ASH'
    Items.Strings = (
      'ASH'
      'PCMSO')
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 8
    Top = 88
  end
end
