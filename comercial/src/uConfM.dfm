object fConfM: TfConfM
  Left = 393
  Top = 149
  Width = 657
  Height = 455
  Caption = 'fConfM'
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
    Left = 392
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object DBGrid1: TDBGrid
    Left = 80
    Top = 24
    Width = 521
    Height = 377
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RA1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMEROBORDERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODVENDA1'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 20
    Top = 12
    Width = 49
    Height = 19
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '1'
  end
  object sqlConM: TSQLDataSet
    CommandText = 'select * from conferir_mensalidade (:assoc , :dta1 ,:dta2)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'assoc'
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
    Left = 200
    object sqlConMCOD_CLIENTE: TSmallintField
      FieldName = 'COD_CLIENTE'
    end
    object sqlConMCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object sqlConMPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object sqlConMNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object sqlConMCODVENDA1: TIntegerField
      FieldName = 'CODVENDA1'
    end
    object sqlConMRA1: TStringField
      FieldName = 'RA1'
      Size = 10
    end
    object sqlConMRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object sqlConMPRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
  object dspConfM: TDataSetProvider
    DataSet = sqlConM
    Options = [poAllowCommandText]
    Left = 240
  end
  object cdsConfM: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'assoc'
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
    ProviderName = 'dspConfM'
    Left = 280
    object cdsConfMCOD_CLIENTE: TSmallintField
      FieldName = 'COD_CLIENTE'
    end
    object cdsConfMCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsConfMPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object cdsConfMNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object cdsConfMCODVENDA1: TIntegerField
      FieldName = 'CODVENDA1'
    end
    object cdsConfMRA1: TStringField
      FieldName = 'RA1'
      Size = 10
    end
    object cdsConfMRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 50
    end
    object cdsConfMPRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsConfM
    Left = 320
  end
end
