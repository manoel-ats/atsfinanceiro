object Form1: TForm1
  Left = 192
  Top = 107
  Width = 763
  Height = 545
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FlatGauge1: TFlatGauge
    Left = 158
    Top = 392
    Width = 457
    Height = 25
    AdvColorBorder = 0
    ColorBorder = 8623776
    Progress = 0
  end
  object Label86: TLabel
    Left = 112
    Top = 48
    Width = 91
    Height = 16
    Caption = 'Assunto : Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label73: TLabel
    Left = 158
    Top = 215
    Width = 68
    Height = 16
    Caption = 'Descri'#231#227'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 56
    Top = 24
    Width = 37
    Height = 13
    Caption = 'RAZAO'
    FocusControl = DBEdit1
  end
  object BitBtn1: TBitBtn
    Left = 304
    Top = 480
    Width = 169
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object edtAssunto: TEdit
    Left = 111
    Top = 65
    Width = 457
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 159
    Top = 232
    Width = 457
    Height = 121
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object ListBox1: TListBox
    Left = 160
    Top = 136
    Width = 457
    Height = 73
    ItemHeight = 13
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 80
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Anexar'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object cbxConfirmaLeitura: TCheckBox
    Left = 312
    Top = 360
    Width = 97
    Height = 17
    Caption = 'Confirma Recebimento'
    TabOrder = 5
  end
  object ProgressBar1: TProgressBar
    Left = 160
    Top = 425
    Width = 455
    Height = 22
    TabOrder = 6
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 16
    Width = 484
    Height = 21
    DataField = 'RAZAO'
    DataSource = DataSource1
    TabOrder = 7
  end
  object BitBtn3: TBitBtn
    Left = 40
    Top = 344
    Width = 75
    Height = 25
    Caption = 'BitBtn3'
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object IdSMTP1: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atLogin
    Left = 656
    Top = 462
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 687
    Top = 463
  end
  object odAnexos: TOpenDialog
    Left = 568
    Top = 464
  end
  object DataSource1: TDataSource
    DataSet = DM.cds_empresa
    Left = 40
    Top = 168
  end
end
