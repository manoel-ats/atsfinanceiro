inherited fFuncionario: TfFuncionario
  Left = 208
  Top = 148
  Width = 690
  Height = 502
  Caption = 'Colaboradores'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 10
    Top = 59
    Width = 42
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = DBEdit1
  end
  object Label4: TLabel [1]
    Left = 8
    Top = 250
    Width = 29
    Height = 13
    Caption = 'SEXO'
    FocusControl = DBEdit2
  end
  object Label5: TLabel [2]
    Left = 114
    Top = 250
    Width = 73
    Height = 13
    Caption = 'ESTADO CIVIL'
    FocusControl = DBEdit3
  end
  object Label6: TLabel [3]
    Left = 152
    Top = 211
    Width = 61
    Height = 13
    Caption = 'DATA NASC'
    FocusControl = DBEdit4
  end
  object Label7: TLabel [4]
    Left = 10
    Top = 96
    Width = 23
    Height = 13
    Caption = 'RUA'
    FocusControl = DBEdit5
  end
  object Label8: TLabel [5]
    Left = 320
    Top = 96
    Width = 8
    Height = 13
    Caption = 'N'
    FocusControl = DBEdit6
  end
  object Label9: TLabel [6]
    Left = 376
    Top = 96
    Width = 83
    Height = 13
    Caption = 'COMPLEMENTO'
    FocusControl = DBEdit7
  end
  object Label10: TLabel [7]
    Left = 491
    Top = 93
    Width = 41
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit8
  end
  object Label11: TLabel [8]
    Left = 11
    Top = 132
    Width = 40
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit9
  end
  object Label12: TLabel [9]
    Left = 219
    Top = 132
    Width = 14
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit10
  end
  object Label13: TLabel [10]
    Left = 259
    Top = 132
    Width = 21
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit11
  end
  object Label14: TLabel [11]
    Left = 8
    Top = 171
    Width = 20
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit12
  end
  object Label15: TLabel [12]
    Left = 192
    Top = 173
    Width = 16
    Height = 13
    Caption = 'RG'
    FocusControl = DBEdit13
  end
  object Label16: TLabel [13]
    Left = 418
    Top = 132
    Width = 56
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit14
  end
  object Label17: TLabel [14]
    Left = 537
    Top = 132
    Width = 49
    Height = 13
    Caption = 'CELULAR'
    FocusControl = DBEdit15
  end
  object Label20: TLabel [15]
    Left = 224
    Top = 250
    Width = 51
    Height = 13
    Caption = 'C'#212'NJUGE'
    FocusControl = DBEdit18
  end
  object Label21: TLabel [16]
    Left = 8
    Top = 325
    Width = 17
    Height = 13
    Caption = 'PAI'
    FocusControl = DBEdit19
  end
  object Label22: TLabel [17]
    Left = 8
    Top = 288
    Width = 23
    Height = 13
    Caption = 'MAE'
    FocusControl = DBEdit20
  end
  object Label23: TLabel [18]
    Left = 81
    Top = 59
    Width = 117
    Height = 13
    Caption = 'NOME COLABORADOR'
    FocusControl = DBEdit21
  end
  object Label24: TLabel [19]
    Left = 373
    Top = 132
    Width = 24
    Height = 13
    Caption = 'DDD'
    FocusControl = DBEdit22
  end
  object Label18: TLabel [20]
    Left = 490
    Top = 57
    Width = 85
    Height = 13
    Caption = 'FUN'#199#195'O CARGO'
  end
  object Label19: TLabel [21]
    Left = 8
    Top = 212
    Width = 88
    Height = 13
    Caption = 'DATA ADMISS'#195'O'
    FocusControl = DBEdit23
  end
  object Label25: TLabel [22]
    Left = 295
    Top = 213
    Width = 117
    Height = 13
    Caption = 'DATA DESLIGAMENTO'
    FocusControl = DBEdit24
  end
  object Label26: TLabel [23]
    Left = 11
    Top = 363
    Width = 81
    Height = 13
    Caption = 'REGI'#195'O VENDA'
    FocusControl = DBEdit25
  end
  inherited MMJPanel1: TMMJPanel
    Top = 410
    Width = 674
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 674
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    TabOrder = 25
    inherited Label1: TLabel
      Left = 128
      Top = -96
      Width = 386
      Caption = 'Cadastro Colaboradores'
    end
    inherited Label2: TLabel
      Left = 130
      Top = -79
      Width = 386
      Caption = 'Cadastro Colaboradores'
    end
    object JvLabel1: TJvLabel
      Left = 1
      Top = 1
      Width = 672
      Height = 52
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cadastro Colaboradores'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -35
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
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
  object DBEdit1: TDBEdit [26]
    Left = 8
    Top = 72
    Width = 65
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'COD_FUNCIONARIO'
    DataSource = DtSrc
    TabOrder = 26
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [27]
    Left = 8
    Top = 263
    Width = 97
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'SEXO'
    DataSource = DtSrc
    TabOrder = 18
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [28]
    Left = 112
    Top = 263
    Width = 105
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'ESTADO_CIVIL'
    DataSource = DtSrc
    TabOrder = 19
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [29]
    Left = 152
    Top = 225
    Width = 134
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DATA_NASC'
    DataSource = DtSrc
    TabOrder = 17
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [30]
    Left = 8
    Top = 108
    Width = 297
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'RUA'
    DataSource = DtSrc
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [31]
    Left = 320
    Top = 108
    Width = 42
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'N'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit [32]
    Left = 376
    Top = 108
    Width = 105
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'COMPLEMENTO'
    DataSource = DtSrc
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit8: TDBEdit [33]
    Left = 489
    Top = 108
    Width = 176
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'BAIRRO'
    DataSource = DtSrc
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit9: TDBEdit [34]
    Left = 8
    Top = 146
    Width = 201
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CIDADE'
    DataSource = DtSrc
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit10: TDBEdit [35]
    Left = 216
    Top = 146
    Width = 33
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = DtSrc
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object DBEdit11: TDBEdit [36]
    Left = 256
    Top = 146
    Width = 107
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CEP'
    DataSource = DtSrc
    TabOrder = 9
    OnKeyPress = FormKeyPress
  end
  object DBEdit12: TDBEdit [37]
    Left = 8
    Top = 185
    Width = 173
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CPF'
    DataSource = DtSrc
    TabOrder = 15
    OnKeyPress = FormKeyPress
  end
  object DBEdit13: TDBEdit [38]
    Left = 192
    Top = 185
    Width = 171
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'RG'
    DataSource = DtSrc
    TabOrder = 16
    OnKeyPress = FormKeyPress
  end
  object DBEdit14: TDBEdit [39]
    Left = 416
    Top = 146
    Width = 110
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'TELEFONE'
    DataSource = DtSrc
    TabOrder = 11
    OnKeyPress = FormKeyPress
  end
  object DBEdit15: TDBEdit [40]
    Left = 535
    Top = 146
    Width = 130
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CELULAR'
    DataSource = DtSrc
    TabOrder = 12
    OnKeyPress = FormKeyPress
  end
  object DBEdit18: TDBEdit [41]
    Left = 224
    Top = 263
    Width = 197
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'ESPOSA'
    DataSource = DtSrc
    TabOrder = 20
    OnKeyPress = FormKeyPress
  end
  object DBEdit19: TDBEdit [42]
    Left = 8
    Top = 341
    Width = 413
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'PAI'
    DataSource = DtSrc
    TabOrder = 22
    OnKeyPress = FormKeyPress
  end
  object DBEdit20: TDBEdit [43]
    Left = 8
    Top = 303
    Width = 413
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'MAE'
    DataSource = DtSrc
    TabOrder = 21
    OnKeyPress = FormKeyPress
  end
  object DBEdit21: TDBEdit [44]
    Left = 80
    Top = 72
    Width = 401
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'NOME_FUNCIONARIO'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit22: TDBEdit [45]
    Left = 370
    Top = 146
    Width = 30
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DDD'
    DataSource = DtSrc
    TabOrder = 10
    OnKeyPress = FormKeyPress
  end
  object DBRadioGroup1: TDBRadioGroup [46]
    Left = 432
    Top = 287
    Width = 152
    Height = 89
    Caption = 'USUARIO'
    DataField = 'RECEBE_COMISSAO'
    DataSource = DtSrc
    Items.Strings = (
      'VENDEDOR'
      'COMPRADOR'
      'AMBOS')
    PopupMenu = PopupMenu1
    TabOrder = 23
    Values.Strings = (
      'VENDEDOR'
      'COMPRADOR'
      'AMBOS')
  end
  object GroupBox1: TGroupBox [47]
    Left = 586
    Top = 287
    Width = 79
    Height = 52
    Caption = '% Comiss'#227'o'
    TabOrder = 27
    object DBEdit16: TDBEdit
      Left = 12
      Top = 20
      Width = 53
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VALOR_COMISSAO'
      DataSource = DtSrc
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
  end
  object DBEdit23: TDBEdit [48]
    Left = 6
    Top = 224
    Width = 134
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DATA_ADMISSAO'
    DataSource = DtSrc
    TabOrder = 13
    OnKeyPress = FormKeyPress
  end
  object DBEdit24: TDBEdit [49]
    Left = 294
    Top = 225
    Width = 127
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DATA_DESLIGAMENTO'
    DataSource = DtSrc
    TabOrder = 14
    OnKeyPress = FormKeyPress
  end
  object DBEdit25: TDBEdit [50]
    Left = 8
    Top = 380
    Width = 657
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'REGIAO_VENDA'
    DataSource = DtSrc
    TabOrder = 24
    OnKeyPress = FormKeyPress
  end
  object DBEdit17: TDBEdit [51]
    Left = 488
    Top = 72
    Width = 177
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'FUNCAO_CARGO'
    DataSource = DtSrc
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object GroupBox2: TGroupBox [52]
    Left = 432
    Top = 180
    Width = 233
    Height = 105
    Caption = 'Banco'
    TabOrder = 28
    object Label27: TLabel
      Left = 8
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object Label28: TLabel
      Left = 8
      Top = 48
      Width = 39
      Height = 13
      Caption = 'Ag'#234'ncia'
    end
    object Label29: TLabel
      Left = 8
      Top = 80
      Width = 53
      Height = 13
      Caption = 'Conta Corr.'
    end
    object DBEdit26: TDBEdit
      Left = 64
      Top = 48
      Width = 145
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'AGENCIA'
      DataSource = DtSrc
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit27: TDBEdit
      Left = 64
      Top = 77
      Width = 145
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CONTACORRENTE'
      DataSource = DtSrc
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBComboBox1: TDBComboBox
      Left = 64
      Top = 16
      Width = 145
      Height = 21
      DataField = 'BANCO'
      DataSource = DtSrc
      ItemHeight = 13
      Items.Strings = (
        'BANCO DO BRASIL'
        'BRADESCO'
        'ITAU'
        'CAIXA ECON. FEDERAL'
        'CAIXA ECON. ESTADUAL'
        'SANTANDER'
        '')
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cds_fun
    Left = 552
  end
  object dsp_fun: TDataSetProvider
    DataSet = sql_fun
    UpdateMode = upWhereKeyOnly
    Left = 440
    Top = 24
  end
  object cds_fun: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_fun'
    Left = 480
    Top = 24
    object cds_funCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_funSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_funESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_funDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_funRUA: TStringField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_funN: TStringField
      FieldName = 'N'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_funCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_funBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_funCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_funUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_funCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cds_funRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_funTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '0000\-0000;1;_'
      Size = 13
    end
    object cds_funCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      EditMask = '0000\-0000;1;_'
      Size = 13
    end
    object cds_funRECEBE_COMISSAO: TStringField
      FieldName = 'RECEBE_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cds_funVALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_funESPOSA: TStringField
      FieldName = 'ESPOSA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_funPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_funMAE: TStringField
      FieldName = 'MAE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_funNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_funCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\.000\.000\/00;1;_'
      Size = 14
    end
    object cds_funDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object cds_funFUNCAO_CARGO: TStringField
      FieldName = 'FUNCAO_CARGO'
      Size = 50
    end
    object cds_funDATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cds_funDATA_DESLIGAMENTO: TDateField
      FieldName = 'DATA_DESLIGAMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object cds_funREGIAO_VENDA: TStringField
      FieldName = 'REGIAO_VENDA'
      Size = 200
    end
    object cds_funESPECIALIDADE: TStringField
      FieldName = 'ESPECIALIDADE'
      Size = 100
    end
    object cds_funCONTACORRENTE: TStringField
      FieldName = 'CONTACORRENTE'
      Size = 10
    end
    object cds_funBANCO: TStringField
      FieldName = 'BANCO'
      Size = 10
    end
    object cds_funCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
    object cds_funAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 30
    end
  end
  object sql_fun: TSQLDataSet
    CommandText = 
      'select * from FUNCIONARIO '#13#10'where COD_FUNCIONARIO = :Pcod order ' +
      'by NOME_FUNCIONARIO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 400
    Top = 24
    object sql_funCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sql_funSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sql_funESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_funDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object sql_funRUA: TStringField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sql_funN: TStringField
      FieldName = 'N'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sql_funCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sql_funBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sql_funCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sql_funUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sql_funCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sql_funRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sql_funTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sql_funCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sql_funRECEBE_COMISSAO: TStringField
      FieldName = 'RECEBE_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sql_funVALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sql_funESPOSA: TStringField
      FieldName = 'ESPOSA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sql_funPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sql_funMAE: TStringField
      FieldName = 'MAE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sql_funNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sql_funCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\.000\.000\/00;1;_'
      Size = 14
    end
    object sql_funDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object sql_funFUNCAO_CARGO: TStringField
      FieldName = 'FUNCAO_CARGO'
      Size = 50
    end
    object sql_funDATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
    end
    object sql_funDATA_DESLIGAMENTO: TDateField
      FieldName = 'DATA_DESLIGAMENTO'
    end
    object sql_funREGIAO_VENDA: TStringField
      FieldName = 'REGIAO_VENDA'
      Size = 200
    end
    object sql_funESPECIALIDADE: TStringField
      FieldName = 'ESPECIALIDADE'
      Size = 100
    end
    object sql_funCONTACORRENTE: TStringField
      FieldName = 'CONTACORRENTE'
      Size = 10
    end
    object sql_funBANCO: TStringField
      FieldName = 'BANCO'
      Size = 10
    end
    object sql_funCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
    object sql_funAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 30
    end
  end
  object sql_proc_fun: TSQLClientDataSet
    CommandText = 
      'select COD_FUNCIONARIO, NOME_FUNCIONARIO from FUNCIONARIO '#13#10'wher' +
      'e NOME_FUNCIONARIO LIKE :Pnome order by NOME_FUNCIONARIO'#13#10
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'Pnome'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 584
    Top = 228
    object sql_proc_funCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_proc_funNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 60
    end
  end
  object EvCheckCPF1: TEvCheckCPF
    Associate = DBEdit12
    Left = 72
    Top = 228
  end
end
