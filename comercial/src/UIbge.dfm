object fIbge: TfIbge
  Left = 243
  Top = 214
  Width = 698
  Height = 407
  Caption = 'Codigo Municipios IBGE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 90
    Height = 13
    Caption = 'NM_LOCALIDADE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 184
    Top = 56
    Width = 46
    Height = 13
    Caption = 'CD_IBGE'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 256
    Top = 56
    Width = 79
    Height = 13
    Caption = 'NM_MUNICIPIO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 432
    Top = 56
    Width = 121
    Height = 13
    Caption = 'NM_TIPO_LOCALIDADE'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 576
    Top = 56
    Width = 46
    Height = 13
    Caption = 'SQ_IBGE'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 632
    Top = 56
    Width = 35
    Height = 13
    Caption = 'CD_UF'
    FocusControl = DBEdit6
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 72
    Width = 169
    Height = 21
    DataField = 'NM_LOCALIDADE'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 184
    Top = 72
    Width = 65
    Height = 21
    DataField = 'CD_IBGE'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 256
    Top = 72
    Width = 169
    Height = 21
    DataField = 'NM_MUNICIPIO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 432
    Top = 72
    Width = 137
    Height = 21
    DataField = 'NM_TIPO_LOCALIDADE'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 576
    Top = 72
    Width = 49
    Height = 21
    DataField = 'SQ_IBGE'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 632
    Top = 72
    Width = 30
    Height = 21
    DataField = 'CD_UF'
    DataSource = DataSource1
    TabOrder = 5
  end
  object JvDBGrid1: TJvDBGrid
    Left = 8
    Top = 104
    Width = 665
    Height = 209
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    AlternateRowColor = 13562879
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
  end
  object DBNavigator1: TDBNavigator
    Left = 224
    Top = 328
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 7
  end
  object cds_ibge: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ibge'
    Left = 223
    Top = 8
    object cds_ibgeNM_LOCALIDADE: TStringField
      DisplayWidth = 32
      FieldName = 'NM_LOCALIDADE'
      Required = True
      Size = 40
    end
    object cds_ibgeCD_IBGE: TStringField
      DisplayWidth = 13
      FieldName = 'CD_IBGE'
      Required = True
      Size = 10
    end
    object cds_ibgeNM_MUNICIPIO: TStringField
      DisplayWidth = 32
      FieldName = 'NM_MUNICIPIO'
      Size = 40
    end
    object cds_ibgeNM_TIPO_LOCALIDADE: TStringField
      DisplayWidth = 25
      FieldName = 'NM_TIPO_LOCALIDADE'
    end
    object cds_ibgeSQ_IBGE: TIntegerField
      DisplayWidth = 13
      FieldName = 'SQ_IBGE'
      Required = True
    end
    object cds_ibgeCD_UF: TStringField
      DisplayWidth = 7
      FieldName = 'CD_UF'
      FixedChar = True
      Size = 2
    end
  end
  object dsp_ibge: TDataSetProvider
    DataSet = sds_ibge
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 154
    Top = 8
  end
  object sds_ibge: TSQLDataSet
    CommandText = 'select * from TB_IBGE order by NM_MUNICIPIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 86
    Top = 8
    object sds_ibgeNM_LOCALIDADE: TStringField
      FieldName = 'NM_LOCALIDADE'
      Required = True
      Size = 40
    end
    object sds_ibgeCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Required = True
      Size = 10
    end
    object sds_ibgeNM_MUNICIPIO: TStringField
      FieldName = 'NM_MUNICIPIO'
      Size = 40
    end
    object sds_ibgeNM_TIPO_LOCALIDADE: TStringField
      FieldName = 'NM_TIPO_LOCALIDADE'
    end
    object sds_ibgeSQ_IBGE: TIntegerField
      FieldName = 'SQ_IBGE'
      Required = True
    end
    object sds_ibgeCD_UF: TStringField
      FieldName = 'CD_UF'
      FixedChar = True
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = cds_ibge
    Left = 272
    Top = 16
  end
end
