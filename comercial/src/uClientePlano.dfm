inherited fClientePlano: TfClientePlano
  Left = 258
  Top = 94
  Width = 754
  Height = 597
  Caption = 'Empresas'
  Color = clMoneyGreen
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label15: TLabel [0]
    Left = 28
    Top = 37
    Width = 72
    Height = 13
    Caption = 'COD INC. ANS'
    FocusControl = DBEdit13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16776176
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label16: TLabel [1]
    Left = 110
    Top = 42
    Width = 78
    Height = 13
    Caption = 'EXIST COBERT'
    FocusControl = DBEdit14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16776176
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label17: TLabel [2]
    Left = 252
    Top = 19
    Width = 78
    Height = 13
    Caption = 'EXIST COPART'
    FocusControl = DBEdit15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16776176
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object DBEdit13: TDBEdit [3]
    Left = 71
    Top = 33
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
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit15: TDBEdit [4]
    Left = 213
    Top = 33
    Width = 28
    Height = 21
    DataField = 'EXISTCOPART'
    DataSource = DtSrc
    TabOrder = 3
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object DBEdit14: TDBEdit [5]
    Left = 161
    Top = 33
    Width = 28
    Height = 21
    DataField = 'EXIST_COBERT'
    DataSource = DtSrc
    TabOrder = 2
    Visible = False
    OnKeyPress = FormKeyPress
  end
  inherited MMJPanel2: TMMJPanel [6]
    Width = 721
    Align = alNone
    TabOrder = 4
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
      Top = 23
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
  inherited MMJPanel1: TMMJPanel [7]
    Top = 516
    Width = 746
    inherited btnProcurar: TBitBtn
      Width = 101
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 509
    end
  end
  object PageControl1: TPageControl [8]
    Left = 0
    Top = 55
    Width = 737
    Height = 449
    ActivePage = TabSheet1
    TabOrder = 5
    object TabSheet1: TTabSheet
      Caption = 'Cadastros'
      object Label32: TLabel
        Left = 147
        Top = 7
        Width = 38
        Height = 13
        Hint = 
          '41 '#8211' Rompimento do Contrato por iniciativa do benefici'#225'rio'#13#10'42 '#8211 +
          ' Desligamento da empresa (para planos coletivos)'#13#10'43 '#8211' Inadimpl'#234 +
          'ncia'#13#10'44 '#8211' '#211'bito'#13#10'45 '#8211' Transfer'#234'ncia de carteira'#13#10'46 - Inclus'#227'o ' +
          'indevida de benefici'#225'rios'#13#10'47 '#8211' Fraude (art. 13 da Lei 9.656/98)' +
          #13#10'48 - Por portabilidade de car'#234'ncia'#13#10'49 - Cancelamento Realizad' +
          'o pela ANS'
        Caption = 'C'#243'digos'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
        Visible = False
      end
      object Label36: TLabel
        Left = 9
        Top = 10
        Width = 88
        Height = 13
        Caption = 'CANCELAMENTO'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label12: TLabel
        Left = 12
        Top = 116
        Width = 42
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DBEdit10
      end
      object Label13: TLabel
        Left = 14
        Top = 135
        Width = 16
        Height = 13
        Caption = 'RG'
      end
      object Label14: TLabel
        Left = 150
        Top = 136
        Width = 20
        Height = 13
        Caption = 'CPF'
      end
      object Label25: TLabel
        Left = 41
        Top = 272
        Width = 40
        Height = 13
        Caption = 'CIDADE'
        FocusControl = DBEdit23
      end
      object Label27: TLabel
        Left = 16
        Top = 182
        Width = 26
        Height = 13
        Caption = 'END.'
      end
      object Label29: TLabel
        Left = 280
        Top = 272
        Width = 14
        Height = 13
        Caption = 'UF'
      end
      object Label20: TLabel
        Left = 17
        Top = 239
        Width = 29
        Height = 13
        Caption = 'FONE'
      end
      object Label22: TLabel
        Left = 213
        Top = 239
        Width = 29
        Height = 13
        Caption = 'FONE'
      end
      object Label7: TLabel
        Left = 11
        Top = 380
        Width = 58
        Height = 13
        Caption = 'NOME M'#195'E'
        FocusControl = DBEdit5
      end
      object Label24: TLabel
        Left = 13
        Top = 404
        Width = 22
        Height = 13
        Caption = 'OBS'
        FocusControl = DBEdit22
      end
      object Label6: TLabel
        Left = 386
        Top = 15
        Width = 86
        Height = 13
        Caption = 'DATA RESCIS'#195'O'
        FocusControl = DBEdit4
      end
      object Label11: TLabel
        Left = 256
        Top = 15
        Width = 91
        Height = 13
        Caption = 'DATA CADASTRO'
        FocusControl = DBEdit9
      end
      object Label18: TLabel
        Left = 530
        Top = -2
        Width = 92
        Height = 13
        Caption = 'REINCLUS'#195'O -SIB'
      end
      object Label43: TLabel
        Left = 413
        Top = 0
        Width = 93
        Height = 13
        Caption = 'ERRO-CADASTRO'
      end
      object Label44: TLabel
        Left = 517
        Top = 54
        Width = 22
        Height = 13
        Caption = 'CCO'
      end
      object Label45: TLabel
        Left = 677
        Top = 54
        Width = 19
        Height = 13
        Caption = 'DIG'
      end
      object lbl1: TLabel
        Left = 649
        Top = 0
        Width = 44
        Height = 13
        Caption = 'Cod-ANS'
      end
      object Label19: TLabel
        Left = 309
        Top = 62
        Width = 69
        Height = 13
        Caption = 'PLANO FAIXA'
      end
      object Label33: TLabel
        Left = 544
        Top = 64
        Width = 63
        Height = 13
        Hint = '01 - Beneficiario Titular'
        Caption = 'VALOR FIXO'
        FocusControl = DBEdit13
        ParentShowHint = False
        ShowHint = True
      end
      object Label34: TLabel
        Left = 431
        Top = 69
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
        Left = 526
        Top = 100
        Width = 47
        Height = 13
        Caption = 'V'#205'NCULO'
        FocusControl = DBEdit14
      end
      object Label37: TLabel
        Left = 592
        Top = 71
        Width = 15
        Height = 13
        Caption = '01 '
      end
      object Label38: TLabel
        Left = 544
        Top = 69
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
        Left = 433
        Top = 61
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
      object Label3: TLabel
        Left = 189
        Top = 116
        Width = 22
        Height = 13
        Caption = 'ASO'
        FocusControl = DBEdit1
      end
      object Label5: TLabel
        Left = 450
        Top = 184
        Width = 103
        Height = 13
        Caption = 'DATA NASCIMENTO'
        FocusControl = DBEdit3
      end
      object Label8: TLabel
        Left = 631
        Top = 181
        Width = 29
        Height = 13
        Caption = 'SEXO'
        FocusControl = DBEdit6
      end
      object Label46: TLabel
        Left = 626
        Top = 110
        Width = 27
        Height = 13
        Hint = 
          '   Antigos'#9'   1 assoc.    2 assoc.   3 assoc.  + 3 assoc'#13#10'      ' +
          '0               1                2              3              0' +
          '   '
        Caption = 'N'#186' de'
        FocusControl = DBEdit39
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object Label47: TLabel
        Left = 627
        Top = 121
        Width = 27
        Height = 13
        Hint = 
          '   Antigos'#9'   1 assoc.    2 assoc.   3 assoc.  + 3 assoc'#13#10'      ' +
          '0               1                2              3              0' +
          '   '
        Caption = 'Socio'
        FocusControl = DBEdit6
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object lbl2: TLabel
        Left = 310
        Top = 137
        Width = 22
        Height = 13
        Caption = 'CNS'
      end
      object Label30: TLabel
        Left = 445
        Top = 210
        Width = 41
        Height = 13
        Caption = 'BAIRRO'
      end
      object Label21: TLabel
        Left = 418
        Top = 240
        Width = 32
        Height = 13
        Caption = 'EMAIL'
      end
      object Label31: TLabel
        Left = 361
        Top = 183
        Width = 12
        Height = 13
        Caption = 'N'#186
      end
      object Label26: TLabel
        Left = 492
        Top = 272
        Width = 21
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit24
      end
      object Label28: TLabel
        Left = 586
        Top = 272
        Width = 59
        Height = 13
        Caption = 'CX POSTAL'
      end
      object Label42: TLabel
        Left = 338
        Top = 272
        Width = 47
        Height = 13
        Caption = 'Cod.IBGE'
      end
      object Label41: TLabel
        Left = 594
        Top = 344
        Width = 112
        Height = 13
        Caption = 'DATA SIB CORRE'#199#195'O'
      end
      object Label23: TLabel
        Left = 607
        Top = 383
        Width = 96
        Height = 13
        Caption = 'DATA ALTERA'#199#195'O'
        FocusControl = DBEdit21
      end
      object Label40: TLabel
        Left = 515
        Top = 358
        Width = 38
        Height = 13
        Caption = 'Label40'
      end
      object Label63: TLabel
        Left = 511
        Top = 137
        Width = 55
        Height = 13
        Caption = 'CNS / ANS'
      end
      object Label64: TLabel
        Left = 17
        Top = 210
        Width = 83
        Height = 13
        Caption = 'COMPLEMENTO'
        FocusControl = DBEdit3
      end
      object Label65: TLabel
        Left = 248
        Top = 8
        Width = 69
        Height = 13
        Caption = 'SIB - Corre'#231#227'o'
      end
      object Label66: TLabel
        Left = 189
        Top = 92
        Width = 32
        Height = 13
        Caption = 'NOME'
        FocusControl = DBEdit1
      end
      object Label67: TLabel
        Left = 216
        Top = 352
        Width = 111
        Height = 13
        Caption = 'Total de Funcionarios : '
      end
      object Label68: TLabel
        Left = 344
        Top = 352
        Width = 9
        Height = 13
        Caption = '...'
      end
      object DBEdit31: TDBEdit
        Left = 105
        Top = 9
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
        TabOrder = 0
        Visible = False
        OnKeyPress = FormKeyPress
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 10
        Top = 47
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
        Left = 10
        Top = 8
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
        OnClick = DBRadioGroup2Click
      end
      object DBEdit10: TDBEdit
        Left = 58
        Top = 111
        Width = 122
        Height = 21
        DataField = 'RA'
        DataSource = DtSrc
        TabOrder = 22
        OnKeyPress = FormKeyPress
      end
      object DBEdit11: TDBEdit
        Left = 14
        Top = 150
        Width = 124
        Height = 21
        DataField = 'INSCESTADUAL'
        DataSource = DtSrc
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object DBEdit12: TDBEdit
        Left = 149
        Top = 150
        Width = 120
        Height = 21
        DataField = 'CNPJ'
        DataSource = DtSrc
        TabOrder = 4
        OnExit = DBEdit12Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit23: TDBEdit
        Left = 86
        Top = 272
        Width = 191
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIDADE'
        DataSource = dsEndereco
        TabOrder = 14
        OnKeyPress = FormKeyPress
      end
      object DBEdit25: TDBEdit
        Left = 44
        Top = 178
        Width = 313
        Height = 21
        CharCase = ecUpperCase
        DataField = 'LOGRADOURO'
        DataSource = dsEndereco
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object DBEdit26: TDBEdit
        Left = 299
        Top = 272
        Width = 33
        Height = 21
        DataField = 'UF'
        DataSource = dsEndereco
        TabOrder = 15
        OnKeyPress = FormKeyPress
      end
      object DBEdit7: TDBEdit
        Left = 99
        Top = 236
        Width = 110
        Height = 21
        DataField = 'TELEFONE'
        DataSource = dsEndereco
        TabOrder = 10
        OnKeyPress = FormKeyPress
      end
      object DBEdit29: TDBEdit
        Left = 290
        Top = 236
        Width = 116
        Height = 21
        DataField = 'FAX'
        DataSource = dsEndereco
        TabOrder = 12
        OnKeyPress = FormKeyPress
      end
      object BitBtn1: TBitBtn
        Left = 13
        Top = 269
        Width = 24
        Height = 25
        Caption = '...'
        TabOrder = 23
        OnClick = BitBtn1Click
      end
      object GroupBox1: TGroupBox
        Left = 11
        Top = 302
        Width = 255
        Height = 43
        Caption = 'GERA'
        TabOrder = 24
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
        object DBEdit17: TDBEdit
          Left = 56
          Top = 14
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'GERAAVISO'
          DataSource = DtSrc
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBEdit18: TDBEdit
          Left = 144
          Top = 14
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'GERAENV'
          DataSource = DtSrc
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object DBEdit19: TDBEdit
          Left = 232
          Top = 14
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'GERABOL'
          DataSource = DtSrc
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
      end
      object DBEdit5: TDBEdit
        Left = 80
        Top = 375
        Width = 481
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMEMAE'
        DataSource = DtSrc
        TabOrder = 19
        OnKeyPress = FormKeyPress
      end
      object DBEdit22: TDBEdit
        Left = 39
        Top = 400
        Width = 524
        Height = 21
        CharCase = ecUpperCase
        DataField = 'OBS'
        DataSource = DtSrc
        TabOrder = 25
        OnKeyPress = FormKeyPress
      end
      object DBEdit4: TDBEdit
        Left = 383
        Top = 32
        Width = 96
        Height = 21
        DataField = 'DATARESC'
        DataSource = DtSrc
        TabOrder = 26
        OnKeyPress = FormKeyPress
      end
      object DBEdit9: TDBEdit
        Left = 254
        Top = 32
        Width = 97
        Height = 21
        DataField = 'DATACADASTRO'
        DataSource = DtSrc
        TabOrder = 27
        OnKeyPress = FormKeyPress
      end
      object BitBtn3: TBitBtn
        Left = 483
        Top = 28
        Width = 29
        Height = 29
        TabOrder = 28
        TabStop = False
        OnClick = BitBtn3Click
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
      object DBEdit16: TDBEdit
        Left = 519
        Top = 14
        Width = 96
        Height = 21
        DataField = 'DATANASCIMENTO'
        DataSource = DtSrc
        TabOrder = 29
        OnKeyPress = FormKeyPress
      end
      object DBEdit37: TDBEdit
        Left = 542
        Top = 48
        Width = 43
        Height = 21
        DataField = 'LIVRONASC'
        DataSource = DtSrc
        TabOrder = 30
        OnKeyPress = FormKeyPress
      end
      object DBEdit36: TDBEdit
        Left = 631
        Top = 48
        Width = 41
        Height = 21
        DataField = 'UFNASC'
        DataSource = DtSrc
        TabOrder = 31
        OnKeyPress = FormKeyPress
      end
      object dbedtEXIST_COBERT: TDBEdit
        Left = 646
        Top = 14
        Width = 48
        Height = 21
        DataField = 'COD_ANS'
        DataSource = DtSrc
        TabOrder = 32
        OnKeyPress = FormKeyPress
      end
      object BitBtn2: TBitBtn
        Left = 618
        Top = 11
        Width = 26
        Height = 27
        TabOrder = 33
        TabStop = False
        OnClick = BitBtn2Click
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
      object DBEdit2: TDBEdit
        Left = 383
        Top = 60
        Width = 40
        Height = 21
        DataField = 'COD_FAIXA'
        DataSource = DtSrc
        TabOrder = 34
        OnKeyPress = FormKeyPress
      end
      object DBEdit32: TDBEdit
        Left = 591
        Top = 87
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
        ReadOnly = True
        TabOrder = 35
        OnKeyPress = FormKeyPress
      end
      object DBEdit33: TDBEdit
        Left = 543
        Top = 88
        Width = 40
        Height = 21
        DataField = 'PARCELA'
        DataSource = DtSrc
        TabOrder = 36
        OnKeyPress = FormKeyPress
      end
      object DBEdit1: TDBEdit
        Left = 229
        Top = 89
        Width = 372
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMECLIENTE'
        DataSource = DtSrc
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object DBEdit3: TDBEdit
        Left = 560
        Top = 179
        Width = 65
        Height = 21
        DataField = 'DATANASC'
        DataSource = DtSrc
        TabOrder = 37
        OnExit = DBEdit3Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit6: TDBEdit
        Left = 665
        Top = 177
        Width = 39
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SEXO'
        DataSource = DtSrc
        TabOrder = 38
        OnKeyPress = FormKeyPress
      end
      object DBEdit39: TDBEdit
        Left = 619
        Top = 60
        Width = 27
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PARCELA'
        DataSource = DtSrc
        TabOrder = 39
        OnKeyPress = FormKeyPress
      end
      object dbeditCNS: TDBEdit
        Left = 308
        Top = 150
        Width = 165
        Height = 21
        DataField = 'CNS'
        DataSource = DtSrc
        TabOrder = 40
        OnExit = dbeditCNSExit
        OnKeyPress = FormKeyPress
      end
      object DBEdit28: TDBEdit
        Left = 491
        Top = 206
        Width = 209
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = dsEndereco
        TabOrder = 8
        OnKeyPress = FormKeyPress
      end
      object DBEdit8: TDBEdit
        Left = 459
        Top = 235
        Width = 242
        Height = 21
        DataField = 'E_MAIL'
        DataSource = dsEndereco
        TabOrder = 13
        OnKeyPress = FormKeyPress
      end
      object DBEdit30: TDBEdit
        Left = 379
        Top = 180
        Width = 61
        Height = 21
        DataField = 'RAMAL'
        DataSource = dsEndereco
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object DBEdit24: TDBEdit
        Left = 516
        Top = 272
        Width = 65
        Height = 21
        DataField = 'CEP'
        DataSource = dsEndereco
        TabOrder = 17
        OnKeyPress = FormKeyPress
      end
      object DBEdit27: TDBEdit
        Left = 649
        Top = 272
        Width = 54
        Height = 21
        DataField = 'COMPLEMENTO'
        DataSource = dsEndereco
        TabOrder = 18
        OnKeyPress = FormKeyPress
      end
      object DBEdit35: TDBEdit
        Left = 389
        Top = 271
        Width = 96
        Height = 21
        DataField = 'DADOSADICIONAIS'
        DataSource = dsEndereco
        TabOrder = 16
      end
      object GroupBox2: TGroupBox
        Left = 448
        Top = 303
        Width = 71
        Height = 43
        Caption = 'EM VIAGEM'
        TabOrder = 41
      end
      object DBEdit20: TDBEdit
        Left = 473
        Top = 316
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EMVIAGEM'
        DataSource = DtSrc
        TabOrder = 42
        OnKeyPress = FormKeyPress
      end
      object GroupBox3: TGroupBox
        Left = 522
        Top = 303
        Width = 66
        Height = 43
        Caption = 'CAR'#202'NCIA'
        TabOrder = 43
      end
      object DBEdit38: TDBEdit
        Left = 544
        Top = 316
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TEM_IE'
        DataSource = DtSrc
        TabOrder = 44
        OnKeyPress = FormKeyPress
      end
      object btnDependente: TBitBtn
        Left = 598
        Top = 307
        Width = 113
        Height = 32
        Caption = 'F5 - FUNCIONARIOS'
        Enabled = False
        PopupMenu = PopupMenu1
        TabOrder = 45
        OnClick = btnDependenteClick
      end
      object DBEdit34: TDBEdit
        Left = 606
        Top = 357
        Width = 97
        Height = 21
        DataField = 'DATAEMISSAORG'
        DataSource = DtSrc
        TabOrder = 46
        OnKeyPress = FormKeyPress
      end
      object DBEdit21: TDBEdit
        Left = 608
        Top = 399
        Width = 97
        Height = 21
        DataField = 'DTAALTERA'
        DataSource = DtSrc
        ReadOnly = True
        TabOrder = 47
        OnKeyPress = FormKeyPress
      end
      object BitBtn4: TBitBtn
        Left = 479
        Top = 151
        Width = 21
        Height = 20
        TabOrder = 48
        TabStop = False
        OnClick = BitBtn4Click
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
      object GroupBox4: TGroupBox
        Left = 269
        Top = 303
        Width = 177
        Height = 43
        Caption = 'DEBITO AUTOMATICO'
        TabOrder = 49
        object Label51: TLabel
          Left = 47
          Top = 18
          Width = 42
          Height = 13
          Hint = 'B - Banco Brasil'#13#10'S - Sicredi'
          Caption = 'S-Sicredi'
          FocusControl = DBEdit13
          ParentShowHint = False
          ShowHint = True
        end
        object Label52: TLabel
          Left = 98
          Top = 18
          Width = 69
          Height = 13
          Hint = 'B - Banco Brasil'#13#10'S - Sicredi'
          Caption = 'B-Banco Brasil'
          FocusControl = DBEdit13
          ParentShowHint = False
          ShowHint = True
        end
        object DBEdit43: TDBEdit
          Left = 16
          Top = 14
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'GERADEBITOAU'
          DataSource = DtSrc
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object btnap: TBitBtn
        Left = 274
        Top = 148
        Width = 23
        Height = 24
        TabOrder = 50
        TabStop = False
        OnClick = btnapClick
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
      object DBEdit51: TDBEdit
        Left = 246
        Top = 236
        Width = 39
        Height = 21
        DataField = 'DDD1'
        DataSource = dsEndereco
        TabOrder = 11
        OnKeyPress = FormKeyPress
      end
      object DBEdit52: TDBEdit
        Left = 52
        Top = 235
        Width = 42
        Height = 21
        DataField = 'DDD'
        DataSource = dsEndereco
        TabOrder = 9
        OnKeyPress = FormKeyPress
      end
      object DBEdit53: TDBEdit
        Left = 509
        Top = 150
        Width = 165
        Height = 21
        DataField = 'CNS_ANS'
        DataSource = DtSrc
        TabOrder = 51
        OnExit = DBEdit53Exit
        OnKeyPress = FormKeyPress
      end
      object BitBtn5: TBitBtn
        Left = 679
        Top = 151
        Width = 21
        Height = 20
        TabOrder = 52
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
      object DBEdit54: TDBEdit
        Left = 111
        Top = 205
        Width = 327
        Height = 21
        CharCase = ecUpperCase
        DataField = 'COMPLE'
        DataSource = dsEndereco
        TabOrder = 7
        OnExit = DBEdit53Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit55: TDBEdit
        Left = 329
        Top = 1
        Width = 32
        Height = 21
        DataField = 'ETIQUETAS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 53
        OnKeyPress = FormKeyPress
      end
      object DBEdit56: TDBEdit
        Left = 230
        Top = 113
        Width = 371
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMEMAE'
        DataSource = DtSrc
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados Adicionais'
      ImageIndex = 1
      object Label48: TLabel
        Left = 42
        Top = 18
        Width = 34
        Height = 13
        Caption = 'Nome :'
      end
      object Label49: TLabel
        Left = 40
        Top = 105
        Width = 26
        Height = 13
        Caption = 'CPF :'
      end
      object Label50: TLabel
        Left = 195
        Top = 105
        Width = 25
        Height = 13
        Caption = 'C/C :'
      end
      object Label53: TLabel
        Left = 40
        Top = 200
        Width = 115
        Height = 13
        Caption = 'Nome  Titular da Conta :'
      end
      object Label54: TLabel
        Left = 40
        Top = 240
        Width = 77
        Height = 13
        Caption = 'Conta Corrente :'
      end
      object Label55: TLabel
        Left = 184
        Top = 240
        Width = 33
        Height = 13
        Caption = 'Digito :'
      end
      object Label56: TLabel
        Left = 184
        Top = 280
        Width = 33
        Height = 13
        Caption = 'Digito :'
      end
      object Label57: TLabel
        Left = 42
        Top = 280
        Width = 45
        Height = 13
        Caption = 'Agencia :'
      end
      object Label58: TLabel
        Left = 40
        Top = 325
        Width = 83
        Height = 13
        Caption = 'Nome do Banco :'
      end
      object Label59: TLabel
        Left = 256
        Top = 176
        Width = 93
        Height = 13
        Caption = 'OUTROS BANCOS'
      end
      object Label60: TLabel
        Left = 256
        Top = 10
        Width = 83
        Height = 13
        Caption = 'BANCO SICREDI'
      end
      object Label61: TLabel
        Left = 338
        Top = 105
        Width = 45
        Height = 13
        Caption = 'Agencia :'
      end
      object Label62: TLabel
        Left = 40
        Top = 150
        Width = 410
        Height = 13
        Caption = 
          'Digitar CPF e CNPJ com as mascaras :  Ex  :  000.000.000-00     ' +
          '  00.000.000/0000-00'
      end
      object DBEdit40: TDBEdit
        Left = 41
        Top = 33
        Width = 490
        Height = 21
        CharCase = ecUpperCase
        DataField = 'N_CONTRATO'
        DataSource = DtSrc
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object DBEdit41: TDBEdit
        Left = 40
        Top = 121
        Width = 137
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CPF_D'
        DataSource = DtSrc
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object DBEdit42: TDBEdit
        Left = 193
        Top = 120
        Width = 104
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CC'
        DataSource = DtSrc
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object DBEdit44: TDBEdit
        Left = 39
        Top = 215
        Width = 490
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TITULAR'
        DataSource = DtSrc
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object DBEdit45: TDBEdit
        Left = 40
        Top = 256
        Width = 137
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUMERO_CONTA'
        DataSource = DtSrc
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object DBEdit46: TDBEdit
        Left = 184
        Top = 256
        Width = 33
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DIGITO_CONTA'
        DataSource = DtSrc
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object DBEdit47: TDBEdit
        Left = 40
        Top = 296
        Width = 137
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CODIGO_AGENCIA'
        DataSource = DtSrc
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object DBEdit48: TDBEdit
        Left = 184
        Top = 296
        Width = 33
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DIGITO_AGENCIA'
        DataSource = DtSrc
        TabOrder = 7
        OnKeyPress = FormKeyPress
      end
      object DBEdit49: TDBEdit
        Left = 40
        Top = 340
        Width = 489
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMEBANCO'
        DataSource = DtSrc
        TabOrder = 8
        OnKeyPress = FormKeyPress
      end
      object DBEdit50: TDBEdit
        Left = 337
        Top = 120
        Width = 104
        Height = 21
        CharCase = ecUpperCase
        DataField = 'AGENCIA'
        DataSource = DtSrc
        TabOrder = 9
        OnKeyPress = FormKeyPress
      end
      object dbRDebito: TDBRadioGroup
        Left = 40
        Top = 61
        Width = 228
        Height = 35
        Caption = 'PESSOA'
        Columns = 2
        DataField = 'PRAZOENTREGA'
        DataSource = DtSrc
        Items.Strings = (
          'FISICA'
          'JURIDICA')
        TabOrder = 10
        TabStop = True
        Values.Strings = (
          '2'
          '1')
        OnClick = dbRDebitoClick
      end
    end
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
  object dsEndereco: TDataSource [11]
    DataSet = DMSaude.cdsEndereco
    OnStateChange = dsEnderecoStateChange
    Left = 104
    Top = 16
  end
  object sql_ra: TSQLDataSet [12]
    CommandText = 
      'select (max(cast(udf_left(RA,3) as integer))+ 1)|| '#39'000'#39' from CL' +
      'IENTES where grupo_cliente = :grupo '
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
  object Hist_titular: TUCHist_DataSet [13]
    DataSet = DMSaude.cdsCliente
    ControlHistorico = HistoricoTitular
    Left = 416
    Top = 8
  end
  object sql_PCMSO: TSQLDataSet [14]
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
  object Hist_Endereco: TUCHist_DataSet [15]
    DataSet = DMSaude.cdsEndereco
    ControlHistorico = HistoricoTitular
    Left = 368
    Top = 8
  end
  object HistoricoTitular: TUCControlHistorico [16]
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
    Left = 464
    Top = 8
  end
  object procIBGE: TSQLClientDataSet [17]
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
    Left = 320
    Top = 16
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
  inherited XPMenu1: TXPMenu
    Left = 8
    Top = 176
  end
  object sqlConta: TSQLClientDataSet
    CommandText = 
      'select count( CODCLIENTE) from CLIENTES where segmento = 1 and s' +
      'tatus = 0 and razaosocial = :pCod'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pCod'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 180
    Top = 431
    object sqlContaCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
      Required = True
    end
  end
end
