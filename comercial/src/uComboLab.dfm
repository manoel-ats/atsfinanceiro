inherited fComboLab: TfComboLab
  Left = 356
  Top = 114
  Width = 737
  Height = 537
  Caption = 'Cadastros'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 12
    Top = 372
    Width = 42
    Height = 13
    Caption = 'CODIGO'
  end
  object Label5: TLabel [1]
    Left = 336
    Top = 372
    Width = 46
    Height = 13
    Caption = 'OUTROS'
  end
  object Label8: TLabel [2]
    Left = 428
    Top = 372
    Width = 36
    Height = 13
    Caption = 'VALOR'
  end
  object Label4: TLabel [3]
    Left = 83
    Top = 371
    Width = 62
    Height = 13
    Caption = 'DESCRI'#199#195'O'
  end
  object Label6: TLabel [4]
    Left = 384
    Top = 64
    Width = 53
    Height = 13
    Caption = 'Laboratorio'
  end
  object Label7: TLabel [5]
    Left = 516
    Top = 372
    Width = 39
    Height = 13
    Caption = 'GRUPO'
  end
  object Label9: TLabel [6]
    Left = 208
    Top = 424
    Width = 360
    Height = 20
    Caption = 'Cadastrar Valor do EXAME com PONTO Ex: 10.15 '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox [7]
    Left = 53
    Top = 57
    Width = 282
    Height = 39
    Caption = 'Procurar por :'
    TabOrder = 10
  end
  inherited MMJPanel1: TMMJPanel
    Top = 456
    Width = 729
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 729
    TabOrder = 7
    inherited Label1: TLabel
      Left = 144
    end
    inherited Label2: TLabel
      Left = 147
      Top = 5
    end
  end
  object DBGrid1: TDBGrid [10]
    Left = 8
    Top = 96
    Width = 657
    Height = 257
    DataSource = DtSrc
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGOS'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 285
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OUTROS'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIVERSOS'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODHOS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC4'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC5'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC6'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNICO'
        Title.Caption = 'Grupo'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit [11]
    Left = 12
    Top = 387
    Width = 65
    Height = 21
    DataField = 'CODIGOS'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [12]
    Left = 82
    Top = 387
    Width = 249
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [13]
    Left = 337
    Top = 387
    Width = 78
    Height = 21
    CharCase = ecUpperCase
    DataField = 'OUTROS'
    DataSource = DtSrc
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object EvDBFind1: TEvDBFind [14]
    Left = 61
    Top = 70
    Width = 266
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    TabOrder = 9
  end
  object DBEdit5: TDBEdit [15]
    Left = 426
    Top = 387
    Width = 82
    Height = 21
    DataField = 'DIVERSOS'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBRadioGroup1: TDBRadioGroup [16]
    Left = 576
    Top = 372
    Width = 113
    Height = 40
    Caption = 'Somente Pr'#233'-Impresso'
    Columns = 2
    DataField = 'CODHOS'
    DataSource = DtSrc
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 6
    Values.Strings = (
      '1'
      '2')
  end
  object DBEdit4: TDBEdit [17]
    Left = 518
    Top = 387
    Width = 33
    Height = 21
    DataField = 'UNICO'
    DataSource = DtSrc
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = cdsCombo
  end
  object sdsCombo: TSQLDataSet
    CommandText = 'select * from DADOS_COMBOS where uso =:puso order by coddados'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'puso'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 504
    Top = 72
    object sdsComboCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object sdsComboDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object sdsComboUNICO: TIntegerField
      FieldName = 'UNICO'
    end
    object sdsComboUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object sdsComboCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object sdsComboOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
    object sdsComboCODHOS: TIntegerField
      FieldName = 'CODHOS'
    end
    object sdsComboDIVERSOS: TStringField
      FieldName = 'DIVERSOS'
      Size = 50
    end
    object sdsComboDESC1: TStringField
      FieldName = 'DESC1'
      Size = 80
    end
    object sdsComboDESC2: TStringField
      FieldName = 'DESC2'
      Size = 80
    end
    object sdsComboDESC3: TStringField
      FieldName = 'DESC3'
      Size = 80
    end
    object sdsComboDESC4: TStringField
      FieldName = 'DESC4'
      Size = 80
    end
    object sdsComboDESC5: TStringField
      FieldName = 'DESC5'
      Size = 80
    end
    object sdsComboDESC6: TStringField
      FieldName = 'DESC6'
      Size = 80
    end
  end
  object dspCombo: TDataSetProvider
    DataSet = sdsCombo
    Options = [poAllowCommandText]
    Left = 504
    Top = 120
  end
  object cdsCombo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'puso'
        ParamType = ptInput
      end>
    ProviderName = 'dspCombo'
    Left = 504
    Top = 168
    object cdsComboCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      Required = True
    end
    object cdsComboDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object cdsComboUNICO: TIntegerField
      FieldName = 'UNICO'
    end
    object cdsComboUSO: TStringField
      FieldName = 'USO'
      Size = 30
    end
    object cdsComboCODIGOS: TStringField
      FieldName = 'CODIGOS'
      Size = 50
    end
    object cdsComboOUTROS: TStringField
      FieldName = 'OUTROS'
      Size = 30
    end
    object cdsComboCODHOS: TIntegerField
      FieldName = 'CODHOS'
    end
    object cdsComboDIVERSOS: TStringField
      FieldName = 'DIVERSOS'
      Size = 50
    end
    object cdsComboDESC1: TStringField
      FieldName = 'DESC1'
      Size = 80
    end
    object cdsComboDESC2: TStringField
      FieldName = 'DESC2'
      Size = 80
    end
    object cdsComboDESC3: TStringField
      FieldName = 'DESC3'
      Size = 80
    end
    object cdsComboDESC4: TStringField
      FieldName = 'DESC4'
      Size = 80
    end
    object cdsComboDESC5: TStringField
      FieldName = 'DESC5'
      Size = 80
    end
    object cdsComboDESC6: TStringField
      FieldName = 'DESC6'
      Size = 80
    end
  end
  object dsCombo: TDataSource
    DataSet = cdsCombo
    Left = 504
    Top = 211
  end
end
