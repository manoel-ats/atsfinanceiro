inherited fMovimentoCont: TfMovimentoCont
  Left = 204
  Top = 174
  Width = 781
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Top = 336
    Width = 765
    Height = 74
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 765
    inherited Label1: TLabel
      Left = 3
      Width = 356
      Caption = 'Movimento Cont'#225'bil'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 5
      Top = 11
      Width = 356
      Height = 44
      Caption = 'Movimento Cont'#225'bil'
      Font.Name = 'Cooper Black'
    end
    object Label3: TLabel
      Left = 416
      Top = 8
      Width = 59
      Height = 13
      Caption = 'HISTORICO'
      Transparent = True
    end
    object BitBtn1: TBitBtn
      Left = 557
      Top = 6
      Width = 186
      Height = 18
      Caption = 'Gravar Altera'#231#227'o Hisotico'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object DBGrid1: TDBGrid [2]
    Left = 0
    Top = 54
    Width = 765
    Height = 282
    Align = alClient
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODCONT'
        Title.Caption = 'C'#243'digo'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODORIGEM'
        Title.Caption = 'Num. Doc.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOORIGEM'
        Title.Caption = 'Tipo Lanc.'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCCUSTO'
        Title.Caption = 'C. Custo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTA'
        Title.Caption = 'Conta'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Desc. Conta'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORCREDITO'
        Title.Caption = 'Cr'#233'dito'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORDEBITO'
        Title.Caption = 'D'#233'bito'
        Width = 70
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit [3]
    Left = 416
    Top = 24
    Width = 329
    Height = 21
    DataField = 'HISTORICO'
    DataSource = DtSrc
    TabOrder = 3
  end
  inherited XPMenu1: TXPMenu
    Left = 600
    Top = 64
  end
  inherited PopupMenu1: TPopupMenu
    Left = 632
    Top = 48
  end
  inherited DtSrc: TDataSource
    DataSet = DM.c3_contabil
    Top = 56
  end
end
