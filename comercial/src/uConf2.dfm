object fConf2: TfConf2
  Left = 199
  Top = 81
  Width = 1035
  Height = 568
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Conferencia'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 904
    Top = 8
    Width = 68
    Height = 24
    Caption = 'PCMSO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 742
    Top = 19
    Width = 16
    Height = 13
    Caption = 'At'#233
  end
  object Label4: TLabel
    Left = 712
    Top = 1
    Width = 77
    Height = 13
    Caption = 'Vencimento de :'
  end
  object Label6: TLabel
    Left = 375
    Top = 383
    Width = 174
    Height = 13
    Caption = 'Verificando Lan'#231'amentos no Periodo'
  end
  object Label7: TLabel
    Left = 386
    Top = 422
    Width = 145
    Height = 13
    Caption = 'Verificando Valores no Periodo'
  end
  object Label1: TLabel
    Left = 279
    Top = 463
    Width = 174
    Height = 13
    Caption = 'Verificando Lan'#231'amentos no Periodo'
  end
  object Label2: TLabel
    Left = 477
    Top = 464
    Width = 145
    Height = 13
    Caption = 'Verificando Valores no Periodo'
  end
  object Label8: TLabel
    Left = 462
    Top = 464
    Width = 7
    Height = 13
    Caption = 'X'
  end
  object Label9: TLabel
    Left = 456
    Top = 0
    Width = 60
    Height = 13
    Caption = 'Emiss'#227'o de :'
  end
  object Label10: TLabel
    Left = 473
    Top = 17
    Width = 16
    Height = 13
    Caption = 'At'#233
  end
  object Label11: TLabel
    Left = 235
    Top = 0
    Width = 79
    Height = 13
    Caption = 'Selecione o M'#234's'
  end
  object ComboBox2: TComboBox
    Left = 163
    Top = 41
    Width = 111
    Height = 21
    ItemHeight = 13
    TabOrder = 16
    Text = 'M'#234's'
    Visible = False
    OnChange = ComboBox1Change
    Items.Strings = (
      'Janeiro'
      'Fevereiro'
      'Mar'#231'o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 9
    Width = 75
    Height = 25
    Caption = 'Conferir'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object DBGrid1: TDBGrid
    Left = 176
    Top = 64
    Width = 609
    Height = 81
    DataSource = dsConferir
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn3: TBitBtn
    Left = 24
    Top = 81
    Width = 105
    Height = 25
    Caption = 'Inserir (Conferir)'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 24
    Top = 129
    Width = 75
    Height = 25
    Caption = 'Conferir'
    TabOrder = 3
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 32
    Top = 345
    Width = 105
    Height = 25
    Caption = 'Inserir (Conferir)'
    TabOrder = 4
    OnClick = BitBtn5Click
  end
  object DBGrid2: TDBGrid
    Left = 184
    Top = 152
    Width = 601
    Height = 113
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn6: TBitBtn
    Left = 48
    Top = 296
    Width = 75
    Height = 25
    Caption = 'BitBtn6'
    TabOrder = 6
    OnClick = BitBtn6Click
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 40
    Width = 1002
    Height = 353
    DataSource = dsErro
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'RA'
        Title.Caption = 'Codigo'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'Nome Cliente'
        Width = 259
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Venda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMEROBORDERO'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RA_1'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE_1'
        Title.Caption = 'Nome Cliente'
        Width = 266
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORTITULO'
        Title.Caption = 'Receber'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODRECEBIMENTO'
        Visible = True
      end>
  end
  object meDta5: TJvDatePickerEdit
    Left = 640
    Top = 15
    Width = 85
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 8
  end
  object meDta6: TJvDatePickerEdit
    Left = 776
    Top = 15
    Width = 85
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 9
  end
  object ProgressBar1: TProgressBar
    Left = 25
    Top = 397
    Width = 943
    Height = 25
    TabOrder = 10
  end
  object ProgressBar2: TProgressBar
    Left = 25
    Top = 436
    Width = 945
    Height = 25
    TabOrder = 11
  end
  object ProgressBar3: TProgressBar
    Left = 27
    Top = 479
    Width = 944
    Height = 25
    TabOrder = 12
  end
  object medta7: TJvDatePickerEdit
    Left = 371
    Top = 13
    Width = 81
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 13
  end
  object medta8: TJvDatePickerEdit
    Left = 515
    Top = 13
    Width = 83
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 14
  end
  object ComboBox1: TComboBox
    Left = 234
    Top = 14
    Width = 111
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Text = 'M'#234's'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Janeiro'
      'Fevereiro'
      'Mar'#231'o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
  object btnconf: TBitBtn
    Left = 109
    Top = 9
    Width = 113
    Height = 25
    Caption = 'Conf. Lan'#231'amentos'
    TabOrder = 17
    Visible = False
    OnClick = btnconfClick
  end
  object dbgConfL: TDBGrid
    Left = 280
    Top = 264
    Width = 465
    Height = 113
    DataSource = dsConfL
    TabOrder = 18
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODEMP'
        Title.Caption = 'Emp. Cobrada'
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
        FieldName = 'VENCE'
        Title.Caption = 'Venc.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODTITULAR'
        Title.Caption = 'Emp Correta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASSOCTITULAR'
        Title.Caption = 'Empressa a ser Cobrada'
        Width = 332
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODDEPENDENTE'
        Title.Caption = 'Cod Funcionario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASSOCDEPENDENTE'
        Title.Caption = 'Funcionario'
        Visible = True
      end>
  end
  object dsConferir: TDataSource
    DataSet = cdsConferir
    Left = 584
    Top = 121
  end
  object cdsConferir: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dtaini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtafin'
        ParamType = ptInput
      end>
    ProviderName = 'dspConferir'
    Left = 536
    Top = 121
    object cdsConferirASSOCTITULAR: TStringField
      FieldName = 'ASSOCTITULAR'
      Size = 60
    end
    object cdsConferirCODTITULAR: TStringField
      FieldName = 'CODTITULAR'
      Size = 15
    end
    object cdsConferirVLRREC: TFloatField
      FieldName = 'VLRREC'
    end
    object cdsConferirCODREC: TIntegerField
      FieldName = 'CODREC'
    end
  end
  object dspConferir: TDataSetProvider
    DataSet = sqlConferir
    Options = [poAllowCommandText]
    Left = 488
    Top = 121
  end
  object sqlConferir: TSQLDataSet
    CommandText = 'select * from LANCA (:dtav1,:dtav2 , :dta1 ,:dta2)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dtaini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtafin'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 440
    Top = 121
    object sqlConferirASSOCTITULAR: TStringField
      FieldName = 'ASSOCTITULAR'
      Size = 60
    end
    object sqlConferirCODTITULAR: TStringField
      FieldName = 'CODTITULAR'
      Size = 15
    end
    object sqlConferirVLRREC: TFloatField
      FieldName = 'VLRREC'
    end
    object sqlConferirCODREC: TIntegerField
      FieldName = 'CODREC'
    end
  end
  object cdsRec: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dtaini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtafin'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 104
    Top = 241
    object cdsRecRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsRecNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object cdsRecVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
    end
    object cdsRecCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText]
    Left = 64
    Top = 241
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from VALOR_NO_RECEBIMENTO1 ( :dtaini ,:dtafin)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dtaini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtafin'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 32
    Top = 241
    object SQLDataSet1RA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object SQLDataSet1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object SQLDataSet1VALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
    end
    object SQLDataSet1CODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsRec
    Left = 128
    Top = 177
  end
  object cdsErro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspErro'
    Left = 128
    Top = 368
    object cdsErroRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsErroNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object cdsErroVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsErroNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object cdsErroRA_1: TStringField
      FieldName = 'RA_1'
      Size = 10
    end
    object cdsErroNOMECLIENTE_1: TStringField
      FieldName = 'NOMECLIENTE_1'
      Size = 50
    end
    object cdsErroVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
    end
    object cdsErroCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
  end
  object dspErro: TDataSetProvider
    DataSet = sqlErro
    Left = 72
    Top = 376
  end
  object dsErro: TDataSource
    DataSet = cdsErro
    Left = 72
    Top = 400
  end
  object sqlErro: TSQLDataSet
    CommandText = 
      'select '#13#10'    valor_na_vendad1.ra,'#13#10'    valor_na_vendad1.nomeclie' +
      'nte,'#13#10'    valor_na_vendad1.valor,'#13#10'    valor_na_vendad1.numerobo' +
      'rdero,'#13#10'    valor_no_recebimentod1.ra,'#13#10'    valor_no_recebimento' +
      'd1.nomecliente,'#13#10'    valor_no_recebimentod1.valortitulo,'#13#10'    va' +
      'lor_no_recebimentod1.codrecebimento'#13#10'from valor_na_vendad1'#13#10'   i' +
      'nner join valor_no_recebimentod1 on (valor_na_vendad1.ra = valor' +
      '_no_recebimentod1.ra) and (valor_na_vendad1.numerobordero = valo' +
      'r_no_recebimentod1.codrecebimento)'#13#10'where '#13#10'   ('#13#10'      (valor_n' +
      'a_vendad1.valor <> valor_no_recebimentod1.valortitulo)'#13#10'   )'#13#10'or' +
      'der by valor_na_vendad1.valor, valor_no_recebimentod1.valortitul' +
      'o'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 32
    Top = 376
    object sqlErroRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlErroNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object sqlErroVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sqlErroNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object sqlErroRA_1: TStringField
      FieldName = 'RA_1'
      Size = 10
    end
    object sqlErroNOMECLIENTE_1: TStringField
      FieldName = 'NOMECLIENTE_1'
      Size = 50
    end
    object sqlErroVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
    end
    object sqlErroCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
    end
  end
  object sqlConL: TSQLDataSet
    CommandText = 
      'select * from LANCAPROCSAUDEPROC_CONF ('#13#10' :dta1 ,'#13#10'    :dta2,'#13#10' ' +
      '   :dtav1,'#13#10'    :dtav2,'#13#10'    :cliente ,'#13#10'    :clienteproc ,'#13#10'   ' +
      ' :contadebito,'#13#10'    :fornecedor ,'#13#10'    :codccusto )'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dta1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta2'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtav1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtav2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cliente'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'clienteproc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'contadebito'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fornecedor'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'codccusto'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 432
    Top = 169
    object sqlConLTIT: TStringField
      FieldName = 'TIT'
    end
    object sqlConLRA: TStringField
      FieldName = 'RA'
      Size = 15
    end
    object sqlConLCODEMP: TStringField
      FieldName = 'CODEMP'
      Size = 15
    end
    object sqlConLEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object sqlConLVENCE: TDateField
      FieldName = 'VENCE'
    end
    object sqlConLASSOCTITULAR: TStringField
      FieldName = 'ASSOCTITULAR'
      Size = 60
    end
    object sqlConLCODTITULAR: TStringField
      FieldName = 'CODTITULAR'
      Size = 15
    end
    object sqlConLASSOCDEPENDENTE: TStringField
      FieldName = 'ASSOCDEPENDENTE'
      Size = 60
    end
    object sqlConLEMPRESA: TStringField
      FieldName = 'EMPRESA'
    end
    object sqlConLCODDEPENDENTE: TStringField
      FieldName = 'CODDEPENDENTE'
      Size = 15
    end
  end
  object dspConfL: TDataSetProvider
    DataSet = sqlConL
    Options = [poAllowCommandText]
    Left = 480
    Top = 169
  end
  object cdsConfL: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dta1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta2'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtav1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtav2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cliente'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'clienteproc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'contadebito'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fornecedor'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'codccusto'
        ParamType = ptInput
      end>
    ProviderName = 'dspConfL'
    Left = 528
    Top = 169
    object cdsConfLTIT: TStringField
      FieldName = 'TIT'
    end
    object cdsConfLRA: TStringField
      FieldName = 'RA'
      Size = 15
    end
    object cdsConfLCODEMP: TStringField
      FieldName = 'CODEMP'
      Size = 15
    end
    object cdsConfLEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsConfLVENCE: TDateField
      FieldName = 'VENCE'
    end
    object cdsConfLASSOCTITULAR: TStringField
      FieldName = 'ASSOCTITULAR'
      Size = 60
    end
    object cdsConfLCODTITULAR: TStringField
      FieldName = 'CODTITULAR'
      Size = 15
    end
    object cdsConfLASSOCDEPENDENTE: TStringField
      FieldName = 'ASSOCDEPENDENTE'
      Size = 60
    end
    object cdsConfLEMPRESA: TStringField
      FieldName = 'EMPRESA'
    end
    object cdsConfLCODDEPENDENTE: TStringField
      FieldName = 'CODDEPENDENTE'
      Size = 15
    end
  end
  object dsConfL: TDataSource
    DataSet = cdsConfL
    Left = 600
    Top = 176
  end
end
