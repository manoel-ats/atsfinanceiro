object fNumrem: TfNumrem
  Left = 402
  Top = 231
  Width = 545
  Height = 273
  BorderIcons = [biSystemMenu]
  Caption = 'Sequencia'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 152
    Top = 104
    Width = 38
    Height = 13
    Caption = 'PCMSO'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 56
    Top = 72
    Width = 243
    Height = 13
    Caption = 'ULTIMO NUMERO GERADO DEBITO EM CONTA'
  end
  object DBEdit2: TDBEdit
    Left = 152
    Top = 120
    Width = 41
    Height = 21
    DataField = 'PORTA'
    DataSource = ds
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Corrigir'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 240
    Top = 32
    object cdsCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object cdsPORTA: TIntegerField
      FieldName = 'PORTA'
    end
  end
  object dsp: TDataSetProvider
    DataSet = sql
    Left = 184
    Top = 32
  end
  object sql: TSQLDataSet
    CommandText = 'select  CODIGO_CONTA , PORTA from EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 128
    Top = 32
    object sqlCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object sqlPORTA: TIntegerField
      FieldName = 'PORTA'
    end
  end
  object ds: TDataSource
    DataSet = cds
    Left = 320
    Top = 72
  end
end
