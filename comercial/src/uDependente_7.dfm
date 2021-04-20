inherited fDependente: TfDependente
  Left = 202
  Top = 127
  Width = 718
  Height = 530
  Caption = 'Dependente'
  Color = clMoneyGreen
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel [0]
    Left = 11
    Top = 60
    Width = 70
    Height = 13
    Caption = 'COD FUN'#199#195'O'
    Visible = False
  end
  object Label13: TLabel [1]
    Left = 89
    Top = 235
    Width = 59
    Height = 13
    Caption = 'CADASTRO'
    Visible = False
  end
  object Label18: TLabel [2]
    Left = 290
    Top = 240
    Width = 92
    Height = 13
    Caption = 'REINCLUS'#195'O -SIB'
    Visible = False
  end
  object Label43: TLabel [3]
    Left = 491
    Top = 242
    Width = 93
    Height = 13
    Caption = 'ERRO-CADASTRO'
    Visible = False
  end
  object Panel1: TPanel [4]
    Left = 4
    Top = 264
    Width = 696
    Height = 173
    Color = clMoneyGreen
    TabOrder = 6
    DesignSize = (
      696
      173)
    object Label3: TLabel
      Left = 7
      Top = 17
      Width = 74
      Height = 13
      Caption = 'DEPENDENTE'
    end
    object Label4: TLabel
      Left = 158
      Top = 18
      Width = 32
      Height = 13
      Caption = 'NOME'
    end
    object Label5: TLabel
      Left = 378
      Top = 57
      Width = 103
      Height = 13
      Caption = 'DATA NASCIMENTO'
    end
    object Label7: TLabel
      Left = 8
      Top = 57
      Width = 86
      Height = 13
      Caption = 'DATA INCLUS'#195'O'
    end
    object Label8: TLabel
      Left = 121
      Top = 57
      Width = 16
      Height = 13
      Caption = 'RG'
    end
    object Label10: TLabel
      Left = 139
      Top = 97
      Width = 58
      Height = 13
      Caption = 'NOME M'#195'E'
    end
    object Label11: TLabel
      Left = 656
      Top = 58
      Width = 29
      Height = 13
      Caption = 'SEXO'
    end
    object Label12: TLabel
      Left = 502
      Top = 57
      Width = 89
      Height = 13
      Caption = 'DATA EXCLUS'#195'O'
    end
    object Label9: TLabel
      Left = 407
      Top = 18
      Width = 69
      Height = 13
      Caption = 'PLANO FAIXA'
    end
    object Label32: TLabel
      Left = 139
      Top = 146
      Width = 38
      Height = 13
      Hint = 
        '00 - Quando Cadastrar'#13#10'01 - Rompimento'#13#10'02 - Termino rela'#231#227'o'#13#10'03' +
        ' - Desligamento Empresa'#13#10'04 - Inadimpl'#234'ncia'#13#10'05 - '#211'bito'#13#10'07 - Ex' +
        'clus'#227'o , Mudan'#231'a de codigo pela Operadora'#13#10'08 - Transfer'#234'ncia Ca' +
        'rteira'#13#10'09 - Altera'#231#227'o Individual do Codigo'#13#10'13 - Inclus'#227'o Indev' +
        'ida'#13#10'14 - Fraude (art. 13 da Lei n'#186' 9.656/98)'
      Caption = 'C'#243'digos'
      ParentShowHint = False
      ShowHint = True
    end
    object Label36: TLabel
      Left = 4
      Top = 146
      Width = 88
      Height = 13
      Caption = 'CANCELAMENTO'
    end
    object Label34: TLabel
      Left = 456
      Top = 2
      Width = 38
      Height = 13
      Hint = 
        '  1  -    0  a  18  Anos'#13#10'  2  -  19  a  23  Anos'#13#10'  3  -  24  a' +
        '  28  Anos'#13#10'  4  -  29  a  33  Anos'#13#10'  5  -  34  a  38  Anos'#13#10'  ' +
        '6  -  39  a  43  Anos'#13#10'  7  -  44  a  48  Anos'#13#10'  8  -  49  a  5' +
        '3  Anos'#13#10'  9  -  54  a  58  Anos'#13#10'10  -  59  a  100  Anos'
      Caption = 'C'#243'digos'
      FocusControl = DBEdit13
      ParentShowHint = False
      ShowHint = True
    end
    object Label14: TLabel
      Left = 452
      Top = 148
      Width = 96
      Height = 13
      Caption = 'DATA ALTERA'#199#195'O'
    end
    object Label41: TLabel
      Left = 534
      Top = 97
      Width = 112
      Height = 13
      Caption = 'DATA SIB CORRE'#199#195'O'
    end
    object Label15: TLabel
      Left = 211
      Top = 146
      Width = 22
      Height = 13
      Hint = 
        '00 - Quando Cadastrar'#13#10'01 - Rompimento'#13#10'02 - Termino rela'#231#227'o'#13#10'03' +
        ' - Desligamento Empresa'#13#10'04 - Inadimpl'#234'ncia'#13#10'05 - '#211'bito'#13#10'07 - Ex' +
        'clus'#227'o , Mudan'#231'a de codigo pela Operadora'#13#10'08 - Transfer'#234'ncia Ca' +
        'rteira'#13#10'09 - Altera'#231#227'o Individual do Codigo'#13#10'13 - Inclus'#227'o Indev' +
        'ida'#13#10'14 - Fraude (art. 13 da Lei n'#186' 9.656/98)'
      Caption = 'CCO'
      ParentShowHint = False
      ShowHint = True
    end
    object Label16: TLabel
      Left = 7
      Top = 97
      Width = 20
      Height = 13
      Caption = 'CPF'
    end
    object GroupBox2: TGroupBox
      Left = 302
      Top = 56
      Width = 72
      Height = 41
      Caption = 'EM VIAGEM'
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 155
      Top = 33
      Width = 246
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMECLIENTE'
      DataSource = DtSrc
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object DBEdit3: TDBEdit
      Left = 378
      Top = 73
      Width = 108
      Height = 21
      DataField = 'DATANASC'
      DataSource = DtSrc
      TabOrder = 9
      OnKeyPress = FormKeyPress
    end
    object DBEdit5: TDBEdit
      Left = 7
      Top = 73
      Width = 109
      Height = 21
      DataField = 'DATACADASTRO'
      DataSource = DtSrc
      TabOrder = 6
      OnKeyPress = FormKeyPress
    end
    object DBEdit6: TDBEdit
      Left = 120
      Top = 73
      Width = 89
      Height = 21
      DataField = 'INSCESTADUAL'
      DataSource = DtSrc
      TabOrder = 7
      OnKeyPress = FormKeyPress
    end
    object DBEdit7: TDBEdit
      Left = 318
      Top = 72
      Width = 41
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMVIAGEM'
      DataSource = DtSrc
      TabOrder = 8
      OnKeyPress = FormKeyPress
    end
    object DBEdit8: TDBEdit
      Left = 136
      Top = 113
      Width = 379
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMEMAE'
      DataSource = DtSrc
      TabOrder = 12
      OnKeyPress = FormKeyPress
    end
    object DBEdit9: TDBEdit
      Left = 655
      Top = 73
      Width = 33
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SEXO'
      DataSource = DtSrc
      TabOrder = 11
      OnKeyPress = FormKeyPress
    end
    object DBEdit10: TDBEdit
      Left = 501
      Top = 73
      Width = 105
      Height = 21
      DataField = 'DATARESC'
      DataSource = DtSrc
      TabOrder = 10
      OnKeyPress = FormKeyPress
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 480
      Top = 21
      Width = 209
      Height = 36
      Caption = 'STATUS'
      Columns = 3
      DataField = 'STATUS'
      DataSource = DtSrc
      Items.Strings = (
        'ATIVO'
        'DESLI'
        'AFAST')
      TabOrder = 1
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    object DBComboBox1: TDBComboBox
      Left = 7
      Top = 32
      Width = 147
      Height = 21
      Anchors = [akTop]
      CharCase = ecUpperCase
      DataField = 'CONTATO'
      DataSource = DtSrc
      ItemHeight = 13
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBEdit4: TDBEdit
      Left = 408
      Top = 31
      Width = 68
      Height = 21
      DataField = 'COD_FAIXA'
      DataSource = DtSrc
      TabOrder = 4
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 494
      Top = 18
      Width = 185
      Height = 37
      Caption = 'STATUS'
      Columns = 2
      DataField = 'STATUS'
      DataSource = DtSrc
      Items.Strings = (
        'ATIVO '
        'DESLIGADO')
      TabOrder = 5
      Values.Strings = (
        '0'
        '1')
    end
    object DBEdit11: TDBEdit
      Left = 406
      Top = 32
      Width = 71
      Height = 21
      DataField = 'RA'
      DataSource = DtSrc
      TabOrder = 13
    end
    object DBEdit12: TDBEdit
      Left = 100
      Top = 143
      Width = 33
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ESTADORG'
      DataSource = DtSrc
      TabOrder = 14
      OnKeyPress = FormKeyPress
    end
    object DBEdit13: TDBEdit
      Left = 7
      Top = 113
      Width = 121
      Height = 21
      DataField = 'CNPJ'
      DataSource = DtSrc
      TabOrder = 15
      OnKeyPress = FormKeyPress
    end
    object DBEdit14: TDBEdit
      Left = 552
      Top = 143
      Width = 105
      Height = 21
      DataField = 'DTAALTERA'
      DataSource = DtSrc
      TabOrder = 16
      OnKeyPress = FormKeyPress
    end
    object DBEdit34: TDBEdit
      Left = 532
      Top = 113
      Width = 105
      Height = 21
      DataField = 'DATAEMISSAORG'
      DataSource = DtSrc
      TabOrder = 17
      OnKeyPress = FormKeyPress
    end
    object DBEdit37: TDBEdit
      Left = 250
      Top = 144
      Width = 82
      Height = 21
      DataField = 'LIVRONASC'
      DataSource = DtSrc
      TabOrder = 18
      OnKeyPress = FormKeyPress
    end
    object DBEdit36: TDBEdit
      Left = 341
      Top = 144
      Width = 41
      Height = 21
      DataField = 'UFNASC'
      DataSource = DtSrc
      TabOrder = 19
      OnKeyPress = FormKeyPress
    end
    object GroupBox3: TGroupBox
      Left = 220
      Top = 56
      Width = 78
      Height = 40
      Caption = 'CAR'#202'NCIA'
      TabOrder = 20
      object DBEdit15: TDBEdit
        Left = 12
        Top = 14
        Width = 47
        Height = 21
        DataField = 'TEM_IE'
        DataSource = DtSrc
        TabOrder = 0
      end
    end
    object DBEdit17: TDBEdit
      Left = 256
      Top = 9
      Width = 89
      Height = 21
      DataField = 'NUMERO'
      DataSource = DtSrc
      TabOrder = 21
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox1: TGroupBox [5]
    Left = 102
    Top = 56
    Width = 530
    Height = 44
    Caption = 'Procurar por :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  inherited MMJPanel1: TMMJPanel
    Top = 438
    Width = 702
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 702
    inherited Label1: TLabel
      Left = 592
      Visible = False
    end
    inherited Label2: TLabel
      Left = 595
      Visible = False
    end
    object DBText1: TDBText
      Left = 120
      Top = 33
      Width = 497
      Height = 17
      DataField = 'NOMECLIENTE'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 120
      Top = 8
      Width = 489
      Height = 17
      DataField = 'RAZAOSOCIAL'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 24
      Top = 32
      Width = 88
      Height = 17
      DataField = 'RA'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object DBGrid1: TDBGrid [8]
    Left = 7
    Top = 102
    Width = 690
    Height = 134
    DataSource = DtSrc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CONTATO'
        Title.Caption = 'DEPENDENTE'
        Width = 218
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'NOME'
        Width = 414
        Visible = True
      end>
  end
  object EvDBFind1: TEvDBFind [9]
    Left = 109
    Top = 72
    Width = 513
    Height = 21
    DataField = 'NOMECLIENTE'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBEdit1: TDBEdit [10]
    Left = 10
    Top = 74
    Width = 81
    Height = 21
    DataField = 'REGIAO'
    DataSource = DtSrc
    TabOrder = 5
    Visible = False
  end
  object BitBtn5: TBitBtn [11]
    Left = 614
    Top = 342
    Width = 25
    Height = 26
    TabOrder = 7
    TabStop = False
    OnClick = BitBtn5Click
    Glyph.Data = {
      1E070000424D1E070000000000003600000028000000160000001A0000000100
      180000000000E806000000000000000000000000000000000000C0C0C0C0C0C0
      C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
      C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      0000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C000000000FF00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0
      C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0
      C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000007F7F7F7F7F7F7F
      7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F7F7F7F7F7F7F7F7F
      7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F000000000000
      7F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F0000000000007F7F
      7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F00007F00007F0000
      7F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F00007F00007F00007F00
      00000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF0000FF00007F00
      007F00007F00007F0000000000007F7F7F0000FF00007F00007F00007F00007F
      00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C00000FF
      00007F00007F00007F00007F00007F00000000000000007F00007F00007F0000
      7F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
      C00000FF0000FF00007F00007F00007F00007F00007F00007F00007F00007F00
      007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      0000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00007F00007F00007F
      00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
      7F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00
      007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
      00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F
      7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C00000FF00007F00007F00007F00007F00007F00007F0000000000007F7F7F7F
      7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F00007F000000
      0000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
      C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F00007F0000
      7F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C00000C0C0
      C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F0000FF0000FF00
      007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0
      0000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F0000007F7F7F
      0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F7F7F
      7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000007F7F
      7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000000000007F7F7F7F
      7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F00007F00007F00007F00
      00007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00007F00007F000000
      0000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F00007F00007F
      0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F0000
      7F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF0000FF0000FF0000
      7F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00
      00FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C000
      00FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      0000}
  end
  object DBEdit16: TDBEdit [12]
    Left = 387
    Top = 237
    Width = 96
    Height = 21
    DataField = 'DATANASCIMENTO'
    DataSource = DtSrc
    TabOrder = 8
    Visible = False
    OnKeyPress = FormKeyPress
  end
  inherited XPMenu1: TXPMenu
    Left = 616
    Top = 24
  end
  inherited PopupMenu1: TPopupMenu
    Left = 648
    Top = 24
  end
  inherited DtSrc: TDataSource
    DataSet = DMSaude.cdsDependente
    Left = 592
    Top = 24
  end
  object sql_ra: TSQLDataSet
    CommandText = 
      'select udf_strzero(max(cast(RA as integer))+ 1,5) as RA from CLI' +
      'ENTES where grupo_cliente = :grupo and razaosocial = :prcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'grupo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'prcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 656
    Top = 68
  end
  object Hist_Dependente: TUCHist_DataSet
    DataSet = DMSaude.cdsDependente
    ControlHistorico = fClientePlano.HistoricoTitular
    Left = 248
    Top = 232
  end
end
