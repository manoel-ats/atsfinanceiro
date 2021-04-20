object fConf: TfConf
  Left = 211
  Top = 96
  Width = 1006
  Height = 594
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Conferencia'
  Color = 16776176
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
  object Label1: TLabel
    Left = 391
    Top = 383
    Width = 174
    Height = 13
    Caption = 'Verificando Lan'#231'amentos no Periodo'
  end
  object Label2: TLabel
    Left = 410
    Top = 422
    Width = 145
    Height = 13
    Caption = 'Verificando Valores no Periodo'
  end
  object Label3: TLabel
    Left = 919
    Top = 16
    Width = 39
    Height = 24
    Caption = 'ASH'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 727
    Top = 0
    Width = 77
    Height = 13
    Caption = 'Vencimento de :'
  end
  object Label5: TLabel
    Left = 757
    Top = 24
    Width = 16
    Height = 13
    Caption = 'At'#233
  end
  object Label6: TLabel
    Left = 501
    Top = 465
    Width = 145
    Height = 13
    Caption = 'Verificando Valores no Periodo'
  end
  object Label7: TLabel
    Left = 305
    Top = 465
    Width = 174
    Height = 13
    Caption = 'Verificando Lan'#231'amentos no Periodo'
  end
  object Label8: TLabel
    Left = 488
    Top = 465
    Width = 7
    Height = 13
    Caption = 'X'
  end
  object Label9: TLabel
    Left = 487
    Top = 0
    Width = 60
    Height = 13
    Caption = 'Emiss'#227'o de :'
  end
  object Label10: TLabel
    Left = 509
    Top = 24
    Width = 16
    Height = 13
    Caption = 'At'#233
  end
  object Label11: TLabel
    Left = 251
    Top = 8
    Width = 77
    Height = 13
    Caption = 'Selecione o M'#234's'
  end
  object ComboBox2: TComboBox
    Left = 250
    Top = 54
    Width = 99
    Height = 21
    ItemHeight = 13
    TabOrder = 19
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
    Left = 160
    Top = 136
    Width = 569
    Height = 32
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
    Left = 32
    Top = 313
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
    Left = 168
    Top = 240
    Width = 569
    Height = 120
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn6: TBitBtn
    Left = 24
    Top = 336
    Width = 75
    Height = 25
    Caption = 'BitBtn6'
    TabOrder = 6
    OnClick = BitBtn6Click
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 48
    Width = 977
    Height = 329
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
    Left = 663
    Top = 20
    Width = 85
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 13
  end
  object meDta6: TJvDatePickerEdit
    Left = 791
    Top = 20
    Width = 85
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 14
  end
  object ProgressBar1: TProgressBar
    Left = 32
    Top = 397
    Width = 937
    Height = 25
    TabOrder = 8
  end
  object ProgressBar2: TProgressBar
    Left = 32
    Top = 436
    Width = 937
    Height = 25
    TabOrder = 9
  end
  object ProgressBar3: TProgressBar
    Left = 30
    Top = 478
    Width = 940
    Height = 25
    TabOrder = 10
  end
  object medta7: TJvDatePickerEdit
    Left = 415
    Top = 20
    Width = 83
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 11
  end
  object medta8: TJvDatePickerEdit
    Left = 543
    Top = 20
    Width = 84
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 12
  end
  object BitBtn2: TBitBtn
    Left = 128
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Conferir 2'
    TabOrder = 15
    OnClick = BitBtn2Click
  end
  object Memo1: TMemo
    Left = 24
    Top = 512
    Width = 937
    Height = 25
    TabOrder = 16
    Visible = False
  end
  object DBGrid4: TDBGrid
    Left = 224
    Top = 512
    Width = 433
    Height = 33
    DataSource = dsC
    TabOrder = 17
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object ComboBox1: TComboBox
    Left = 250
    Top = 22
    Width = 111
    Height = 21
    ItemHeight = 13
    TabOrder = 18
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
  object dsConferir: TDataSource
    DataSet = cdsConferir
    Left = 504
    Top = 73
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
      end
      item
        DataType = ftDate
        Name = 'dtavenini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtavenfin'
        ParamType = ptInput
      end>
    ProviderName = 'dspConferir'
    Left = 448
    Top = 81
    object cdsConferirRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsConferirNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object cdsConferirVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsConferirNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
  end
  object dspConferir: TDataSetProvider
    DataSet = sqlConferir
    Options = [poAllowCommandText]
    Left = 400
    Top = 73
  end
  object sqlConferir: TSQLDataSet
    CommandText = 
      'select * from VALOR_NA_VENDA ( :dtaini ,:dtafin,:dtavenini ,:dta' +
      'venfin)'
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
      end
      item
        DataType = ftDate
        Name = 'dtavenini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtavenfin'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 352
    Top = 73
    object sqlConferirRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sqlConferirNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object sqlConferirVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sqlConferirNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
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
    CommandText = 'select * from VALOR_NO_RECEBIMENTO ( :dtaini ,:dtafin)'
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
    Left = 104
    Top = 384
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
      'select '#13#10'    valor_na_vendad.ra,'#13#10'    valor_na_vendad.nomeclient' +
      'e,'#13#10'    valor_na_vendad.valor,'#13#10'    valor_na_vendad.numeroborder' +
      'o,'#13#10'    valor_no_recebimentod.ra,'#13#10'    valor_no_recebimentod.nom' +
      'ecliente,'#13#10'    valor_no_recebimentod.valortitulo,'#13#10'    valor_no_' +
      'recebimentod.codrecebimento'#13#10'from valor_na_vendad'#13#10'   inner join' +
      ' valor_no_recebimentod on (valor_na_vendad.ra = valor_no_recebim' +
      'entod.ra) and (valor_na_vendad.numerobordero = valor_no_recebime' +
      'ntod.codrecebimento)'#13#10'where '#13#10'   ('#13#10'      (valor_na_vendad.valor' +
      ' <> valor_no_recebimentod.valortitulo)'#13#10'   )'#13#10'order by valor_na_' +
      'vendad.valor, valor_no_recebimentod.valortitulo'
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
  object SQLDataSet2: TSQLDataSet
    CommandText = 'select * from VALOR_NA_VENDA ( :dtaini ,:dtafin)'
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
    Left = 65240
    Top = 65520
    object StringField1: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object FloatField1: TFloatField
      FieldName = 'VALOR'
    end
    object IntegerField1: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
  end
  object cdsC: TClientDataSet
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
      end
      item
        DataType = ftDate
        Name = 'dtavenini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtavenfin'
        ParamType = ptInput
      end>
    ProviderName = 'dspC'
    Left = 224
    Top = 81
    object cdsCRA: TStringField
      FieldName = 'RA'
      Size = 15
    end
    object cdsCCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsCTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 60
    end
    object cdsCCODREC: TIntegerField
      FieldName = 'CODREC'
    end
    object cdsCVAL_VENDA: TFloatField
      FieldName = 'VAL_VENDA'
    end
    object cdsCVAL_RECEBIMENTO: TFloatField
      FieldName = 'VAL_RECEBIMENTO'
    end
  end
  object dspC: TDataSetProvider
    DataSet = sqlc
    Options = [poAllowCommandText]
    Left = 184
    Top = 81
  end
  object sqlc: TSQLDataSet
    CommandText = 'select * from CONF ( :dtaini ,:dtafin,:dtavenini ,:dtavenfin)'
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
      end
      item
        DataType = ftDate
        Name = 'dtavenini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtavenfin'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 144
    Top = 81
    object sqlcRA: TStringField
      FieldName = 'RA'
      Size = 15
    end
    object sqlcCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object sqlcTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 60
    end
    object sqlcCODREC: TIntegerField
      FieldName = 'CODREC'
    end
    object sqlcVAL_VENDA: TFloatField
      FieldName = 'VAL_VENDA'
    end
    object sqlcVAL_RECEBIMENTO: TFloatField
      FieldName = 'VAL_RECEBIMENTO'
    end
  end
  object dsC: TDataSource
    DataSet = cdsC
    Left = 264
    Top = 88
  end
end
