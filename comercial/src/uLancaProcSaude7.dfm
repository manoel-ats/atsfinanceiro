inherited fLancaProcSaude: TfLancaProcSaude
  Left = 370
  Top = 154
  Width = 559
  Height = 494
  Caption = 'Lan'#231'amento de Procedimentos'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 24
    Top = 8
    Width = 39
    Height = 13
    Caption = 'Emiss'#227'o'
  end
  object Label4: TLabel [1]
    Left = 192
    Top = 8
    Width = 56
    Height = 13
    Caption = 'Vencimento'
  end
  object Label5: TLabel [2]
    Left = 24
    Top = 36
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label6: TLabel [3]
    Left = 112
    Top = 36
    Width = 49
    Height = 13
    Caption = 'Associado'
  end
  object Label7: TLabel [4]
    Left = 24
    Top = 80
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label8: TLabel [5]
    Left = 112
    Top = 80
    Width = 65
    Height = 13
    Caption = 'Procedimento'
  end
  object Label9: TLabel [6]
    Left = 24
    Top = 128
    Width = 77
    Height = 13
    Caption = 'C'#243'd. Contratado'
  end
  object Label10: TLabel [7]
    Left = 112
    Top = 128
    Width = 52
    Height = 13
    Caption = 'Contratado'
  end
  object Label13: TLabel [8]
    Left = 240
    Top = 320
    Width = 5
    Height = 24
    Caption = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel [9]
    Left = 25
    Top = 246
    Width = 41
    Height = 13
    Caption = 'Hist'#243'rico'
  end
  object Label15: TLabel [10]
    Left = 413
    Top = 8
    Width = 79
    Height = 13
    Caption = 'Vencimento Mes'
  end
  object Label12: TLabel [11]
    Left = 24
    Top = 304
    Width = 68
    Height = 13
    Caption = 'N'#186' Nota Fiscal'
  end
  object Label14: TLabel [12]
    Left = 144
    Top = 240
    Width = 3
    Height = 16
    Caption = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel [13]
    Left = 200
    Top = 240
    Width = 3
    Height = 16
    Caption = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel [14]
    Left = 395
    Top = 83
    Width = 60
    Height = 13
    Caption = 'Data Recibo'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 402
    Width = 543
    TabOrder = 14
    inherited btnCancelar: TBitBtn [0]
      Left = 115
    end
    inherited btnGravar: TBitBtn [1]
      Left = 227
    end
    inherited btnIncluir: TBitBtn [2]
      Left = 115
    end
    inherited btnExcluir: TBitBtn
      Left = 227
    end
    inherited btnProcurar: TBitBtn
      Left = 34
      Caption = 'Procurar'
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 341
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 543
    Height = 1
    TabOrder = 15
  end
  object JvDateEdit1: TJvDateEdit [17]
    Left = 72
    Top = 8
    Width = 113
    Height = 21
    Enabled = False
    TabOrder = 0
    OnExit = JvDateEdit1Exit
    OnKeyPress = FormKeyPress
  end
  object JvDateEdit2: TJvDateEdit [18]
    Left = 256
    Top = 8
    Width = 105
    Height = 21
    Enabled = False
    TabOrder = 1
    OnExit = JvDateEdit2Exit
    OnKeyPress = FormKeyPress
  end
  object JvDBSearchEdit1: TJvDBSearchEdit [19]
    Left = 24
    Top = 52
    Width = 81
    Height = 21
    DataSource = DMSaude.dsClienteBusca
    DataField = 'RA'
    ClearOnEnter = False
    AutoSelect = False
    AutoSize = False
    Enabled = False
    HideSelection = False
    TabOrder = 2
    Text = 'JvDBSearchEdit1'
    OnKeyPress = FormKeyPress
  end
  object JvDBSearchEdit3: TJvDBSearchEdit [20]
    Left = 24
    Top = 96
    Width = 81
    Height = 21
    DataSource = dsProcedimento
    DataField = 'CODPRO'
    ClearOnEnter = False
    SearchOptions = [loCaseInsensitive]
    Enabled = False
    TabOrder = 4
    OnExit = JvDBSearchEdit3Exit
    OnKeyPress = FormKeyPress
  end
  object JvDBSearchEdit5: TJvDBSearchEdit [21]
    Left = 24
    Top = 144
    Width = 81
    Height = 21
    DataSource = DMSaude.dsFornecedor
    DataField = 'CODFORNECEDOR'
    ClearOnEnter = False
    SearchOptions = [loCaseInsensitive]
    Enabled = False
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object Memo1: TMemo [22]
    Left = 24
    Top = 259
    Width = 473
    Height = 38
    Enabled = False
    Lines.Strings = (
      '')
    MaxLength = 60
    TabOrder = 12
    OnKeyPress = FormKeyPress
  end
  object GroupBox1: TGroupBox [23]
    Left = 24
    Top = 174
    Width = 153
    Height = 65
    Caption = 'Receber do Associado'
    TabOrder = 10
    object JvCalcEdit2: TJvCalcEdit
      Left = 8
      Top = 24
      Width = 121
      Height = 21
      DisplayFormat = ',##0.00'
      Enabled = False
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox2: TGroupBox [24]
    Left = 184
    Top = 174
    Width = 153
    Height = 65
    Caption = 'Reembolsar Associado'
    TabOrder = 11
    object JvCalcEdit1: TJvCalcEdit
      Left = 8
      Top = 24
      Width = 121
      Height = 21
      DisplayFormat = ',##0.00'
      Enabled = False
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
      OnKeyPress = FormKeyPress
    end
  end
  object JvDBSearchEdit4: TJvDBSearchComboBox [25]
    Left = 112
    Top = 96
    Width = 273
    Height = 21
    DataField = 'PRODUTO'
    DataSource = dsProcedimento
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 5
    OnExit = JvDBSearchEdit4Exit
    OnKeyPress = FormKeyPress
  end
  object JvDBSearchEdit2: TJvDBSearchComboBox [26]
    Left = 112
    Top = 52
    Width = 393
    Height = 21
    DataField = 'NOMECLIENTE'
    DataSource = DMSaude.dsClienteBusca
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 3
    OnExit = JvDBSearchEdit2Exit
    OnKeyPress = FormKeyPress
  end
  object JvDBSearchEdit6: TJvDBSearchComboBox [27]
    Left = 112
    Top = 143
    Width = 393
    Height = 21
    DataField = 'NOMEFORNECEDOR'
    DataSource = DMSaude.dsFornecedor
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 9
    OnKeyPress = FormKeyPress
  end
  object Edit1: TEdit [28]
    Left = 416
    Top = 24
    Width = 73
    Height = 21
    Color = clYellow
    ReadOnly = True
    TabOrder = 16
    Text = '06/06/08'
  end
  object btnreembolso: TBitBtn [29]
    Left = 376
    Top = 216
    Width = 105
    Height = 25
    Caption = '&Reembolso (Ctrl+r)'
    PopupMenu = PopupMenu1
    TabOrder = 17
    OnClick = btnreembolsoClick
  end
  object Edit2: TEdit [30]
    Left = 24
    Top = 320
    Width = 193
    Height = 21
    TabOrder = 13
  end
  object JvDateEdit3: TJvDateEdit [31]
    Left = 256
    Top = 352
    Width = 113
    Height = 21
    Enabled = False
    TabOrder = 18
    Visible = False
    OnExit = JvDateEdit1Exit
    OnKeyPress = FormKeyPress
  end
  object DBEdit1: TDBEdit [32]
    Left = 400
    Top = 328
    Width = 49
    Height = 21
    DataField = 'TEM_IE'
    DataSource = DMSaude.dsClienteBusca
    TabOrder = 19
    Visible = False
  end
  object data_recibo: TJvDateEdit [33]
    Left = 392
    Top = 96
    Width = 113
    Height = 21
    Enabled = False
    TabOrder = 6
    OnExit = data_reciboExit
    OnKeyPress = FormKeyPress
  end
  object JvCalcEdit3: TJvCalcEdit [34]
    Left = 393
    Top = 120
    Width = 111
    Height = 21
    DisplayFormat = ',##0.00'
    Enabled = False
    TabOrder = 7
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
  end
  object BitBtn1: TBitBtn [35]
    Left = 510
    Top = 97
    Width = 28
    Height = 20
    Caption = 'F-10'
    TabOrder = 20
    OnClick = BitBtn1Click
  end
  inherited XPMenu1: TXPMenu
    Left = 320
    Top = 64
  end
  inherited PopupMenu1: TPopupMenu
    Left = 368
    Top = 64
    object Reembolso1: TMenuItem
      Caption = 'Reembolso'
      ShortCut = 16466
      OnClick = btnreembolsoClick
    end
    object DataRecibo1: TMenuItem
      Caption = 'Data Recibo'
      ShortCut = 121
      OnClick = BitBtn1Click
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cds_Movimento
    Left = 240
    Top = 64
  end
  object dsProcedimento: TDataSource
    DataSet = cds
    Left = 504
    Top = 248
  end
  object dsContaCredito: TDataSource
    DataSet = DM.cds_1_contas
    Left = 504
    Top = 24
  end
  object sds_Movimento: TSQLDataSet
    CommandText = 
      'select mov.*'#13#10'        , cli.NOMECLIENTE'#13#10'        , cli.OBS'#13#10'    ' +
      '    , vei.PLACA'#13#10'        , vei.MARCA_MODELO'#13#10'        , usu.NOMEU' +
      'SUARIO'#13#10'        , forn.NOMEFORNECEDOR'#13#10'        , nat.DESCNATUREZ' +
      'A'#13#10'        , alm.NOME AS ALMOXARIFADO'#13#10'        , nat.TIPOTITULO'#13 +
      #10'        , nat.BAIXAMOVIMENTO '#13#10'from MOVIMENTO mov '#13#10'left outer ' +
      'join CLIENTES cli on cli.CODCLIENTE = mov.CODCLIENTE '#13#10'left oute' +
      'r join VEICULO vei on vei.COD_CLIENTE = mov.CODCLIENTE '#13#10'left ou' +
      'ter join USUARIO usu on usu.CODUSUARIO = mov.CODVENDEDOR '#13#10'left ' +
      'outer join FORNECEDOR forn on forn.CODFORNECEDOR =  mov.CODFORNE' +
      'CEDOR '#13#10'inner join NATUREZAOPERACAO nat on  nat.CODNATUREZA = mo' +
      'v.CODNATUREZA '#13#10'left outer join PLANO alm on alm.CODIGO =  mov.C' +
      'ODALMOXARIFADO where mov.CODMOVIMENTO = :pCODMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 8
    Top = 367
    object sds_MovimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_MovimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object sds_MovimentoDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object sds_MovimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      ReadOnly = True
    end
    object sds_MovimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = []
      Size = 200
    end
    object sds_MovimentoPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object sds_MovimentoMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object sds_MovimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
    object sds_MovimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object sds_Mov_Det: TSQLDataSet
    CommandText = 
      'select movd.CODDETALHE'#13#10', movd.CODMOVIMENTO'#13#10', movd.CODPRODUTO'#13#10 +
      ', movd.ICMS'#13#10', movd.PRECO'#13#10', movd.QUANTIDADE'#13#10', movd.QTDE_ALT'#13#10',' +
      ' movd.UN'#13#10', movd.BAIXA'#13#10', movd.CONTROLE'#13#10', movd.COD_COMISSAO'#13#10', ' +
      'movd.LOTE'#13#10', movd.DTAFAB'#13#10', movd.DTAVCTO'#13#10', prod.CODPRO'#13#10', prod.' +
      'PRODUTO'#13#10', prod.CODALMOXARIFADO'#13#10', prod.VALORUNITARIOATUAL'#13#10', pr' +
      'od.QTDE_PCT'#13#10', ccus.ALMOXARIFADO'#13#10', prod.CONTA_DESPESA  '#13#10', prod' +
      '.LOCALIZACAO  '#13#10', cm.CODIGO, prod.LOTES  '#13#10'from MOVIMENTODETALHE' +
      ' movd '#13#10'inner join PRODUTOS prod on prod.CODPRODUTO=movd.CODPROD' +
      'UTO '#13#10'left outer join ALMOXARIFADO ccus on ccus.CODALMOXARIFADO ' +
      '= prod.CODALMOXARIFADO '#13#10'left outer join COMISSAO cm on cm.COD_C' +
      'OMISSAO = movd.COD_COMISSAO '#13#10'where movd.CODDETALHE=:CODDETALHE ' +
      'or movd.CODMOVIMENTO=:pCODMOV order by movd.coddetalhe'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODDETALHE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 111
    Top = 343
    object sds_Mov_DetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_Mov_DetCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_Mov_DetCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetPRODUTO: TStringField
      DisplayWidth = 50
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 200
    end
    object sds_Mov_DetUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_Mov_DetQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetBAIXA: TStringField
      FieldName = 'BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_Mov_DetCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = []
    end
    object sds_Mov_DetALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object sds_Mov_DetVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = []
    end
    object sds_Mov_DetCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = []
      Size = 15
    end
    object sds_Mov_DetCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object sds_Mov_DetQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = []
    end
    object sds_Mov_DetLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_Mov_DetDTAFAB: TDateField
      FieldName = 'DTAFAB'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 3
    end
    object sds_Mov_DetLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = []
      Size = 50
    end
    object sds_Mov_DetLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
  object dsp_Mov_det: TDataSetProvider
    DataSet = sds_Mov_Det
    UpdateMode = upWhereKeyOnly
    Left = 143
    Top = 343
  end
  object dsp_Movimento: TDataSetProvider
    DataSet = sds_Movimento
    UpdateMode = upWhereKeyOnly
    Left = 39
    Top = 367
  end
  object cds_Movimento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Movimento'
    Left = 71
    Top = 367
    object cds_MovimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_MovimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object cds_MovimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cds_MovimentoDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cds_MovimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_MovimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = []
      Size = 200
    end
    object cds_MovimentoPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object cds_MovimentoMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object cds_MovimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
    object cds_MovimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object cds_Mov_det: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODDETALHE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Mov_det'
    Left = 176
    Top = 343
    object cds_Mov_detCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Mov_detCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_Mov_detCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds_Mov_detQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
    end
    object cds_Mov_detPRODUTO: TStringField
      DisplayWidth = 50
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 200
    end
    object cds_Mov_detUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_Mov_detValorTotal: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'ValorTotal'
      ProviderFlags = []
      DisplayFormat = ',#.00'
    end
    object cds_Mov_detQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#.00'
    end
    object cds_Mov_detBAIXA: TStringField
      FieldName = 'BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_Mov_detCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = []
    end
    object cds_Mov_detALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object cds_Mov_detVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = []
    end
    object cds_Mov_detCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = []
      Size = 15
    end
    object cds_Mov_detCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object cds_Mov_detQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = []
    end
    object cds_Mov_detLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_Mov_detDTAFAB: TDateField
      FieldName = 'DTAFAB'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_Mov_detDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_Mov_detCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 3
    end
    object cds_Mov_detLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = []
      Size = 50
    end
    object cds_Mov_detLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object cds_Mov_detTotalPedido: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TotalPedido'
      ProviderFlags = []
      Active = True
      currency = True
      DisplayFormat = ',#0.00'
      Expression = 'Sum(ValorTotal)'
    end
  end
  object DtSrc1: TDataSource
    DataSet = cds_Mov_det
    Left = 209
    Top = 343
  end
  object sds: TSQLDataSet
    CommandText = 
      'select CODPRODUTO, VALORUNITARIOATUAL, VALOR_PRAZO, ESTOQUEREPOS' +
      'ICAO, PRODUTO, CONTA_DESPESA, CODPRO, CONTA_RECEITA, CONTA_ESTOQ' +
      'UE from PRODUTOS'#13#10'where ((TIPO = '#39'ASH'#39' ) OR (TIPO = '#39'AMBOS'#39'))'#13#10' ' +
      'order by produto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 112
    Top = 376
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Left = 144
    Top = 376
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 184
    Top = 376
    object cdsCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cdsVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object cdsESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
    end
    object cdsPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object cdsCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object cdsCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      Size = 15
    end
    object cdsCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      Size = 15
    end
    object cdsVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object cdsCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
  end
  object sdsTitular: TSQLDataSet
    CommandText = 
      'select codcliente from clientes'#13#10' where razaosocial = :prazao an' +
      'd segmento = 0 and status = 0 and grupo_cliente = '#39'ASH'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'prazao'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 384
    Top = 360
    object sdsTitularCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
  end
  object cdsTitular: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'prazao'
        ParamType = ptInput
      end>
    ProviderName = 'dspTitular'
    Left = 448
    Top = 360
    object cdsTitularCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
  end
  object dspTitular: TDataSetProvider
    DataSet = sdsTitular
    Left = 416
    Top = 360
  end
  object sdsContaMov: TSQLDataSet
    CommandText = 
      'select count(codmovimento) from movimentodetalhe where codmovime' +
      'nto = :pmov'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pMov'
        ParamType = ptUnknown
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 472
    Top = 224
  end
  object CDSc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'datarec'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'user'
        ParamType = ptInput
      end>
    ProviderName = 'DSPc'
    Left = 352
    Top = 312
    object CDScNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object CDScDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object CDScTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
  end
  object DSPc: TDataSetProvider
    DataSet = SQLc
    Options = [poAllowCommandText]
    Left = 312
    Top = 312
  end
  object SQLc: TSQLDataSet
    CommandText = 
      'select nomecliente , ra , datacadastro , tem_ie from clientes wh' +
      'ere GRUPO_CLIENTE = '#39'ASH'#39' AND (datacadastro + 180 ) >= (:datarec' +
      ') and  status = 0 and tem_ie = '#39'S'#39'  and ra = :user'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'datarec'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'user'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 272
    Top = 312
    object SQLcNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object SQLcDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object SQLcTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select codcliente , razaosocial ,nomecliente from clientes where' +
      ' nomecliente = :pnome and status = 0'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'prazao'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 440
    Top = 304
    object SQLDataSet1CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object SQLDataSet1RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object SQLDataSet1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object sql_dependente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'prazao'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 504
    Top = 304
    object sql_dependenteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sql_dependenteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sql_dependenteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 472
    Top = 304
  end
  object dsCDSV: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'user'
        ParamType = ptInput
      end>
    ProviderName = 'DSPV'
    Left = 464
    Top = 168
    object dsCDSVNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object dsCDSVRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object dsCDSVDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object dsCDSVEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
  end
  object DSPV: TDataSetProvider
    DataSet = sqlV
    Left = 416
    Top = 168
  end
  object sqlV: TSQLDataSet
    CommandText = 
      'select nomecliente , ra , datacadastro ,emviagem from clientes w' +
      'here GRUPO_CLIENTE = '#39'ASH'#39' AND emviagem ='#39'S'#39' and  status = 0 and' +
      '  ra = :user'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'user'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 368
    Top = 168
    object sqlVNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object sqlVRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlVDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object sqlVEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
  end
end
