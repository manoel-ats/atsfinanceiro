inherited fDependente: TfDependente
  Left = 202
  Top = 127
  Width = 720
  Height = 531
  Caption = 'Dependente'
  Color = clMoneyGreen
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel [0]
    Left = 11
    Top = 52
    Width = 70
    Height = 13
    Caption = 'COD FUN'#199#195'O'
    Visible = False
  end
  object Label13: TLabel [1]
    Left = 9
    Top = 217
    Width = 59
    Height = 13
    Caption = 'CADASTRO'
    Visible = False
  end
  object Label18: TLabel [2]
    Left = 378
    Top = 214
    Width = 92
    Height = 13
    Caption = 'REINCLUS'#195'O -SIB'
    Visible = False
  end
  object Label43: TLabel [3]
    Left = 163
    Top = 215
    Width = 63
    Height = 13
    Caption = 'SIB-Corre'#231#227'o'
  end
  object Label17: TLabel [4]
    Left = 356
    Top = 366
    Width = 22
    Height = 13
    Caption = 'CNS'
  end
  object Panel1: TPanel [5]
    Left = 4
    Top = 234
    Width = 697
    Height = 204
    Color = clMoneyGreen
    TabOrder = 6
    DesignSize = (
      697
      204)
    object Label3: TLabel
      Left = 7
      Top = 17
      Width = 74
      Height = 13
      Caption = 'DEPENDENTE'
    end
    object Label4: TLabel
      Left = 143
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
      Left = 10
      Top = 139
      Width = 58
      Height = 13
      Caption = 'NOME M'#195'E'
    end
    object Label11: TLabel
      Left = 504
      Top = 58
      Width = 29
      Height = 13
      Caption = 'SEXO'
    end
    object Label12: TLabel
      Left = 570
      Top = 57
      Width = 89
      Height = 13
      Caption = 'DATA EXCLUS'#195'O'
    end
    object Label9: TLabel
      Left = 419
      Top = 18
      Width = 69
      Height = 13
      Caption = 'PLANO FAIXA'
    end
    object Label32: TLabel
      Left = 146
      Top = 163
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
      ParentShowHint = False
      ShowHint = True
    end
    object Label36: TLabel
      Left = 9
      Top = 163
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
      Left = 451
      Top = 162
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
      Top = 162
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
      Left = 9
      Top = 110
      Width = 20
      Height = 13
      Caption = 'CPF'
    end
    object Label46: TLabel
      Left = 378
      Top = 4
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
      Left = 379
      Top = 16
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
    object dbtxtRAZAOSOCIAL: TDBText
      Left = 336
      Top = 8
      Width = 17
      Height = 17
      DataField = 'NUMERO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl1: TLabel
      Left = 244
      Top = 12
      Width = 83
      Height = 13
      Caption = 'N'#186' Socio Titular ='
    end
    object lbl2: TLabel
      Left = 182
      Top = 98
      Width = 22
      Height = 13
      Caption = 'CNS'
    end
    object Label19: TLabel
      Left = 360
      Top = 98
      Width = 47
      Height = 13
      Caption = 'CNS ANS'
    end
    object Label20: TLabel
      Left = 11
      Top = 184
      Width = 22
      Height = 13
      Hint = 
        '00 - Quando Cadastrar'#13#10'01 - Rompimento'#13#10'02 - Termino rela'#231#227'o'#13#10'03' +
        ' - Desligamento Empresa'#13#10'04 - Inadimpl'#234'ncia'#13#10'05 - '#211'bito'#13#10'07 - Ex' +
        'clus'#227'o , Mudan'#231'a de codigo pela Operadora'#13#10'08 - Transfer'#234'ncia Ca' +
        'rteira'#13#10'09 - Altera'#231#227'o Individual do Codigo'#13#10'13 - Inclus'#227'o Indev' +
        'ida'#13#10'14 - Fraude (art. 13 da Lei n'#186' 9.656/98)'
      Caption = 'OBS'
      ParentShowHint = False
      ShowHint = True
    end
    object GroupBox2: TGroupBox
      Left = 302
      Top = 56
      Width = 72
      Height = 41
      Caption = 'EM VIAGEM'
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 140
      Top = 32
      Width = 230
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMECLIENTE'
      DataSource = DtSrc
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object DBEdit3: TDBEdit
      Left = 378
      Top = 73
      Width = 108
      Height = 21
      DataField = 'DATANASC'
      DataSource = DtSrc
      TabOrder = 11
      OnKeyPress = FormKeyPress
    end
    object DBEdit5: TDBEdit
      Left = 7
      Top = 73
      Width = 109
      Height = 21
      DataField = 'DATACADASTRO'
      DataSource = DtSrc
      TabOrder = 8
      OnKeyPress = FormKeyPress
    end
    object DBEdit6: TDBEdit
      Left = 120
      Top = 73
      Width = 89
      Height = 21
      DataField = 'INSCESTADUAL'
      DataSource = DtSrc
      TabOrder = 9
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
      TabOrder = 10
      OnKeyPress = FormKeyPress
    end
    object DBEdit8: TDBEdit
      Left = 75
      Top = 135
      Width = 455
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMEMAE'
      DataSource = DtSrc
      TabOrder = 16
      OnKeyPress = FormKeyPress
    end
    object DBEdit9: TDBEdit
      Left = 503
      Top = 73
      Width = 33
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SEXO'
      DataSource = DtSrc
      TabOrder = 12
      OnKeyPress = FormKeyPress
    end
    object DBEdit10: TDBEdit
      Left = 565
      Top = 73
      Width = 105
      Height = 21
      DataField = 'DATARESC'
      DataSource = DtSrc
      TabOrder = 24
      OnKeyPress = FormKeyPress
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 488
      Top = 21
      Width = 204
      Height = 36
      Caption = 'STATUS'
      Columns = 3
      DataField = 'STATUS'
      DataSource = DtSrc
      Items.Strings = (
        'ATIVO'
        'DESLI'
        'AFAST')
      TabOrder = 2
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    object DBComboBox1: TDBComboBox
      Left = 7
      Top = 32
      Width = 131
      Height = 21
      Anchors = [akTop]
      CharCase = ecUpperCase
      DataField = 'CONTATO'
      DataSource = DtSrc
      ItemHeight = 13
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object DBEdit4: TDBEdit
      Left = 422
      Top = 31
      Width = 58
      Height = 21
      DataField = 'COD_FAIXA'
      DataSource = DtSrc
      TabOrder = 6
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 494
      Top = 18
      Width = 171
      Height = 37
      Caption = 'STATUS'
      Columns = 2
      DataField = 'STATUS'
      DataSource = DtSrc
      Items.Strings = (
        'ATIVO '
        'DESLIGADO')
      TabOrder = 7
      Values.Strings = (
        '0'
        '1')
    end
    object DBEdit12: TDBEdit
      Left = 105
      Top = 160
      Width = 33
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ESTADORG'
      DataSource = DtSrc
      TabOrder = 17
      OnKeyPress = FormKeyPress
    end
    object DBEdit13: TDBEdit
      Left = 37
      Top = 106
      Width = 102
      Height = 21
      DataField = 'CNPJ'
      DataSource = DtSrc
      TabOrder = 13
      OnExit = DBEdit13Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit14: TDBEdit
      Left = 551
      Top = 157
      Width = 105
      Height = 21
      DataField = 'DTAALTERA'
      DataSource = DtSrc
      TabOrder = 18
      OnKeyPress = FormKeyPress
    end
    object DBEdit34: TDBEdit
      Left = 532
      Top = 112
      Width = 105
      Height = 21
      DataField = 'DATAEMISSAORG'
      DataSource = DtSrc
      TabOrder = 19
      OnKeyPress = FormKeyPress
    end
    object DBEdit37: TDBEdit
      Left = 248
      Top = 157
      Width = 82
      Height = 21
      DataField = 'LIVRONASC'
      DataSource = DtSrc
      TabOrder = 20
      OnKeyPress = FormKeyPress
    end
    object DBEdit36: TDBEdit
      Left = 339
      Top = 157
      Width = 41
      Height = 21
      DataField = 'UFNASC'
      DataSource = DtSrc
      TabOrder = 21
      OnKeyPress = FormKeyPress
    end
    object GroupBox3: TGroupBox
      Left = 220
      Top = 56
      Width = 78
      Height = 40
      Caption = 'CAR'#202'NCIA'
      TabOrder = 0
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
    object DBEdit39: TDBEdit
      Left = 376
      Top = 31
      Width = 39
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = DtSrc
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object dbeditcns: TDBEdit
      Left = 182
      Top = 110
      Width = 138
      Height = 21
      DataField = 'CNS'
      DataSource = DtSrc
      TabOrder = 14
      OnExit = dbeditcnsExit
      OnKeyPress = FormKeyPress
    end
    object BitBtn2: TBitBtn
      Left = 143
      Top = 103
      Width = 25
      Height = 26
      TabOrder = 22
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
    object DBEdit18: TDBEdit
      Left = 47
      Top = 180
      Width = 637
      Height = 21
      DataField = 'OBS'
      DataSource = DtSrc
      TabOrder = 23
      OnKeyPress = FormKeyPress
    end
    object DBEdit11: TDBEdit
      Left = 422
      Top = 31
      Width = 58
      Height = 21
      DataField = 'RA'
      DataSource = DtSrc
      ReadOnly = True
      TabOrder = 25
    end
    object DBEdit17: TDBEdit
      Left = 359
      Top = 111
      Width = 138
      Height = 21
      DataField = 'CNS_ANS'
      DataSource = DtSrc
      TabOrder = 15
      OnExit = DBEdit17Exit
      OnKeyPress = FormKeyPress
    end
    object BitBtn3: TBitBtn
      Left = 326
      Top = 107
      Width = 25
      Height = 26
      TabOrder = 26
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
    object BitBtn4: TBitBtn
      Left = 503
      Top = 108
      Width = 25
      Height = 26
      TabOrder = 27
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
  end
  object GroupBox1: TGroupBox [6]
    Left = 102
    Top = 48
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
    Top = 450
    Width = 712
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 712
    Height = 47
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
      Top = 26
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
      Top = 25
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
  object DBGrid1: TDBGrid [9]
    Left = 7
    Top = 92
    Width = 690
    Height = 114
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
  object EvDBFind1: TEvDBFind [10]
    Left = 109
    Top = 64
    Width = 513
    Height = 21
    DataField = 'NOMECLIENTE'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBEdit1: TDBEdit [11]
    Left = 10
    Top = 66
    Width = 81
    Height = 21
    DataField = 'REGIAO'
    DataSource = DtSrc
    TabOrder = 5
    Visible = False
  end
  object BitBtn5: TBitBtn [12]
    Left = 676
    Top = 305
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
  object DBEdit16: TDBEdit [13]
    Left = 475
    Top = 211
    Width = 96
    Height = 21
    DataField = 'DATANASCIMENTO'
    DataSource = DtSrc
    TabOrder = 8
    Visible = False
    OnKeyPress = FormKeyPress
  end
  object dbCOD_ANS: TDBEdit [14]
    Left = 610
    Top = 212
    Width = 87
    Height = 21
    DataField = 'COD_ANS'
    DataSource = DtSrc
    TabOrder = 9
  end
  object BitBtn1: TBitBtn [15]
    Left = 578
    Top = 208
    Width = 25
    Height = 26
    TabOrder = 10
    TabStop = False
    OnClick = BitBtn1Click
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
  object DBEdit19: TDBEdit [16]
    Left = 235
    Top = 211
    Width = 38
    Height = 21
    DataField = 'ETIQUETAS'
    DataSource = DtSrc
    TabOrder = 11
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
    Left = 64
    Top = 222
  end
end
