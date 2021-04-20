object fRaso: TfRaso
  Left = 503
  Top = 247
  Width = 356
  Height = 202
  Caption = 'fRaso'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 28
    Top = 37
    Width = 15
    Height = 13
    Caption = 'DE'
  end
  object Label3: TLabel
    Left = 184
    Top = 37
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object Label1: TLabel
    Left = 157
    Top = 4
    Width = 48
    Height = 16
    Caption = 'Periodo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object JvDateEdit1: TJvDateEdit
    Left = 53
    Top = 33
    Width = 120
    Height = 21
    TabOrder = 0
  end
  object JvDateEdit2: TJvDateEdit
    Left = 205
    Top = 33
    Width = 120
    Height = 21
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 141
    Top = 110
    Width = 94
    Height = 33
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 56
    Top = 96
  end
end
