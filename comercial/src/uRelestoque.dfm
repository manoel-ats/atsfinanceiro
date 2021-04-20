object fRelestoque: TfRelestoque
  Left = 456
  Top = 249
  Width = 275
  Height = 166
  BorderIcons = [biSystemMenu]
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
    Left = 8
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Tipo :'
  end
  object RadioButton1: TRadioButton
    Left = 50
    Top = 44
    Width = 169
    Height = 17
    Caption = 'Relat'#243'rio Estoque pre'#231'o Compra'
    TabOrder = 0
  end
  object RadioButton2: TRadioButton
    Left = 50
    Top = 83
    Width = 169
    Height = 17
    Caption = 'Relat'#243'rio Estoque sem Totais'
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 102
    Width = 75
    Height = 25
    Caption = 'IMPRIMIR'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 144
    Top = 103
    Width = 75
    Height = 25
    Caption = 'VOLTAR'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object cbTipo: TComboBox
    Left = 49
    Top = 7
    Width = 122
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ItemIndex = 0
    ParentFont = False
    TabOrder = 4
    Text = 'Compra/Venda'
    Items.Strings = (
      'Compra/Venda'
      'Compra'
      'Venda'
      'Servi'#231'o'
      'Venda/Servi'#231'o'
      'Compra/Servi'#231'o')
  end
  object RadioButton3: TRadioButton
    Left = 50
    Top = 63
    Width = 169
    Height = 17
    Caption = 'Relat'#243'rio Estoque pre'#231'o Venda'
    Checked = True
    TabOrder = 5
    TabStop = True
  end
end
