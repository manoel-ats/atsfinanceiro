object fMov: TfMov
  Left = 193
  Top = 20
  Width = 1083
  Height = 698
  Caption = 'fMov'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 208
    Top = 456
    Width = 12
    Height = 13
    Caption = '....'
  end
  object Label7: TLabel
    Left = 744
    Top = 456
    Width = 12
    Height = 13
    Caption = '....'
  end
  object DBGrid1: TDBGrid
    Left = 4
    Top = 1
    Width = 1041
    Height = 195
    TabStop = False
    Color = clBtnFace
    Ctl3D = False
    DataSource = DataSource3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPRO'
        Title.Caption = 'C'#243'digo'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Mercadoria'
        Width = 277
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTROLE'
        Title.Caption = 'Controle'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Title.Caption = 'Valor Socio'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'Associado'
        Width = 488
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 6
    Top = 202
    Width = 1035
    Height = 65
    DataSource = ds1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODDETALHE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODMOVIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODALMOXARIFADO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTROLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE_ALT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIXA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALTOTAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_COMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTAFAB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTAVCTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOCUSTO'
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 16
    Top = 480
    Width = 289
    Height = 137
    DataSource = ds_Cr
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid3DblClick
    OnKeyDown = DBGrid3KeyDown
    OnKeyUp = DBGrid3KeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'CODRECEBIMENTO'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TITULO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAVENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORTITULO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_RESTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PRIM_VIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATARECEBIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORRECEBIDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_DOCUMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DUP_REC_NF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORREC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUSP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODVENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BL'
        Visible = True
      end>
  end
  object DBGrid4: TDBGrid
    Left = 561
    Top = 275
    Width = 464
    Height = 180
    DataSource = DataSource1
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
        FieldName = 'CODDETALHE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODMOVIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTROLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPRODUTO'
        Visible = True
      end>
  end
  object DBGrid5: TDBGrid
    Left = 48
    Top = 512
    Width = 289
    Height = 137
    DataSource = DataSource2
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid3DblClick
    OnKeyDown = DBGrid3KeyDown
    OnKeyUp = DBGrid3KeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'CODRECEBIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TITULO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAVENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORTITULO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_RESTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PRIM_VIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATARECEBIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORRECEBIDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_DOCUMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DUP_REC_NF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORREC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUSP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODVENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BL'
        Visible = True
      end>
  end
  object DBGrid6: TDBGrid
    Left = 16
    Top = 276
    Width = 430
    Height = 177
    DataSource = DataSource3
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CONTROLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPRODUTO'
        Width = 71
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 669
    Top = 520
    Width = 361
    Height = 129
    TabOrder = 6
    TabStop = True
    object Label2: TLabel
      Left = 118
      Top = 36
      Width = 51
      Height = 13
      Caption = 'valor socio'
    end
    object Label3: TLabel
      Left = 19
      Top = 39
      Width = 39
      Height = 13
      Caption = 'Controle'
    end
    object Label5: TLabel
      Left = 144
      Top = 8
      Width = 81
      Height = 13
      Caption = 'DEPENDENTES'
    end
    object ins: TBitBtn
      Left = 230
      Top = 40
      Width = 83
      Height = 41
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = insClick
      OnKeyPress = FormKeyPress
    end
    object Edit1: TEdit
      Left = 16
      Top = 60
      Width = 81
      Height = 21
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object JvCalcEdit1: TJvCalcEdit
      Left = 123
      Top = 60
      Width = 94
      Height = 21
      DisplayFormat = ',0.00'
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
      OnKeyPress = FormKeyPress
    end
  end
  object Panel2: TPanel
    Left = 223
    Top = 519
    Width = 345
    Height = 132
    TabOrder = 7
    object Label4: TLabel
      Left = 141
      Top = 45
      Width = 86
      Height = 13
      Caption = 'Valor Socio Titular'
    end
    object Label1: TLabel
      Left = 24
      Top = 45
      Width = 73
      Height = 13
      Caption = 'CODDETALHE'
      FocusControl = DBEdit1
    end
    object Label8: TLabel
      Left = 136
      Top = 12
      Width = 46
      Height = 13
      Caption = 'TITULAR'
    end
    object BitBtn1: TBitBtn
      Left = 198
      Top = 101
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 0
      Visible = False
      OnClick = BitBtn1Click
    end
    object DBEdit1: TDBEdit
      Left = 19
      Top = 97
      Width = 134
      Height = 21
      DataField = 'CODDETALHE'
      DataSource = DataSource1
      TabOrder = 1
    end
    object Atualiza: TBitBtn
      Left = 14
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Atualiza'
      TabOrder = 2
      OnClick = AtualizaClick
      OnKeyPress = FormKeyPress
    end
    object JvCalcEdit2: TJvCalcEdit
      Left = 140
      Top = 61
      Width = 93
      Height = 21
      DisplayFormat = ',0.00'
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
    object Edit2: TEdit
      Left = 20
      Top = 61
      Width = 93
      Height = 21
      TabOrder = 4
      Text = 'Edit2'
    end
  end
  object BitBtn2: TBitBtn
    Left = 416
    Top = 472
    Width = 75
    Height = 25
    Caption = 'BitBtn2'
    TabOrder = 8
    OnClick = BitBtn2Click
  end
  object Edit3: TEdit
    Left = 512
    Top = 472
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'Edit3'
  end
  object sds_Mov_Det: TSQLDataSet
    CommandText = 
      'select movd.CODDETALHE'#13#10', movd.CODMOVIMENTO'#13#10', movd.CODPRODUTO'#13#10 +
      ', movd.ICMS'#13#10', movd.PRECO'#13#10', movd.QUANTIDADE'#13#10', movd.QTDE_ALT'#13#10',' +
      ' movd.UN'#13#10', movd.BAIXA'#13#10', movd.CONTROLE'#13#10', movd.COD_COMISSAO'#13#10', ' +
      'movd.LOTE'#13#10', movd.DTAFAB'#13#10', movd.DTAVCTO'#13#10', prod.CODPRO'#13#10', prod.' +
      'PRODUTO'#13#10', prod.CODALMOXARIFADO'#13#10', prod.VALORUNITARIOATUAL'#13#10', pr' +
      'od.QTDE_PCT'#13#10', prod.CONTA_DESPESA  '#13#10', prod.LOCALIZACAO'#13#10', ven.n' +
      'umerobordero'#13#10', ven.codvenda'#13#10', cli.nomecliente  '#13#10#13#10'from MOVIME' +
      'NTODETALHE movd '#13#10'inner join PRODUTOS prod on prod.CODPRODUTO = ' +
      'movd.CODPRODUTO '#13#10'inner join venda ven on ven.codmovimento = mov' +
      'd.codmovimento'#13#10'inner join clientes cli on cli.codcliente = movd' +
      '.controle'#13#10#13#10'where (NUMEROBORDERO = :CODVENDA) AND produto like(' +
      #39'%MENSALIDADE%'#39')'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 207
    Top = 127
    object sds_Mov_DetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object sds_Mov_DetCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object sds_Mov_DetCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sds_Mov_DetICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sds_Mov_DetPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object sds_Mov_DetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sds_Mov_DetQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object sds_Mov_DetUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object sds_Mov_DetBAIXA: TStringField
      FieldName = 'BAIXA'
      FixedChar = True
      Size = 1
    end
    object sds_Mov_DetCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object sds_Mov_DetCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object sds_Mov_DetLOTE: TStringField
      FieldName = 'LOTE'
      Size = 60
    end
    object sds_Mov_DetDTAFAB: TDateField
      FieldName = 'DTAFAB'
    end
    object sds_Mov_DetDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
    end
    object sds_Mov_DetCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object sds_Mov_DetPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object sds_Mov_DetCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object sds_Mov_DetVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object sds_Mov_DetQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object sds_Mov_DetCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object sds_Mov_DetLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object sds_Mov_DetNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object sds_Mov_DetCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Required = True
    end
    object sds_Mov_DetNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object dsp_Mov_det: TDataSetProvider
    DataSet = sds_Mov_Det
    UpdateMode = upWhereKeyOnly
    Left = 239
    Top = 127
  end
  object cds_Mov_det: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Mov_det'
    Left = 272
    Top = 127
    object cds_Mov_detCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object cds_Mov_detCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cds_Mov_detCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cds_Mov_detICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cds_Mov_detPRECO: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = ',#0.00'
    end
    object cds_Mov_detQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cds_Mov_detQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object cds_Mov_detUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object cds_Mov_detBAIXA: TStringField
      FieldName = 'BAIXA'
      FixedChar = True
      Size = 1
    end
    object cds_Mov_detCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object cds_Mov_detCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object cds_Mov_detLOTE: TStringField
      FieldName = 'LOTE'
      Size = 60
    end
    object cds_Mov_detDTAFAB: TDateField
      FieldName = 'DTAFAB'
    end
    object cds_Mov_detDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
    end
    object cds_Mov_detCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cds_Mov_detPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object cds_Mov_detCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object cds_Mov_detVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      DisplayFormat = ',#0.00'
    end
    object cds_Mov_detQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object cds_Mov_detCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object cds_Mov_detLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object cds_Mov_detNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object cds_Mov_detCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Required = True
    end
    object cds_Mov_detNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object DtSrc1: TDataSource
    DataSet = cds_Mov_det
    Left = 305
    Top = 127
  end
  object sds_venda: TSQLDataSet
    CommandText = 
      'select movd .CODDETALHE'#13#10', movd .CODMOVIMENTO '#13#10', movd .CODALMOX' +
      'ARIFADO'#13#10', movd .CONTROLE'#13#10', movd .CODPRODUTO '#13#10', movd .QUANTIDA' +
      'DE'#13#10', movd .PRECO'#13#10', movd .ICMS'#13#10', movd .UN'#13#10', movd .QTDE_ALT'#13#10',' +
      ' movd .BAIXA'#13#10', movd .VALTOTAL'#13#10', movd .COD_COMISSAO  '#13#10', movd .' +
      'LOTE'#13#10', movd .DTAFAB  '#13#10', movd .DTAVCTO   '#13#10', movd .PRECOCUSTO'#13#10 +
      ',ven.NUMEROBORDERO '#13#10#13#10'from MOVIMENTODETALHE movd '#13#10'inner join P' +
      'RODUTOS prod on prod.CODPRODUTO = movd.CODPRODUTO '#13#10'inner join v' +
      'enda ven on ven.codmovimento = movd.codmovimento'#13#10'inner join cli' +
      'entes cli on cli.codcliente = movd.controle'#13#10#13#10'where (NUMEROBORD' +
      'ERO = :CODVENDA) AND produto like('#39'%MENSALIDADE%'#39')'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 79
    Top = 191
    object sds_vendaCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object sds_vendaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object sds_vendaCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object sds_vendaCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object sds_vendaCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sds_vendaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sds_vendaPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object sds_vendaICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sds_vendaUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object sds_vendaQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object sds_vendaBAIXA: TStringField
      FieldName = 'BAIXA'
      FixedChar = True
      Size = 1
    end
    object sds_vendaVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object sds_vendaCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object sds_vendaLOTE: TStringField
      FieldName = 'LOTE'
      Size = 60
    end
    object sds_vendaDTAFAB: TDateField
      FieldName = 'DTAFAB'
    end
    object sds_vendaDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
    end
    object sds_vendaPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object sds_vendaNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
  end
  object dsp_venda: TDataSetProvider
    DataSet = sds_venda
    UpdateMode = upWhereKeyOnly
    Left = 127
    Top = 183
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_venda'
    Left = 167
    Top = 191
    object cdsCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object cdsCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cdsCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object cdsCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object cdsCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object cdsQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object cdsBAIXA: TStringField
      FieldName = 'BAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object cdsCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object cdsLOTE: TStringField
      FieldName = 'LOTE'
      Size = 60
    end
    object cdsDTAFAB: TDateField
      FieldName = 'DTAFAB'
    end
    object cdsDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
    end
    object cdsPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object cdsNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
  end
  object ds1: TDataSource
    DataSet = cds
    Left = 208
    Top = 184
  end
  object sds: TSQLDataSet
    CommandText = 
      'select rec.CODRECEBIMENTO'#13#10'        , rec.TITULO'#13#10'        , rec.E' +
      'MISSAO'#13#10'        , rec.DATAVENCIMENTO'#13#10'        , rec.CODCLIENTE'#13#10 +
      '        , rec.VALORTITULO'#13#10'        , rec.VALOR_RESTO'#13#10'        , ' +
      'rec.VALOR_PRIM_VIA'#13#10'        , rec.STATUS'#13#10'        , rec.BL'#13#10'    ' +
      '    , rec.STATUS as STATUSP'#13#10'        , rec.DATARECEBIMENTO'#13#10'    ' +
      '    , rec.VALORRECEBIDO'#13#10'        , UDF_PADL(CAST(UDF_TRIM(rec.VI' +
      'A) AS VARCHAR(2)),'#39'0'#39',2) || '#39'/'#39' || CAST(UDF_PADL(rec.PARCELAS,'#39'0' +
      #39',2) as varchar(2)) as VIA  '#13#10'        , rec.HISTORICO '#13#10'        ' +
      ', rec.N_DOCUMENTO'#13#10'        , rec.DUP_REC_NF'#13#10'        , rec.DP'#13#10' ' +
      '       , rec.CODVENDA'#13#10'        , cli.NOMECLIENTE'#13#10'        , cli.' +
      'RAZAOSOCIAL'#13#10'        , cli.RA'#13#10'        , (rec.VALORTITULO - rec.' +
      'VALOR_RESTO) as VALORREC '#13#10' from RECEBIMENTO rec '#13#10' inner join C' +
      'LIENTES cli on cli.CODCLIENTE=rec.CODCLIENTE '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 56
    Top = 520
    object sdsCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
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
    object sdsCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      ProviderFlags = []
      Size = 15
    end
    object sdsDP: TIntegerField
      FieldName = 'DP'
    end
    object sdsNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object sdsRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object sdsVALORREC: TFloatField
      FieldName = 'VALORREC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsSTATUSP: TStringField
      DisplayWidth = 25
      FieldName = 'STATUSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object sdsHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sdsVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Size = 257
    end
    object sdsCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ReadOnly = True
    end
    object sdsRA: TStringField
      FieldName = 'RA'
      ReadOnly = True
      Size = 10
    end
    object sdsBL: TIntegerField
      FieldName = 'BL'
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 111
    Top = 512
  end
  object scdsCr_proc: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    PacketRecords = 15
    Params = <>
    ProviderName = 'dsp'
    Left = 174
    Top = 512
    object scdsCr_procCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object scdsCr_procTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object scdsCr_procEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object scdsCr_procDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object scdsCr_procCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 25
    end
    object scdsCr_procDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object scdsCr_procVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      ProviderFlags = []
      Size = 15
    end
    object scdsCr_procDP: TIntegerField
      FieldName = 'DP'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object scdsCr_procRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object scdsCr_procVALORREC: TFloatField
      FieldName = 'VALORREC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procSTATUSP: TStringField
      FieldName = 'STATUSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 25
    end
    object scdsCr_procHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 150
    end
    object scdsCr_procVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 257
    end
    object scdsCr_procCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ReadOnly = True
    end
    object scdsCr_procRA: TStringField
      FieldName = 'RA'
      ReadOnly = True
      Size = 10
    end
    object scdsCr_procBL: TIntegerField
      FieldName = 'BL'
    end
    object scdsCr_proctot_titulo: TAggregateField
      Alignment = taRightJustify
      FieldName = 'tot_titulo'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALOR_RESTO)'
    end
    object scdsCr_proctot_recebido: TAggregateField
      Alignment = taRightJustify
      FieldName = 'tot_recebido'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALORRECEBIDO)'
    end
    object scdsCr_procTotPend: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TotPend'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALOR_RESTO - VALORRECEBIDO)'
    end
  end
  object ds_Cr: TDataSource
    DataSet = scdsCr_proc
    Left = 215
    Top = 513
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select movd .CODDETALHE'#13#10', movd .CODMOVIMENTO '#13#10', movd .CODALMOX' +
      'ARIFADO'#13#10', movd .CONTROLE'#13#10', movd .CODPRODUTO '#13#10', movd .QUANTIDA' +
      'DE'#13#10', movd .PRECO'#13#10', movd .ICMS'#13#10', movd .UN'#13#10', movd .QTDE_ALT'#13#10',' +
      ' movd .BAIXA'#13#10', movd .VALTOTAL'#13#10', movd .COD_COMISSAO  '#13#10', movd .' +
      'LOTE'#13#10', movd .DTAFAB  '#13#10', movd .DTAVCTO   '#13#10', movd .PRECOCUSTO '#13 +
      #10#13#10'from MOVIMENTODETALHE movd '#13#10'inner join PRODUTOS prod on prod' +
      '.CODPRODUTO = movd.CODPRODUTO '#13#10'inner join venda ven on ven.codm' +
      'ovimento = movd.codmovimento'#13#10'inner join clientes cli on cli.cod' +
      'cliente = movd.controle'#13#10#13#10'where (NUMEROBORDERO = :CODVENDA) AND' +
      ' produto like('#39'%MENSALIDADE%'#39')'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 647
    Top = 367
    object SQLDataSet1CODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object SQLDataSet1CODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object SQLDataSet1CODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object SQLDataSet1CONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object SQLDataSet1CODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object SQLDataSet1QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object SQLDataSet1PRECO: TFloatField
      FieldName = 'PRECO'
    end
    object SQLDataSet1ICMS: TFloatField
      FieldName = 'ICMS'
    end
    object SQLDataSet1UN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object SQLDataSet1QTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object SQLDataSet1BAIXA: TStringField
      FieldName = 'BAIXA'
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1VALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object SQLDataSet1COD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object SQLDataSet1LOTE: TStringField
      FieldName = 'LOTE'
      Size = 60
    end
    object SQLDataSet1DTAFAB: TDateField
      FieldName = 'DTAFAB'
    end
    object SQLDataSet1DTAVCTO: TDateField
      FieldName = 'DTAVCTO'
    end
    object SQLDataSet1PRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    UpdateMode = upWhereKeyOnly
    Left = 695
    Top = 367
  end
  object cds1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 743
    Top = 367
    object cds1CODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object cds1CODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cds1CODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object cds1CONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object cds1CODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cds1QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cds1PRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cds1ICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cds1UN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object cds1QTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object cds1BAIXA: TStringField
      FieldName = 'BAIXA'
      FixedChar = True
      Size = 1
    end
    object cds1VALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object cds1COD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object cds1LOTE: TStringField
      FieldName = 'LOTE'
      Size = 60
    end
    object cds1DTAFAB: TDateField
      FieldName = 'DTAFAB'
    end
    object cds1DTAVCTO: TDateField
      FieldName = 'DTAVCTO'
    end
    object cds1PRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
  end
  object DataSource1: TDataSource
    DataSet = cds1
    Left = 800
    Top = 368
  end
  object sdsconfira: TSQLDataSet
    CommandText = 
      'select rec.CODRECEBIMENTO'#13#10'        , rec.TITULO'#13#10'        , rec.E' +
      'MISSAO'#13#10'        , rec.DATAVENCIMENTO'#13#10'        , rec.CODCLIENTE'#13#10 +
      '        , rec.VALORTITULO'#13#10'        , rec.VALOR_RESTO'#13#10'        , ' +
      'rec.VALOR_PRIM_VIA'#13#10'        , rec.STATUS'#13#10'        , rec.BL'#13#10'    ' +
      '    , rec.STATUS as STATUSP'#13#10'        , rec.DATARECEBIMENTO'#13#10'    ' +
      '    , rec.VALORRECEBIDO'#13#10'        , UDF_PADL(CAST(UDF_TRIM(rec.VI' +
      'A) AS VARCHAR(2)),'#39'0'#39',2) || '#39'/'#39' || CAST(UDF_PADL(rec.PARCELAS,'#39'0' +
      #39',2) as varchar(2)) as VIA  '#13#10'        , rec.HISTORICO '#13#10'        ' +
      ', rec.N_DOCUMENTO'#13#10'        , rec.DUP_REC_NF'#13#10'        , rec.DP'#13#10' ' +
      '       , rec.CODVENDA'#13#10'        , cli.NOMECLIENTE'#13#10'        , cli.' +
      'RAZAOSOCIAL'#13#10'        , cli.RA'#13#10'        , (rec.VALORTITULO - rec.' +
      'VALOR_RESTO) as VALORREC '#13#10' from RECEBIMENTO rec '#13#10' inner join C' +
      'LIENTES cli on cli.CODCLIENTE=rec.CODCLIENTE '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 120
    Top = 576
    object IntegerField1: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object StringField1: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object DateField1: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object DateField2: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField1: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField2: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField3: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
    end
    object StringField2: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object DateField3: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField4: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField3: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField4: TStringField
      FieldName = 'DUP_REC_NF'
      ProviderFlags = []
      Size = 15
    end
    object IntegerField3: TIntegerField
      FieldName = 'DP'
    end
    object StringField5: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object FloatField5: TFloatField
      FieldName = 'VALORREC'
      ProviderFlags = [pfInUpdate]
    end
    object StringField7: TStringField
      DisplayWidth = 25
      FieldName = 'STATUSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object StringField8: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object StringField9: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Size = 257
    end
    object IntegerField4: TIntegerField
      FieldName = 'CODVENDA'
      ReadOnly = True
    end
    object StringField10: TStringField
      FieldName = 'RA'
      ReadOnly = True
      Size = 10
    end
    object IntegerField5: TIntegerField
      FieldName = 'BL'
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = sdsconfira
    Options = [poAllowCommandText]
    Left = 175
    Top = 568
  end
  object cdsconfira: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    PacketRecords = 15
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 238
    Top = 568
    object StringField11: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object DateField4: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object DateField5: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object IntegerField7: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField6: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object FloatField7: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object FloatField8: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object StringField12: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 25
    end
    object DateField6: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object FloatField9: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object StringField13: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField14: TStringField
      FieldName = 'DUP_REC_NF'
      ProviderFlags = []
      Size = 15
    end
    object IntegerField8: TIntegerField
      FieldName = 'DP'
      ProviderFlags = [pfInUpdate]
    end
    object StringField15: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object StringField16: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object FloatField10: TFloatField
      FieldName = 'VALORREC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object StringField17: TStringField
      FieldName = 'STATUSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 25
    end
    object StringField18: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 150
    end
    object StringField19: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 257
    end
    object IntegerField9: TIntegerField
      FieldName = 'CODVENDA'
      ReadOnly = True
    end
    object StringField20: TStringField
      FieldName = 'RA'
      ReadOnly = True
      Size = 10
    end
    object IntegerField10: TIntegerField
      FieldName = 'BL'
    end
    object cdsconfiraCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
    object AggregateField1: TAggregateField
      Alignment = taRightJustify
      FieldName = 'tot_titulo'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALOR_RESTO)'
    end
    object AggregateField2: TAggregateField
      Alignment = taRightJustify
      FieldName = 'tot_recebido'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALORRECEBIDO)'
    end
    object AggregateField3: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TotPend'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALOR_RESTO - VALORRECEBIDO)'
    end
  end
  object DataSource2: TDataSource
    DataSet = cdsconfira
    Left = 279
    Top = 569
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 
      'select movd.CODDETALHE'#13#10', movd.CODMOVIMENTO'#13#10', movd.CODPRODUTO'#13#10 +
      ', movd.ICMS'#13#10', movd.PRECO'#13#10', movd.QUANTIDADE'#13#10', movd.QTDE_ALT'#13#10',' +
      ' movd.UN'#13#10', movd.BAIXA'#13#10', movd.CONTROLE'#13#10', movd.COD_COMISSAO'#13#10', ' +
      'movd.LOTE'#13#10', movd.DTAFAB'#13#10', movd.DTAVCTO'#13#10', prod.CODPRO'#13#10', prod.' +
      'PRODUTO'#13#10', prod.CODALMOXARIFADO'#13#10', prod.VALORUNITARIOATUAL'#13#10', pr' +
      'od.QTDE_PCT'#13#10', prod.CONTA_DESPESA'#13#10', prod.LOCALIZACAO'#13#10', ven.num' +
      'erobordero'#13#10', ven.codvenda'#13#10', cli.nomecliente'#13#10#13#10'from MOVIMENTOD' +
      'ETALHE movd'#13#10'inner join PRODUTOS prod on prod.CODPRODUTO = movd.' +
      'CODPRODUTO'#13#10'inner join venda ven on ven.codmovimento = movd.codm' +
      'ovimento'#13#10'inner join clientes cli on cli.codcliente = movd.contr' +
      'ole'#13#10#13#10'where (NUMEROBORDERO = :CODVENDA) AND produto like('#39'%MENS' +
      'ALIDADE%'#39')'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 111
    Top = 375
    object SQLDataSet2CODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object SQLDataSet2CODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object SQLDataSet2CODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object SQLDataSet2ICMS: TFloatField
      FieldName = 'ICMS'
    end
    object SQLDataSet2PRECO: TFloatField
      FieldName = 'PRECO'
    end
    object SQLDataSet2QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object SQLDataSet2QTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object SQLDataSet2UN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object SQLDataSet2BAIXA: TStringField
      FieldName = 'BAIXA'
      FixedChar = True
      Size = 1
    end
    object SQLDataSet2CONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object SQLDataSet2COD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object SQLDataSet2LOTE: TStringField
      FieldName = 'LOTE'
      Size = 60
    end
    object SQLDataSet2DTAFAB: TDateField
      FieldName = 'DTAFAB'
    end
    object SQLDataSet2DTAVCTO: TDateField
      FieldName = 'DTAVCTO'
    end
    object SQLDataSet2CODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object SQLDataSet2PRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object SQLDataSet2CODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object SQLDataSet2VALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object SQLDataSet2QTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object SQLDataSet2CONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object SQLDataSet2LOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object SQLDataSet2NUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object SQLDataSet2CODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Required = True
    end
    object SQLDataSet2NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLDataSet2
    UpdateMode = upWhereKeyOnly
    Left = 151
    Top = 367
  end
  object cds2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider3'
    Left = 199
    Top = 367
    object cds2CODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object cds2CODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cds2CODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cds2ICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cds2PRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cds2QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cds2QTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object cds2UN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object cds2BAIXA: TStringField
      FieldName = 'BAIXA'
      FixedChar = True
      Size = 1
    end
    object cds2CONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object cds2COD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object cds2LOTE: TStringField
      FieldName = 'LOTE'
      Size = 60
    end
    object cds2DTAFAB: TDateField
      FieldName = 'DTAFAB'
    end
    object cds2DTAVCTO: TDateField
      FieldName = 'DTAVCTO'
    end
    object cds2CODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cds2PRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object cds2CODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object cds2VALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object cds2QTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object cds2CONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object cds2LOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object cds2NUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object cds2CODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Required = True
    end
    object cds2NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object DataSource3: TDataSource
    DataSet = cds2
    Left = 272
    Top = 376
  end
end
