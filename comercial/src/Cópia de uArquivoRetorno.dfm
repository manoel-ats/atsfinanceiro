object fArquivoRetorno: TfArquivoRetorno
  Left = 192
  Top = 119
  Width = 751
  Height = 563
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 6
    Top = 80
    Width = 13
    Height = 16
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 431
    Top = 253
    Width = 65
    Height = 13
    Caption = 'Recebido P'#244'r'
  end
  object Edit4: TEdit
    Left = 486
    Top = 268
    Width = 121
    Height = 21
    TabOrder = 11
    Visible = False
  end
  object Edit5: TEdit
    Left = 431
    Top = 267
    Width = 270
    Height = 24
    TabStop = False
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 98
    Width = 423
    Height = 193
    Ctl3D = False
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 22
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'T'#237'tulo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'D. Pagamento'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 435
    Top = 97
    Width = 89
    Height = 33
    Caption = 'PROCURAR'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DBGrid2: TDBGrid
    Left = 6
    Top = 292
    Width = 726
    Height = 41
    Ctl3D = False
    DataSource = DtSrcREC
    ParentCtl3D = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TITULO'
        Title.Caption = 'T'#237'tulo'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Title.Caption = 'Vencimento'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_NF'
        Title.Caption = 'Valor R$'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Situa'#231#227'o'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRUPO_1'
        Title.Caption = 'Grupo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_INSCRICAO'
        Title.Caption = 'Inscri'#231#227'o'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_SOCIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'S'#243'cio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 250
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 435
    Top = 133
    Width = 89
    Height = 33
    Caption = 'BAIXAR'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 435
    Top = 204
    Width = 89
    Height = 33
    Caption = 'SAIR'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 73
    Align = alTop
    TabOrder = 5
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clBackground
    Background.EndColor = clTeal
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 259
      Top = 26
      Width = 224
      Height = 22
      Caption = 'Arquivo Retorno - CBR643'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 262
      Top = 27
      Width = 224
      Height = 22
      Caption = 'Arquivo Retorno - CBR643'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Memo1: TMemo
    Left = 6
    Top = 334
    Width = 726
    Height = 187
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
  end
  object BitBtn4: TBitBtn
    Left = 435
    Top = 168
    Width = 89
    Height = 33
    Caption = 'IMPRIMIR'
    TabOrder = 7
  end
  object RadioGroup1: TRadioGroup
    Left = 587
    Top = 95
    Width = 145
    Height = 105
    Caption = 'Busca p'#244'r'
    ItemIndex = 0
    Items.Strings = (
      'n'#186' T'#237'tulo'
      'Codigo Banco')
    TabOrder = 8
  end
  object BitBtn16: TBitBtn
    Left = 702
    Top = 265
    Width = 30
    Height = 26
    Caption = '...'
    TabOrder = 10
    OnClick = BitBtn16Click
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    FileName = 'C:\BANCOBRASIL\Retorno\CBR64337.RET'
    Filter = 'Todos Arquivos|*.*'
    InitialDir = 'C:\BANCOBRASIL\Retorno'
    Left = 48
    Top = 194
  end
  object DataSource1: TDataSource
    DataSet = cds
    Left = 112
    Top = 160
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 48
    Top = 160
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 80
    Top = 160
    object cdsID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object cdsTITULO: TIntegerField
      FieldName = 'TITULO'
      ReadOnly = True
    end
    object cdsDATA: TStringField
      FieldName = 'DATA'
      FixedChar = True
      Size = 6
    end
    object cdsVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
      DisplayFormat = '#0.00'
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'Select ID, '#13#10'           CAST(TITULO as INTEGER) as TITULO, '#13#10'   ' +
      '        DATA, '#13#10'           CAST(VALOR || '#39'.'#39' || centavos as DOUB' +
      'LE PRECISION) as VALOR  '#13#10'from TABRETORNO where ID = '#39'70'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 160
    object sdsID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object sdsTITULO: TIntegerField
      FieldName = 'TITULO'
      ReadOnly = True
    end
    object sdsDATA: TStringField
      FieldName = 'DATA'
      FixedChar = True
      Size = 6
    end
    object sdsVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
    end
  end
  object sdsREC: TSQLDataSet
    CommandText = 
      'select  rec.*, '#13#10'           soc.NOME_SOCIO,'#13#10'           soc.GRUP' +
      'O,'#13#10'           soc.N_INSCRICAO '#13#10'from RECEBIMENTOS rec '#13#10'inner j' +
      'oin  SOCIOS soc on '#13#10'soc.ID_SOCIO = rec.ID_SOCIO '#13#10'where ((rec.C' +
      'ODIGO = :cod) '#13#10'or (rec.TITULO = :tit))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'tit'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 80
    Top = 352
    object sdsRECID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRECID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsRECVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsRECCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsRECFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsRECVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECTITULO: TIntegerField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsRECDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsRECID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsRECTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sdsRECSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsRECSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsRECPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECOBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object sdsRECENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECID_DEPREC: TIntegerField
      FieldName = 'ID_DEPREC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECID_ACORDO: TIntegerField
      FieldName = 'ID_ACORDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsRECNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      ProviderFlags = []
      Size = 80
    end
    object sdsRECGRUPO_1: TStringField
      FieldName = 'GRUPO_1'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsRECN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
      ProviderFlags = []
    end
    object sdsRECCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECARQUIVORETORNO: TGraphicField
      FieldName = 'ARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object sdsRECNOMEARQUIVORETORNO: TStringField
      FieldName = 'NOMEARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dspREC: TDataSetProvider
    DataSet = sdsREC
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 352
  end
  object cdsREC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'cod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'tit'
        ParamType = ptInput
      end>
    ProviderName = 'dspREC'
    Left = 160
    Top = 352
    object cdsRECID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRECID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsRECVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsRECCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsRECFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsRECVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECTITULO: TIntegerField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsRECDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsRECID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsRECTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsRECSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsRECSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsRECPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECOBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object cdsRECENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECID_DEPREC: TIntegerField
      FieldName = 'ID_DEPREC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECID_ACORDO: TIntegerField
      FieldName = 'ID_ACORDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsRECNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      ProviderFlags = []
      Size = 80
    end
    object cdsRECGRUPO_1: TStringField
      FieldName = 'GRUPO_1'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsRECN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
      ProviderFlags = []
    end
    object cdsRECCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECARQUIVORETORNO: TGraphicField
      FieldName = 'ARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object cdsRECNOMEARQUIVORETORNO: TStringField
      FieldName = 'NOMEARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object DtSrcREC: TDataSource
    DataSet = cdsREC
    Left = 200
    Top = 352
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Color = clBtnFace
    DrawMenuBar = False
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    AutoDetect = True
    Active = True
    Left = 80
    Top = 192
  end
  object sqs: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 32
    Top = 256
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 600
    Top = 120
  end
  object sds_cbr: TSQLDataSet
    CommandText = 'select * from CBR643'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 480
    Top = 360
    object sds_cbrID_CBR: TIntegerField
      FieldName = 'ID_CBR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_cbrDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cbrNOMECBR: TStringField
      FieldName = 'NOMECBR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sds_cbrOBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
  end
  object dsp_cbr: TDataSetProvider
    DataSet = sds_cbr
    Left = 510
    Top = 360
  end
  object cds_cbr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_cbr'
    Left = 540
    Top = 359
    object cds_cbrID_CBR: TIntegerField
      FieldName = 'ID_CBR'
    end
    object cds_cbrDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object cds_cbrNOMECBR: TStringField
      FieldName = 'NOMECBR'
      Required = True
      Size = 100
    end
    object cds_cbrOBS: TGraphicField
      FieldName = 'OBS'
      BlobType = ftGraphic
    end
  end
end
