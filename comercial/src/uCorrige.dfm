object fCorrige: TfCorrige
  Left = 196
  Top = 53
  Width = 1058
  Height = 667
  Caption = 'fCorrige'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 195
    Top = 544
    Width = 20
    Height = 13
    Caption = 'VAL'
  end
  object Label2: TLabel
    Left = 308
    Top = 543
    Width = 71
    Height = 13
    Caption = 'VLR_MENSAL'
  end
  object Label4: TLabel
    Left = 409
    Top = 544
    Width = 58
    Height = 13
    Caption = 'Reembolsos'
  end
  object Label3: TLabel
    Left = 494
    Top = 545
    Width = 24
    Height = 13
    Caption = 'Fator'
  end
  object DBGrid3: TDBGrid
    Left = 456
    Top = 456
    Width = 441
    Height = 89
    DataSource = dsHist
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODFAIXA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDADE_MIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDADE_MAX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PLANO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGOS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VALIDADE'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 21
    Top = 456
    Width = 396
    Height = 74
    DataSource = dsFaixa
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid4: TDBGrid
    Left = 16
    Top = 328
    Width = 1009
    Height = 269
    DataSource = DataSource3
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPRO'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE1'
        Width = 273
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_RECIBO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOFIRMA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODVENDA1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEFORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMEROBORDERO'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 24
    Width = 75
    Height = 23
    Caption = 'Consultar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 75
    Width = 993
    Height = 510
    DataSource = dsdmt
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REEMBOLSO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTROLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODRECEBIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Width = 294
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_COMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEFORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOFIRMA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORUNITARIOATUAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOCUSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAOESCOLAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEXO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATANASC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAVENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORANT'
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 896
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Corrigir'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object edCliente: TJvDBSearchEdit
    Left = 147
    Top = 0
    Width = 665
    Height = 24
    DataSource = DataSource1
    DataField = 'NOMECLIENTE'
    CharCase = ecUpperCase
    Color = 13562879
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = 'EDCLIENTE'
    OnExit = edClienteExit
  end
  object DBEdit1: TDBEdit
    Left = 145
    Top = 50
    Width = 669
    Height = 21
    DataField = 'RAZAOSOCIAL'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 4
  end
  object edCodCliente: TEdit
    Left = 52
    Top = -2
    Width = 73
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object BitBtn3: TBitBtn
    Left = 24
    Top = 48
    Width = 75
    Height = 24
    Caption = 'Rel Dmed'
    TabOrder = 6
    OnClick = BitBtn3Click
  end
  object DBEdit2: TDBEdit
    Left = 195
    Top = 601
    Width = 65
    Height = 21
    DataField = 'PAGO'
    DataSource = DataSource2
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 307
    Top = 601
    Width = 89
    Height = 21
    DataField = 'PR'
    DataSource = DataSource2
    TabOrder = 8
  end
  object Edit9: TJvEdit
    Left = 422
    Top = 601
    Width = 72
    Height = 21
    Alignment = taRightJustify
    Modified = False
    TabOrder = 9
  end
  object JvCalcEdit1: TJvCalcEdit
    Left = 600
    Top = 602
    Width = 121
    Height = 21
    TabOrder = 10
    DecimalPlacesAlwaysShown = False
  end
  object Edit1: TEdit
    Left = 146
    Top = 27
    Width = 667
    Height = 21
    TabOrder = 11
    Text = 'Edit1'
  end
  object Edit10: TJvEdit
    Left = 517
    Top = 601
    Width = 72
    Height = 21
    Alignment = taRightJustify
    Modified = False
    TabOrder = 14
  end
  object BitBtn4: TBitBtn
    Left = 928
    Top = 600
    Width = 75
    Height = 25
    Caption = 'Corrigir'
    TabOrder = 16
    Visible = False
    OnClick = BitBtn4Click
  end
  object dsdmt: TDataSource
    DataSet = cdsdmt
    Left = 16
    Top = 400
  end
  object cdsdmt: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end>
    ProviderName = 'dspdmt'
    Left = 256
    Top = 248
    object cdsdmtCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsdmtPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsdmtPAGO: TFloatField
      FieldName = 'PAGO'
    end
    object cdsdmtPR: TFloatField
      FieldName = 'PR'
    end
    object cdsdmtREEMBOLSO: TFloatField
      FieldName = 'REEMBOLSO'
    end
    object cdsdmtCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object cdsdmtCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
    object cdsdmtDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsdmtCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object cdsdmtNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 60
    end
    object cdsdmtTIPOFIRMA: TIntegerField
      FieldName = 'TIPOFIRMA'
    end
    object cdsdmtCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsdmtVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object cdsdmtPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object cdsdmtRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsdmtRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsdmtNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object cdsdmtCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 18
    end
    object cdsdmtSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object cdsdmtSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsdmtDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object cdsdmtVALORANT: TFloatField
      FieldName = 'VALORANT'
    end
  end
  object dspdmt: TDataSetProvider
    DataSet = sqldmt
    Options = [poAllowCommandText]
    Left = 216
    Top = 248
  end
  object sqldmt: TSQLDataSet
    CommandText = 'select * from D_2012D where razaosocial = :titular'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 160
    Top = 248
    object sqldmtCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sqldmtPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object sqldmtPAGO: TFloatField
      FieldName = 'PAGO'
    end
    object sqldmtPR: TFloatField
      FieldName = 'PR'
    end
    object sqldmtREEMBOLSO: TFloatField
      FieldName = 'REEMBOLSO'
    end
    object sqldmtCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
    end
    object sqldmtCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
    object sqldmtDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object sqldmtCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object sqldmtNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 60
    end
    object sqldmtTIPOFIRMA: TIntegerField
      FieldName = 'TIPOFIRMA'
    end
    object sqldmtCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sqldmtVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object sqldmtPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object sqldmtRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqldmtRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqldmtNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object sqldmtCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 18
    end
    object sqldmtSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sqldmtSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sqldmtDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object sqldmtVALORANT: TFloatField
      FieldName = 'VALORANT'
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsClienteBusca
    Left = 384
  end
  object cdsClienteBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 328
    object cdsClienteBuscaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClienteBuscaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsClienteBuscaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsClienteBuscaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 272
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE,RAZAOSOCIAL,RA ,cnpj , dataresc '#13 +
      #10#13#10'   from clientes  '#13#10'   where segmento = 0 and GRUPO_CLIENTE =' +
      ' '#39'ASH'#39#13#10'   and ((dataresc is null) or (dataresc > '#39'12/31/11'#39'))'#13#10 +
      'order by ra'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 232
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 56
    Top = 312
  end
  object cdsSoma: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end>
    ProviderName = 'dspSoma'
    Left = 136
    Top = 593
    object cdsSomaPRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
    end
    object cdsSomaPAGO: TFloatField
      FieldName = 'PAGO'
      ReadOnly = True
    end
    object cdsSomaPR: TFloatField
      FieldName = 'PR'
      ReadOnly = True
    end
  end
  object dspSoma: TDataSetProvider
    DataSet = sqlSoma
    Options = [poAllowCommandText]
    Left = 104
    Top = 593
  end
  object sqlSoma: TSQLDataSet
    CommandText = 
      'select '#13#10'    sum(preco)  as preco ,'#13#10'    sum(pago) as pago ,'#13#10'  ' +
      '  sum(pr) as pr '#13#10#13#10' from D_2012D where razaosocial = :titular'#13#10 +
      #13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 72
    Top = 593
    object sqlSomaPRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
    end
    object sqlSomaPAGO: TFloatField
      FieldName = 'PAGO'
      ReadOnly = True
    end
    object sqlSomaPR: TFloatField
      FieldName = 'PR'
      ReadOnly = True
    end
  end
  object DataSource2: TDataSource
    DataSet = cdsSoma
    Left = 24
    Top = 549
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 'select *   FROM REL_DMED_11(:titular) '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 232
    object SQLDataSet2CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object SQLDataSet2RA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object SQLDataSet2RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object SQLDataSet2CPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object SQLDataSet2NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object SQLDataSet2VLR_MENSAL: TFloatField
      FieldName = 'VLR_MENSAL'
    end
    object SQLDataSet2CLIR: TIntegerField
      FieldName = 'CLIR'
    end
    object SQLDataSet2NOMEFORNECEDORR: TStringField
      FieldName = 'NOMEFORNECEDORR'
      Size = 50
    end
    object SQLDataSet2CNPJR: TStringField
      FieldName = 'CNPJR'
      Size = 18
    end
    object SQLDataSet2NOMER: TStringField
      FieldName = 'NOMER'
      Size = 50
    end
    object SQLDataSet2VALORR: TFloatField
      FieldName = 'VALORR'
    end
    object SQLDataSet2VALORRN: TFloatField
      FieldName = 'VALORRN'
    end
    object SQLDataSet2VALORRP: TFloatField
      FieldName = 'VALORRP'
    end
    object SQLDataSet2VALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object SQLDataSet2CLIRP: TIntegerField
      FieldName = 'CLIRP'
    end
    object SQLDataSet2NOMERP: TStringField
      FieldName = 'NOMERP'
      Size = 50
    end
    object SQLDataSet2VALORRP1: TFloatField
      FieldName = 'VALORRP1'
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider2'
    Left = 56
    Top = 232
    object ClientDataSet1CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object ClientDataSet1RA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object ClientDataSet1RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object ClientDataSet1CPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object ClientDataSet1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object ClientDataSet1VLR_MENSAL: TFloatField
      FieldName = 'VLR_MENSAL'
    end
    object ClientDataSet1CLIR: TIntegerField
      FieldName = 'CLIR'
    end
    object ClientDataSet1NOMEFORNECEDORR: TStringField
      FieldName = 'NOMEFORNECEDORR'
      Size = 50
    end
    object ClientDataSet1CNPJR: TStringField
      FieldName = 'CNPJR'
      Size = 18
    end
    object ClientDataSet1NOMER: TStringField
      FieldName = 'NOMER'
      Size = 50
    end
    object ClientDataSet1VALORR: TFloatField
      FieldName = 'VALORR'
    end
    object ClientDataSet1VALORRN: TFloatField
      FieldName = 'VALORRN'
    end
    object ClientDataSet1VALORRP: TFloatField
      FieldName = 'VALORRP'
    end
    object ClientDataSet1VALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object ClientDataSet1CLIRP: TIntegerField
      FieldName = 'CLIRP'
    end
    object ClientDataSet1NOMERP: TStringField
      FieldName = 'NOMERP'
      Size = 50
    end
    object ClientDataSet1VALORRP1: TFloatField
      FieldName = 'VALORRP1'
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    Options = [poAllowCommandText]
    Left = 88
    Top = 232
  end
  object dsFaixa: TDataSource
    DataSet = sqlFaixa
    Left = 48
    Top = 536
  end
  object sqlFaixa: TSQLClientDataSet
    CommandText = 
      'select  IDADE_MIN, IDADE_MAX, VALOR_PLANO, DESCONTO, USO, CODIGO' +
      'S,  VALOR_A, VALOR_B, VALOR_C, VALOR_D from FAIXA_ETARIA where U' +
      'SO = '#39'ASH'#39
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DM.sqlsisAdimin
    Top = 544
  end
  object sqlHist: TSQLClientDataSet
    CommandText = 
      'select CODFAIXA, DESCRICAO, IDADE_MIN, IDADE_MAX, VALOR_PLANO,  ' +
      'CODIGOS, DATA_VALIDADE  from FAIXA_ETARIA_HIST order by CODFAIXA'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DM.sqlsisAdimin
    Left = 440
    Top = 480
  end
  object dsHist: TDataSource
    DataSet = sqlHist
    Left = 424
    Top = 504
  end
  object cdsFator: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider3'
    Left = 80
    Top = 368
    object cdsFatorCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object cdsFatorCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object cdsFatorNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 60
    end
    object cdsFatorTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
    end
    object cdsFatorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsFatorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cdsFatorCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsFatorPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object cdsFatorNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object cdsFatorCODVENDA1: TIntegerField
      FieldName = 'CODVENDA1'
    end
    object cdsFatorNOMECLIENTE1: TStringField
      FieldName = 'NOMECLIENTE1'
      Size = 50
    end
    object cdsFatorPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsFatorRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsFatorVALOR_RECIBO: TFloatField
      FieldName = 'VALOR_RECIBO'
    end
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLDataSet3
    Options = [poAllowCommandText]
    Left = 48
    Top = 368
  end
  object SQLDataSet3: TSQLDataSet
    CommandText = 
      'select * from LAN_DMED where razaosocial = :titular'#13#10'order by no' +
      'mecliente1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 368
    object SQLDataSet3COD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object SQLDataSet3COD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object SQLDataSet3NOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 60
    end
    object SQLDataSet3TIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
    end
    object SQLDataSet3CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object SQLDataSet3DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object SQLDataSet3CODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object SQLDataSet3PRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object SQLDataSet3NUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object SQLDataSet3CODVENDA1: TIntegerField
      FieldName = 'CODVENDA1'
    end
    object SQLDataSet3NOMECLIENTE1: TStringField
      FieldName = 'NOMECLIENTE1'
      Size = 50
    end
    object SQLDataSet3PRECO: TFloatField
      FieldName = 'PRECO'
    end
    object SQLDataSet3RAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object SQLDataSet3VALOR_RECIBO: TFloatField
      FieldName = 'VALOR_RECIBO'
    end
  end
  object DataSource3: TDataSource
    DataSet = cdsFator
    Left = 88
    Top = 400
  end
  object sql12: TSQLDataSet
    CommandText = 'select * from D_2012 (:titular , :dta1 ,:dta2)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta2'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 528
    Top = 176
  end
  object dsp12: TDataSetProvider
    DataSet = sql12
    Options = [poAllowCommandText]
    Left = 568
    Top = 176
  end
  object cds12: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'titular'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta2'
        ParamType = ptInput
      end>
    ProviderName = 'dsp12'
    Left = 608
    Top = 176
  end
end
