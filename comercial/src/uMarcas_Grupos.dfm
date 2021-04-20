inherited fMarcas_Grupos: TfMarcas_Grupos
  Left = 235
  Top = 139
  Width = 492
  Height = 433
  OldCreateOrder = True
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 8
    Top = 64
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 345
    Width = 484
    inherited btnGravar: TBitBtn
      Left = 78
    end
    inherited btnIncluir: TBitBtn
      Left = 78
    end
    inherited btnCancelar: TBitBtn
      Left = 191
    end
    inherited btnExcluir: TBitBtn
      Left = 191
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Top = -54
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 304
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 484
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Left = 49
      Top = -69
      Width = 355
      Height = 44
      Caption = 'Cadastro de Marcas'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 53
      Top = -70
      Width = 355
      Height = 44
      Caption = 'Cadastro de Marcas'
      Font.Name = 'Cooper Black'
    end
    object JvLabel1: TJvLabel
      Left = 1
      Top = 1
      Width = 482
      Height = 52
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cad. de Marcas'
      ShadowColor = clNavy
      ShadowSize = 4
      Transparent = True
      AutoOpenURL = False
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -32
      HotTrackFont.Name = 'Cooper Blk BT'
      HotTrackFont.Style = []
    end
  end
  object DBEdit1: TDBEdit [3]
    Left = 8
    Top = 80
    Width = 465
    Height = 24
    CharCase = ecUpperCase
    DataField = 'DESCMARCAS'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnExit = DBEdit1Exit
  end
  object DBGrid1: TDBGrid [4]
    Left = 8
    Top = 104
    Width = 465
    Height = 209
    DataSource = DtSrc
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCMARCAS'
        Title.Caption = 'Descri'#231#227'o'
        Width = 400
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator [5]
    Left = 130
    Top = 320
    Width = 224
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 4
  end
  inherited XPMenu1: TXPMenu
    Left = 384
    Top = 48
  end
  inherited PopupMenu1: TPopupMenu
    Left = 416
    Top = 48
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_Marca
    Left = 352
    Top = 48
  end
end
