inherited fbanco: Tfbanco
  Width = 700
  Height = 485
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 107
    Top = 55
    Width = 45
    Height = 16
    Caption = 'Banco :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [1]
    Left = 294
    Top = 56
    Width = 46
    Height = 16
    Caption = 'Raz'#227'o :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [2]
    Left = 39
    Top = 100
    Width = 54
    Height = 13
    Caption = 'CARTEIRA'
    FocusControl = DBEdit3
  end
  object Label6: TLabel [3]
    Left = 385
    Top = 102
    Width = 96
    Height = 13
    Caption = 'CODIGO CEDENTE'
    FocusControl = DBEdit4
  end
  object Label7: TLabel [4]
    Left = 40
    Top = 57
    Width = 45
    Height = 13
    Caption = 'CODIGO '
    FocusControl = DBEdit5
  end
  object Label8: TLabel [5]
    Left = 106
    Top = 100
    Width = 92
    Height = 13
    Caption = 'CODIGO AGENCIA'
    FocusControl = DBEdit6
  end
  object Label9: TLabel [6]
    Left = 214
    Top = 100
    Width = 19
    Height = 13
    Caption = 'DIG'
    FocusControl = DBEdit7
  end
  object Label10: TLabel [7]
    Left = 243
    Top = 100
    Width = 88
    Height = 13
    Caption = 'NUMERO CONTA'
    FocusControl = DBEdit8
  end
  object Label11: TLabel [8]
    Left = 355
    Top = 100
    Width = 19
    Height = 13
    Caption = 'DIG'
    FocusControl = DBEdit9
  end
  inherited MMJPanel1: TMMJPanel
    Top = 404
    Width = 692
    inherited btnGravar: TBitBtn
      Left = 180
    end
    inherited btnIncluir: TBitBtn
      Left = 180
    end
    inherited btnCancelar: TBitBtn
      Left = 293
    end
    inherited btnExcluir: TBitBtn
      Left = 293
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 406
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 692
    inherited Label1: TLabel
      Left = 151
      Width = 362
      Height = 44
      Caption = 'Cadastro de Bancos'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 155
      Width = 362
      Height = 44
      Caption = 'Cadastro de Bancos'
      Font.Name = 'Cooper Black'
    end
  end
  object DBEdit1: TDBEdit [11]
    Left = 105
    Top = 70
    Width = 180
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'BANCO'
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
  object DBEdit2: TDBEdit [12]
    Left = 292
    Top = 70
    Width = 337
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'NOMEBANCO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [13]
    Left = 36
    Top = 249
    Width = 616
    Height = 113
    TabStop = False
    BorderStyle = bsNone
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BANCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEBANCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CARTEIRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_CEDENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_EMPRESA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_AGENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIGITO_AGENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_CONTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIGITO_CONTA'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator [14]
    Left = 220
    Top = 372
    Width = 248
    Height = 28
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 12
  end
  object DBEdit3: TDBEdit [15]
    Left = 39
    Top = 116
    Width = 57
    Height = 21
    DataField = 'CARTEIRA'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [16]
    Left = 385
    Top = 117
    Width = 103
    Height = 21
    DataField = 'CODIGO_CEDENTE'
    DataSource = DtSrc
    TabOrder = 9
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [17]
    Left = 40
    Top = 73
    Width = 56
    Height = 21
    DataField = 'CODIGO_EMPRESA'
    DataSource = DtSrc
    TabOrder = 10
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [18]
    Left = 104
    Top = 116
    Width = 106
    Height = 21
    DataField = 'CODIGO_AGENCIA'
    DataSource = DtSrc
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit [19]
    Left = 214
    Top = 116
    Width = 17
    Height = 21
    DataField = 'DIGITO_AGENCIA'
    DataSource = DtSrc
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit8: TDBEdit [20]
    Left = 243
    Top = 116
    Width = 106
    Height = 21
    DataField = 'NUMERO_CONTA'
    DataSource = DtSrc
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit9: TDBEdit [21]
    Left = 355
    Top = 116
    Width = 17
    Height = 21
    DataField = 'DIGITO_CONTA'
    DataSource = DtSrc
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object DBEdit10: TDBEdit [22]
    Left = 40
    Top = 144
    Width = 611
    Height = 21
    DataField = 'INSTRUCAO1'
    DataSource = DtSrc
    TabOrder = 13
  end
  object DBEdit11: TDBEdit [23]
    Left = 40
    Top = 168
    Width = 611
    Height = 21
    DataField = 'INSTRUCAO2'
    DataSource = DtSrc
    TabOrder = 14
  end
  object DBEdit12: TDBEdit [24]
    Left = 40
    Top = 192
    Width = 611
    Height = 21
    DataField = 'INSTRUCAO3'
    DataSource = DtSrc
    TabOrder = 15
  end
  object DBEdit13: TDBEdit [25]
    Left = 40
    Top = 216
    Width = 611
    Height = 21
    DataField = 'INSTRUCAO4'
    DataSource = DtSrc
    TabOrder = 16
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cdsBanco
  end
end
