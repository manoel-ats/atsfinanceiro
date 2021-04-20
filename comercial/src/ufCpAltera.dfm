inherited fCpAltera: TfCpAltera
  Left = 293
  Top = 137
  Width = 784
  Height = 581
  Caption = 'Alterar T'#237'tulos.'
  Font.Height = -13
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label3: TLabel [0]
    Left = 5
    Top = 64
    Width = 53
    Height = 16
    Caption = 'Emiss'#227'o'
    FocusControl = DBEdit1
  end
  object Label4: TLabel [1]
    Left = 86
    Top = 64
    Width = 71
    Height = 16
    Caption = 'Vencimento'
    FocusControl = DBEdit2
  end
  object Label5: TLabel [2]
    Left = 168
    Top = 64
    Width = 70
    Height = 16
    Caption = 'Pagamento'
    FocusControl = DBEdit3
  end
  object Label6: TLabel [3]
    Left = 433
    Top = 64
    Width = 55
    Height = 16
    Caption = 'Vlr. Pago'
    FocusControl = DBEdit4
  end
  object Label7: TLabel [4]
    Left = 526
    Top = 64
    Width = 80
    Height = 16
    Caption = 'Vlr. Pendente'
    FocusControl = DBEdit5
  end
  object Label8: TLabel [5]
    Left = 246
    Top = 64
    Width = 55
    Height = 16
    Caption = 'Vlr. T'#237'tulo'
    FocusControl = DBEdit6
  end
  object Label9: TLabel [6]
    Left = 273
    Top = 112
    Width = 54
    Height = 16
    Caption = 'Parcelas'
    FocusControl = DBEdit7
    Visible = False
  end
  object Label24: TLabel [7]
    Left = 127
    Top = 108
    Width = 115
    Height = 16
    Caption = 'Forma Pagamento:'
    Visible = False
  end
  object Label13: TLabel [8]
    Left = 5
    Top = 107
    Width = 83
    Height = 16
    Caption = 'Caixa / Banco'
    Visible = False
  end
  object Label10: TLabel [9]
    Left = 625
    Top = 63
    Width = 87
    Height = 16
    Caption = 'N'#186' Documento'
    FocusControl = DBEdit9
  end
  object Label11: TLabel [10]
    Left = 339
    Top = 65
    Width = 57
    Height = 16
    Caption = 'Vlr. 1'#170' Via'
    FocusControl = DBEdit6
  end
  object Label12: TLabel [11]
    Left = 249
    Top = 112
    Width = 20
    Height = 16
    Caption = 'Via'
    FocusControl = DBEdit7
    Visible = False
  end
  object Label14: TLabel [12]
    Left = 404
    Top = 108
    Width = 81
    Height = 16
    Caption = 'Nome Cliente'
    PopupMenu = PopupMenu1
  end
  object Label15: TLabel [13]
    Left = 72
    Top = 112
    Width = 40
    Height = 16
    Caption = 'Nome '
    FocusControl = DBEdit12
  end
  object Label16: TLabel [14]
    Left = 8
    Top = 112
    Width = 44
    Height = 16
    Caption = 'Codigo'
    FocusControl = DBEdit13
  end
  object Panel1: TPanel [15]
    Left = 317
    Top = 105
    Width = 396
    Height = 51
    Color = 16776176
    TabOrder = 23
    object Label17: TLabel
      Left = 329
      Top = 57
      Width = 44
      Height = 16
      Caption = 'Codigo'
      FocusControl = DBEdit13
    end
    object Label18: TLabel
      Left = 6
      Top = 11
      Width = 44
      Height = 16
      Caption = 'Codigo'
    end
    object Label19: TLabel
      Left = 95
      Top = 10
      Width = 40
      Height = 16
      Caption = 'Nome '
    end
    object Label20: TLabel
      Left = 102
      Top = 0
      Width = 100
      Height = 13
      Caption = 'Nome a Ser Gravado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  inherited MMJPanel1: TMMJPanel
    Top = 0
    Width = 768
    Height = 59
    Align = alTop
    TabOrder = 9
    inherited btnCancelar: TBitBtn [0]
      Left = 82
      Top = 2
      Width = 77
      Height = 55
      Layout = blGlyphTop
    end
    inherited btnExcluir: TBitBtn [1]
      Left = 82
      Top = 2
      Width = 77
      Height = 55
      Layout = blGlyphTop
    end
    inherited btnGravar: TBitBtn [2]
      Left = 4
      Top = 2
      Width = 77
      Height = 55
      Layout = blGlyphTop
    end
    inherited btnIncluir: TBitBtn [3]
      Width = 0
      Visible = False
    end
    inherited btnProcurar: TBitBtn
      Width = 0
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 160
      Top = 2
      Width = 77
      Height = 55
      Layout = blGlyphTop
    end
  end
  inherited MMJPanel2: TMMJPanel
    Top = 507
    Width = 768
    Height = 36
    Align = alBottom
    TabOrder = 10
    inherited Label1: TLabel
      Left = 8
      Top = -6
      Width = 27
      Caption = '...'
    end
    inherited Label2: TLabel
      Left = 12
      Top = -5
      Width = 27
      Caption = '...'
    end
  end
  object DBEdit1: TDBEdit [18]
    Left = 5
    Top = 80
    Width = 77
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'EMISSAO'
    DataSource = DtSrc
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [19]
    Left = 85
    Top = 80
    Width = 77
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DATAVENCIMENTO'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [20]
    Left = 165
    Top = 80
    Width = 77
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DATAPAGAMENTO'
    DataSource = DtSrc
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [21]
    Left = 432
    Top = 80
    Width = 91
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'VALORRECEBIDO'
    DataSource = DtSrc
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [22]
    Left = 526
    Top = 80
    Width = 91
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'VALOR_RESTO'
    DataSource = DtSrc
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [23]
    Left = 244
    Top = 80
    Width = 91
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'VALORTITULO'
    DataSource = DtSrc
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit [24]
    Left = 274
    Top = 128
    Width = 39
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'PARCELAS'
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 8
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object DBEdit8: TDBEdit [25]
    Left = 249
    Top = 128
    Width = 24
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'VIA'
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 7
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [26]
    Left = 4
    Top = 158
    Width = 763
    Height = 347
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'TITULO'
        Title.Caption = 'T'#237'tulo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Title.Caption = 'Emiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAVENCIMENTO'
        Title.Caption = 'Vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAPAGAMENTO'
        Title.Caption = 'Pagamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATABAIXA'
        Title.Caption = 'Baixa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORTITULO'
        Title.Caption = 'Vlr. T'#237'tulo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORRECEBIDO'
        Title.Caption = 'Vlr. Pago'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORPAG'
        Title.Caption = 'Vlr. Pendente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VIA'
        Title.Caption = 'Via'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELAS'
        Title.Caption = 'Parc.'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORMAPAGAMENTO'
        Title.Caption = 'Forma de Pgto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_DOCUMENTO'
        Title.Caption = 'N. Doc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Visible = True
      end>
  end
  object ComboBox1: TComboBox [27]
    Left = 124
    Top = 124
    Width = 117
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 12
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object cbConta: TComboBox [28]
    Left = 5
    Top = 124
    Width = 100
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 13
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object DBEdit9: TDBEdit [29]
    Left = 623
    Top = 79
    Width = 91
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'N_DOCUMENTO'
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
  object DBEdit10: TDBEdit [30]
    Left = 338
    Top = 80
    Width = 91
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'VALOR_PRIM_VIA'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object fgrupo: TBitBtn [31]
    Left = 645
    Top = 106
    Width = 54
    Height = 22
    Caption = 'Ctrl+B'
    PopupMenu = PopupMenu1
    TabOrder = 15
    OnClick = fgrupoClick
  end
  object Edit1: TEdit [32]
    Left = 711
    Top = 107
    Width = 49
    Height = 18
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 16
    Visible = False
  end
  object Edit2: TEdit [33]
    Left = 711
    Top = 127
    Width = 50
    Height = 19
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 17
    Visible = False
  end
  object DBEdit11: TDBEdit [34]
    Left = 718
    Top = 78
    Width = 42
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CODCLIENTE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object DBEdit12: TDBEdit [35]
    Left = 72
    Top = 128
    Width = 241
    Height = 24
    DataField = 'NOMECLIENTE'
    DataSource = DtSrc
    TabOrder = 19
  end
  object DBEdit13: TDBEdit [36]
    Left = 8
    Top = 128
    Width = 57
    Height = 24
    DataField = 'RA'
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 20
  end
  object JvDBSearchEdit1: TJvDBSearchEdit [37]
    Left = 319
    Top = 130
    Width = 81
    Height = 24
    DataSource = DataSource1
    DataField = 'RA'
    ClearOnEnter = False
    ReadOnly = True
    TabOrder = 21
    OnKeyPress = FormKeyPress
  end
  object JvDBSearchEdit2: TJvDBSearchEdit [38]
    Left = 406
    Top = 129
    Width = 303
    Height = 24
    DataSource = DataSource1
    DataField = 'NOMECLIENTE'
    ClearOnEnter = False
    ReadOnly = True
    TabOrder = 22
    OnKeyPress = FormKeyPress
  end
  inherited XPMenu1: TXPMenu
    Left = 200
    Top = 272
  end
  inherited PopupMenu1: TPopupMenu
    Left = 248
    Top = 272
    object CtrlB1: TMenuItem
      Caption = 'Ctrl+B'
      ShortCut = 16450
      OnClick = fgrupoClick
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cds
    Left = 168
    Top = 272
  end
  object sds: TSQLDataSet
    CommandText = 
      'select  pag.CODPAGAMENTO,  pag.TITULO,  pag.EMISSAO,  pag.DATAVE' +
      'NCIMENTO,  pag.DATAPAGAMENTO,  pag.CAIXA,'#13#10'        pag.CONTACRED' +
      'ITO,  pag.STATUS,  pag.FORMAPAGAMENTO,  pag.DATABAIXA,  pag.HIST' +
      'ORICO,  pag.CODALMOXARIFADO,  pag.N_DOCUMENTO, '#13#10'        pag.VAL' +
      'ORRECEBIDO,  pag.JUROS,  pag.DESCONTO,  pag.PERDA,  pag.FUNRURAL' +
      ',  pag.VALOR_PRIM_VIA,  pag.VALOR_RESTO,  pag.VALORTITULO,'#13#10'    ' +
      '    pag.PARCELAS,  pag.VIA, (CASE WHEN ( pag.VALORRECEBIDO > 0) ' +
      'THEN ( pag.VALORTITULO -  pag.VALOR_RESTO)'#13#10'       WHEN ( pag.VA' +
      'LORRECEBIDO = 0) THEN  pag.VALOR_RESTO END) as VALORPAG ,pag.COD' +
      'CLIENTE , cli.ra, cli.nomecliente'#13#10'from pagamento pag'#13#10'   inner ' +
      'join clientes cli on (pag.codcliente = clientes.codcliente) '#13#10' W' +
      'HERE pag.TITULO = :TIT AND pag.CODFORNECEDOR = :CODFOR AND pag.E' +
      'MISSAO = :DTAEMI'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFOR'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTAEMI'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 32
    Top = 272
    object sdsCODPAGAMENTO: TIntegerField
      FieldName = 'CODPAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object sdsEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sdsCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPERDA: TFloatField
      FieldName = 'PERDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object sdsVALORPAG: TFloatField
      FieldName = 'VALORPAG'
      ProviderFlags = []
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object sdsRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sdsNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object sdsCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 272
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TIT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODFOR'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTAEMI'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    Left = 120
    Top = 272
    object cdsCODPAGAMENTO: TIntegerField
      FieldName = 'CODPAGAMENTO'
      Required = True
    end
    object cdsTITULO: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object cdsEMISSAO: TDateField
      FieldName = 'EMISSAO'
      EditMask = '!99/99/00;1;_'
    end
    object cdsDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      EditMask = '!99/99/00;1;_'
    end
    object cdsDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      EditMask = '!99/99/00;1;_'
    end
    object cdsCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object cdsCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
    end
    object cdsSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      EditMask = '!99/99/00;1;_'
    end
    object cdsHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object cdsCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object cdsN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object cdsVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsPERDA: TFloatField
      FieldName = 'PERDA'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
    object cdsVIA: TStringField
      FieldName = 'VIA'
      FixedChar = True
      Size = 4
    end
    object cdsVALORPAG: TFloatField
      FieldName = 'VALORPAG'
    end
    object cdsRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInWhere]
      Size = 50
    end
    object cdsCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInWhere]
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select CODCLIENTE,NOMECLIENTE , RA  from CLIENTES'#13#10'     where st' +
      'atus = 0 and GRUPO_CLIENTE = '#39'ASH'#39' order by NOMECLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 448
    Top = 216
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 496
    Top = 232
  end
  object cdsClienteBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 536
    Top = 224
    object cdsClienteBuscaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsClienteBuscaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsClienteBuscaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsClienteBusca
    Left = 600
    Top = 240
  end
end
