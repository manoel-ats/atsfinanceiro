inherited fClientePlano: TfClientePlano
  Left = 226
  Top = 65
  Width = 710
  Height = 575
  Caption = 'Cliente'
  Color = clMoneyGreen
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Top = 483
    Width = 694
    inherited btnIncluir: TBitBtn
      Left = 250
    end
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 694
    inherited Label1: TLabel
      Left = 0
      Width = 81
      Height = 31
      Font.Height = -27
    end
    inherited Label2: TLabel
      Left = 4
      Top = 6
      Width = 81
      Height = 31
      Font.Height = -27
    end
    object DBText1: TDBText
      Left = 232
      Top = 15
      Width = 401
      Height = 18
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
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 53
    Width = 689
    Height = 428
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Label3: TLabel
        Left = 227
        Top = 123
        Width = 32
        Height = 13
        Caption = 'NOME'
        FocusControl = DBEdit1
      end
      object Label5: TLabel
        Left = 397
        Top = 151
        Width = 103
        Height = 13
        Caption = 'DATA NASCIMENTO'
        FocusControl = DBEdit3
      end
      object Label6: TLabel
        Left = 365
        Top = 36
        Width = 86
        Height = 13
        Caption = 'DATA RESCIS'#195'O'
        FocusControl = DBEdit4
      end
      object Label7: TLabel
        Left = 19
        Top = 326
        Width = 58
        Height = 13
        Caption = 'NOME M'#195'E'
        FocusControl = DBEdit5
      end
      object Label8: TLabel
        Left = 571
        Top = 151
        Width = 29
        Height = 13
        Caption = 'SEXO'
        FocusControl = DBEdit6
      end
      object Label11: TLabel
        Left = 259
        Top = 36
        Width = 91
        Height = 13
        Caption = 'DATA CADASTRO'
        FocusControl = DBEdit9
      end
      object Label12: TLabel
        Left = 20
        Top = 123
        Width = 42
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DBEdit10
      end
      object Label15: TLabel
        Left = 20
        Top = 16
        Width = 72
        Height = 13
        Caption = 'COD INC. ANS'
        FocusControl = DBEdit13
      end
      object Label16: TLabel
        Left = 318
        Top = 15
        Width = 78
        Height = 13
        Caption = 'EXIST COBERT'
        FocusControl = DBEdit14
      end
      object Label17: TLabel
        Left = 436
        Top = 16
        Width = 78
        Height = 13
        Caption = 'EXIST COPART'
        FocusControl = DBEdit15
      end
      object Label23: TLabel
        Left = 551
        Top = 352
        Width = 96
        Height = 13
        Caption = 'DATA ALTERA'#199#195'O'
        FocusControl = DBEdit21
      end
      object Label13: TLabel
        Left = 19
        Top = 151
        Width = 16
        Height = 13
        Caption = 'RG'
      end
      object Label14: TLabel
        Left = 216
        Top = 153
        Width = 20
        Height = 13
        Caption = 'CPF'
      end
      object Label19: TLabel
        Left = 264
        Top = 93
        Width = 69
        Height = 13
        Caption = 'PLANO FAIXA'
      end
      object Label32: TLabel
        Left = 270
        Top = 14
        Width = 38
        Height = 13
        Hint = 
          '00 - Quando Cadastrar'#13#10'01 - Rompimento'#13#10'02 - Termino rela'#231#227'o'#13#10'03' +
          ' - Desligamento Empresa'#13#10'04 - Inadimpl'#234'ncia'#13#10'05 - '#211'bito'#13#10'06 - At' +
          'ualiza'#231#227'o Cadastral'#13#10'07 - Exclus'#227'o , Mudan'#231'a de codigo pela Oper' +
          'adora'#13#10'08 - Transfer'#234'ncia Carteira'#13#10'09 - Altera'#231#227'o Individual do' +
          ' Codigo'#13#10'13 - Inclus'#227'o Indevida'#13#10'14 - Fraude (art. 13 da Lei n'#186' ' +
          '9.656/98)'
        Caption = 'C'#243'digos'
        FocusControl = DBEdit13
        ParentShowHint = False
        ShowHint = True
      end
      object Label33: TLabel
        Left = 611
        Top = 93
        Width = 38
        Height = 13
        Hint = '01 - Beneficiario Titular'
        Caption = 'C'#243'digos'
        FocusControl = DBEdit13
        ParentShowHint = False
        ShowHint = True
      end
      object Label34: TLabel
        Left = 383
        Top = 93
        Width = 98
        Height = 13
        Hint = 
          '  1  -    0  a  18  Anos'#13#10'  2  -  19  a  23  Anos'#13#10'  3  -  24  a' +
          '  28  Anos'#13#10'  4  -  29  a  33  Anos'#13#10'  5  -  34  a  38  Anos'#13#10'  ' +
          '6  -  39  a  43  Anos'#13#10'  7  -  44  a  48  Anos'#13#10'  8  -  49  a  5' +
          '3  Anos'#13#10'  9  -  54  a  58  Anos'#13#10'10  -  59  a  100  Anos'
        Caption = '(Ver Idades:C'#243'digos)'
        FocusControl = DBEdit13
        ParentShowHint = False
        ShowHint = True
      end
      object Label35: TLabel
        Left = 486
        Top = 95
        Width = 47
        Height = 13
        Caption = 'V'#205'NCULO'
        FocusControl = DBEdit14
      end
      object Label36: TLabel
        Left = 133
        Top = 16
        Width = 88
        Height = 13
        Caption = 'CANCELAMENTO'
        FocusControl = DBEdit13
      end
      object Label37: TLabel
        Left = 547
        Top = 78
        Width = 15
        Height = 13
        Caption = '01 '
      end
      object Label38: TLabel
        Left = 456
        Top = 93
        Width = 39
        Height = 13
        Hint = 
          '  1  -    0  a  18  Anos'#13#10'  2  -  19  a  23  Anos'#13#10'  3  -  24  a' +
          '  28  Anos'#13#10'  4  -  29  a  33  Anos'#13#10'  5  -  34  a  38  Anos'#13#10'  ' +
          '6  -  39  a  43  Anos'#13#10'  7  -  44  a  48  Anos'#13#10'  8  -  49  a  5' +
          '3  Anos'#13#10'  9  -  54  a  58  Anos'#13#10'10  -  59  a  100  Anos'
        Caption = 'IDADE :'
        FocusControl = DBEdit13
        ParentShowHint = False
        ShowHint = True
      end
      object Label39: TLabel
        Left = 388
        Top = 92
        Width = 91
        Height = 13
        Hint = 
          '  1  -    1  a    25  Funcionrios'#13#10'  2  -  26  a    50  Funcionr' +
          'ios'#13#10'  3  -  51  a    75  Funcionrios'#13#10'  4  -  76  a  200  Funci' +
          'onrios'
        Caption = '(Ver Faixa:C'#243'digos)'
        FocusControl = DBEdit13
        ParentShowHint = False
        ShowHint = True
      end
      object Label40: TLabel
        Left = 136
        Top = 347
        Width = 38
        Height = 13
        Caption = 'Label40'
      end
      object Label44: TLabel
        Left = 496
        Top = 59
        Width = 22
        Height = 13
        Caption = 'CCO'
      end
      object Label45: TLabel
        Left = 656
        Top = 59
        Width = 19
        Height = 13
        Caption = 'DIG'
      end
      object GroupBox2: TGroupBox
        Left = 338
        Top = 273
        Width = 78
        Height = 43
        Caption = 'EM VIAGEM'
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 19
        Top = 273
        Width = 294
        Height = 43
        Caption = 'GERA'
        TabOrder = 1
        object Label4: TLabel
          Left = 13
          Top = 18
          Width = 32
          Height = 13
          Caption = 'AVISO'
        end
        object Label9: TLabel
          Left = 79
          Top = 18
          Width = 57
          Height = 13
          Caption = 'ENVELOPE'
        end
        object Label10: TLabel
          Left = 176
          Top = 17
          Width = 43
          Height = 13
          Caption = 'BOLETO'
        end
      end
      object DBEdit1: TDBEdit
        Left = 264
        Top = 121
        Width = 385
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMECLIENTE'
        DataSource = DtSrc
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object DBEdit3: TDBEdit
        Left = 504
        Top = 151
        Width = 65
        Height = 21
        DataField = 'DATANASC'
        DataSource = DtSrc
        TabOrder = 3
        OnExit = DBEdit3Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit4: TDBEdit
        Left = 362
        Top = 53
        Width = 96
        Height = 21
        DataField = 'DATARESC'
        DataSource = DtSrc
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object DBEdit5: TDBEdit
        Left = 88
        Top = 326
        Width = 425
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMEMAE'
        DataSource = DtSrc
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object DBEdit6: TDBEdit
        Left = 608
        Top = 151
        Width = 39
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SEXO'
        DataSource = DtSrc
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object DBEdit9: TDBEdit
        Left = 257
        Top = 53
        Width = 97
        Height = 21
        DataField = 'DATACADASTRO'
        DataSource = DtSrc
        TabOrder = 7
        OnKeyPress = FormKeyPress
      end
      object DBEdit10: TDBEdit
        Left = 65
        Top = 121
        Width = 144
        Height = 21
        DataField = 'RA'
        DataSource = DtSrc
        ReadOnly = True
        TabOrder = 8
        OnKeyPress = FormKeyPress
      end
      object DBEdit13: TDBEdit
        Left = 95
        Top = 12
        Width = 32
        Height = 21
        DataField = 'CODINCLUCANC'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnKeyPress = FormKeyPress
      end
      object DBEdit14: TDBEdit
        Left = 401
        Top = 12
        Width = 28
        Height = 21
        DataField = 'EXIST_COBERT'
        DataSource = DtSrc
        TabOrder = 10
        OnKeyPress = FormKeyPress
      end
      object DBEdit15: TDBEdit
        Left = 517
        Top = 12
        Width = 28
        Height = 21
        DataField = 'EXISTCOPART'
        DataSource = DtSrc
        TabOrder = 11
        OnKeyPress = FormKeyPress
      end
      object DBEdit17: TDBEdit
        Left = 72
        Top = 286
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GERAAVISO'
        DataSource = DtSrc
        TabOrder = 12
        OnKeyPress = FormKeyPress
      end
      object DBEdit18: TDBEdit
        Left = 160
        Top = 286
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GERAENV'
        DataSource = DtSrc
        TabOrder = 13
        OnKeyPress = FormKeyPress
      end
      object DBEdit19: TDBEdit
        Left = 248
        Top = 286
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GERABOL'
        DataSource = DtSrc
        TabOrder = 14
        OnKeyPress = FormKeyPress
      end
      object DBEdit20: TDBEdit
        Left = 371
        Top = 286
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EMVIAGEM'
        DataSource = DtSrc
        TabOrder = 15
        OnKeyPress = FormKeyPress
      end
      object DBEdit21: TDBEdit
        Left = 552
        Top = 367
        Width = 96
        Height = 21
        DataField = 'DTAALTERA'
        DataSource = DtSrc
        TabOrder = 16
        OnKeyPress = FormKeyPress
      end
      object DBEdit11: TDBEdit
        Left = 64
        Top = 151
        Width = 145
        Height = 21
        DataField = 'INSCESTADUAL'
        DataSource = DtSrc
        TabOrder = 17
        OnKeyPress = FormKeyPress
      end
      object DBEdit12: TDBEdit
        Left = 264
        Top = 151
        Width = 129
        Height = 21
        DataField = 'CNPJ'
        DataSource = DtSrc
        TabOrder = 18
        OnKeyPress = FormKeyPress
      end
      object btnDependente: TBitBtn
        Left = 536
        Top = 278
        Width = 113
        Height = 32
        Caption = 'F5 - FUNCIONARIOS'
        PopupMenu = PopupMenu1
        TabOrder = 19
        OnClick = btnDependenteClick
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 20
        Top = 77
        Width = 227
        Height = 35
        Caption = 'SITUA'#199#195'O'
        Columns = 2
        DataField = 'STATUS'
        DataSource = DtSrc
        Items.Strings = (
          'ATIVO'
          'DESLIGADO')
        TabOrder = 20
        TabStop = True
        Values.Strings = (
          '0'
          '1')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 19
        Top = 39
        Width = 228
        Height = 35
        Caption = 'PESSOA'
        Columns = 2
        DataField = 'TIPOFIRMA'
        DataSource = DtSrc
        Items.Strings = (
          'FISICA'
          'JURIDICA')
        TabOrder = 21
        TabStop = True
        Values.Strings = (
          '0'
          '1')
      end
      object DBEdit2: TDBEdit
        Left = 338
        Top = 91
        Width = 40
        Height = 21
        DataField = 'COD_FAIXA'
        DataSource = DtSrc
        TabOrder = 22
        OnKeyPress = FormKeyPress
      end
      object DBEdit31: TDBEdit
        Left = 231
        Top = 12
        Width = 32
        Height = 21
        DataField = 'ESTADORG'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
        OnKeyPress = FormKeyPress
      end
      object DBEdit32: TDBEdit
        Left = 546
        Top = 92
        Width = 42
        Height = 21
        DataField = 'SITUACAOESCOLAR'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
        OnKeyPress = FormKeyPress
      end
      object DBEdit33: TDBEdit
        Left = 498
        Top = 91
        Width = 40
        Height = 21
        DataField = 'PARCELA'
        DataSource = DtSrc
        TabOrder = 25
        OnKeyPress = FormKeyPress
      end
      object BitBtn5: TBitBtn
        Left = 462
        Top = 49
        Width = 29
        Height = 29
        TabOrder = 26
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
      object DBEdit37: TDBEdit
        Left = 521
        Top = 53
        Width = 82
        Height = 21
        DataField = 'LIVRONASC'
        DataSource = DtSrc
        TabOrder = 27
        OnKeyPress = FormKeyPress
      end
      object DBEdit36: TDBEdit
        Left = 610
        Top = 53
        Width = 41
        Height = 21
        DataField = 'UFNASC'
        DataSource = DtSrc
        TabOrder = 28
        OnKeyPress = FormKeyPress
      end
      object GroupBox3: TGroupBox
        Left = 432
        Top = 273
        Width = 78
        Height = 43
        Caption = 'CAR'#202'NCIA'
        TabOrder = 29
      end
      object DBEdit38: TDBEdit
        Left = 465
        Top = 286
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TEM_IE'
        DataSource = DtSrc
        TabOrder = 30
        OnKeyPress = FormKeyPress
      end
      object DBEdit39: TDBEdit
        Left = 192
        Top = 207
        Width = 49
        Height = 21
        DataField = 'NUMERO'
        DataSource = DtSrc
        TabOrder = 31
        OnKeyPress = FormKeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Label27: TLabel
        Left = 19
        Top = 186
        Width = 26
        Height = 13
        Caption = 'END.'
      end
      object Label31: TLabel
        Left = 296
        Top = 187
        Width = 12
        Height = 13
        Caption = 'N'#186
      end
      object Label30: TLabel
        Left = 394
        Top = 186
        Width = 41
        Height = 13
        Caption = 'BAIRRO'
      end
      object Label20: TLabel
        Left = 21
        Top = 218
        Width = 29
        Height = 13
        Caption = 'FONE'
      end
      object Label22: TLabel
        Left = 189
        Top = 218
        Width = 29
        Height = 13
        Caption = 'FONE'
      end
      object Label21: TLabel
        Left = 367
        Top = 218
        Width = 32
        Height = 13
        Caption = 'EMAIL'
      end
      object Label25: TLabel
        Left = 41
        Top = 247
        Width = 40
        Height = 13
        Caption = 'CIDADE'
        FocusControl = DBEdit23
      end
      object Label29: TLabel
        Left = 228
        Top = 247
        Width = 14
        Height = 13
        Caption = 'UF'
      end
      object Label42: TLabel
        Left = 283
        Top = 247
        Width = 47
        Height = 13
        Caption = 'Cod.IBGE'
      end
      object Label26: TLabel
        Left = 437
        Top = 247
        Width = 21
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit24
      end
      object Label28: TLabel
        Left = 529
        Top = 247
        Width = 59
        Height = 13
        Caption = 'CX POSTAL'
      end
      object DBEdit25: TDBEdit
        Left = 64
        Top = 184
        Width = 225
        Height = 21
        CharCase = ecUpperCase
        DataField = 'LOGRADOURO'
        DataSource = dsEndereco
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object DBEdit30: TDBEdit
        Left = 317
        Top = 184
        Width = 72
        Height = 21
        DataField = 'RAMAL'
        DataSource = dsEndereco
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object DBEdit28: TDBEdit
        Left = 440
        Top = 184
        Width = 209
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = dsEndereco
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object DBEdit7: TDBEdit
        Left = 64
        Top = 215
        Width = 116
        Height = 21
        DataField = 'TELEFONE'
        DataSource = dsEndereco
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object DBEdit29: TDBEdit
        Left = 225
        Top = 215
        Width = 129
        Height = 21
        DataField = 'FAX'
        DataSource = dsEndereco
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object DBEdit8: TDBEdit
        Left = 408
        Top = 215
        Width = 242
        Height = 21
        DataField = 'E_MAIL'
        DataSource = dsEndereco
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object BitBtn1: TBitBtn
        Left = 13
        Top = 244
        Width = 24
        Height = 25
        Caption = '...'
        TabOrder = 6
        OnClick = BitBtn1Click
      end
      object DBEdit23: TDBEdit
        Left = 86
        Top = 247
        Width = 136
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIDADE'
        DataSource = dsEndereco
        TabOrder = 7
        OnKeyPress = FormKeyPress
      end
      object DBEdit26: TDBEdit
        Left = 246
        Top = 247
        Width = 33
        Height = 21
        DataField = 'UF'
        DataSource = dsEndereco
        TabOrder = 8
        OnKeyPress = FormKeyPress
      end
      object DBEdit35: TDBEdit
        Left = 334
        Top = 246
        Width = 96
        Height = 21
        DataField = 'DADOSADICIONAIS'
        DataSource = dsEndereco
        TabOrder = 9
      end
      object DBEdit24: TDBEdit
        Left = 461
        Top = 247
        Width = 65
        Height = 21
        DataField = 'CEP'
        DataSource = dsEndereco
        TabOrder = 10
        OnKeyPress = FormKeyPress
      end
      object DBEdit27: TDBEdit
        Left = 594
        Top = 247
        Width = 54
        Height = 21
        DataField = 'COMPLEMENTO'
        DataSource = dsEndereco
        TabOrder = 11
        OnKeyPress = FormKeyPress
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      object Label24: TLabel
        Left = 19
        Top = 351
        Width = 22
        Height = 13
        Caption = 'OBS'
        FocusControl = DBEdit22
      end
      object Label18: TLabel
        Left = 554
        Top = 3
        Width = 92
        Height = 13
        Caption = 'REINCLUS'#195'O -SIB'
      end
      object Label43: TLabel
        Left = 555
        Top = 37
        Width = 93
        Height = 13
        Caption = 'ERRO-CADASTRO'
      end
      object Label41: TLabel
        Left = 549
        Top = 228
        Width = 112
        Height = 13
        Caption = 'DATA SIB CORRE'#199#195'O'
      end
      object DBEdit22: TDBEdit
        Left = 19
        Top = 367
        Width = 494
        Height = 21
        CharCase = ecUpperCase
        DataField = 'OBS'
        DataSource = DtSrc
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object DBEdit16: TDBEdit
        Left = 555
        Top = 15
        Width = 96
        Height = 21
        DataField = 'DATANASCIMENTO'
        DataSource = DtSrc
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object DBEdit34: TDBEdit
        Left = 548
        Top = 240
        Width = 105
        Height = 21
        DataField = 'DATAEMISSAORG'
        DataSource = DtSrc
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
    end
  end
  inherited XPMenu1: TXPMenu
    Left = 600
  end
  inherited PopupMenu1: TPopupMenu
    inherited Procurar1: TMenuItem
      OnClick = btnProcurarClick
    end
    object Dependente1: TMenuItem
      Caption = 'Dependente'
      ShortCut = 116
      OnClick = btnDependenteClick
    end
  end
  inherited DtSrc: TDataSource
    DataSet = DMSaude.cdsCliente
    Left = 552
  end
  object dsEndereco: TDataSource
    DataSet = DMSaude.cdsEndereco
    OnStateChange = dsEnderecoStateChange
    Left = 104
    Top = 16
  end
  object sql_ra: TSQLDataSet
    CommandText = 
      'select (max(cast(udf_left(RA,3) as integer))+ 1)|| '#39'0000'#39' from C' +
      'LIENTES where grupo_cliente = :grupo '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'grupo'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 144
    Top = 16
    object sql_raCONCATENATION: TStringField
      FieldName = 'CONCATENATION'
      ReadOnly = True
      Size = 25
    end
  end
  object sql_PCMSO: TSQLDataSet
    CommandText = 
      'select (max(cast(udf_left(RA,5) as integer))+ 1) as ra from CLIE' +
      'NTES where grupo_cliente = :grupo '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'grupo'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 192
    Top = 16
    object sql_PCMSORA: TFMTBCDField
      FieldName = 'RA'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
  end
  object Hist_titular: TUCHist_DataSet
    DataSet = DMSaude.cdsCliente
    ControlHistorico = HistoricoTitular
    Left = 592
    Top = 496
  end
  object Hist_Endereco: TUCHist_DataSet
    DataSet = DMSaude.cdsEndereco
    ControlHistorico = HistoricoTitular
    Left = 640
    Top = 496
  end
  object HistoricoTitular: TUCControlHistorico
    UserControl = fPlanoSaude.UserControlSaude
    Options.SaveNewRecord = False
    Options.SaveDelete = True
    Options.SavePostInsert = True
    Options.SavePostEdit = True
    Options.TypeSavePostEdit = tpSaveAllFields
    TableHistory.TableName = 'UCTABHistory'
    TableHistory.FieldApplicationID = 'ApplicationID'
    TableHistory.FieldUserID = 'UserID'
    TableHistory.FieldEventDate = 'EventDate'
    TableHistory.FieldEventTime = 'EventTime'
    TableHistory.FieldForm = 'Form'
    TableHistory.FieldCaptionForm = 'FormCaption'
    TableHistory.FieldEvent = 'Event'
    TableHistory.FieldObs = 'Obs'
    TableHistory.FieldTableName = 'tName'
    UsersHistory.MenuItem = fPlanoSaude.Historico1
    HistoryMsg.Evento_Insert = 'Inserido'
    HistoryMsg.Evento_Delete = 'Apagado'
    HistoryMsg.Evento_Edit = 'Editado'
    HistoryMsg.Evento_NewRecord = 'Novo registro'
    HistoryMsg.Hist_All = 'Todos'
    HistoryMsg.Msg_LimpHistorico = 'Excluir todo o conte'#250'do do hist'#243'rico ?'
    HistoryMsg.Msg_MensConfirma = 'Confirma'#231#227'o'
    HistoryMsg.Msg_LogEmptyHistory = 'Usu'#225'rio %s apagou todo o hist'#243'rico as %s'
    HistoryMsg.LabelDescricao = 'Hist'#243'rico de tabelas'
    HistoryMsg.LabelUser = 'Usu'#225'rio'
    HistoryMsg.LabelForm = 'Formul'#225'rio'
    HistoryMsg.LabelEvento = 'Evento'
    HistoryMsg.LabelTabela = 'Tabela'
    HistoryMsg.LabelDataEvento = 'Data'
    HistoryMsg.LabelHoraEvento = 'Hora'
    HistoryMsg.Msg_NewRecord = '%s inseriu um novo registro'
    HistoryMsg.Hist_MsgExceptPropr = 'Favor informar a propriedade %s'
    HistoryMsg.Hist_BtnFiltro = '&Aplicar Filtro'
    HistoryMsg.Hist_BtnExcluir = '&Excluir Hist'#243'rico'
    HistoryMsg.Hist_BtnFechar = '&Fechar'
    Left = 64
    Top = 488
  end
  object procIBGE: TSQLClientDataSet
    CommandText = 
      'select  NM_MUNICIPIO, NM_LOCALIDADE, CD_IBGE, CD_UF from TB_IBGE' +
      ' where NM_MUNICIPIO LIKE :NOME'#13#10#13#10
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 24
    Top = 488
    object procIBGENM_MUNICIPIO: TStringField
      FieldName = 'NM_MUNICIPIO'
      Size = 40
    end
    object procIBGECD_UF: TStringField
      FieldName = 'CD_UF'
      FixedChar = True
      Size = 2
    end
    object procIBGECD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Required = True
      Size = 10
    end
    object procIBGENM_LOCALIDADE: TStringField
      FieldName = 'NM_LOCALIDADE'
      Required = True
      Size = 40
    end
  end
end
