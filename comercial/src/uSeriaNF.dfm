inherited fSeriaNF: TfSeriaNF
  Width = 511
  Height = 493
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 84
    Top = 61
    Width = 24
    Height = 13
    Caption = 'S'#233'rie'
  end
  object Label4: TLabel [1]
    Left = 223
    Top = 61
    Width = 44
    Height = 13
    Caption = 'Ultimo N'#186
  end
  object Label5: TLabel [2]
    Left = 327
    Top = 61
    Width = 54
    Height = 13
    Caption = 'ICMS Dest.'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 412
    Width = 503
    inherited btnGravar: TBitBtn
      Left = 79
    end
    inherited btnIncluir: TBitBtn
      Left = 79
    end
    inherited btnCancelar: TBitBtn
      Left = 193
    end
    inherited btnExcluir: TBitBtn
      Left = 193
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Top = -51
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 306
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 503
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -35
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Left = 76
      Top = -83
      Width = 333
      Caption = 'S'#233'rie de N. Fiscal'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 80
      Top = -80
      Width = 333
      Caption = 'S'#233'rie de N. Fiscal'
      Font.Name = 'Cooper Black'
    end
    object JvLabel1: TJvLabel
      Left = 1
      Top = 1
      Width = 501
      Height = 52
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'S'#233'rie de N. Fiscal'
      ShadowColor = clNavy
      ShadowSize = 4
      Transparent = True
      AutoOpenURL = False
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -35
      HotTrackFont.Name = 'Cooper Blk BT'
      HotTrackFont.Style = []
    end
  end
  object DBEdit1: TDBEdit [5]
    Left = 83
    Top = 77
    Width = 134
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'SERIE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [6]
    Left = 222
    Top = 77
    Width = 99
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'ULTIMO_NUMERO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnExit = DBEdit2Exit
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [7]
    Left = 82
    Top = 101
    Width = 324
    Height = 273
    DataSource = DtSrc
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'S'#233'rie'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ULTIMO_NUMERO'
        Title.Caption = 'Ultimo N'#186
        Width = 120
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator [8]
    Left = 86
    Top = 374
    Width = 316
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 6
  end
  object DBEdit3: TDBEdit [9]
    Left = 326
    Top = 77
    Width = 75
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'ICMS_DESTACADO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnExit = DBEdit2Exit
    OnKeyPress = FormKeyPress
  end
  inherited XPMenu1: TXPMenu
    Left = 161
    Top = 168
  end
  inherited PopupMenu1: TPopupMenu
    Left = 193
    Top = 168
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_serie
    Left = 121
    Top = 168
  end
end
