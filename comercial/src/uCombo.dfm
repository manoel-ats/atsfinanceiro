inherited fCombo: TfCombo
  Left = 366
  Top = 132
  Width = 685
  Height = 501
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
    Left = 429
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
  object GroupBox1: TGroupBox [4]
    Left = 53
    Top = 57
    Width = 282
    Height = 39
    Caption = 'Procurar por :'
    TabOrder = 9
  end
  inherited MMJPanel1: TMMJPanel
    Top = 420
    Width = 677
    inherited btnCancelar: TBitBtn
      Left = 356
    end
    inherited btnExcluir: TBitBtn
      Left = 356
    end
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 677
    TabOrder = 6
    inherited Label1: TLabel
      Left = 144
    end
    inherited Label2: TLabel
      Left = 147
      Top = 5
    end
  end
  object DBGrid1: TDBGrid [7]
    Left = 8
    Top = 96
    Width = 657
    Height = 257
    DataSource = DtSrc
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 7
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
      end>
  end
  object DBEdit1: TDBEdit [8]
    Left = 12
    Top = 387
    Width = 65
    Height = 21
    DataField = 'CODIGOS'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [9]
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
  object DBEdit3: TDBEdit [10]
    Left = 337
    Top = 387
    Width = 80
    Height = 21
    CharCase = ecUpperCase
    DataField = 'OUTROS'
    DataSource = DtSrc
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object EvDBFind1: TEvDBFind [11]
    Left = 61
    Top = 70
    Width = 266
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    TabOrder = 8
  end
  object DBEdit5: TDBEdit [12]
    Left = 426
    Top = 387
    Width = 86
    Height = 21
    DataField = 'DIVERSOS'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBRadioGroup1: TDBRadioGroup [13]
    Left = 525
    Top = 372
    Width = 148
    Height = 40
    Caption = 'Somente Pr'#233'-Impresso'
    Columns = 2
    DataField = 'CODHOS'
    DataSource = DtSrc
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 5
    Values.Strings = (
      '1'
      '2')
  end
  inherited DtSrc: TDataSource
    DataSet = DMSaude.cdsCombo
  end
end
