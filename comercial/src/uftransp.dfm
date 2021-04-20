inherited ftransp: Tftransp
  Width = 761
  Height = 535
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 10
    Top = 64
    Width = 96
    Height = 13
    Caption = 'Nome/Raz'#227'o Social'
  end
  object Label4: TLabel [1]
    Left = 197
    Top = 120
    Width = 82
    Height = 13
    Caption = 'Placa do Ve'#237'culo'
  end
  object Label5: TLabel [2]
    Left = 311
    Top = 120
    Width = 14
    Height = 13
    Caption = 'UF'
  end
  object Label6: TLabel [3]
    Left = 355
    Top = 120
    Width = 76
    Height = 13
    Caption = 'C.N.P.J./C.P.F. '
  end
  object Label7: TLabel [4]
    Left = 541
    Top = 120
    Width = 87
    Height = 13
    Caption = 'Inscri'#231#227'o Estadual'
  end
  object Label8: TLabel [5]
    Left = 10
    Top = 171
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label9: TLabel [6]
    Left = 12
    Top = 213
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label10: TLabel [7]
    Left = 245
    Top = 211
    Width = 14
    Height = 13
    Caption = 'UF'
  end
  object Label11: TLabel [8]
    Left = 12
    Top = 259
    Width = 82
    Height = 13
    Caption = 'Dados Adicionais'
  end
  object Label12: TLabel [9]
    Left = 424
    Top = 171
    Width = 27
    Height = 13
    Caption = 'Bairro'
  end
  object Label13: TLabel [10]
    Left = 641
    Top = 172
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object Label14: TLabel [11]
    Left = 297
    Top = 212
    Width = 37
    Height = 13
    Caption = 'Contato'
  end
  object Label15: TLabel [12]
    Left = 487
    Top = 213
    Width = 24
    Height = 13
    Caption = 'Fone'
  end
  object Label16: TLabel [13]
    Left = 607
    Top = 212
    Width = 24
    Height = 13
    Caption = 'Fone'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 454
    Width = 753
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
    object BitBtn1: TBitBtn
      Left = 27
      Top = 6
      Width = 103
      Height = 40
      Caption = 'Incluir c/ Fornec.'
      PopupMenu = PopupMenu1
      TabOrder = 6
      OnClick = BitBtn1Click
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 753
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Left = 81
      Top = -78
      Width = 512
      Height = 44
      Caption = 'Cadastro de transportadoras'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 83
      Top = -77
      Width = 512
      Height = 44
      Caption = 'Cadastro de transportadoras'
      Font.Name = 'Cooper Black'
    end
    object JvLabel1: TJvLabel
      Left = 1
      Top = 1
      Width = 751
      Height = 52
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cadastro de transportadoras'
      ShadowColor = clNavy
      ShadowSize = 4
      Transparent = True
      AutoOpenURL = False
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -29
      HotTrackFont.Name = 'Cooper Blk BT'
      HotTrackFont.Style = []
    end
  end
  object DBEdit1: TDBEdit [16]
    Left = 10
    Top = 80
    Width = 716
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'NOMETRANSP'
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
  object DBRadioGroup1: TDBRadioGroup [17]
    Left = 10
    Top = 115
    Width = 185
    Height = 46
    Caption = 'Frete por conta:'
    Columns = 2
    DataField = 'FRETE'
    DataSource = DtSrc
    Items.Strings = (
      'Emitente'
      'Destinat'#225'rio')
    TabOrder = 3
    Values.Strings = (
      '1'
      '2')
  end
  object DBEdit2: TDBEdit [18]
    Left = 197
    Top = 136
    Width = 114
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'PLACATRANSP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [19]
    Left = 355
    Top = 136
    Width = 185
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CNPJ_CPF'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [20]
    Left = 541
    Top = 136
    Width = 185
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'INSCRICAOESTADUAL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [21]
    Left = 10
    Top = 187
    Width = 407
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'END_TRANSP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit [22]
    Left = 12
    Top = 227
    Width = 224
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CIDADE_TRANSP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnKeyPress = FormKeyPress
  end
  object DBComboBox1: TDBComboBox [23]
    Left = 244
    Top = 227
    Width = 43
    Height = 24
    BevelKind = bkFlat
    CharCase = ecUpperCase
    DataField = 'UF_TRANSP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
    ParentFont = False
    TabOrder = 12
    OnKeyPress = FormKeyPress
  end
  object DBComboBox2: TDBComboBox [24]
    Left = 311
    Top = 136
    Width = 43
    Height = 24
    BevelKind = bkFlat
    CharCase = ecUpperCase
    DataField = 'UF_VEICULO_TRANSP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
    ParentFont = False
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [25]
    Left = 12
    Top = 278
    Width = 716
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CORPONF1'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnKeyPress = FormKeyPress
  end
  object DBEdit8: TDBEdit [26]
    Left = 12
    Top = 303
    Width = 716
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CORPONF2'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnKeyPress = FormKeyPress
  end
  object DBEdit9: TDBEdit [27]
    Left = 12
    Top = 328
    Width = 716
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CORPONF3'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnKeyPress = FormKeyPress
  end
  object DBEdit10: TDBEdit [28]
    Left = 12
    Top = 353
    Width = 716
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CORPONF4'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    OnKeyPress = FormKeyPress
  end
  object DBEdit11: TDBEdit [29]
    Left = 12
    Top = 378
    Width = 716
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CORPONF5'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    OnKeyPress = FormKeyPress
  end
  object DBEdit12: TDBEdit [30]
    Left = 12
    Top = 403
    Width = 716
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CORPONF6'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
    OnKeyPress = FormKeyPress
  end
  object DBEdit13: TDBEdit [31]
    Left = 421
    Top = 187
    Width = 212
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'BAIRRO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnKeyPress = FormKeyPress
  end
  object DBEdit14: TDBEdit [32]
    Left = 295
    Top = 227
    Width = 185
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CONTATO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnKeyPress = FormKeyPress
  end
  object DBEdit15: TDBEdit [33]
    Left = 484
    Top = 227
    Width = 117
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'FONE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnKeyPress = FormKeyPress
  end
  object DBEdit16: TDBEdit [34]
    Left = 605
    Top = 226
    Width = 122
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'FONE2'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnKeyPress = FormKeyPress
  end
  object DBEdit17: TDBEdit [35]
    Left = 642
    Top = 187
    Width = 84
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CEP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cdsTransp
  end
  object sqlForn: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 514
    Top = 256
  end
end
