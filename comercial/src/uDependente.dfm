inherited fDependente: TfDependente
  Left = 273
  Top = 0
  Width = 867
  Height = 702
  Caption = 'Dependente'
  Color = clMoneyGreen
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label54: TLabel [0]
    Left = 72
    Top = 395
    Width = 84
    Height = 13
    Caption = 'Cabe'#231'a/Pesco'#231'o'
  end
  object Edit15: TEdit [1]
    Left = 40
    Top = 398
    Width = 41
    Height = 21
    TabOrder = 4
  end
  inherited MMJPanel1: TMMJPanel
    Top = 610
    Width = 851
    inherited btnGravar: TBitBtn
      Left = 252
    end
    inherited btnIncluir: TBitBtn
      Left = 251
    end
    inherited btnCancelar: TBitBtn
      Left = 371
    end
    inherited btnExcluir: TBitBtn
      Left = 372
    end
    inherited btnProcurar: TBitBtn
      Left = 122
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 485
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 851
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
      Font.Color = clWhite
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
  object PageControl1: TPageControl [4]
    Left = 0
    Top = 47
    Width = 835
    Height = 438
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Dados Funcionario'
      OnShow = TabSheet1Show
      object Label6: TLabel
        Left = 11
        Top = -1
        Width = 70
        Height = 13
        Caption = 'COD FUN'#199#195'O'
        Visible = False
      end
      object Label13: TLabel
        Left = 9
        Top = 201
        Width = 59
        Height = 13
        Caption = 'CADASTRO'
        Visible = False
      end
      object Label18: TLabel
        Left = 378
        Top = 198
        Width = 92
        Height = 13
        Caption = 'REINCLUS'#195'O -SIB'
        Visible = False
      end
      object Label21: TLabel
        Left = 163
        Top = 199
        Width = 63
        Height = 13
        Caption = 'SIB-Corre'#231#227'o'
      end
      object Label17: TLabel
        Left = 356
        Top = 346
        Width = 22
        Height = 13
        Caption = 'CNS'
      end
      object Panel1: TPanel
        Left = 4
        Top = 155
        Width = 709
        Height = 222
        Color = clMoneyGreen
        TabOrder = 0
        DesignSize = (
          709
          222)
        object Label3: TLabel
          Left = 7
          Top = 17
          Width = 74
          Height = 13
          Caption = 'DEPENDENTE'
        end
        object Label4: TLabel
          Left = 311
          Top = 16
          Width = 32
          Height = 13
          Caption = 'NOME'
        end
        object Label5: TLabel
          Left = 178
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
          Left = 176
          Top = 108
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
          Left = 543
          Top = 59
          Width = 89
          Height = 13
          Caption = 'DATA EXCLUS'#195'O'
        end
        object Label9: TLabel
          Left = 451
          Top = 18
          Width = 69
          Height = 13
          Caption = 'PLANO FAIXA'
        end
        object Label22: TLabel
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
        object Label23: TLabel
          Left = 9
          Top = 163
          Width = 88
          Height = 13
          Caption = 'CANCELAMENTO'
        end
        object Label24: TLabel
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
        object Label25: TLabel
          Left = 534
          Top = 101
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
          Left = 7
          Top = 110
          Width = 20
          Height = 13
          Caption = 'CPF'
        end
        object Label26: TLabel
          Left = 362
          Top = 12
          Width = 27
          Height = 13
          Hint = 
            '   Antigos'#9'   1 assoc.    2 assoc.   3 assoc.  + 3 assoc'#13#10'      ' +
            '0               1                2              3              0' +
            '   '
          Caption = 'N'#186' de'
          FocusControl = DBEdit24
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object Label27: TLabel
          Left = 232
          Top = 16
          Width = 42
          Height = 13
          Hint = 
            '   Antigos'#9'   1 assoc.    2 assoc.   3 assoc.  + 3 assoc'#13#10'      ' +
            '0               1                2              3              0' +
            '   '
          Caption = 'CODIGO'
          FocusControl = DBEdit6
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object dbtxtRAZAOSOCIAL: TDBText
          Left = 232
          Top = 0
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
          Left = 580
          Top = 28
          Width = 83
          Height = 13
          Caption = 'N'#186' Socio Titular ='
        end
        object lbl2: TLabel
          Left = 142
          Top = 50
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
        object Label42: TLabel
          Left = 300
          Top = 106
          Width = 37
          Height = 13
          Caption = 'SETOR'
        end
        object Label43: TLabel
          Left = 566
          Top = 107
          Width = 17
          Height = 13
          Caption = 'PIS'
        end
        object Label63: TLabel
          Left = 344
          Top = 184
          Width = 24
          Height = 13
          Caption = ';;;;;;;;'
        end
        object GroupBox2: TGroupBox
          Left = 302
          Top = 120
          Width = 72
          Height = 41
          Caption = 'EM VIAGEM'
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 311
          Top = 30
          Width = 373
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOMECLIENTE'
          DataSource = DtSrc
          TabOrder = 4
          OnKeyPress = FormKeyPress
        end
        object DBEdit3: TDBEdit
          Left = 178
          Top = 72
          Width = 108
          Height = 21
          DataField = 'DATANASC'
          DataSource = DtSrc
          TabOrder = 10
          OnKeyPress = FormKeyPress
        end
        object DBEdit5: TDBEdit
          Left = 7
          Top = 72
          Width = 109
          Height = 21
          DataField = 'DATACADASTRO'
          DataSource = DtSrc
          TabOrder = 7
          OnKeyPress = FormKeyPress
        end
        object DBEdit6: TDBEdit
          Left = 202
          Top = 104
          Width = 89
          Height = 21
          DataField = 'INSCESTADUAL'
          DataSource = DtSrc
          TabOrder = 8
          OnKeyPress = FormKeyPress
        end
        object DBEdit7: TDBEdit
          Left = 310
          Top = 136
          Width = 41
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMVIAGEM'
          DataSource = DtSrc
          TabOrder = 9
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
          TabOrder = 15
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
          TabOrder = 11
          OnKeyPress = FormKeyPress
        end
        object DBEdit10: TDBEdit
          Left = 540
          Top = 72
          Width = 105
          Height = 21
          DataField = 'DATARESC'
          DataSource = DtSrc
          TabOrder = 23
          OnKeyPress = FormKeyPress
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 305
          Top = 58
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
          Left = 9
          Top = 32
          Width = 218
          Height = 21
          Anchors = [akTop]
          CharCase = ecUpperCase
          DataField = 'CONTATO'
          DataSource = DtSrc
          ItemHeight = 13
          TabOrder = 3
          OnKeyPress = FormKeyPress
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 414
          Top = 122
          Width = 171
          Height = 37
          Caption = 'STATUS'
          Columns = 2
          DataField = 'STATUS'
          DataSource = DtSrc
          Items.Strings = (
            'ATIVO '
            'DESLIGADO')
          TabOrder = 6
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
          TabOrder = 16
          OnKeyPress = FormKeyPress
        end
        object DBEdit13: TDBEdit
          Left = 31
          Top = 106
          Width = 102
          Height = 21
          DataField = 'CNPJ'
          DataSource = DtSrc
          TabOrder = 12
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
          TabOrder = 17
          OnKeyPress = FormKeyPress
        end
        object DBEdit21: TDBEdit
          Left = 540
          Top = 128
          Width = 105
          Height = 21
          DataField = 'DATAEMISSAORG'
          DataSource = DtSrc
          TabOrder = 18
          OnKeyPress = FormKeyPress
        end
        object DBEdit22: TDBEdit
          Left = 248
          Top = 157
          Width = 82
          Height = 21
          DataField = 'LIVRONASC'
          DataSource = DtSrc
          TabOrder = 19
          OnKeyPress = FormKeyPress
        end
        object DBEdit23: TDBEdit
          Left = 339
          Top = 157
          Width = 41
          Height = 21
          DataField = 'UFNASC'
          DataSource = DtSrc
          TabOrder = 20
          OnKeyPress = FormKeyPress
        end
        object GroupBox3: TGroupBox
          Left = 188
          Top = 136
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
        object DBEdit24: TDBEdit
          Left = 400
          Top = 7
          Width = 39
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = DtSrc
          TabOrder = 5
          OnKeyPress = FormKeyPress
        end
        object dbeditcns: TDBEdit
          Left = 246
          Top = 198
          Width = 138
          Height = 21
          DataField = 'CNS'
          DataSource = DtSrc
          TabOrder = 13
          OnExit = dbeditcnsExit
          OnKeyPress = FormKeyPress
        end
        object BitBtn2: TBitBtn
          Left = 139
          Top = 103
          Width = 25
          Height = 26
          TabOrder = 21
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
          Width = 290
          Height = 21
          DataField = 'OBS'
          DataSource = DtSrc
          TabOrder = 22
          OnKeyPress = FormKeyPress
        end
        object DBEdit11: TDBEdit
          Left = 134
          Top = 7
          Width = 66
          Height = 21
          DataField = 'RA'
          DataSource = DtSrc
          TabOrder = 24
          Visible = False
        end
        object DBEdit17: TDBEdit
          Left = 357
          Top = 113
          Width = 138
          Height = 21
          DataField = 'CNS_ANS'
          DataSource = DtSrc
          TabOrder = 14
          OnExit = DBEdit17Exit
          OnKeyPress = FormKeyPress
        end
        object BitBtn3: TBitBtn
          Left = 254
          Top = 123
          Width = 25
          Height = 26
          TabOrder = 25
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
          TabOrder = 26
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
        object DBEdit20: TDBEdit
          Left = 230
          Top = 31
          Width = 75
          Height = 21
          DataField = 'RA'
          DataSource = DtSrc
          ReadOnly = True
          TabOrder = 27
        end
        object DBEdit4: TDBEdit
          Left = 582
          Top = 7
          Width = 75
          Height = 21
          DataField = 'RA'
          DataSource = DtSrc
          TabOrder = 28
          Visible = False
        end
        object DBComboBox2: TDBComboBox
          Left = 341
          Top = 104
          Width = 218
          Height = 21
          Anchors = [akTop]
          CharCase = ecUpperCase
          DataField = 'MARCA'
          DataSource = DtSrc
          ItemHeight = 13
          TabOrder = 29
          OnKeyPress = FormKeyPress
        end
        object DBEdit25: TDBEdit
          Left = 590
          Top = 103
          Width = 123
          Height = 21
          DataField = 'IP'
          DataSource = DtSrc
          TabOrder = 30
        end
      end
      object GroupBox1: TGroupBox
        Left = 102
        Top = -3
        Width = 530
        Height = 41
        Caption = 'Procurar por :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBGrid1: TDBGrid
        Left = 7
        Top = 39
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
      object EvDBFind1: TEvDBFind
        Left = 109
        Top = 11
        Width = 513
        Height = 21
        DataField = 'NOMECLIENTE'
        DataSource = DtSrc
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 10
        Top = 13
        Width = 81
        Height = 21
        DataField = 'REGIAO'
        DataSource = DtSrc
        TabOrder = 4
        Visible = False
      end
      object BitBtn5: TBitBtn
        Left = 676
        Top = 305
        Width = 25
        Height = 26
        TabOrder = 5
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
      object DBEdit16: TDBEdit
        Left = 475
        Top = 195
        Width = 96
        Height = 21
        DataField = 'DATANASCIMENTO'
        DataSource = DtSrc
        TabOrder = 6
        Visible = False
        OnKeyPress = FormKeyPress
      end
      object dbCOD_ANS: TDBEdit
        Left = 610
        Top = 196
        Width = 87
        Height = 21
        DataField = 'COD_ANS'
        DataSource = DtSrc
        TabOrder = 7
      end
      object BitBtn1: TBitBtn
        Left = 578
        Top = 192
        Width = 25
        Height = 26
        TabOrder = 8
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
      object DBEdit19: TDBEdit
        Left = 267
        Top = 163
        Width = 38
        Height = 21
        DataField = 'ETIQUETAS'
        DataSource = DtSrc
        TabOrder = 9
        OnKeyPress = FormKeyPress
      end
      object btndtalt: TBitBtn
        Left = 658
        Top = 224
        Width = 25
        Height = 26
        TabOrder = 10
        TabStop = False
        OnClick = btndtaltClick
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
    object TabSheet3: TTabSheet
      Caption = 'Ficha Atendimento Medico'
      ImageIndex = 2
      OnShow = TabSheet3Show
      DesignSize = (
        827
        410)
      object Label31: TLabel
        Left = 162
        Top = -2
        Width = 76
        Height = 13
        Caption = 'Queixa Principal'
      end
      object Label32: TLabel
        Left = 164
        Top = 31
        Width = 79
        Height = 13
        Caption = 'Historico Medico'
      end
      object Label34: TLabel
        Left = 12
        Top = 165
        Width = 62
        Height = 13
        Caption = 'Exame Fisico'
      end
      object Label35: TLabel
        Left = 201
        Top = 79
        Width = 115
        Height = 13
        Caption = 'Antecedentes Familiares'
      end
      object Label36: TLabel
        Left = 200
        Top = 119
        Width = 116
        Height = 13
        Caption = 'Cicatrizes e /ou Defeitos'
      end
      object Label37: TLabel
        Left = 521
        Top = 100
        Width = 225
        Height = 13
        Caption = 'Antecedentes Pessoais: Molestias e Opera'#231#245'es'
      end
      object Label38: TLabel
        Left = 522
        Top = 141
        Width = 104
        Height = 13
        Caption = 'Acidentes e/ ou INPS'
      end
      object Label44: TLabel
        Left = 296
        Top = 206
        Width = 50
        Height = 13
        Caption = 'alt./normal'
      end
      object Label45: TLabel
        Left = 432
        Top = 206
        Width = 50
        Height = 13
        Caption = 'alt./normal'
      end
      object Label46: TLabel
        Left = 524
        Top = 190
        Width = 73
        Height = 13
        Caption = 'Molestias Vis'#227'o'
      end
      object Label47: TLabel
        Left = 12
        Top = 231
        Width = 71
        Height = 13
        Caption = 'Pele e F'#226'neros'
      end
      object Label48: TLabel
        Left = 267
        Top = 230
        Width = 83
        Height = 13
        Caption = 'Ouvidos/Audi'#231#227'o'
      end
      object Label49: TLabel
        Left = 527
        Top = 231
        Width = 84
        Height = 13
        Caption = 'Cabe'#231'a/Pesco'#231'o'
      end
      object Label51: TLabel
        Left = 119
        Top = 165
        Width = 24
        Height = 13
        Caption = 'Peso'
      end
      object Label52: TLabel
        Left = 232
        Top = 164
        Width = 27
        Height = 13
        Caption = 'Altura'
      end
      object Label53: TLabel
        Left = 336
        Top = 164
        Width = 19
        Height = 13
        Caption = 'IMC'
      end
      object Label55: TLabel
        Left = 11
        Top = 270
        Width = 108
        Height = 13
        Caption = 'Abd'#244'men/Parede abd.'
      end
      object Label56: TLabel
        Left = 268
        Top = 274
        Width = 73
        Height = 13
        Caption = 'AP Respiratorio'
      end
      object Label57: TLabel
        Left = 11
        Top = 189
        Width = 14
        Height = 13
        Caption = 'PA'
        FocusControl = DBEdit35
      end
      object Label39: TLabel
        Left = 112
        Top = 189
        Width = 13
        Height = 13
        Caption = 'FC'
        FocusControl = DBEdit36
      end
      object Label41: TLabel
        Left = 522
        Top = 272
        Width = 91
        Height = 13
        Caption = 'AP Cardio Vascular'
        FocusControl = DBEdit43
      end
      object Label50: TLabel
        Left = 8
        Top = 315
        Width = 80
        Height = 13
        Caption = 'Sistema Nervoso'
        FocusControl = DBEdit44
      end
      object Label58: TLabel
        Left = 265
        Top = 314
        Width = 74
        Height = 13
        Caption = 'Ap URO-genital'
        FocusControl = DBEdit45
      end
      object Label59: TLabel
        Left = 520
        Top = 313
        Width = 90
        Height = 13
        Caption = 'Ap Osteo-Muscular'
        FocusControl = DBEdit46
      end
      object Label60: TLabel
        Left = 10
        Top = 393
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
        FocusControl = DBEdit47
      end
      object Label61: TLabel
        Left = 425
        Top = 165
        Width = 38
        Height = 13
        Caption = 'Label61'
      end
      object Label28: TLabel
        Left = 548
        Top = 5
        Width = 41
        Height = 13
        Caption = 'N'#186' GUIA'
      end
      object Label29: TLabel
        Left = 551
        Top = 24
        Width = 65
        Height = 13
        Caption = 'Data Emiss'#227'o'
      end
      object Label33: TLabel
        Left = 563
        Top = 65
        Width = 109
        Height = 13
        Caption = 'Data data Atendimento'
      end
      object Label64: TLabel
        Left = 752
        Top = 6
        Width = 29
        Height = 13
        Caption = 'Alcool'
      end
      object Label65: TLabel
        Left = 496
        Top = 77
        Width = 31
        Height = 13
        Caption = 'FUMO'
      end
      object Label66: TLabel
        Left = 376
        Top = 76
        Width = 13
        Height = 13
        Caption = 'AF'
      end
      object Label67: TLabel
        Left = 376
        Top = 120
        Width = 7
        Height = 13
        Caption = 'C'
      end
      object Label68: TLabel
        Left = 766
        Top = 103
        Width = 23
        Height = 13
        Caption = 'APM'
      end
      object Label69: TLabel
        Left = 769
        Top = 141
        Width = 14
        Height = 13
        Caption = 'AT'
      end
      object Label70: TLabel
        Left = 248
        Top = 206
        Width = 45
        Height = 13
        Caption = 'Vis'#227'o OD'
      end
      object Label71: TLabel
        Left = 384
        Top = 207
        Width = 44
        Height = 13
        Caption = 'Vis'#227'o OE'
      end
      object Label72: TLabel
        Left = 704
        Top = 189
        Width = 21
        Height = 13
        Caption = 'APV'
      end
      object Label73: TLabel
        Left = 704
        Top = 226
        Width = 14
        Height = 13
        Caption = 'CP'
      end
      object Label74: TLabel
        Left = 704
        Top = 272
        Width = 21
        Height = 13
        Caption = 'ACV'
      end
      object Label75: TLabel
        Left = 704
        Top = 312
        Width = 24
        Height = 13
        Caption = 'AOM'
      end
      object Label76: TLabel
        Left = 168
        Top = 229
        Width = 13
        Height = 13
        Caption = 'PF'
      end
      object Label77: TLabel
        Left = 400
        Top = 232
        Width = 21
        Height = 13
        Caption = 'APA'
      end
      object Label78: TLabel
        Left = 160
        Top = 272
        Width = 22
        Height = 13
        Caption = 'ABD'
      end
      object Label79: TLabel
        Left = 384
        Top = 272
        Width = 22
        Height = 13
        Caption = 'APR'
      end
      object Label80: TLabel
        Left = 160
        Top = 312
        Width = 22
        Height = 13
        Caption = 'APN'
      end
      object Label81: TLabel
        Left = 392
        Top = 312
        Width = 23
        Height = 13
        Caption = 'AGU'
      end
      object Label112: TLabel
        Left = 4
        Top = 363
        Width = 111
        Height = 13
        Caption = '   Medico Examinador   '
      end
      object DBComboBox4: TDBComboBox
        Left = 117
        Top = 360
        Width = 696
        Height = 21
        Anchors = [akTop]
        CharCase = ecUpperCase
        DataField = 'NOME_REPRFOR'
        DataSource = ds_repfor
        ItemHeight = 13
        TabOrder = 39
        OnClick = DBComboBox4Click
        OnKeyPress = FormKeyPress
      end
      object DBEdit26: TDBEdit
        Left = 203
        Top = 10
        Width = 337
        Height = 21
        DataField = 'QUEIXAP'
        DataSource = dsBuscaGuia
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object DBEdit27: TDBEdit
        Left = 205
        Top = 44
        Width = 337
        Height = 21
        DataField = 'HISTORICOMEDICO'
        DataSource = dsBuscaGuia
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object DBEdit28: TDBEdit
        Left = 155
        Top = 93
        Width = 300
        Height = 21
        DataField = 'ANTECEDENTESFAMILIARES'
        DataSource = dsBuscaGuia
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object DBEdit29: TDBEdit
        Left = 154
        Top = 135
        Width = 300
        Height = 21
        DataField = 'CICATRIZES'
        DataSource = dsBuscaGuia
        TabOrder = 7
        OnKeyPress = FormKeyPress
      end
      object DBEdit30: TDBEdit
        Left = 519
        Top = 116
        Width = 301
        Height = 21
        DataField = 'ANTECEDENTESPESSOAIS'
        DataSource = dsBuscaGuia
        TabOrder = 8
        OnKeyPress = FormKeyPress
      end
      object DBEdit31: TDBEdit
        Left = 157
        Top = 162
        Width = 57
        Height = 21
        DataField = 'PESO'
        DataSource = dsBuscaGuia
        TabOrder = 10
        OnKeyPress = FormKeyPress
      end
      object DBEdit32: TDBEdit
        Left = 269
        Top = 161
        Width = 49
        Height = 21
        DataField = 'ALTURA'
        DataSource = dsBuscaGuia
        TabOrder = 11
        OnExit = DBEdit32Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit33: TDBEdit
        Left = 363
        Top = 161
        Width = 57
        Height = 21
        DataField = 'IMC'
        DataSource = dsBuscaGuia
        TabOrder = 12
        OnKeyPress = FormKeyPress
      end
      object DBEdit34: TDBEdit
        Left = 524
        Top = 205
        Width = 292
        Height = 21
        DataField = 'MOLESTIA'
        DataSource = dsBuscaGuia
        TabOrder = 15
        OnKeyPress = FormKeyPress
      end
      object DBEdit35: TDBEdit
        Left = 11
        Top = 205
        Width = 100
        Height = 21
        DataField = 'PA'
        DataSource = dsBuscaGuia
        TabOrder = 13
        OnKeyPress = FormKeyPress
      end
      object DBEdit36: TDBEdit
        Left = 112
        Top = 205
        Width = 100
        Height = 21
        DataField = 'FC'
        DataSource = dsBuscaGuia
        TabOrder = 14
        OnKeyPress = FormKeyPress
      end
      object DBEdit37: TDBEdit
        Left = 10
        Top = 245
        Width = 248
        Height = 21
        DataField = 'PELE'
        DataSource = dsBuscaGuia
        TabOrder = 16
        OnKeyPress = FormKeyPress
      end
      object DBEdit38: TDBEdit
        Left = 268
        Top = 245
        Width = 245
        Height = 21
        DataField = 'OUVIDOS'
        DataSource = dsBuscaGuia
        TabOrder = 17
        OnKeyPress = FormKeyPress
      end
      object DBEdit39: TDBEdit
        Left = 523
        Top = 245
        Width = 294
        Height = 21
        DataField = 'CABECA'
        DataSource = dsBuscaGuia
        TabOrder = 18
        OnKeyPress = FormKeyPress
      end
      object DBEdit40: TDBEdit
        Left = 11
        Top = 288
        Width = 247
        Height = 21
        DataField = 'ABDOMEN'
        DataSource = dsBuscaGuia
        TabOrder = 19
        OnKeyPress = FormKeyPress
      end
      object DBEdit41: TDBEdit
        Left = 267
        Top = 288
        Width = 246
        Height = 21
        DataField = 'AP'
        DataSource = dsBuscaGuia
        TabOrder = 20
        OnKeyPress = FormKeyPress
      end
      object DBEdit42: TDBEdit
        Left = 520
        Top = 158
        Width = 300
        Height = 21
        DataField = 'ACIDENTES'
        DataSource = dsBuscaGuia
        TabOrder = 9
        OnKeyPress = FormKeyPress
      end
      object DBEdit43: TDBEdit
        Left = 522
        Top = 288
        Width = 293
        Height = 21
        DataField = 'APCARDIO'
        DataSource = dsBuscaGuia
        TabOrder = 21
        OnKeyPress = FormKeyPress
      end
      object DBEdit44: TDBEdit
        Left = 8
        Top = 331
        Width = 249
        Height = 21
        DataField = 'SISTEMANERVOSO'
        DataSource = dsBuscaGuia
        TabOrder = 22
        OnKeyPress = FormKeyPress
      end
      object DBEdit45: TDBEdit
        Left = 265
        Top = 330
        Width = 247
        Height = 21
        DataField = 'APURO'
        DataSource = dsBuscaGuia
        TabOrder = 23
        OnKeyPress = FormKeyPress
      end
      object DBEdit46: TDBEdit
        Left = 520
        Top = 329
        Width = 295
        Height = 21
        DataField = 'AOSTEO'
        DataSource = dsBuscaGuia
        TabOrder = 24
        OnKeyPress = FormKeyPress
      end
      object DBEdit47: TDBEdit
        Left = 79
        Top = 388
        Width = 738
        Height = 21
        DataField = 'OBSFICHA'
        DataSource = dsBuscaGuia
        TabOrder = 25
        OnKeyPress = FormKeyPress
      end
      object radAlcool: TDBRadioGroup
        Left = 723
        Top = 26
        Width = 97
        Height = 72
        DataField = 'ALCOOL'
        DataSource = dsBuscaGuia
        Items.Strings = (
          'Diario'
          'Semanal'
          'Social')
        TabOrder = 5
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object radTipo1: TDBRadioGroup
        Left = 3
        Top = -4
        Width = 142
        Height = 163
        Caption = 'ASO'
        DataField = 'TIPO'
        DataSource = dsBuscaGuia
        Items.Strings = (
          'Exame Adminissional'
          'Exame Periodico'
          'Exame Demissional'
          'Mudan'#231'a de Fun'#231#227'o'
          'Retorno ao Trabalho'
          'Avalia'#231#227'o'
          'Retorno de Atendimento')
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
      end
      object DBEdit78: TDBEdit
        Left = 168
        Top = 43
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKH'
        DataSource = dsBuscaGuia
        TabOrder = 3
        Visible = False
      end
      object DBEdit77: TDBEdit
        Left = 168
        Top = 12
        Width = 18
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKQ'
        DataSource = dsBuscaGuia
        TabOrder = 1
        Visible = False
      end
      object DBEdit79: TDBEdit
        Left = 721
        Top = 3
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA'
        DataSource = dsBuscaGuia
        TabOrder = 26
        Visible = False
      end
      object DBEdit81: TDBEdit
        Left = 475
        Top = 72
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FUMO'
        DataSource = dsBuscaGuia
        TabOrder = 27
        Visible = False
      end
      object DBEdit85: TDBEdit
        Left = 224
        Top = 202
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKOD'
        DataSource = dsBuscaGuia
        TabOrder = 28
        Visible = False
      end
      object DBEdit86: TDBEdit
        Left = 360
        Top = 201
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKOE'
        DataSource = dsBuscaGuia
        TabOrder = 29
        Visible = False
      end
      object MaskEdit1: TDBEdit
        Left = 560
        Top = 40
        Width = 121
        Height = 21
        DataField = 'DATA_EMISSAO'
        DataSource = dsBuscaGuia
        TabOrder = 30
      end
      object MaskEdit2: TDBEdit
        Left = 560
        Top = 80
        Width = 121
        Height = 21
        DataField = 'DATA_ATENDIMENTO'
        DataSource = dsBuscaGuia
        TabOrder = 31
      end
      object Edit2: TDBEdit
        Left = 600
        Top = 2
        Width = 81
        Height = 21
        DataField = 'NUMERO_GUIA'
        DataSource = dsBuscaGuia
        ReadOnly = True
        TabOrder = 32
      end
      object CheckBox28: TCheckBox
        Left = 172
        Top = 13
        Width = 17
        Height = 17
        Caption = 'CheckBox28'
        TabOrder = 33
        OnClick = CheckBox28Click
      end
      object CheckBox29: TCheckBox
        Left = 170
        Top = 45
        Width = 17
        Height = 17
        Caption = 'CheckBox29'
        TabOrder = 34
        OnClick = CheckBox28Click
      end
      object CheckBox30: TCheckBox
        Left = 722
        Top = 5
        Width = 17
        Height = 17
        Caption = 'CheckBox30'
        TabOrder = 35
        OnClick = CheckBox28Click
      end
      object CheckBox31: TCheckBox
        Left = 477
        Top = 73
        Width = 17
        Height = 17
        Caption = 'CheckBox31'
        TabOrder = 36
        OnClick = CheckBox28Click
      end
      object CheckBox32: TCheckBox
        Left = 227
        Top = 205
        Width = 17
        Height = 17
        Caption = 'CheckBox32'
        TabOrder = 37
        OnClick = CheckBox28Click
      end
      object CheckBox33: TCheckBox
        Left = 362
        Top = 203
        Width = 17
        Height = 17
        Caption = 'CheckBox33'
        TabOrder = 38
        OnClick = CheckBox28Click
      end
      object CheckBox62: TCheckBox
        Left = 634
        Top = 310
        Width = 17
        Height = 17
        Caption = 'CheckBox62'
        TabOrder = 40
        OnClick = CheckBox28Click
      end
      object DBEdit80: TDBEdit
        Left = 664
        Top = 305
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKAOM'
        DataSource = dsBuscaGuia
        TabOrder = 41
        Visible = False
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Complemento'
      ImageIndex = 3
      object Label82: TLabel
        Left = 105
        Top = 2
        Width = 57
        Height = 13
        Caption = 'Hemograma'
      end
      object Label83: TLabel
        Left = 105
        Top = 29
        Width = 47
        Height = 13
        Caption = 'Plaquetas'
      end
      object Label84: TLabel
        Left = 105
        Top = 53
        Width = 63
        Height = 13
        Caption = 'Colinesterase'
      end
      object Label86: TLabel
        Left = 106
        Top = 77
        Width = 90
        Height = 13
        Caption = 'Pratoparasitologico'
      end
      object Label87: TLabel
        Left = 106
        Top = 101
        Width = 21
        Height = 13
        Caption = 'AST'
      end
      object Label88: TLabel
        Left = 106
        Top = 126
        Width = 20
        Height = 13
        Caption = 'ALT'
      end
      object Label89: TLabel
        Left = 106
        Top = 149
        Width = 55
        Height = 13
        Caption = 'Audiometria'
      end
      object Label90: TLabel
        Left = 115
        Top = 207
        Width = 45
        Height = 13
        Caption = 'RX T'#243'rax'
      end
      object Label91: TLabel
        Left = 115
        Top = 228
        Width = 22
        Height = 13
        Caption = 'ECG'
      end
      object Label92: TLabel
        Left = 115
        Top = 251
        Width = 31
        Height = 13
        Caption = 'Urina I'
      end
      object Label93: TLabel
        Left = 115
        Top = 274
        Width = 46
        Height = 13
        Caption = 'Gama GT'
      end
      object Label94: TLabel
        Left = 115
        Top = 298
        Width = 57
        Height = 13
        Caption = 'Espirometria'
      end
      object Label95: TLabel
        Left = 115
        Top = 320
        Width = 80
        Height = 13
        Caption = 'Ac Metil Hip'#250'rico'
      end
      object Label96: TLabel
        Left = 555
        Top = 3
        Width = 55
        Height = 13
        Caption = 'Ac Hip'#250'rico'
      end
      object Label97: TLabel
        Left = 553
        Top = 28
        Width = 39
        Height = 13
        Caption = 'Chumbo'
      end
      object Label98: TLabel
        Left = 553
        Top = 52
        Width = 89
        Height = 13
        Caption = 'RX Coluna Lombar'
      end
      object Label99: TLabel
        Left = 552
        Top = 79
        Width = 29
        Height = 13
        Caption = 'VDRL'
      end
      object Label100: TLabel
        Left = 554
        Top = 102
        Width = 60
        Height = 13
        Caption = 'Coprocultura'
      end
      object Label101: TLabel
        Left = 554
        Top = 128
        Width = 22
        Height = 13
        Caption = 'EEG'
      end
      object Label102: TLabel
        Left = 534
        Top = 156
        Width = 40
        Height = 13
        Caption = 'Outros 1'
      end
      object Label103: TLabel
        Left = 533
        Top = 203
        Width = 40
        Height = 13
        Caption = 'Outros 2'
      end
      object Label104: TLabel
        Left = 535
        Top = 252
        Width = 40
        Height = 13
        Caption = 'Outros 3'
      end
      object Label85: TLabel
        Left = 136
        Top = 176
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object Label105: TLabel
        Left = 186
        Top = 176
        Width = 3
        Height = 13
        Caption = 'I'
      end
      object Label106: TLabel
        Left = 226
        Top = 177
        Width = 22
        Height = 13
        Caption = 'ADA'
      end
      object Label107: TLabel
        Left = 285
        Top = 177
        Width = 17
        Height = 13
        Caption = 'AIA'
      end
      object Label108: TLabel
        Left = 341
        Top = 176
        Width = 25
        Height = 13
        Caption = 'PAIR'
      end
      object Label109: TLabel
        Left = 401
        Top = 177
        Width = 31
        Height = 13
        Caption = 'DANO'
      end
      object Label110: TLabel
        Left = 5
        Top = 348
        Width = 136
        Height = 13
        Caption = 'Historico Avali'#231'a'#245' de Queixa'
      end
      object Label111: TLabel
        Left = 437
        Top = 348
        Width = 40
        Height = 13
        Caption = 'Conduta'
      end
      object DBEdit50: TDBEdit
        Left = 230
        Top = 48
        Width = 201
        Height = 21
        DataField = 'ALTERADO16'
        DataSource = dsBuscaGuia
        TabOrder = 9
        OnKeyPress = FormKeyPress
      end
      object DBEdit48: TDBEdit
        Left = 229
        Top = 0
        Width = 200
        Height = 21
        DataField = 'ALTERADO14'
        DataSource = dsBuscaGuia
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object DBEdit49: TDBEdit
        Left = 229
        Top = 24
        Width = 200
        Height = 21
        DataField = 'ALTERADO15'
        DataSource = dsBuscaGuia
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object DBEdit51: TDBEdit
        Left = 229
        Top = 72
        Width = 200
        Height = 21
        DataField = 'ALTERADO17'
        DataSource = dsBuscaGuia
        TabOrder = 12
        OnKeyPress = FormKeyPress
      end
      object DBEdit52: TDBEdit
        Left = 229
        Top = 98
        Width = 200
        Height = 21
        DataField = 'ALTERADO18'
        DataSource = dsBuscaGuia
        TabOrder = 15
        OnKeyPress = FormKeyPress
      end
      object DBEdit53: TDBEdit
        Left = 229
        Top = 122
        Width = 200
        Height = 21
        DataField = 'ALTERADO19'
        DataSource = dsBuscaGuia
        TabOrder = 18
        OnKeyPress = FormKeyPress
      end
      object DBEdit54: TDBEdit
        Left = 229
        Top = 146
        Width = 200
        Height = 21
        DataField = 'ALTERADO20'
        DataSource = dsBuscaGuia
        TabOrder = 21
        OnKeyPress = FormKeyPress
      end
      object DBEdit55: TDBEdit
        Left = 230
        Top = 199
        Width = 200
        Height = 21
        DataField = 'ALTERADO21'
        DataSource = dsBuscaGuia
        TabOrder = 24
        OnKeyPress = FormKeyPress
      end
      object DBEdit56: TDBEdit
        Left = 231
        Top = 222
        Width = 200
        Height = 21
        DataField = 'ALTERADO22'
        DataSource = dsBuscaGuia
        TabOrder = 27
        OnKeyPress = FormKeyPress
      end
      object DBEdit57: TDBEdit
        Left = 232
        Top = 244
        Width = 200
        Height = 21
        DataField = 'ALTERADO23'
        DataSource = dsBuscaGuia
        TabOrder = 30
        OnKeyPress = FormKeyPress
      end
      object DBEdit58: TDBEdit
        Left = 231
        Top = 267
        Width = 200
        Height = 21
        DataField = 'ALTERADO24'
        DataSource = dsBuscaGuia
        TabOrder = 33
        OnKeyPress = FormKeyPress
      end
      object DBEdit59: TDBEdit
        Left = 232
        Top = 291
        Width = 200
        Height = 21
        DataField = 'ALTERADO25'
        DataSource = dsBuscaGuia
        TabOrder = 36
        OnKeyPress = FormKeyPress
      end
      object DBEdit60: TDBEdit
        Left = 232
        Top = 314
        Width = 200
        Height = 21
        DataField = 'ALTERADO26'
        DataSource = dsBuscaGuia
        TabOrder = 39
        OnKeyPress = FormKeyPress
      end
      object DBEdit61: TDBEdit
        Left = 666
        Top = 1
        Width = 200
        Height = 21
        DataField = 'ALTERADO27'
        DataSource = dsBuscaGuia
        TabOrder = 42
        OnKeyPress = FormKeyPress
      end
      object DBEdit62: TDBEdit
        Left = 666
        Top = 25
        Width = 200
        Height = 21
        DataField = 'ALTERADO28'
        DataSource = dsBuscaGuia
        TabOrder = 45
        OnKeyPress = FormKeyPress
      end
      object DBEdit63: TDBEdit
        Left = 666
        Top = 48
        Width = 200
        Height = 21
        DataField = 'ALTERADO29'
        DataSource = dsBuscaGuia
        TabOrder = 48
        OnKeyPress = FormKeyPress
      end
      object DBEdit64: TDBEdit
        Left = 665
        Top = 73
        Width = 200
        Height = 21
        DataField = 'ALTERADO30'
        DataSource = dsBuscaGuia
        TabOrder = 51
        OnKeyPress = FormKeyPress
      end
      object DBEdit65: TDBEdit
        Left = 665
        Top = 98
        Width = 200
        Height = 21
        DataField = 'ALTERADO31'
        DataSource = dsBuscaGuia
        TabOrder = 54
        OnKeyPress = FormKeyPress
      end
      object DBEdit66: TDBEdit
        Left = 666
        Top = 121
        Width = 200
        Height = 21
        DataField = 'ALTERADO32'
        DataSource = dsBuscaGuia
        TabOrder = 57
        OnKeyPress = FormKeyPress
      end
      object DBEdit67: TDBEdit
        Left = 629
        Top = 195
        Width = 200
        Height = 21
        DataField = 'ALTERADO33'
        DataSource = dsBuscaGuia
        TabOrder = 61
        OnKeyPress = FormKeyPress
      end
      object DBEdit68: TDBEdit
        Left = 629
        Top = 245
        Width = 200
        Height = 21
        DataField = 'ALTERADO34'
        DataSource = dsBuscaGuia
        TabOrder = 65
        OnKeyPress = FormKeyPress
      end
      object DBEdit69: TDBEdit
        Left = 627
        Top = 293
        Width = 200
        Height = 21
        DataField = 'ALTERADO35'
        DataSource = dsBuscaGuia
        TabOrder = 69
        OnKeyPress = FormKeyPress
      end
      object DBEdit70: TDBEdit
        Left = 563
        Top = 173
        Width = 200
        Height = 21
        DataField = 'EXAME33'
        DataSource = dsBuscaGuia
        TabOrder = 59
        OnKeyPress = FormKeyPress
      end
      object DBEdit71: TDBEdit
        Left = 563
        Top = 221
        Width = 200
        Height = 21
        DataField = 'EXAME34'
        DataSource = dsBuscaGuia
        TabOrder = 63
        OnKeyPress = FormKeyPress
      end
      object DBEdit72: TDBEdit
        Left = 563
        Top = 269
        Width = 200
        Height = 21
        DataField = 'EXAME35'
        DataSource = dsBuscaGuia
        TabOrder = 67
        OnKeyPress = FormKeyPress
      end
      object DBEdit75: TDBEdit
        Left = 208
        Top = 0
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA14'
        DataSource = dsBuscaGuia
        TabOrder = 0
        Visible = False
      end
      object DBEdit97: TDBEdit
        Left = -1
        Top = -2
        Width = 81
        Height = 21
        DataField = 'DATA14'
        DataSource = dsBuscaGuia
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object DBEdit98: TDBEdit
        Left = -1
        Top = 22
        Width = 81
        Height = 21
        DataField = 'DATA15'
        DataSource = dsBuscaGuia
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object DBEdit99: TDBEdit
        Left = -1
        Top = 46
        Width = 81
        Height = 21
        DataField = 'DATA16'
        DataSource = dsBuscaGuia
        TabOrder = 7
        OnKeyPress = FormKeyPress
      end
      object DBEdit100: TDBEdit
        Left = -1
        Top = 72
        Width = 81
        Height = 21
        DataField = 'DATA17'
        DataSource = dsBuscaGuia
        TabOrder = 10
        OnKeyPress = FormKeyPress
      end
      object DBEdit101: TDBEdit
        Left = -1
        Top = 96
        Width = 81
        Height = 21
        DataField = 'DATA18'
        DataSource = dsBuscaGuia
        TabOrder = 13
        OnKeyPress = FormKeyPress
      end
      object DBEdit102: TDBEdit
        Left = -1
        Top = 121
        Width = 81
        Height = 21
        DataField = 'DATA19'
        DataSource = dsBuscaGuia
        TabOrder = 16
        OnKeyPress = FormKeyPress
      end
      object DBEdit103: TDBEdit
        Left = -1
        Top = 147
        Width = 81
        Height = 21
        DataField = 'DATA20'
        DataSource = dsBuscaGuia
        TabOrder = 19
        OnKeyPress = FormKeyPress
      end
      object DBEdit104: TDBEdit
        Left = -1
        Top = 199
        Width = 81
        Height = 21
        DataField = 'DATA21'
        DataSource = dsBuscaGuia
        TabOrder = 22
        OnKeyPress = FormKeyPress
      end
      object DBEdit105: TDBEdit
        Left = -1
        Top = 222
        Width = 81
        Height = 21
        DataField = 'DATA22'
        DataSource = dsBuscaGuia
        TabOrder = 25
        OnKeyPress = FormKeyPress
      end
      object DBEdit106: TDBEdit
        Left = -1
        Top = 245
        Width = 81
        Height = 21
        DataField = 'DATA23'
        DataSource = dsBuscaGuia
        TabOrder = 28
        OnKeyPress = FormKeyPress
      end
      object DBEdit107: TDBEdit
        Left = -1
        Top = 268
        Width = 81
        Height = 21
        DataField = 'DATA24'
        DataSource = dsBuscaGuia
        TabOrder = 31
        OnKeyPress = FormKeyPress
      end
      object DBEdit108: TDBEdit
        Left = -1
        Top = 291
        Width = 81
        Height = 21
        DataField = 'DATA25'
        DataSource = dsBuscaGuia
        TabOrder = 34
        OnKeyPress = FormKeyPress
      end
      object DBEdit109: TDBEdit
        Left = -1
        Top = 315
        Width = 81
        Height = 21
        DataField = 'DATA26'
        DataSource = dsBuscaGuia
        TabOrder = 37
        OnKeyPress = FormKeyPress
      end
      object DBEdit110: TDBEdit
        Left = 440
        Top = 1
        Width = 81
        Height = 21
        DataField = 'DATA27'
        DataSource = dsBuscaGuia
        TabOrder = 40
        OnKeyPress = FormKeyPress
      end
      object DBEdit111: TDBEdit
        Left = 440
        Top = 25
        Width = 81
        Height = 21
        DataField = 'DATA28'
        DataSource = dsBuscaGuia
        TabOrder = 43
        OnKeyPress = FormKeyPress
      end
      object DBEdit112: TDBEdit
        Left = 440
        Top = 49
        Width = 81
        Height = 21
        DataField = 'DATA29'
        DataSource = dsBuscaGuia
        TabOrder = 46
        OnKeyPress = FormKeyPress
      end
      object DBEdit113: TDBEdit
        Left = 440
        Top = 73
        Width = 81
        Height = 21
        DataField = 'DATA30'
        DataSource = dsBuscaGuia
        TabOrder = 49
        OnKeyPress = FormKeyPress
      end
      object DBEdit114: TDBEdit
        Left = 440
        Top = 97
        Width = 81
        Height = 21
        DataField = 'DATA31'
        DataSource = dsBuscaGuia
        TabOrder = 52
        OnKeyPress = FormKeyPress
      end
      object DBEdit115: TDBEdit
        Left = 440
        Top = 123
        Width = 81
        Height = 21
        DataField = 'DATA32'
        DataSource = dsBuscaGuia
        TabOrder = 55
        OnKeyPress = FormKeyPress
      end
      object DBEdit116: TDBEdit
        Left = 440
        Top = 172
        Width = 81
        Height = 21
        DataField = 'DATA33'
        DataSource = dsBuscaGuia
        TabOrder = 58
        OnKeyPress = FormKeyPress
      end
      object DBEdit117: TDBEdit
        Left = 440
        Top = 221
        Width = 81
        Height = 21
        DataField = 'DATA34'
        DataSource = dsBuscaGuia
        TabOrder = 62
        OnKeyPress = FormKeyPress
      end
      object DBEdit118: TDBEdit
        Left = 440
        Top = 269
        Width = 81
        Height = 21
        DataField = 'DATA35'
        DataSource = dsBuscaGuia
        TabOrder = 66
        OnKeyPress = FormKeyPress
      end
      object DBEdit119: TDBEdit
        Left = 208
        Top = 22
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA15'
        DataSource = dsBuscaGuia
        TabOrder = 72
        Visible = False
      end
      object DBEdit120: TDBEdit
        Left = 208
        Top = 47
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA16'
        DataSource = dsBuscaGuia
        TabOrder = 73
        Visible = False
      end
      object DBEdit121: TDBEdit
        Left = 208
        Top = 72
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA17'
        DataSource = dsBuscaGuia
        TabOrder = 74
        Visible = False
      end
      object DBEdit122: TDBEdit
        Left = 208
        Top = 96
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA18'
        DataSource = dsBuscaGuia
        TabOrder = 75
        Visible = False
      end
      object DBEdit123: TDBEdit
        Left = 208
        Top = 121
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA19'
        DataSource = dsBuscaGuia
        TabOrder = 76
        Visible = False
      end
      object DBEdit124: TDBEdit
        Left = 208
        Top = 145
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA20'
        DataSource = dsBuscaGuia
        TabOrder = 77
        Visible = False
      end
      object DBEdit125: TDBEdit
        Left = 210
        Top = 200
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA21'
        DataSource = dsBuscaGuia
        TabOrder = 78
        Visible = False
      end
      object DBEdit126: TDBEdit
        Left = 210
        Top = 222
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA22'
        DataSource = dsBuscaGuia
        TabOrder = 79
        Visible = False
      end
      object DBEdit127: TDBEdit
        Left = 210
        Top = 245
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA23'
        DataSource = dsBuscaGuia
        TabOrder = 80
        Visible = False
      end
      object DBEdit128: TDBEdit
        Left = 210
        Top = 267
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA24'
        DataSource = dsBuscaGuia
        TabOrder = 81
        Visible = False
      end
      object DBEdit129: TDBEdit
        Left = 210
        Top = 290
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA25'
        DataSource = dsBuscaGuia
        TabOrder = 82
        Visible = False
      end
      object DBEdit130: TDBEdit
        Left = 210
        Top = 314
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA26'
        DataSource = dsBuscaGuia
        TabOrder = 83
        Visible = False
      end
      object DBEdit131: TDBEdit
        Left = 643
        Top = 1
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA27'
        DataSource = dsBuscaGuia
        TabOrder = 84
        Visible = False
      end
      object DBEdit132: TDBEdit
        Left = 643
        Top = 25
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA28'
        DataSource = dsBuscaGuia
        TabOrder = 85
        Visible = False
      end
      object DBEdit133: TDBEdit
        Left = 643
        Top = 50
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA29'
        DataSource = dsBuscaGuia
        TabOrder = 86
        Visible = False
      end
      object DBEdit134: TDBEdit
        Left = 643
        Top = 75
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA30'
        DataSource = dsBuscaGuia
        TabOrder = 87
        Visible = False
      end
      object DBEdit135: TDBEdit
        Left = 643
        Top = 100
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA31'
        DataSource = dsBuscaGuia
        TabOrder = 88
        Visible = False
      end
      object DBEdit136: TDBEdit
        Left = 643
        Top = 123
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA32'
        DataSource = dsBuscaGuia
        TabOrder = 89
        Visible = False
      end
      object DBEdit137: TDBEdit
        Left = 607
        Top = 197
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA33'
        DataSource = dsBuscaGuia
        TabOrder = 90
        Visible = False
      end
      object DBEdit138: TDBEdit
        Left = 607
        Top = 246
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA34'
        DataSource = dsBuscaGuia
        TabOrder = 91
        Visible = False
      end
      object DBEdit139: TDBEdit
        Left = 607
        Top = 293
        Width = 17
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CKA35'
        DataSource = dsBuscaGuia
        TabOrder = 92
        Visible = False
      end
      object DBEdit74: TDBEdit
        Left = 114
        Top = 173
        Width = 10
        Height = 21
        CharCase = ecUpperCase
        DataField = 'A'
        DataSource = dsBuscaGuia
        TabOrder = 93
        Visible = False
      end
      object DBEdit76: TDBEdit
        Left = 168
        Top = 173
        Width = 9
        Height = 21
        CharCase = ecUpperCase
        DataField = 'I'
        DataSource = dsBuscaGuia
        TabOrder = 94
        Visible = False
      end
      object DBEdit140: TDBEdit
        Left = 206
        Top = 173
        Width = 13
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ADA'
        DataSource = dsBuscaGuia
        TabOrder = 95
        Visible = False
      end
      object DBEdit141: TDBEdit
        Left = 265
        Top = 173
        Width = 10
        Height = 21
        CharCase = ecUpperCase
        DataField = 'AIA'
        DataSource = dsBuscaGuia
        TabOrder = 96
        Visible = False
      end
      object DBEdit142: TDBEdit
        Left = 327
        Top = 173
        Width = 8
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PAIR'
        DataSource = dsBuscaGuia
        TabOrder = 97
        Visible = False
      end
      object DBEdit143: TDBEdit
        Left = 384
        Top = 173
        Width = 11
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DANO'
        DataSource = dsBuscaGuia
        TabOrder = 98
        Visible = False
      end
      object btnD1: TBitBtn
        Left = 82
        Top = 1
        Width = 23
        Height = 17
        TabOrder = 99
        TabStop = False
        OnClick = btnD1Click
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
      object btnD2: TBitBtn
        Left = 82
        Top = 27
        Width = 23
        Height = 17
        TabOrder = 100
        TabStop = False
        OnClick = btnD2Click
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
      object btnD3: TBitBtn
        Left = 82
        Top = 50
        Width = 23
        Height = 17
        TabOrder = 101
        TabStop = False
        OnClick = btnD3Click
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
      object btnD4: TBitBtn
        Left = 82
        Top = 74
        Width = 23
        Height = 17
        TabOrder = 102
        TabStop = False
        OnClick = btnD4Click
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
      object btnD5: TBitBtn
        Left = 82
        Top = 99
        Width = 23
        Height = 17
        TabOrder = 103
        TabStop = False
        OnClick = btnD5Click
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
      object btnD6: TBitBtn
        Left = 83
        Top = 123
        Width = 23
        Height = 17
        TabOrder = 104
        TabStop = False
        OnClick = btnD6Click
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
      object btnD7: TBitBtn
        Left = 82
        Top = 146
        Width = 23
        Height = 17
        TabOrder = 105
        TabStop = False
        OnClick = btnD7Click
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
      object btnD8: TBitBtn
        Left = 85
        Top = 202
        Width = 23
        Height = 17
        TabOrder = 106
        TabStop = False
        OnClick = btnD8Click
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
      object btnD9: TBitBtn
        Left = 85
        Top = 226
        Width = 23
        Height = 17
        TabOrder = 107
        TabStop = False
        OnClick = btnD9Click
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
      object btnD10: TBitBtn
        Left = 85
        Top = 250
        Width = 23
        Height = 17
        TabOrder = 108
        TabStop = False
        OnClick = btnD10Click
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
      object btnD11: TBitBtn
        Left = 85
        Top = 271
        Width = 23
        Height = 17
        TabOrder = 109
        TabStop = False
        OnClick = btnD11Click
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
      object btnD12: TBitBtn
        Left = 85
        Top = 293
        Width = 23
        Height = 17
        TabOrder = 110
        TabStop = False
        OnClick = btnD12Click
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
      object btnD13: TBitBtn
        Left = 85
        Top = 317
        Width = 23
        Height = 17
        TabOrder = 111
        TabStop = False
        OnClick = btnD13Click
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
      object btnD14: TBitBtn
        Left = 525
        Top = 3
        Width = 23
        Height = 17
        TabOrder = 112
        TabStop = False
        OnClick = btnD14Click
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
      object btnD15: TBitBtn
        Left = 525
        Top = 28
        Width = 23
        Height = 17
        TabOrder = 113
        TabStop = False
        OnClick = btnD15Click
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
      object btnD16: TBitBtn
        Left = 525
        Top = 52
        Width = 23
        Height = 17
        TabOrder = 114
        TabStop = False
        OnClick = btnD16Click
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
      object btnD17: TBitBtn
        Left = 525
        Top = 76
        Width = 23
        Height = 17
        TabOrder = 115
        TabStop = False
        OnClick = btnD17Click
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
      object btnD18: TBitBtn
        Left = 525
        Top = 99
        Width = 23
        Height = 17
        TabOrder = 116
        TabStop = False
        OnClick = btnD18Click
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
      object btnD19: TBitBtn
        Left = 525
        Top = 126
        Width = 23
        Height = 17
        TabOrder = 117
        TabStop = False
        OnClick = btnD19Click
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
      object btnD20: TBitBtn
        Left = 527
        Top = 173
        Width = 25
        Height = 19
        TabOrder = 118
        TabStop = False
        OnClick = btnD20Click
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
      object btnD21: TBitBtn
        Left = 527
        Top = 221
        Width = 25
        Height = 19
        TabOrder = 119
        TabStop = False
        OnClick = btnD21Click
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
      object btnD22: TBitBtn
        Left = 528
        Top = 270
        Width = 25
        Height = 19
        TabOrder = 120
        TabStop = False
        OnClick = btnD22Click
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
      object CheckBox34: TCheckBox
        Left = 115
        Top = 174
        Width = 17
        Height = 17
        Caption = 'CheckBox34'
        TabOrder = 121
        OnClick = CheckBox34Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox35: TCheckBox
        Left = 166
        Top = 174
        Width = 17
        Height = 17
        Caption = 'CheckBox35'
        TabOrder = 122
        OnClick = CheckBox34Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox36: TCheckBox
        Left = 208
        Top = 174
        Width = 17
        Height = 17
        Caption = 'CheckBox36'
        TabOrder = 123
        OnClick = CheckBox34Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox37: TCheckBox
        Left = 262
        Top = 173
        Width = 17
        Height = 17
        Caption = 'CheckBox37'
        TabOrder = 124
        OnClick = CheckBox34Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox38: TCheckBox
        Left = 324
        Top = 174
        Width = 17
        Height = 17
        Caption = 'CheckBox38'
        TabOrder = 125
        OnClick = CheckBox34Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox39: TCheckBox
        Left = 383
        Top = 174
        Width = 17
        Height = 17
        Caption = 'CheckBox39'
        TabOrder = 126
        OnClick = CheckBox34Click
        OnKeyPress = FormKeyPress
      end
      object DBEdit82: TDBEdit
        Left = 5
        Top = 363
        Width = 417
        Height = 21
        DataField = 'HISTORICOAV'
        DataSource = dsBuscaGuia
        TabOrder = 70
        OnKeyPress = FormKeyPress
      end
      object DBEdit83: TDBEdit
        Left = 438
        Top = 363
        Width = 380
        Height = 21
        DataField = 'CONDUTA'
        DataSource = dsBuscaGuia
        TabOrder = 71
        OnKeyPress = FormKeyPress
      end
      object CheckBox40: TCheckBox
        Left = 208
        Top = 0
        Width = 17
        Height = 17
        Caption = 'CheckBox40'
        TabOrder = 2
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox41: TCheckBox
        Left = 208
        Top = 24
        Width = 17
        Height = 17
        Caption = 'CheckBox41'
        TabOrder = 5
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox42: TCheckBox
        Left = 207
        Top = 48
        Width = 17
        Height = 17
        Caption = 'CheckBox42'
        TabOrder = 8
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox43: TCheckBox
        Left = 207
        Top = 72
        Width = 17
        Height = 17
        Caption = 'CheckBox43'
        TabOrder = 11
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox44: TCheckBox
        Left = 207
        Top = 96
        Width = 17
        Height = 17
        Caption = 'CheckBox44'
        TabOrder = 14
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox45: TCheckBox
        Left = 207
        Top = 121
        Width = 17
        Height = 17
        Caption = 'CheckBox45'
        TabOrder = 17
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox46: TCheckBox
        Left = 206
        Top = 145
        Width = 17
        Height = 17
        Caption = 'CheckBox46'
        TabOrder = 20
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox47: TCheckBox
        Left = 210
        Top = 201
        Width = 17
        Height = 17
        Caption = 'CheckBox47'
        TabOrder = 23
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox48: TCheckBox
        Left = 210
        Top = 224
        Width = 17
        Height = 17
        Caption = 'CheckBox48'
        TabOrder = 26
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox49: TCheckBox
        Left = 209
        Top = 247
        Width = 17
        Height = 17
        Caption = 'CheckBox49'
        TabOrder = 29
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox50: TCheckBox
        Left = 209
        Top = 271
        Width = 17
        Height = 17
        Caption = 'CheckBox50'
        TabOrder = 32
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox51: TCheckBox
        Left = 208
        Top = 294
        Width = 17
        Height = 17
        Caption = 'CheckBox51'
        TabOrder = 35
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox52: TCheckBox
        Left = 208
        Top = 317
        Width = 17
        Height = 17
        Caption = 'CheckBox52'
        TabOrder = 38
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox53: TCheckBox
        Left = 648
        Top = 3
        Width = 17
        Height = 17
        Caption = 'CheckBox53'
        TabOrder = 41
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox54: TCheckBox
        Left = 648
        Top = 27
        Width = 17
        Height = 17
        Caption = 'CheckBox53'
        TabOrder = 44
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox55: TCheckBox
        Left = 648
        Top = 51
        Width = 17
        Height = 17
        Caption = 'CheckBox53'
        TabOrder = 47
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox56: TCheckBox
        Left = 648
        Top = 76
        Width = 17
        Height = 17
        Caption = 'CheckBox53'
        TabOrder = 50
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox57: TCheckBox
        Left = 648
        Top = 101
        Width = 17
        Height = 17
        Caption = 'CheckBox53'
        TabOrder = 53
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox58: TCheckBox
        Left = 647
        Top = 124
        Width = 17
        Height = 17
        Caption = 'CheckBox53'
        TabOrder = 56
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox59: TCheckBox
        Left = 610
        Top = 198
        Width = 17
        Height = 17
        Caption = 'CheckBox53'
        TabOrder = 60
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox60: TCheckBox
        Left = 610
        Top = 248
        Width = 17
        Height = 17
        Caption = 'CheckBox53'
        TabOrder = 64
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox61: TCheckBox
        Left = 610
        Top = 296
        Width = 17
        Height = 17
        Caption = 'CheckBox53'
        TabOrder = 68
        OnClick = CheckBox40Click
        OnKeyPress = FormKeyPress
      end
      object dbrTipo1: TDBRadioGroup
        Left = 439
        Top = 314
        Width = 359
        Height = 31
        Columns = 3
        DataField = 'APTO'
        DataSource = dsBuscaGuia
        Items.Strings = (
          'Apto'
          'Inapto'
          'Apto Com Restri'#231#227'o')
        TabOrder = 127
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object btnAP1: TBitBtn
        Left = 804
        Top = 323
        Width = 21
        Height = 19
        TabOrder = 128
        TabStop = False
        OnClick = btnAP1Click
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
    object TabSheet2: TTabSheet
      Caption = 'ASO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      OnShow = TabSheet2Show
      DesignSize = (
        827
        410)
      object Label40: TLabel
        Left = 9
        Top = 164
        Width = 116
        Height = 20
        Caption = 'Grau de Risco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label62: TLabel
        Left = 624
        Top = 64
        Width = 20
        Height = 13
        Caption = 'CK8'
      end
      object GroupBox5: TGroupBox
        Left = 4
        Top = 197
        Width = 399
        Height = 118
        TabOrder = 32
      end
      object GroupBox7: TGroupBox
        Left = 28
        Top = 327
        Width = 729
        Height = 41
        Caption = '   Medico Examinador   '
        TabOrder = 35
      end
      object GroupBox6: TGroupBox
        Left = 412
        Top = 196
        Width = 406
        Height = 118
        TabOrder = 33
        object Label30: TLabel
          Left = 6
          Top = 12
          Width = 392
          Height = 13
          Caption = '* De Acordo com a Norma Regulamentadora  N'#186' 7(Portaria 3.214/78)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnAP: TBitBtn
          Left = 373
          Top = 88
          Width = 21
          Height = 22
          TabOrder = 0
          TabStop = False
          OnClick = btnAPClick
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
      object GroupBox4: TGroupBox
        Left = 163
        Top = 2
        Width = 664
        Height = 194
        TabOrder = 31
        object JvDateEdit1: TJvDateEdit
          Left = 4
          Top = 10
          Width = 113
          Height = 21
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object JvDateEdit2: TJvDateEdit
          Left = 3
          Top = 34
          Width = 113
          Height = 21
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object JvDateEdit3: TJvDateEdit
          Left = 3
          Top = 58
          Width = 113
          Height = 21
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
        object JvDateEdit4: TJvDateEdit
          Left = 3
          Top = 82
          Width = 113
          Height = 21
          TabOrder = 3
          OnKeyPress = FormKeyPress
        end
        object JvDateEdit5: TJvDateEdit
          Left = 3
          Top = 106
          Width = 113
          Height = 21
          TabOrder = 4
          OnKeyPress = FormKeyPress
        end
        object JvDateEdit6: TJvDateEdit
          Left = 3
          Top = 129
          Width = 113
          Height = 21
          TabOrder = 5
          OnKeyPress = FormKeyPress
        end
        object JvDateEdit7: TJvDateEdit
          Left = 2
          Top = 151
          Width = 113
          Height = 21
          TabOrder = 6
          OnKeyPress = FormKeyPress
        end
        object JvDateEdit8: TJvDateEdit
          Left = 258
          Top = 9
          Width = 113
          Height = 21
          TabOrder = 7
          OnKeyPress = FormKeyPress
        end
        object JvDateEdit9: TJvDateEdit
          Left = 258
          Top = 33
          Width = 113
          Height = 21
          TabOrder = 8
          OnKeyPress = FormKeyPress
        end
        object JvDateEdit10: TJvDateEdit
          Left = 257
          Top = 57
          Width = 113
          Height = 21
          TabOrder = 9
          OnKeyPress = FormKeyPress
        end
        object JvDateEdit11: TJvDateEdit
          Left = 256
          Top = 80
          Width = 113
          Height = 21
          TabOrder = 10
          OnKeyPress = FormKeyPress
        end
        object JvDateEdit12: TJvDateEdit
          Left = 256
          Top = 104
          Width = 113
          Height = 21
          TabOrder = 11
          OnKeyPress = FormKeyPress
        end
        object JvDateEdit13: TJvDateEdit
          Left = 256
          Top = 127
          Width = 113
          Height = 21
          TabOrder = 12
          OnKeyPress = FormKeyPress
        end
        object DBEdit73: TDBEdit
          Left = 458
          Top = 127
          Width = 200
          Height = 21
          DataField = 'EXAME13'
          DataSource = dsBuscaGuia
          TabOrder = 13
          OnKeyPress = FormKeyPress
        end
        object btndJ1: TBitBtn
          Left = 121
          Top = 11
          Width = 21
          Height = 19
          TabOrder = 14
          TabStop = False
          OnClick = btndJ1Click
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
        object btndJ2: TBitBtn
          Left = 121
          Top = 35
          Width = 21
          Height = 19
          TabOrder = 15
          TabStop = False
          OnClick = btndJ2Click
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
        object btndJ3: TBitBtn
          Left = 121
          Top = 58
          Width = 21
          Height = 19
          TabOrder = 16
          TabStop = False
          OnClick = btndJ3Click
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
        object btndJ4: TBitBtn
          Left = 121
          Top = 81
          Width = 21
          Height = 19
          TabOrder = 17
          TabStop = False
          OnClick = btndJ4Click
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
        object btndJ5: TBitBtn
          Left = 121
          Top = 105
          Width = 21
          Height = 19
          TabOrder = 18
          TabStop = False
          OnClick = btndJ5Click
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
        object btndJ6: TBitBtn
          Left = 121
          Top = 128
          Width = 21
          Height = 19
          TabOrder = 19
          TabStop = False
          OnClick = btndJ6Click
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
        object btndJ7: TBitBtn
          Left = 121
          Top = 150
          Width = 21
          Height = 19
          TabOrder = 20
          TabStop = False
          OnClick = btndJ7Click
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
        object btndJ8: TBitBtn
          Left = 374
          Top = 11
          Width = 21
          Height = 19
          TabOrder = 21
          TabStop = False
          OnClick = btndJ8Click
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
        object btndJ9: TBitBtn
          Left = 374
          Top = 35
          Width = 21
          Height = 19
          TabOrder = 22
          TabStop = False
          OnClick = btndJ9Click
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
        object btndJ10: TBitBtn
          Left = 374
          Top = 58
          Width = 21
          Height = 19
          TabOrder = 23
          TabStop = False
          OnClick = btndJ10Click
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
        object btndJ11: TBitBtn
          Left = 374
          Top = 81
          Width = 21
          Height = 19
          TabOrder = 24
          TabStop = False
          OnClick = btndJ11Click
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
        object btndJ12: TBitBtn
          Left = 374
          Top = 105
          Width = 21
          Height = 19
          TabOrder = 25
          TabStop = False
          OnClick = btndJ12Click
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
        object btndJ13: TBitBtn
          Left = 374
          Top = 128
          Width = 21
          Height = 19
          TabOrder = 26
          TabStop = False
          OnClick = btndJ13Click
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
      object Edit7: TEdit
        Left = 136
        Top = 165
        Width = 23
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 14
        OnChange = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox1: TCheckBox
        Left = 308
        Top = 14
        Width = 89
        Height = 17
        Caption = 'Exame Clinico'
        TabOrder = 1
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox2: TCheckBox
        Left = 308
        Top = 38
        Width = 83
        Height = 17
        Caption = 'Hemograma'
        TabOrder = 2
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox3: TCheckBox
        Left = 308
        Top = 61
        Width = 87
        Height = 17
        Caption = 'Colinesterase'
        TabOrder = 3
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox5: TCheckBox
        Left = 308
        Top = 108
        Width = 82
        Height = 17
        Caption = 'Coprocultura'
        TabOrder = 5
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox6: TCheckBox
        Left = 309
        Top = 130
        Width = 68
        Height = 17
        Caption = 'VDRL'
        TabOrder = 6
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox7: TCheckBox
        Left = 310
        Top = 154
        Width = 78
        Height = 17
        Caption = 'Espirometria'
        TabOrder = 7
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBoxOu1: TCheckBox
        Left = 563
        Top = 132
        Width = 53
        Height = 17
        Caption = 'Outros'
        TabOrder = 13
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox8: TCheckBox
        Left = 562
        Top = 12
        Width = 75
        Height = 17
        Caption = 'Audiometria'
        TabOrder = 8
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox9: TCheckBox
        Left = 563
        Top = 36
        Width = 74
        Height = 17
        Caption = 'RX T'#243'rax'
        TabOrder = 9
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox10: TCheckBox
        Left = 562
        Top = 61
        Width = 51
        Height = 17
        Caption = 'ECG'
        TabOrder = 10
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox11: TCheckBox
        Left = 562
        Top = 85
        Width = 51
        Height = 17
        Caption = 'EEG'
        TabOrder = 11
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox12: TCheckBox
        Left = 562
        Top = 109
        Width = 137
        Height = 17
        Caption = 'Oftalmo/Ac.Visual'
        TabOrder = 12
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox13: TCheckBox
        Left = 10
        Top = 204
        Width = 211
        Height = 17
        Caption = 'Anexo 1 Ruido Cont/ Interminitente'
        TabOrder = 15
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox14: TCheckBox
        Left = 10
        Top = 221
        Width = 177
        Height = 17
        Caption = 'Anexo 2 Ruidos de Impacto'
        TabOrder = 16
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox15: TCheckBox
        Left = 10
        Top = 239
        Width = 97
        Height = 17
        Caption = 'Anexo 3 Calor'
        TabOrder = 17
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox16: TCheckBox
        Left = 10
        Top = 257
        Width = 185
        Height = 17
        Caption = 'Anexo 5 Radia'#231#245'es Ionizantes'
        TabOrder = 18
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox17: TCheckBox
        Left = 10
        Top = 274
        Width = 169
        Height = 17
        Caption = 'Anexo 6 Hiperbarica'
        TabOrder = 19
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox18: TCheckBox
        Left = 11
        Top = 292
        Width = 161
        Height = 17
        Caption = 'Anexo 9 Frio'
        TabOrder = 20
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox19: TCheckBox
        Left = 225
        Top = 203
        Width = 145
        Height = 17
        Caption = 'Anexo 10 Umidade'
        TabOrder = 21
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox20: TCheckBox
        Left = 225
        Top = 219
        Width = 169
        Height = 17
        Caption = 'Anexo 11 Agentes Quimicos'
        TabOrder = 22
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox21: TCheckBox
        Left = 225
        Top = 236
        Width = 137
        Height = 17
        Caption = 'Anexo 12 Poeiras'
        TabOrder = 23
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox22: TCheckBox
        Left = 225
        Top = 254
        Width = 169
        Height = 17
        Caption = 'Anexo 14 Agentes Biologicos'
        TabOrder = 24
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox23: TCheckBox
        Left = 225
        Top = 273
        Width = 97
        Height = 17
        Caption = 'Osteo Muscular'
        TabOrder = 25
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox24: TCheckBox
        Left = 225
        Top = 291
        Width = 97
        Height = 17
        Caption = 'Ergon'#244'mico'
        TabOrder = 26
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox25: TCheckBox
        Left = 417
        Top = 226
        Width = 169
        Height = 17
        Caption = 'Apto Trabalhar em Altura'
        TabOrder = 27
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox26: TCheckBox
        Left = 416
        Top = 246
        Width = 169
        Height = 17
        Caption = 'Apto Op. de Empilhadeira'
        TabOrder = 28
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object CheckBox27: TCheckBox
        Left = 416
        Top = 264
        Width = 169
        Height = 15
        Caption = 'Manipular Alimentos'
        TabOrder = 29
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object dbrTipo: TDBRadioGroup
        Left = 418
        Top = 277
        Width = 359
        Height = 34
        Columns = 3
        DataField = 'APTO'
        DataSource = dsBuscaGuia
        Items.Strings = (
          'Apto'
          'Inapto'
          'Apto Com Restri'#231#227'o')
        TabOrder = 30
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object DBComboBox3: TDBComboBox
        Left = 40
        Top = 340
        Width = 705
        Height = 21
        Anchors = [akTop]
        CharCase = ecUpperCase
        DataField = 'NOME_REPRFOR'
        DataSource = ds_repfor
        ItemHeight = 13
        TabOrder = 34
        OnClick = DBComboBox3Click
        OnKeyPress = FormKeyPress
      end
      object BitBtn6: TBitBtn
        Left = 32
        Top = 480
        Width = 75
        Height = 25
        Caption = 'BitBtn6'
        TabOrder = 36
      end
      object CheckBox4: TCheckBox
        Left = 307
        Top = 84
        Width = 108
        Height = 17
        Caption = 'Pratoparasitologico'
        TabOrder = 4
        OnClick = CheckBox1Click
        OnKeyPress = FormKeyPress
      end
      object radTipo: TDBRadioGroup
        Left = 7
        Top = 12
        Width = 150
        Height = 127
        Caption = 'ASO'
        DataField = 'TIPO'
        DataSource = dsBuscaGuia
        Items.Strings = (
          'Exame Adminissional'
          'Exame Periodico'
          'Exame Demissional'
          'Mudan'#231'a de Fun'#231#227'o'
          'Retorno ao Trabalho')
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '')
      end
    end
  end
  object Panel2: TPanel [5]
    Left = 7
    Top = 488
    Width = 817
    Height = 119
    TabOrder = 3
    object btnGrav: TBitBtn
      Left = 269
      Top = 83
      Width = 100
      Height = 34
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnGravClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F00000000000000000000000000000000
        00000000000000000000000000000000000000007F7F7FBFBFBFBFBFBF000000
        FF0000FF00000000007F7F7FFF0000FF0000FFFFFFBFBFBFBFBFBF000000FF00
        00FF0000000000BFBFBFBFBFBF000000FF0000FF00000000007F7F7FFF0000FF
        0000FFFFFFBFBFBFBFBFBF000000FF0000FF0000000000BFBFBFBFBFBF000000
        FF0000FF0000000000BFBFBF7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF000000FF00
        00FF0000000000BFBFBFBFBFBF000000FF0000FF00007F7F0000000000000000
        00000000000000000000007F7F00FF0000FF0000000000BFBFBFBFBFBF000000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000000000BFBFBFBFBFBF000000FF00007F7F0000000000000000000000
        00000000000000000000000000007F7F00FF0000000000BFBFBFBFBFBF000000
        FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF0000000000BFBFBFBFBFBF000000FF0000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000000000BFBFBFBFBFBF000000
        FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF0000000000BFBFBFBFBFBF000000FF0000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000000000BFBFBFBFBFBF000000
        000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00000000000000BFBFBFBFBFBF000000FF0000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000000000BFBFBFBFBFBF7F7F7F
        0000000000000000000000000000000000000000000000000000000000000000
        000000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
    end
    object btnInc: TBitBtn
      Left = 268
      Top = 83
      Width = 104
      Height = 34
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncClick
      Glyph.Data = {
        1E060000424D1E06000000000000360000002800000018000000150000000100
        180000000000E8050000CA0E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302F60302F7F7F
        7FCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302FFF9790
        FF979000FFFF60302F60302FCF67607F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302FFF
        9790FFC8CFFFC8CFFFC8CF00FFFFFFC8CF60302FCF6760CF6760CF67607F7F7F
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F6030
        2FFF9790FFC8CF00FFFFCFFFFFFFC8CFFFC8CFCFFFFFFFC8CFCF676060302FCF
        6760CF6760CF67607F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        7F7F7FCF6760FFC8CF00FFFFFFC8CFFFC8CF7F7F7F7F7F7FCFFFFFFFC8CFCFFF
        FFFFC8CF60302FFF0000CF6760CF6760CF67607F7F7F7F7F7FBFBFBFBFBFBFBF
        BFBFBFBFBF7F7F7FFF9790FFC8CF00FFFFCFFFFF7F7F7F7F7F7FFFC8CF00FFFF
        FFC8CF00FFFFFFC8CFCFFFFFCF67600000FFFF0000FF00007F7F7F7F7F7F7F7F
        7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF00FFFFFFC8CFFFC8CF7F7F7FFFC8CFCF
        FFFFFFC8CF7F7F7F7F7F7FCFFFFFCFFFFFFFC8CFCFFFFF60302F0000FFFF0000
        CF67607F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFFFFFF
        FFFFFFFF00FFFF7F7F7F7F7F7FCFFFFFCFFFFFCFFFFFFFC8CFCFFFFFFFC8CFCF
        6760FF97900000FFFF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFFFC8CFFFFFFFFFFFFF1F201F7F7F7FCFFFFFCFFFFF7F7F7F7F7F7FCFFF
        FFFFC8CFCFFFFFFFC8CF60302FFFC8CF0000FFFF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFFFC8CFCF6760CF67601F201F7F7F7F7F7F7F
        CFFFFFCFFFFFFFC8CFCFFFFFFFC8CFCFFFFFCF6760CFFFFFFF97900000FFFF00
        00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FFC8CFFF9790CF
        67601F201F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFC8CFFFFFFF60302F
        CFFFFFFF97900000FFCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FFC8
        CFFFC8CFFF9790FF9790CF67601F201F7F7F7FCFFFFFFFFFFFCFFFFFFFFFFFCF
        FFFFFFC8CFCF6760FFFFFFFFFFFFFF00000000FFCF6760BFBFBFBFBFBFBFBFBF
        CF6760FFC8CFFFC8CFFFC8CFFF9790FF9790FF9790CF67601F201F7F7F7FFFFF
        FFFFFFFFFFFFFFFFC8CFCFFFFFFFC8CFFFFFFFFFFFFFFFFFFFCF6760CF6760BF
        BFBFBFBFBFCF6760FFC8CFFFFFFFFFC8CFFFC8CFFF9790CF6760CF6760CF6760
        CF67601F201F7F7F7FFFFFFF3F3700CFFFFFCF6760FFFFFF0000FF0000FF0000
        FFCF6760BFBFBFBFBFBFBFBFBF60302F60302F60302FFFC8CFFFC8CFFF9790CF
        67601F201F1F201F1F201F1F201F1F201FFFFFFFFFFFFFFFC8CFFFFFFFFFFFFF
        FFFFFFFFC8CFCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFC8
        CFFFC8CFFF9790CF67601F201F60302F60302F60302F60302FFFC8CFFFC8CFFF
        FFFFFF0000FF0000CF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        FF9790FFC8CFFFC8CFFFFFFFFF9790CF67601F201F60302F0000FF0000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFCF6760FFFFFFFFFFFFFFC8CFFF9790CF67601F201F60302F
        BFBFBFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FF9790FF9790FF9790FF9790CF
        67601F201F60302FBFBFBFBFBFBFFF0000FF0000BFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760CF6760CF67
        60CF6760CF67601F201F60302F7F7F7FFFC8CFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBF}
    end
    object btnCan: TBitBtn
      Left = 395
      Top = 82
      Width = 103
      Height = 34
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCanClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BD
        C3D99497BC6469AE4C55A447519F4E5599656D99656F857D808EC0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0D0E9666BC72A2EB5040DAE0E24C4182ACB1322C60819C80213B509149F37
        3C9D4444846B678BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0A9BBE23F5AB41627BC202CE12333F61734F21332ED1935F01931
        FC1832F3172FDB1823B92426A4333191636790C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0B8BDE8344CB01134D11533F21830F8182CF4102FED
        0E32EB0C30E8102BF31232F01138E81D35EC222CE11115B42837875B6E87C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C02F3ED01431E60C30F2162DF617
        27EF1E2DEB2F45DA3D50D44350D6293BE50D2FE10B39ED0230ED1034F41B37EE
        091FAB25358A5B6183C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07B83E31323E3102C
        FD0B2FF51933D75364DCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C06A7FED1D39E90F
        31F80F30F61030ED1732E31223A6353E86C0C0C0C0C0C0C0C0C0C0C0C0B4BAF5
        353CDA1428FA112BFC0623DC859CF5C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0A2ADF32E36EB1423F3182EF71734F40F2AF5172CD323339965717BC0C0C0C0
        C0C0C0C0C0626EE10F2AE61031F4152BD47E86F6C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C07F87E52834D2212EEF1E29F4212FF41629EE142EFF1A32F00815
        A0676697C0C0C0C0C0C0D5D5F73243D50A2BEF1233EE2E3FC8C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0949AE30F23C51A35F10E2CEF1F33E82E41E82339E6
        0E2FF9152FF41C28CC524F9BC0C0C0C0C0C0AFB5F3162DCB1033F9142DE6505F
        CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C08E9CE71F2FC81231F6092BF60B2DE72C
        44CE91A6FF3D55D6092DEC0F2FF71C2EE2272684C0C0C0C0C0C08297F7172FDC
        1931FA1421DA6478D7C0C0C0C0C0C0C0C0C0C0C0C07187DE0924C60F2EF4122C
        FB1A27EA4146D6C0C0C0C0C0C07985DE0D2DE40E2DFA1E34EE1A2480C0C0C0C0
        C0C0637DF61B32DF1A2BF61B25E4525EC9C0C0C0C0C0C0C0C0C0939FE41022C3
        1533F0092DF4162BE24B58DBC0C0C0C0C0C0C0C0C07F8BDE0D2BE2112DFC2031
        EE22277FC0C0C0C0C0C07B94F51428D42030FE1120E7353CBEC0C0C0C0C0C09A
        9DE52533C21B2DF0162FF70F2EE93B4CD0C0C0C0C0C0C0C0C0C0C0C0C07E8EE4
        0B2BE01429FB2A32F2434493C0C0C0C0C0C09CACF61E34D30E2CF4122FFC000F
        A88798DF8C90EC1D2BCB122EE71936FB1626E53C42D3C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0424ECF1030E61B2EF92424DE7576B5C0C0C0C0C0C0CDD9F3253DCA
        0B2CF80B32F9082BD5142FC6222FDE1C2BEE162FFC0D2BDC4A5BDAC0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0939CF72734E9102EF01D2EEF292BCB9EA4C9C0C0C0C0
        C0C0C0C0C05C6DE50C28EF0331F00933EE112EED1D2CF71A29FE1124F13853DE
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C03444D11326F8162FFD1C2BD84C52
        C8C0C0C0C0C0C0C0C0C0C0C0C0B2B2EF292DD81235F30F2FF6172CF7202CFA1B
        2AF5162CDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C08A90F10E1EBF1331E40E34F3
        182AEC4353C9B0BEDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C07B80E60E24DA132D
        F5132DF5182FF1152EEE041CCF132C9C4554B86066CE4252BC2030B51B27CB15
        30EC1234F70C2FE9293DCC8F9AE3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C03F4EE11126DB1534F30B31E91434F5152CEF1C33D6212ED51C21D61727
        DD1D2EEE2032FB0D2CF30E2EEC0A25CB7C8AE2C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0677CDA1C32D71533EE112BF2152CF70F2CF2
        182DF61F2CFA1A2EFA1E2FF61623E8232AEB3A49D3889CE3C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A8AEF14758D51F
        35CA1831DD0E29EC1830EF172DE4142CE1172CD03443CF7D88E7B7C0F6C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0B3C8F1718CF55A6DFB3851FA4161F86481F98CA4F3BDD2F4C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    end
    object BitBtn7: TBitBtn
      Left = 596
      Top = 81
      Width = 102
      Height = 35
      Caption = 'Imprimir'
      TabOrder = 3
      OnClick = BitBtn7Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00101
        01000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000070707BFBF
        BF9898989E9E9E000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000050505D0D0D0B4B4B4B8B8
        B89F9F9FA2A2A29B9B9B989898020202000000C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0060606020202DBDBDBC8C8C8CDCDCDC5C5C58585
        85000000000000A4A4A4A2A2A2929292868686050505000000C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0050505000000E3E3E3D8D8D8D5D5D5BCBCBC888888888888BEBE
        BE9B9B9BA8A8A80000000101019B9B9B9696969C9C9C808080000000010101C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        030303000000EDEDEDE1E1E1E3E3E3C5C5C5848484898989BFBFBF979797DBDB
        DBA0A0A094949498989895959502020200000093939398989889898978787800
        0000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
        FAFAFAF2F2F2EBEBEBC1C1C1838383878787CECECECCCCCCC4C4C49A9A9AD4D4
        D4A3A3A398989896969695959597979788888800000002020285858584848489
        8989777777060606000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0989898
        F5F5F5BFBFBF818181848484DBDBDBCBCBCBCBCBCBCFCFCFB6B6B6969696DDDD
        DD9F9F9F9D9D9D9D9D9D9999998585859797978282829C9C9C00000003030384
        84847676767474747A7A7A090909C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09B9B9B
        808080888888DCDCDCD9D9D9CCCCCCCBCBCBD0D0D0CACACACFCFCF9D9D9DD3D3
        D3939393A2A2A29696969898989292928585859797978B8B8B82828277777702
        0202030303757575777777000000C0C0C0C0C0C0C0C0C0C0C0C0969696939393
        EBEBEB9B9B9BD4D4D4D3D3D3DCDCDCD8D8D8C9C9C9CBCBCBCACACA999999D5D5
        D5A0A0A0959595A1A1A19696968484849B9B9B8383838080807E7E7E86868672
        7272777777000000010101000000C0C0C0C0C0C0C0C0C0C0C0C0999999F8F8F8
        EDEDEDA0A0A0D2D2D2D8D8D8D3D3D3D6D6D6D6D6D6CACACAD4D4D4999999F5F5
        F59C9C9CA6A6A69393938282829898988888888787877878788787877373738E
        8E8E797979767676737373020202010101C0C0C0C0C0C0C0C0C08F8F8FFFFFFF
        E7E7E7929292E6E6E6D5D5D5D9D9D9D9D9D9CCCCCCCFCFCFF2F2F29A9A9A8A8A
        8ABCBCBCB9B9B98787879A9A9A7F7F7F86868681818190909074747488888871
        71716D6D6D7F7F7F7676765F5F5F040404C0C0C0C0C0C0C0C0C09E9E9EFAFAFA
        ECECEC949494D3D3D3DBDBDBCECECECACACAF8F8F8FBFBFBBCBCBCC1C1C1C8C8
        C87F7F7F838383C2C2C2C4C4C48383838C8C8C8A8A8A6B6B6B8B8B8B79797978
        78787B7B7B7575756A6A6A6C6C6C000000C0C0C0C0C0C0C0C0C0999796F6F6F6
        E7E6E89FA1A2C5CAC8CAD2CBF0F8F1F3FAF7B9BCC4BCBEC8C8C9D3CBCED3C9CB
        CBC8C9C7C7C4C6838284818286C1C3C4BEBDBF77777789878777787675767475
        7777767676666567727173686567050303C0C0C0C0C0C0C0C0C09C9994FBF9F8
        E8E7F0979BA0EDFDF2E8FFE9B0CAB3AEC6BCBFCADE3B405F3A3E5BC3C7DAD3D7
        D87576728B858AC1BEC7BDBFC96D737A848589C5C3C3B4B0AF7877737B7F7A6F
        747263656676777B6763686660650E090BC0C0C0C0C0C0C0C0C09C9994FCFAFA
        F1F0FA8B9196788A7DB2CCB4B6D5BA7E998F616F85B8C0E59CA0C37B7E93767A
        7BD9DAD6D2CCD1C0B8C2BEBDC6BDBDC3020001868182797672C0BFBBB9BDB877
        7C7A797D7E6364686D676C6C6769040000C0C0C0C0C0C0C0C0C09B97969D9B9B
        F1F1F7DFE4E7B4C2B77A8D7C6C8270AEC3BBA3B0C079809B787C95DADDECD9DB
        DCD1D0CCD1CCCBD8CDCF0F03030B0000B7AFAFBAB6B5060705838886808583BB
        C0BFAAACAC666666666464686666050302C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        9E9D9F909292F4FCF5CFDDD2B9C8C07684827D868F626A77C0C3D1DADBE5D5D4
        D6DFDCD80B07020D0100C8AEA8FDE3DDF1E1DBB7B2AF000100BCC2C1C1C7C67F
        8483898B8BC0C1BFB7B5B4676662020000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0969A958C918FF8FEFDD2DADAB9BEBF838889777B7C8281830200
        01040000B2B0A6EDDDD0FFDED0572D20442B21E6DCD5CBCCCA000100787D7EBC
        C1C0ACADAB8B8A86848680C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0939399999A9EF7FBF6D6DBD2B6B7B3918F8E7671
        72BCB8B7EFEDE34030205C311EFFE4D2FFE8D9F6E7DEE5E2DD0002007D828182
        84848C8D8BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09A9A949A9C90FFFFF8D5D2CDC7C2
        C3888384E1DFD7F7E8D8FFDCC7FFFBE54D2917472F23F1E6DEC0BBB8060403C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09A998F9F9C97FAF5
        F78A8789E9E6E2F0E4D85E3925532710FFF0DEFFEADBFFECE1FDF0E8C8BFBB05
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09D9A
        9C9C9B9F848183F7ECE8FFECDCFFE9D5FFF7E55332224B2E20FFEEE3F5E5DECC
        C3C0050303C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C089878DF0EAEBFFF7EB4C33234B2D1CFFF3E3FFF8EAFFF4E6FFF1E9FD
        F2EEC1BFBF000006C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0878388FFFEF7FFFAEEFFF5E9FFFFF2FFEFE14E2E21463129F9
        EEEAF6F4F4B6B6BC04060E000006C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C083827EFCF6EFFFFBF2452C22492B20FFFAF0FFF8F1FF
        F6F2F9F7F7EEEFF38083887F8287C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C08B8884FFF6F4FFF9F6FFF4EFFFFDF8FFF4EEFF
        F9F4878584888A8AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0847F80FDF7F8FFFAFAFAF2F29089868D
        8885C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07C7F847F828784878BC0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    end
    object btnAsoSair: TBitBtn
      Left = 706
      Top = 83
      Width = 103
      Height = 33
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnAsoSairClick
      Glyph.Data = {
        E60C0000424DE60C0000000000003600000028000000250000001D0000000100
        180000000000B00C0000120B0000120B00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF9F60606F3030BFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F60609F6060A06060A06060
        6F3030BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F60609F60
        60A06060B06060C06060CF6060B060606F3030BFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F60609F6060AF6F6FC06F6FCF6F6FCF6F6FCF606FCF606FB06060
        6F3030AF60609F60609F60609F60609F60609F60609F60609F60609F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060D06F70D06F70D06F
        6FD06F6FD06F6FD06F6FD06F6FB0606F6F3030FFA0A0FFAFAFFFAFB0FFB0B0FF
        BFBFFFC0C0FFC0C0FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060DF7070DF7070D07070D07070D06F70D06F6FD06F6FB06F6F
        6F30305FB06030CF6030CF6030CF6030CF6030CF6030CF60FFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060DF7070DF7070DF70
        70DF7070DF7070D07070D07070BF6F6F6F30305FB06030CF6030CF6030CF6030
        CF6030CF6030CF60FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060DF7F7FDF7F7FDF7F7FDF707FDF7070DF7070DF7070BF6F6F
        6F30305FB06030CF6030CF6030CF6030CF6030CF6030CF60FFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060E07F7FE07F7FE07F
        7FE07F7FDF7F7FDF7F7FDF707FBF6F6F6F30305FB06030CF6030CF6030CF6030
        CF6030CF6030CF60FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060E08080E07F80E07F7FE07F7FE07F7FE07F7FE07F7FBF7070
        6F30305FB06030CF6030CF6030CF6030CF6030CF6030CF60FFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060EF8080EF8080E080
        80E08080E0808FEFA0A0E07F7FBF70706F303070BF7030CF6030CF6030CF6030
        CF6030CF6030CF60FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060EF808FEF8080EF8080EF8080F0BFBFFFFFFFF0B0B0C07070
        6F3030F0DFC0C0F0BF7FDF907FDF9060D08060D08060D080FFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060F08F8FEF8F8FEF8F
        8FEF808FF0BFBFFFFFFFF0AFAFC070706F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
        FFDFE0FFCFE0FFCFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060F08F8FF08F8FF08F8FF08F8FEF8F8FF0A0A0EF808FC07070
        6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060F09090F09090F08F
        90F08F8FF08F8FF08F8FF08F8FC07F7F6F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
        FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060FF9090FF9090FF9090F09090F09090F08F90F08F8FC07F7F
        6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060FF909FFF9090FF90
        90FF9090FF9090FF9090F09090CF7F7F6F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
        FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060FF9F9FFF9F9FFF9F9FFF909FFF909FFF9090FF9090CF7F7F
        6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060FF9F9FFF9F9FFF9F
        9FFF9F9FFF9F9FFF9F9FFF9F9FCF7F7F6F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
        FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060FF9090FF9F9FFF9F9FFF9F9FFF9F9FFF9F9FFF9F9FCF8080
        6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F60609F6060C07F7FDF8F
        8FFF9F9FFF9F9FFF9F9FFF9F9FCF80806F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
        FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBF9F60609F6060A06F6FC07F7FF09090FF9F9FCF8080
        6F3030A060609F60609F60609F60609F60609F60609F60609F60609F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF9F60609F6060AF7070B070706F3030BFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060
        6F3030BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00}
    end
    object JvDBGrid1: TJvDBGrid
      Left = 6
      Top = 2
      Width = 801
      Height = 76
      DataSource = dsBuscaGuia
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = JvDBGrid1CellClick
      OnDblClick = JvDBGrid1DblClick
      OnKeyDown = JvDBGrid1KeyDown
      OnKeyUp = JvDBGrid1KeyUp
      AlternateRowColor = clInfoBk
      AutoSizeColumns = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_GUIAS'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FUNCIONARIO'
          Width = 339
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Width = 211
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_EMISSAO'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_ATENDIMENTO'
          Width = 86
          Visible = True
        end>
    end
    object BitBtn8: TBitBtn
      Left = 56
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Limpar'
      TabOrder = 6
      Visible = False
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 112
      Top = 88
      Width = 73
      Height = 25
      Caption = 'Editar ASO'
      TabOrder = 7
      Visible = False
      OnClick = BitBtn9Click
    end
    object BitBtn11: TBitBtn
      Left = 8
      Top = 88
      Width = 75
      Height = 25
      Caption = 'so checks'
      TabOrder = 8
      Visible = False
      OnClick = BitBtn11Click
    end
    object btnExc: TBitBtn
      Left = 395
      Top = 83
      Width = 103
      Height = 34
      Caption = 'Excluir'
      Enabled = False
      TabOrder = 9
      OnClick = btnExcClick
      Glyph.Data = {
        1E070000424D1E070000000000003600000028000000160000001A0000000100
        180000000000E8060000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBF7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBF0000000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF00000000FF00007F00007F0000000000007F7F7F7F7F7F7F7F7FBFBF
        BFBFBFBFBFBFBFBFBFBF0000FF0000007F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBF
        BFBFBFBFBFBFBFBF00000000FF00007F00007F00007F0000007F7F7F7F7F7F7F
        7F7F7F7F7FBFBFBFBFBFBF0000FF00007F0000000000007F7F7F7F7F7F7F7F7F
        7F7F7FBFBFBFBFBFBFBFBFBF00000000FF00007F00007F00007F000000000000
        7F7F7F7F7F7F7F7F7F7F7F7FBFBFBF0000FF00007F00007F0000000000007F7F
        7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF00000000FF00007F00007F00007F0000
        7F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F00007F00007F00007F00
        00000000007F7F7F7F7F7FBFBFBFBFBFBFBFBFBF00000000FF0000FF00007F00
        007F00007F00007F0000000000007F7F7F0000FF00007F00007F00007F00007F
        00007F00007F000000000000BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBF0000FF
        00007F00007F00007F00007F00007F00000000000000007F00007F00007F0000
        7F00007F00007F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BF0000FF0000FF00007F00007F00007F00007F00007F00007F00007F00007F00
        007F00007F00007F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBF0000FF0000FF00007F00007F00007F00007F00007F00007F
        00007F00007F00007F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBFBFBFBF0000FF0000FF00007F00007F00007F0000
        7F00007F00007F00007F00007F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF00007F00
        007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF
        00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F
        7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF0000FF00007F00007F00007F00007F00007F00007F0000000000007F7F7F7F
        7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF0000FF00007F00007F00007F00007F00007F00007F00007F000000
        0000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBF0000FF00007F00007F00007F00007F00007F00007F00007F0000
        7F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBF0000FF00007F00007F00007F00007F0000FF0000FF00
        007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBF0000FF00007F00007F00007F00007F0000007F7F7F
        0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F7F7F
        7FBFBFBF0000BFBFBFBFBFBFBFBFBF0000FF00007F00007F00007F0000007F7F
        7FBFBFBFBFBFBF0000FF0000FF00007F00007F00007F0000000000007F7F7F7F
        7F7F7F7F7F7F7F7F0000BFBFBFBFBFBF0000FF00007F00007F00007F00007F00
        00007F7F7FBFBFBFBFBFBFBFBFBF0000FF0000FF00007F00007F00007F000000
        0000007F7F7F7F7F7F7F7F7F0000BFBFBFBFBFBF0000FF00007F00007F00007F
        0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF00007F0000
        7F00007F0000000000007F7F7FBFBFBF0000BFBFBF0000FF0000FF0000FF0000
        7F00007F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF00
        00FF00007F00007F00007F000000BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF00
        00FF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBF0000FF0000FF00007F00007FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        0000}
    end
    object btnATUA: TBitBtn
      Left = 208
      Top = 88
      Width = 41
      Height = 25
      Caption = 'btnATUA'
      TabOrder = 10
      Visible = False
      OnClick = btnATUAClick
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 568
  end
  inherited DtSrc: TDataSource
    DataSet = DMSaude.cdsDependente
    Left = 512
  end
  inherited XPMenu1: TXPMenu
    Left = 432
    Top = 8
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
    Left = 712
    Top = 12
  end
  object Hist_Dependente: TUCHist_DataSet
    DataSet = DMSaude.cdsDependente
    ControlHistorico = fClientePlano.HistoricoTitular
    Left = 224
    Top = 22
  end
  object cdsBuscaGuia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pNum'
        ParamType = ptInput
      end>
    ProviderName = 'dspBuscaGuia'
    Left = 149
    Top = 522
    object cdsBuscaGuiaID_GUIAS: TIntegerField
      FieldName = 'ID_GUIAS'
      Required = True
    end
    object cdsBuscaGuiaNUMERO_GUIA: TStringField
      FieldName = 'NUMERO_GUIA'
    end
    object cdsBuscaGuiaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 70
    end
    object cdsBuscaGuiaNOME_EMPRESA: TStringField
      FieldName = 'NOME_EMPRESA'
      Size = 70
    end
    object cdsBuscaGuiaNOME_EXECUTANTE: TStringField
      FieldName = 'NOME_EXECUTANTE'
      Size = 100
    end
    object cdsBuscaGuiaSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Size = 7
    end
    object cdsBuscaGuiaNUMERO_PROFISSIONAL: TStringField
      FieldName = 'NUMERO_PROFISSIONAL'
      Size = 15
    end
    object cdsBuscaGuiaSIGLA_UNIDADE: TStringField
      FieldName = 'SIGLA_UNIDADE'
      Size = 2
    end
    object cdsBuscaGuiaCODIGO_ESPECIALIDADE: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE'
      Size = 5
    end
    object cdsBuscaGuiaCODIGO_CID10_1: TStringField
      FieldName = 'CODIGO_CID10_1'
      Size = 5
    end
    object cdsBuscaGuiaCODIGO_CID10_2: TStringField
      FieldName = 'CODIGO_CID10_2'
      Size = 5
    end
    object cdsBuscaGuiaCODIGO_CID10_3: TStringField
      FieldName = 'CODIGO_CID10_3'
      Size = 5
    end
    object cdsBuscaGuiaCODIGO_CID10_4: TStringField
      FieldName = 'CODIGO_CID10_4'
      Size = 5
    end
    object cdsBuscaGuiaDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaGRAU_RISCO: TStringField
      FieldName = 'GRAU_RISCO'
      Size = 2
    end
    object cdsBuscaGuiaTIPO_CONSULTA: TStringField
      FieldName = 'TIPO_CONSULTA'
      Size = 1
    end
    object cdsBuscaGuiaAPTO: TIntegerField
      FieldName = 'APTO'
    end
    object cdsBuscaGuiaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 240
    end
    object cdsBuscaGuiaTIPO_GUIA: TStringField
      FieldName = 'TIPO_GUIA'
    end
    object cdsBuscaGuiaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsBuscaGuiaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaRG: TStringField
      FieldName = 'RG'
      Size = 24
    end
    object cdsBuscaGuiaCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsBuscaGuiaCARGO: TStringField
      FieldName = 'CARGO'
      Size = 60
    end
    object cdsBuscaGuiaFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
    object cdsBuscaGuiaPIS: TStringField
      FieldName = 'PIS'
    end
    object cdsBuscaGuiaDATA1: TDateField
      FieldName = 'DATA1'
    end
    object cdsBuscaGuiaCK1: TStringField
      FieldName = 'CK1'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME1: TStringField
      FieldName = 'EXAME1'
      Size = 60
    end
    object cdsBuscaGuiaCKA1: TStringField
      FieldName = 'CKA1'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO1: TStringField
      FieldName = 'ALTERADO1'
      Size = 60
    end
    object cdsBuscaGuiaDATA2: TDateField
      FieldName = 'DATA2'
    end
    object cdsBuscaGuiaCK2: TStringField
      FieldName = 'CK2'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME2: TStringField
      FieldName = 'EXAME2'
      Size = 60
    end
    object cdsBuscaGuiaCKA2: TStringField
      FieldName = 'CKA2'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO2: TStringField
      FieldName = 'ALTERADO2'
      Size = 60
    end
    object cdsBuscaGuiaDATA3: TDateField
      FieldName = 'DATA3'
    end
    object cdsBuscaGuiaCK3: TStringField
      FieldName = 'CK3'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME3: TStringField
      FieldName = 'EXAME3'
      Size = 60
    end
    object cdsBuscaGuiaCKA3: TStringField
      FieldName = 'CKA3'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO3: TStringField
      FieldName = 'ALTERADO3'
      Size = 60
    end
    object cdsBuscaGuiaDATA4: TDateField
      FieldName = 'DATA4'
    end
    object cdsBuscaGuiaCK4: TStringField
      FieldName = 'CK4'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME4: TStringField
      FieldName = 'EXAME4'
      Size = 60
    end
    object cdsBuscaGuiaCKA4: TStringField
      FieldName = 'CKA4'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO4: TStringField
      FieldName = 'ALTERADO4'
      Size = 60
    end
    object cdsBuscaGuiaDATA5: TDateField
      FieldName = 'DATA5'
    end
    object cdsBuscaGuiaCK5: TStringField
      FieldName = 'CK5'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME5: TStringField
      FieldName = 'EXAME5'
      Size = 60
    end
    object cdsBuscaGuiaCKA5: TStringField
      FieldName = 'CKA5'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO5: TStringField
      FieldName = 'ALTERADO5'
      Size = 60
    end
    object cdsBuscaGuiaDATA6: TDateField
      FieldName = 'DATA6'
    end
    object cdsBuscaGuiaCK6: TStringField
      FieldName = 'CK6'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME6: TStringField
      FieldName = 'EXAME6'
      Size = 60
    end
    object cdsBuscaGuiaCKA6: TStringField
      FieldName = 'CKA6'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO6: TStringField
      FieldName = 'ALTERADO6'
      Size = 60
    end
    object cdsBuscaGuiaDATA7: TDateField
      FieldName = 'DATA7'
    end
    object cdsBuscaGuiaCK7: TStringField
      FieldName = 'CK7'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME7: TStringField
      FieldName = 'EXAME7'
      Size = 60
    end
    object cdsBuscaGuiaCKA7: TStringField
      FieldName = 'CKA7'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO7: TStringField
      FieldName = 'ALTERADO7'
      Size = 60
    end
    object cdsBuscaGuiaDATA8: TDateField
      FieldName = 'DATA8'
    end
    object cdsBuscaGuiaCK8: TStringField
      FieldName = 'CK8'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME8: TStringField
      FieldName = 'EXAME8'
      Size = 60
    end
    object cdsBuscaGuiaCKA8: TStringField
      FieldName = 'CKA8'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO8: TStringField
      FieldName = 'ALTERADO8'
      Size = 60
    end
    object cdsBuscaGuiaDATA9: TDateField
      FieldName = 'DATA9'
    end
    object cdsBuscaGuiaCK9: TStringField
      FieldName = 'CK9'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME9: TStringField
      FieldName = 'EXAME9'
      Size = 60
    end
    object cdsBuscaGuiaCKA9: TStringField
      FieldName = 'CKA9'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO9: TStringField
      FieldName = 'ALTERADO9'
      Size = 60
    end
    object cdsBuscaGuiaDATA10: TDateField
      FieldName = 'DATA10'
    end
    object cdsBuscaGuiaCK10: TStringField
      FieldName = 'CK10'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME10: TStringField
      FieldName = 'EXAME10'
      Size = 60
    end
    object cdsBuscaGuiaCKA10: TStringField
      FieldName = 'CKA10'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO10: TStringField
      FieldName = 'ALTERADO10'
      Size = 60
    end
    object cdsBuscaGuiaDATA11: TDateField
      FieldName = 'DATA11'
    end
    object cdsBuscaGuiaCK11: TStringField
      FieldName = 'CK11'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME11: TStringField
      FieldName = 'EXAME11'
      Size = 60
    end
    object cdsBuscaGuiaCKA11: TStringField
      FieldName = 'CKA11'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO11: TStringField
      FieldName = 'ALTERADO11'
      Size = 60
    end
    object cdsBuscaGuiaDATA12: TDateField
      FieldName = 'DATA12'
    end
    object cdsBuscaGuiaCK12: TStringField
      FieldName = 'CK12'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME12: TStringField
      FieldName = 'EXAME12'
      Size = 60
    end
    object cdsBuscaGuiaCKA12: TStringField
      FieldName = 'CKA12'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO12: TStringField
      FieldName = 'ALTERADO12'
      Size = 60
    end
    object cdsBuscaGuiaDATA13: TDateField
      FieldName = 'DATA13'
    end
    object cdsBuscaGuiaCK13: TStringField
      FieldName = 'CK13'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME13: TStringField
      FieldName = 'EXAME13'
      Size = 60
    end
    object cdsBuscaGuiaCKA13: TStringField
      FieldName = 'CKA13'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO13: TStringField
      FieldName = 'ALTERADO13'
      Size = 60
    end
    object cdsBuscaGuiaDATA14: TDateField
      FieldName = 'DATA14'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK14: TStringField
      FieldName = 'CK14'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME14: TStringField
      FieldName = 'EXAME14'
      Size = 60
    end
    object cdsBuscaGuiaCKA14: TStringField
      FieldName = 'CKA14'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO14: TStringField
      FieldName = 'ALTERADO14'
      Size = 60
    end
    object cdsBuscaGuiaDATA15: TDateField
      FieldName = 'DATA15'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK15: TStringField
      FieldName = 'CK15'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME15: TStringField
      FieldName = 'EXAME15'
      Size = 60
    end
    object cdsBuscaGuiaCKA15: TStringField
      FieldName = 'CKA15'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO15: TStringField
      FieldName = 'ALTERADO15'
      Size = 60
    end
    object cdsBuscaGuiaDATA16: TDateField
      FieldName = 'DATA16'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK16: TStringField
      FieldName = 'CK16'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME16: TStringField
      FieldName = 'EXAME16'
      Size = 60
    end
    object cdsBuscaGuiaCKA16: TStringField
      FieldName = 'CKA16'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO16: TStringField
      FieldName = 'ALTERADO16'
      Size = 60
    end
    object cdsBuscaGuiaDATA17: TDateField
      FieldName = 'DATA17'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK17: TStringField
      FieldName = 'CK17'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME17: TStringField
      FieldName = 'EXAME17'
      Size = 60
    end
    object cdsBuscaGuiaCKA17: TStringField
      FieldName = 'CKA17'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO17: TStringField
      FieldName = 'ALTERADO17'
      Size = 60
    end
    object cdsBuscaGuiaDATA18: TDateField
      FieldName = 'DATA18'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK18: TStringField
      FieldName = 'CK18'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME18: TStringField
      FieldName = 'EXAME18'
      Size = 60
    end
    object cdsBuscaGuiaCKA18: TStringField
      FieldName = 'CKA18'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO18: TStringField
      FieldName = 'ALTERADO18'
      Size = 60
    end
    object cdsBuscaGuiaDATA19: TDateField
      FieldName = 'DATA19'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK19: TStringField
      FieldName = 'CK19'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME19: TStringField
      FieldName = 'EXAME19'
      Size = 60
    end
    object cdsBuscaGuiaCKA19: TStringField
      FieldName = 'CKA19'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO19: TStringField
      FieldName = 'ALTERADO19'
      Size = 60
    end
    object cdsBuscaGuiaDATA20: TDateField
      FieldName = 'DATA20'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK20: TStringField
      FieldName = 'CK20'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME20: TStringField
      FieldName = 'EXAME20'
      Size = 60
    end
    object cdsBuscaGuiaCKA20: TStringField
      FieldName = 'CKA20'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO20: TStringField
      FieldName = 'ALTERADO20'
      Size = 60
    end
    object cdsBuscaGuiaDATA21: TDateField
      FieldName = 'DATA21'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK21: TStringField
      FieldName = 'CK21'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME21: TStringField
      FieldName = 'EXAME21'
      Size = 60
    end
    object cdsBuscaGuiaCKA21: TStringField
      FieldName = 'CKA21'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO21: TStringField
      FieldName = 'ALTERADO21'
      Size = 60
    end
    object cdsBuscaGuiaDATA22: TDateField
      FieldName = 'DATA22'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK22: TStringField
      FieldName = 'CK22'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME22: TStringField
      FieldName = 'EXAME22'
      Size = 60
    end
    object cdsBuscaGuiaCKA22: TStringField
      FieldName = 'CKA22'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO22: TStringField
      FieldName = 'ALTERADO22'
      Size = 60
    end
    object cdsBuscaGuiaDATA23: TDateField
      FieldName = 'DATA23'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK23: TStringField
      FieldName = 'CK23'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME23: TStringField
      FieldName = 'EXAME23'
      Size = 60
    end
    object cdsBuscaGuiaCKA23: TStringField
      FieldName = 'CKA23'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO23: TStringField
      FieldName = 'ALTERADO23'
      Size = 60
    end
    object cdsBuscaGuiaDATA24: TDateField
      FieldName = 'DATA24'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK24: TStringField
      FieldName = 'CK24'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME24: TStringField
      FieldName = 'EXAME24'
      Size = 60
    end
    object cdsBuscaGuiaCKA24: TStringField
      FieldName = 'CKA24'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO24: TStringField
      FieldName = 'ALTERADO24'
      Size = 60
    end
    object cdsBuscaGuiaDATA25: TDateField
      FieldName = 'DATA25'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK25: TStringField
      FieldName = 'CK25'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME25: TStringField
      FieldName = 'EXAME25'
      Size = 60
    end
    object cdsBuscaGuiaCKA25: TStringField
      FieldName = 'CKA25'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO25: TStringField
      FieldName = 'ALTERADO25'
      Size = 60
    end
    object cdsBuscaGuiaDATA26: TDateField
      FieldName = 'DATA26'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK26: TStringField
      FieldName = 'CK26'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME26: TStringField
      FieldName = 'EXAME26'
      Size = 60
    end
    object cdsBuscaGuiaCKA26: TStringField
      FieldName = 'CKA26'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO26: TStringField
      FieldName = 'ALTERADO26'
      Size = 60
    end
    object cdsBuscaGuiaDATA27: TDateField
      FieldName = 'DATA27'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK27: TStringField
      FieldName = 'CK27'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME27: TStringField
      FieldName = 'EXAME27'
      Size = 60
    end
    object cdsBuscaGuiaCKA27: TStringField
      FieldName = 'CKA27'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO27: TStringField
      FieldName = 'ALTERADO27'
      Size = 60
    end
    object cdsBuscaGuiaDATA28: TDateField
      FieldName = 'DATA28'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK28: TStringField
      FieldName = 'CK28'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME28: TStringField
      FieldName = 'EXAME28'
      Size = 60
    end
    object cdsBuscaGuiaCKA28: TStringField
      FieldName = 'CKA28'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO28: TStringField
      FieldName = 'ALTERADO28'
      Size = 60
    end
    object cdsBuscaGuiaDATA29: TDateField
      FieldName = 'DATA29'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK29: TStringField
      FieldName = 'CK29'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME29: TStringField
      FieldName = 'EXAME29'
      Size = 60
    end
    object cdsBuscaGuiaCKA29: TStringField
      FieldName = 'CKA29'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO29: TStringField
      FieldName = 'ALTERADO29'
      Size = 60
    end
    object cdsBuscaGuiaDATA30: TDateField
      FieldName = 'DATA30'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK30: TStringField
      FieldName = 'CK30'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME30: TStringField
      FieldName = 'EXAME30'
      Size = 60
    end
    object cdsBuscaGuiaCKA30: TStringField
      FieldName = 'CKA30'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO30: TStringField
      FieldName = 'ALTERADO30'
      Size = 60
    end
    object cdsBuscaGuiaDATA31: TDateField
      FieldName = 'DATA31'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK31: TStringField
      FieldName = 'CK31'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME31: TStringField
      FieldName = 'EXAME31'
      Size = 60
    end
    object cdsBuscaGuiaCKA31: TStringField
      FieldName = 'CKA31'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO31: TStringField
      FieldName = 'ALTERADO31'
      Size = 60
    end
    object cdsBuscaGuiaDATA32: TDateField
      FieldName = 'DATA32'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK32: TStringField
      FieldName = 'CK32'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME32: TStringField
      FieldName = 'EXAME32'
      Size = 60
    end
    object cdsBuscaGuiaCKA32: TStringField
      FieldName = 'CKA32'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO32: TStringField
      FieldName = 'ALTERADO32'
      Size = 60
    end
    object cdsBuscaGuiaDATA33: TDateField
      FieldName = 'DATA33'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK33: TStringField
      FieldName = 'CK33'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME33: TStringField
      FieldName = 'EXAME33'
      Size = 60
    end
    object cdsBuscaGuiaCKA33: TStringField
      FieldName = 'CKA33'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO33: TStringField
      FieldName = 'ALTERADO33'
      Size = 60
    end
    object cdsBuscaGuiaDATA34: TDateField
      FieldName = 'DATA34'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK34: TStringField
      FieldName = 'CK34'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME34: TStringField
      FieldName = 'EXAME34'
      Size = 60
    end
    object cdsBuscaGuiaCKA34: TStringField
      FieldName = 'CKA34'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO34: TStringField
      FieldName = 'ALTERADO34'
      Size = 60
    end
    object cdsBuscaGuiaDATA35: TDateField
      FieldName = 'DATA35'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaCK35: TStringField
      FieldName = 'CK35'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaEXAME35: TStringField
      FieldName = 'EXAME35'
      Size = 60
    end
    object cdsBuscaGuiaCKA35: TStringField
      FieldName = 'CKA35'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALTERADO35: TStringField
      FieldName = 'ALTERADO35'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO1: TStringField
      FieldName = 'CKANEXO1'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO1: TStringField
      FieldName = 'ANEXO1'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO2: TStringField
      FieldName = 'CKANEXO2'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO2: TStringField
      FieldName = 'ANEXO2'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO3: TStringField
      FieldName = 'CKANEXO3'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO3: TStringField
      FieldName = 'ANEXO3'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO4: TStringField
      FieldName = 'CKANEXO4'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO4: TStringField
      FieldName = 'ANEXO4'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO5: TStringField
      FieldName = 'CKANEXO5'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO5: TStringField
      FieldName = 'ANEXO5'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO6: TStringField
      FieldName = 'CKANEXO6'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO6: TStringField
      FieldName = 'ANEXO6'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO7: TStringField
      FieldName = 'CKANEXO7'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO7: TStringField
      FieldName = 'ANEXO7'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO8: TStringField
      FieldName = 'CKANEXO8'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO8: TStringField
      FieldName = 'ANEXO8'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO9: TStringField
      FieldName = 'CKANEXO9'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO9: TStringField
      FieldName = 'ANEXO9'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO10: TStringField
      FieldName = 'CKANEXO10'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO10: TStringField
      FieldName = 'ANEXO10'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO11: TStringField
      FieldName = 'CKANEXO11'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO11: TStringField
      FieldName = 'ANEXO11'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO12: TStringField
      FieldName = 'CKANEXO12'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO12: TStringField
      FieldName = 'ANEXO12'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO13: TStringField
      FieldName = 'CKANEXO13'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO13: TStringField
      FieldName = 'ANEXO13'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO14: TStringField
      FieldName = 'CKANEXO14'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO14: TStringField
      FieldName = 'ANEXO14'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO15: TStringField
      FieldName = 'CKANEXO15'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO15: TStringField
      FieldName = 'ANEXO15'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO16: TStringField
      FieldName = 'CKANEXO16'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO16: TStringField
      FieldName = 'ANEXO16'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO17: TStringField
      FieldName = 'CKANEXO17'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO17: TStringField
      FieldName = 'ANEXO17'
      Size = 60
    end
    object cdsBuscaGuiaCKANEXO18: TStringField
      FieldName = 'CKANEXO18'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANEXO18: TStringField
      FieldName = 'ANEXO18'
      Size = 60
    end
    object cdsBuscaGuiaCKQ: TStringField
      FieldName = 'CKQ'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaQUEIXAP: TStringField
      FieldName = 'QUEIXAP'
      Size = 60
    end
    object cdsBuscaGuiaCKH: TStringField
      FieldName = 'CKH'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaHISTORICOMEDICO: TStringField
      FieldName = 'HISTORICOMEDICO'
      Size = 300
    end
    object cdsBuscaGuiaCKA: TStringField
      FieldName = 'CKA'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaALCOOL: TStringField
      FieldName = 'ALCOOL'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaFUMO: TStringField
      FieldName = 'FUMO'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaCKAF: TStringField
      FieldName = 'CKAF'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANTECEDENTESFAMILIARES: TStringField
      FieldName = 'ANTECEDENTESFAMILIARES'
      Size = 300
    end
    object cdsBuscaGuiaCKC: TStringField
      FieldName = 'CKC'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaCICATRIZES: TStringField
      FieldName = 'CICATRIZES'
      Size = 300
    end
    object cdsBuscaGuiaCKAPE: TStringField
      FieldName = 'CKAPE'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaANTECEDENTESPESSOAIS: TStringField
      FieldName = 'ANTECEDENTESPESSOAIS'
      Size = 300
    end
    object cdsBuscaGuiaCKACI: TStringField
      FieldName = 'CKACI'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaACIDENTES: TStringField
      FieldName = 'ACIDENTES'
      Size = 300
    end
    object cdsBuscaGuiaPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsBuscaGuiaALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsBuscaGuiaIMC: TFloatField
      FieldName = 'IMC'
    end
    object cdsBuscaGuiaPA: TStringField
      FieldName = 'PA'
      Size = 60
    end
    object cdsBuscaGuiaFC: TStringField
      FieldName = 'FC'
      Size = 60
    end
    object cdsBuscaGuiaCKOD: TStringField
      FieldName = 'CKOD'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaCKOE: TStringField
      FieldName = 'CKOE'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaCKAPV: TStringField
      FieldName = 'CKAPV'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaMOLESTIA: TStringField
      FieldName = 'MOLESTIA'
      Size = 60
    end
    object cdsBuscaGuiaCKP: TStringField
      FieldName = 'CKP'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaPELE: TStringField
      FieldName = 'PELE'
      Size = 60
    end
    object cdsBuscaGuiaCKAPA: TStringField
      FieldName = 'CKAPA'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaOUVIDOS: TStringField
      FieldName = 'OUVIDOS'
      Size = 60
    end
    object cdsBuscaGuiaCKCP: TStringField
      FieldName = 'CKCP'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaCABECA: TStringField
      FieldName = 'CABECA'
      Size = 60
    end
    object cdsBuscaGuiaCKABD: TStringField
      FieldName = 'CKABD'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaABDOMEN: TStringField
      FieldName = 'ABDOMEN'
      Size = 300
    end
    object cdsBuscaGuiaCKAP: TStringField
      FieldName = 'CKAP'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaAP: TStringField
      FieldName = 'AP'
      Size = 300
    end
    object cdsBuscaGuiaCKACV: TStringField
      FieldName = 'CKACV'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaAPCARDIO: TStringField
      FieldName = 'APCARDIO'
      Size = 300
    end
    object cdsBuscaGuiaCKAPN: TStringField
      FieldName = 'CKAPN'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaSISTEMANERVOSO: TStringField
      FieldName = 'SISTEMANERVOSO'
      Size = 100
    end
    object cdsBuscaGuiaCKAGU: TStringField
      FieldName = 'CKAGU'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaAPURO: TStringField
      FieldName = 'APURO'
      Size = 100
    end
    object cdsBuscaGuiaCKAOM: TStringField
      FieldName = 'CKAOM'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaAOSTEO: TStringField
      FieldName = 'AOSTEO'
      Size = 100
    end
    object cdsBuscaGuiaOBSFICHA: TStringField
      FieldName = 'OBSFICHA'
      Size = 300
    end
    object cdsBuscaGuiaA: TStringField
      FieldName = 'A'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaI: TStringField
      FieldName = 'I'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaADA: TStringField
      FieldName = 'ADA'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaAIA: TStringField
      FieldName = 'AIA'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaPAIR: TStringField
      FieldName = 'PAIR'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaDANO: TStringField
      FieldName = 'DANO'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaHISTORICOAV: TStringField
      FieldName = 'HISTORICOAV'
      Size = 300
    end
    object cdsBuscaGuiaCONDUTA: TStringField
      FieldName = 'CONDUTA'
      Size = 300
    end
    object cdsBuscaGuiaAFASTAMENTO: TStringField
      FieldName = 'AFASTAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsBuscaGuiaDATAAFASTAMENTO: TDateField
      FieldName = 'DATAAFASTAMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBuscaGuiaDATARETORNO: TDateField
      FieldName = 'DATARETORNO'
    end
    object cdsBuscaGuiaDIASPERDIDOS: TIntegerField
      FieldName = 'DIASPERDIDOS'
    end
  end
  object scdsBuscaGuia: TSQLDataSet
    CommandText = 
      'select * from GUIAS where NUMERO_GUIA  =  :pNum order by  ID_GUI' +
      'AS desc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pNum'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 85
    Top = 522
    object scdsBuscaGuiaID_GUIAS: TIntegerField
      FieldName = 'ID_GUIAS'
      Required = True
    end
    object scdsBuscaGuiaNUMERO_GUIA: TStringField
      FieldName = 'NUMERO_GUIA'
    end
    object scdsBuscaGuiaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object scdsBuscaGuiaNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 70
    end
    object scdsBuscaGuiaNOME_EMPRESA: TStringField
      FieldName = 'NOME_EMPRESA'
      Size = 70
    end
    object scdsBuscaGuiaNOME_EXECUTANTE: TStringField
      FieldName = 'NOME_EXECUTANTE'
      Size = 100
    end
    object scdsBuscaGuiaSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Size = 7
    end
    object scdsBuscaGuiaNUMERO_PROFISSIONAL: TStringField
      FieldName = 'NUMERO_PROFISSIONAL'
      Size = 15
    end
    object scdsBuscaGuiaSIGLA_UNIDADE: TStringField
      FieldName = 'SIGLA_UNIDADE'
      Size = 2
    end
    object scdsBuscaGuiaCODIGO_ESPECIALIDADE: TStringField
      FieldName = 'CODIGO_ESPECIALIDADE'
      Size = 5
    end
    object scdsBuscaGuiaCODIGO_CID10_1: TStringField
      FieldName = 'CODIGO_CID10_1'
      Size = 5
    end
    object scdsBuscaGuiaCODIGO_CID10_2: TStringField
      FieldName = 'CODIGO_CID10_2'
      Size = 5
    end
    object scdsBuscaGuiaCODIGO_CID10_3: TStringField
      FieldName = 'CODIGO_CID10_3'
      Size = 5
    end
    object scdsBuscaGuiaCODIGO_CID10_4: TStringField
      FieldName = 'CODIGO_CID10_4'
      Size = 5
    end
    object scdsBuscaGuiaDATA_ATENDIMENTO: TDateField
      FieldName = 'DATA_ATENDIMENTO'
    end
    object scdsBuscaGuiaGRAU_RISCO: TStringField
      FieldName = 'GRAU_RISCO'
      Size = 2
    end
    object scdsBuscaGuiaTIPO_CONSULTA: TStringField
      FieldName = 'TIPO_CONSULTA'
      Size = 1
    end
    object scdsBuscaGuiaAPTO: TIntegerField
      FieldName = 'APTO'
    end
    object scdsBuscaGuiaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 240
    end
    object scdsBuscaGuiaTIPO_GUIA: TStringField
      FieldName = 'TIPO_GUIA'
    end
    object scdsBuscaGuiaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object scdsBuscaGuiaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaRG: TStringField
      FieldName = 'RG'
      Size = 24
    end
    object scdsBuscaGuiaCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object scdsBuscaGuiaCARGO: TStringField
      FieldName = 'CARGO'
      Size = 60
    end
    object scdsBuscaGuiaFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
    object scdsBuscaGuiaPIS: TStringField
      FieldName = 'PIS'
    end
    object scdsBuscaGuiaDATA1: TDateField
      FieldName = 'DATA1'
    end
    object scdsBuscaGuiaCK1: TStringField
      FieldName = 'CK1'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME1: TStringField
      FieldName = 'EXAME1'
      Size = 60
    end
    object scdsBuscaGuiaCKA1: TStringField
      FieldName = 'CKA1'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO1: TStringField
      FieldName = 'ALTERADO1'
      Size = 60
    end
    object scdsBuscaGuiaDATA2: TDateField
      FieldName = 'DATA2'
    end
    object scdsBuscaGuiaCK2: TStringField
      FieldName = 'CK2'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME2: TStringField
      FieldName = 'EXAME2'
      Size = 60
    end
    object scdsBuscaGuiaCKA2: TStringField
      FieldName = 'CKA2'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO2: TStringField
      FieldName = 'ALTERADO2'
      Size = 60
    end
    object scdsBuscaGuiaDATA3: TDateField
      FieldName = 'DATA3'
    end
    object scdsBuscaGuiaCK3: TStringField
      FieldName = 'CK3'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME3: TStringField
      FieldName = 'EXAME3'
      Size = 60
    end
    object scdsBuscaGuiaCKA3: TStringField
      FieldName = 'CKA3'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO3: TStringField
      FieldName = 'ALTERADO3'
      Size = 60
    end
    object scdsBuscaGuiaDATA4: TDateField
      FieldName = 'DATA4'
    end
    object scdsBuscaGuiaCK4: TStringField
      FieldName = 'CK4'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME4: TStringField
      FieldName = 'EXAME4'
      Size = 60
    end
    object scdsBuscaGuiaCKA4: TStringField
      FieldName = 'CKA4'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO4: TStringField
      FieldName = 'ALTERADO4'
      Size = 60
    end
    object scdsBuscaGuiaDATA5: TDateField
      FieldName = 'DATA5'
    end
    object scdsBuscaGuiaCK5: TStringField
      FieldName = 'CK5'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME5: TStringField
      FieldName = 'EXAME5'
      Size = 60
    end
    object scdsBuscaGuiaCKA5: TStringField
      FieldName = 'CKA5'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO5: TStringField
      FieldName = 'ALTERADO5'
      Size = 60
    end
    object scdsBuscaGuiaDATA6: TDateField
      FieldName = 'DATA6'
    end
    object scdsBuscaGuiaCK6: TStringField
      FieldName = 'CK6'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME6: TStringField
      FieldName = 'EXAME6'
      Size = 60
    end
    object scdsBuscaGuiaCKA6: TStringField
      FieldName = 'CKA6'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO6: TStringField
      FieldName = 'ALTERADO6'
      Size = 60
    end
    object scdsBuscaGuiaDATA7: TDateField
      FieldName = 'DATA7'
    end
    object scdsBuscaGuiaCK7: TStringField
      FieldName = 'CK7'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME7: TStringField
      FieldName = 'EXAME7'
      Size = 60
    end
    object scdsBuscaGuiaCKA7: TStringField
      FieldName = 'CKA7'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO7: TStringField
      FieldName = 'ALTERADO7'
      Size = 60
    end
    object scdsBuscaGuiaDATA8: TDateField
      FieldName = 'DATA8'
    end
    object scdsBuscaGuiaCK8: TStringField
      FieldName = 'CK8'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME8: TStringField
      FieldName = 'EXAME8'
      Size = 60
    end
    object scdsBuscaGuiaCKA8: TStringField
      FieldName = 'CKA8'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO8: TStringField
      FieldName = 'ALTERADO8'
      Size = 60
    end
    object scdsBuscaGuiaDATA9: TDateField
      FieldName = 'DATA9'
    end
    object scdsBuscaGuiaCK9: TStringField
      FieldName = 'CK9'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME9: TStringField
      FieldName = 'EXAME9'
      Size = 60
    end
    object scdsBuscaGuiaCKA9: TStringField
      FieldName = 'CKA9'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO9: TStringField
      FieldName = 'ALTERADO9'
      Size = 60
    end
    object scdsBuscaGuiaDATA10: TDateField
      FieldName = 'DATA10'
    end
    object scdsBuscaGuiaCK10: TStringField
      FieldName = 'CK10'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME10: TStringField
      FieldName = 'EXAME10'
      Size = 60
    end
    object scdsBuscaGuiaCKA10: TStringField
      FieldName = 'CKA10'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO10: TStringField
      FieldName = 'ALTERADO10'
      Size = 60
    end
    object scdsBuscaGuiaDATA11: TDateField
      FieldName = 'DATA11'
    end
    object scdsBuscaGuiaCK11: TStringField
      FieldName = 'CK11'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME11: TStringField
      FieldName = 'EXAME11'
      Size = 60
    end
    object scdsBuscaGuiaCKA11: TStringField
      FieldName = 'CKA11'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO11: TStringField
      FieldName = 'ALTERADO11'
      Size = 60
    end
    object scdsBuscaGuiaDATA12: TDateField
      FieldName = 'DATA12'
    end
    object scdsBuscaGuiaCK12: TStringField
      FieldName = 'CK12'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME12: TStringField
      FieldName = 'EXAME12'
      Size = 60
    end
    object scdsBuscaGuiaCKA12: TStringField
      FieldName = 'CKA12'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO12: TStringField
      FieldName = 'ALTERADO12'
      Size = 60
    end
    object scdsBuscaGuiaDATA13: TDateField
      FieldName = 'DATA13'
    end
    object scdsBuscaGuiaCK13: TStringField
      FieldName = 'CK13'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME13: TStringField
      FieldName = 'EXAME13'
      Size = 60
    end
    object scdsBuscaGuiaCKA13: TStringField
      FieldName = 'CKA13'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO13: TStringField
      FieldName = 'ALTERADO13'
      Size = 60
    end
    object scdsBuscaGuiaDATA14: TDateField
      FieldName = 'DATA14'
    end
    object scdsBuscaGuiaCK14: TStringField
      FieldName = 'CK14'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME14: TStringField
      FieldName = 'EXAME14'
      Size = 60
    end
    object scdsBuscaGuiaCKA14: TStringField
      FieldName = 'CKA14'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO14: TStringField
      FieldName = 'ALTERADO14'
      Size = 60
    end
    object scdsBuscaGuiaDATA15: TDateField
      FieldName = 'DATA15'
    end
    object scdsBuscaGuiaCK15: TStringField
      FieldName = 'CK15'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME15: TStringField
      FieldName = 'EXAME15'
      Size = 60
    end
    object scdsBuscaGuiaCKA15: TStringField
      FieldName = 'CKA15'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO15: TStringField
      FieldName = 'ALTERADO15'
      Size = 60
    end
    object scdsBuscaGuiaDATA16: TDateField
      FieldName = 'DATA16'
    end
    object scdsBuscaGuiaCK16: TStringField
      FieldName = 'CK16'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME16: TStringField
      FieldName = 'EXAME16'
      Size = 60
    end
    object scdsBuscaGuiaCKA16: TStringField
      FieldName = 'CKA16'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO16: TStringField
      FieldName = 'ALTERADO16'
      Size = 60
    end
    object scdsBuscaGuiaDATA17: TDateField
      FieldName = 'DATA17'
    end
    object scdsBuscaGuiaCK17: TStringField
      FieldName = 'CK17'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME17: TStringField
      FieldName = 'EXAME17'
      Size = 60
    end
    object scdsBuscaGuiaCKA17: TStringField
      FieldName = 'CKA17'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO17: TStringField
      FieldName = 'ALTERADO17'
      Size = 60
    end
    object scdsBuscaGuiaDATA18: TDateField
      FieldName = 'DATA18'
    end
    object scdsBuscaGuiaCK18: TStringField
      FieldName = 'CK18'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME18: TStringField
      FieldName = 'EXAME18'
      Size = 60
    end
    object scdsBuscaGuiaCKA18: TStringField
      FieldName = 'CKA18'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO18: TStringField
      FieldName = 'ALTERADO18'
      Size = 60
    end
    object scdsBuscaGuiaDATA19: TDateField
      FieldName = 'DATA19'
    end
    object scdsBuscaGuiaCK19: TStringField
      FieldName = 'CK19'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME19: TStringField
      FieldName = 'EXAME19'
      Size = 60
    end
    object scdsBuscaGuiaCKA19: TStringField
      FieldName = 'CKA19'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO19: TStringField
      FieldName = 'ALTERADO19'
      Size = 60
    end
    object scdsBuscaGuiaDATA20: TDateField
      FieldName = 'DATA20'
    end
    object scdsBuscaGuiaCK20: TStringField
      FieldName = 'CK20'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME20: TStringField
      FieldName = 'EXAME20'
      Size = 60
    end
    object scdsBuscaGuiaCKA20: TStringField
      FieldName = 'CKA20'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO20: TStringField
      FieldName = 'ALTERADO20'
      Size = 60
    end
    object scdsBuscaGuiaDATA21: TDateField
      FieldName = 'DATA21'
    end
    object scdsBuscaGuiaCK21: TStringField
      FieldName = 'CK21'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME21: TStringField
      FieldName = 'EXAME21'
      Size = 60
    end
    object scdsBuscaGuiaCKA21: TStringField
      FieldName = 'CKA21'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO21: TStringField
      FieldName = 'ALTERADO21'
      Size = 60
    end
    object scdsBuscaGuiaDATA22: TDateField
      FieldName = 'DATA22'
    end
    object scdsBuscaGuiaCK22: TStringField
      FieldName = 'CK22'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME22: TStringField
      FieldName = 'EXAME22'
      Size = 60
    end
    object scdsBuscaGuiaCKA22: TStringField
      FieldName = 'CKA22'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO22: TStringField
      FieldName = 'ALTERADO22'
      Size = 60
    end
    object scdsBuscaGuiaDATA23: TDateField
      FieldName = 'DATA23'
    end
    object scdsBuscaGuiaCK23: TStringField
      FieldName = 'CK23'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME23: TStringField
      FieldName = 'EXAME23'
      Size = 60
    end
    object scdsBuscaGuiaCKA23: TStringField
      FieldName = 'CKA23'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO23: TStringField
      FieldName = 'ALTERADO23'
      Size = 60
    end
    object scdsBuscaGuiaDATA24: TDateField
      FieldName = 'DATA24'
    end
    object scdsBuscaGuiaCK24: TStringField
      FieldName = 'CK24'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME24: TStringField
      FieldName = 'EXAME24'
      Size = 60
    end
    object scdsBuscaGuiaCKA24: TStringField
      FieldName = 'CKA24'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO24: TStringField
      FieldName = 'ALTERADO24'
      Size = 60
    end
    object scdsBuscaGuiaDATA25: TDateField
      FieldName = 'DATA25'
    end
    object scdsBuscaGuiaCK25: TStringField
      FieldName = 'CK25'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME25: TStringField
      FieldName = 'EXAME25'
      Size = 60
    end
    object scdsBuscaGuiaCKA25: TStringField
      FieldName = 'CKA25'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO25: TStringField
      FieldName = 'ALTERADO25'
      Size = 60
    end
    object scdsBuscaGuiaDATA26: TDateField
      FieldName = 'DATA26'
    end
    object scdsBuscaGuiaCK26: TStringField
      FieldName = 'CK26'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME26: TStringField
      FieldName = 'EXAME26'
      Size = 60
    end
    object scdsBuscaGuiaCKA26: TStringField
      FieldName = 'CKA26'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO26: TStringField
      FieldName = 'ALTERADO26'
      Size = 60
    end
    object scdsBuscaGuiaDATA27: TDateField
      FieldName = 'DATA27'
    end
    object scdsBuscaGuiaCK27: TStringField
      FieldName = 'CK27'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME27: TStringField
      FieldName = 'EXAME27'
      Size = 60
    end
    object scdsBuscaGuiaCKA27: TStringField
      FieldName = 'CKA27'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO27: TStringField
      FieldName = 'ALTERADO27'
      Size = 60
    end
    object scdsBuscaGuiaDATA28: TDateField
      FieldName = 'DATA28'
    end
    object scdsBuscaGuiaCK28: TStringField
      FieldName = 'CK28'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME28: TStringField
      FieldName = 'EXAME28'
      Size = 60
    end
    object scdsBuscaGuiaCKA28: TStringField
      FieldName = 'CKA28'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO28: TStringField
      FieldName = 'ALTERADO28'
      Size = 60
    end
    object scdsBuscaGuiaDATA29: TDateField
      FieldName = 'DATA29'
    end
    object scdsBuscaGuiaCK29: TStringField
      FieldName = 'CK29'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME29: TStringField
      FieldName = 'EXAME29'
      Size = 60
    end
    object scdsBuscaGuiaCKA29: TStringField
      FieldName = 'CKA29'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO29: TStringField
      FieldName = 'ALTERADO29'
      Size = 60
    end
    object scdsBuscaGuiaDATA30: TDateField
      FieldName = 'DATA30'
    end
    object scdsBuscaGuiaCK30: TStringField
      FieldName = 'CK30'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME30: TStringField
      FieldName = 'EXAME30'
      Size = 60
    end
    object scdsBuscaGuiaCKA30: TStringField
      FieldName = 'CKA30'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO30: TStringField
      FieldName = 'ALTERADO30'
      Size = 60
    end
    object scdsBuscaGuiaDATA31: TDateField
      FieldName = 'DATA31'
    end
    object scdsBuscaGuiaCK31: TStringField
      FieldName = 'CK31'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME31: TStringField
      FieldName = 'EXAME31'
      Size = 60
    end
    object scdsBuscaGuiaCKA31: TStringField
      FieldName = 'CKA31'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO31: TStringField
      FieldName = 'ALTERADO31'
      Size = 60
    end
    object scdsBuscaGuiaDATA32: TDateField
      FieldName = 'DATA32'
    end
    object scdsBuscaGuiaCK32: TStringField
      FieldName = 'CK32'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME32: TStringField
      FieldName = 'EXAME32'
      Size = 60
    end
    object scdsBuscaGuiaCKA32: TStringField
      FieldName = 'CKA32'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO32: TStringField
      FieldName = 'ALTERADO32'
      Size = 60
    end
    object scdsBuscaGuiaDATA33: TDateField
      FieldName = 'DATA33'
    end
    object scdsBuscaGuiaCK33: TStringField
      FieldName = 'CK33'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME33: TStringField
      FieldName = 'EXAME33'
      Size = 60
    end
    object scdsBuscaGuiaCKA33: TStringField
      FieldName = 'CKA33'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO33: TStringField
      FieldName = 'ALTERADO33'
      Size = 60
    end
    object scdsBuscaGuiaDATA34: TDateField
      FieldName = 'DATA34'
    end
    object scdsBuscaGuiaCK34: TStringField
      FieldName = 'CK34'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME34: TStringField
      FieldName = 'EXAME34'
      Size = 60
    end
    object scdsBuscaGuiaCKA34: TStringField
      FieldName = 'CKA34'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO34: TStringField
      FieldName = 'ALTERADO34'
      Size = 60
    end
    object scdsBuscaGuiaDATA35: TDateField
      FieldName = 'DATA35'
    end
    object scdsBuscaGuiaCK35: TStringField
      FieldName = 'CK35'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaEXAME35: TStringField
      FieldName = 'EXAME35'
      Size = 60
    end
    object scdsBuscaGuiaCKA35: TStringField
      FieldName = 'CKA35'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALTERADO35: TStringField
      FieldName = 'ALTERADO35'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO1: TStringField
      FieldName = 'CKANEXO1'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO1: TStringField
      FieldName = 'ANEXO1'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO2: TStringField
      FieldName = 'CKANEXO2'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO2: TStringField
      FieldName = 'ANEXO2'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO3: TStringField
      FieldName = 'CKANEXO3'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO3: TStringField
      FieldName = 'ANEXO3'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO4: TStringField
      FieldName = 'CKANEXO4'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO4: TStringField
      FieldName = 'ANEXO4'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO5: TStringField
      FieldName = 'CKANEXO5'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO5: TStringField
      FieldName = 'ANEXO5'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO6: TStringField
      FieldName = 'CKANEXO6'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO6: TStringField
      FieldName = 'ANEXO6'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO7: TStringField
      FieldName = 'CKANEXO7'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO7: TStringField
      FieldName = 'ANEXO7'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO8: TStringField
      FieldName = 'CKANEXO8'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO8: TStringField
      FieldName = 'ANEXO8'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO9: TStringField
      FieldName = 'CKANEXO9'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO9: TStringField
      FieldName = 'ANEXO9'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO10: TStringField
      FieldName = 'CKANEXO10'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO10: TStringField
      FieldName = 'ANEXO10'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO11: TStringField
      FieldName = 'CKANEXO11'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO11: TStringField
      FieldName = 'ANEXO11'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO12: TStringField
      FieldName = 'CKANEXO12'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO12: TStringField
      FieldName = 'ANEXO12'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO13: TStringField
      FieldName = 'CKANEXO13'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO13: TStringField
      FieldName = 'ANEXO13'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO14: TStringField
      FieldName = 'CKANEXO14'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO14: TStringField
      FieldName = 'ANEXO14'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO15: TStringField
      FieldName = 'CKANEXO15'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO15: TStringField
      FieldName = 'ANEXO15'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO16: TStringField
      FieldName = 'CKANEXO16'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO16: TStringField
      FieldName = 'ANEXO16'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO17: TStringField
      FieldName = 'CKANEXO17'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO17: TStringField
      FieldName = 'ANEXO17'
      Size = 60
    end
    object scdsBuscaGuiaCKANEXO18: TStringField
      FieldName = 'CKANEXO18'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANEXO18: TStringField
      FieldName = 'ANEXO18'
      Size = 60
    end
    object scdsBuscaGuiaCKQ: TStringField
      FieldName = 'CKQ'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaQUEIXAP: TStringField
      FieldName = 'QUEIXAP'
      Size = 60
    end
    object scdsBuscaGuiaCKH: TStringField
      FieldName = 'CKH'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaHISTORICOMEDICO: TStringField
      FieldName = 'HISTORICOMEDICO'
      Size = 300
    end
    object scdsBuscaGuiaCKA: TStringField
      FieldName = 'CKA'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaALCOOL: TStringField
      FieldName = 'ALCOOL'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaFUMO: TStringField
      FieldName = 'FUMO'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaCKAF: TStringField
      FieldName = 'CKAF'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANTECEDENTESFAMILIARES: TStringField
      FieldName = 'ANTECEDENTESFAMILIARES'
      Size = 300
    end
    object scdsBuscaGuiaCKC: TStringField
      FieldName = 'CKC'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaCICATRIZES: TStringField
      FieldName = 'CICATRIZES'
      Size = 300
    end
    object scdsBuscaGuiaCKAPE: TStringField
      FieldName = 'CKAPE'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaANTECEDENTESPESSOAIS: TStringField
      FieldName = 'ANTECEDENTESPESSOAIS'
      Size = 300
    end
    object scdsBuscaGuiaCKACI: TStringField
      FieldName = 'CKACI'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaACIDENTES: TStringField
      FieldName = 'ACIDENTES'
      Size = 300
    end
    object scdsBuscaGuiaPESO: TFloatField
      FieldName = 'PESO'
    end
    object scdsBuscaGuiaALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object scdsBuscaGuiaIMC: TFloatField
      FieldName = 'IMC'
    end
    object scdsBuscaGuiaPA: TStringField
      FieldName = 'PA'
      Size = 60
    end
    object scdsBuscaGuiaFC: TStringField
      FieldName = 'FC'
      Size = 60
    end
    object scdsBuscaGuiaCKOD: TStringField
      FieldName = 'CKOD'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaCKOE: TStringField
      FieldName = 'CKOE'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaCKAPV: TStringField
      FieldName = 'CKAPV'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaMOLESTIA: TStringField
      FieldName = 'MOLESTIA'
      Size = 60
    end
    object scdsBuscaGuiaCKP: TStringField
      FieldName = 'CKP'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaPELE: TStringField
      FieldName = 'PELE'
      Size = 60
    end
    object scdsBuscaGuiaCKAPA: TStringField
      FieldName = 'CKAPA'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaOUVIDOS: TStringField
      FieldName = 'OUVIDOS'
      Size = 60
    end
    object scdsBuscaGuiaCKCP: TStringField
      FieldName = 'CKCP'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaCABECA: TStringField
      FieldName = 'CABECA'
      Size = 60
    end
    object scdsBuscaGuiaCKABD: TStringField
      FieldName = 'CKABD'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaABDOMEN: TStringField
      FieldName = 'ABDOMEN'
      Size = 300
    end
    object scdsBuscaGuiaCKAP: TStringField
      FieldName = 'CKAP'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaAP: TStringField
      FieldName = 'AP'
      Size = 300
    end
    object scdsBuscaGuiaCKACV: TStringField
      FieldName = 'CKACV'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaAPCARDIO: TStringField
      FieldName = 'APCARDIO'
      Size = 300
    end
    object scdsBuscaGuiaCKAPN: TStringField
      FieldName = 'CKAPN'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaSISTEMANERVOSO: TStringField
      FieldName = 'SISTEMANERVOSO'
      Size = 100
    end
    object scdsBuscaGuiaCKAGU: TStringField
      FieldName = 'CKAGU'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaAPURO: TStringField
      FieldName = 'APURO'
      Size = 100
    end
    object scdsBuscaGuiaCKAOM: TStringField
      FieldName = 'CKAOM'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaAOSTEO: TStringField
      FieldName = 'AOSTEO'
      Size = 100
    end
    object scdsBuscaGuiaOBSFICHA: TStringField
      FieldName = 'OBSFICHA'
      Size = 300
    end
    object scdsBuscaGuiaA: TStringField
      FieldName = 'A'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaI: TStringField
      FieldName = 'I'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaADA: TStringField
      FieldName = 'ADA'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaAIA: TStringField
      FieldName = 'AIA'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaPAIR: TStringField
      FieldName = 'PAIR'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaDANO: TStringField
      FieldName = 'DANO'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaHISTORICOAV: TStringField
      FieldName = 'HISTORICOAV'
      Size = 300
    end
    object scdsBuscaGuiaCONDUTA: TStringField
      FieldName = 'CONDUTA'
      Size = 300
    end
    object scdsBuscaGuiaAFASTAMENTO: TStringField
      FieldName = 'AFASTAMENTO'
      FixedChar = True
      Size = 1
    end
    object scdsBuscaGuiaDATAAFASTAMENTO: TDateField
      FieldName = 'DATAAFASTAMENTO'
    end
    object scdsBuscaGuiaDATARETORNO: TDateField
      FieldName = 'DATARETORNO'
    end
    object scdsBuscaGuiaDIASPERDIDOS: TIntegerField
      FieldName = 'DIASPERDIDOS'
    end
  end
  object dspBuscaGuia: TDataSetProvider
    DataSet = scdsBuscaGuia
    Left = 118
    Top = 521
  end
  object dsBuscaGuia: TDataSource
    DataSet = cdsBuscaGuia
    OnStateChange = dsBuscaGuiaStateChange
    Left = 183
    Top = 523
  end
  object procforn: TSQLClientDataSet
    CommandText = 
      'select CODFORNECEDOR,NOMEFORNECEDOR from FORNECEDOR where NOMEFO' +
      'RNECEDOR LIKE :NOME'
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
    Left = 256
    Top = 34
    object procfornNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object procfornCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsBuscaForn: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'prcod'
        ParamType = ptInput
      end>
    ProviderName = 'dspBuscaForn'
    Left = 200
    Top = 42
    object cdsBuscaFornCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsBuscaFornNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object cdsBuscaFornCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsBuscaFornCNES: TStringField
      FieldName = 'CNES'
      Size = 24
    end
    object cdsBuscaFornLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsBuscaFornCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsBuscaFornCEP_CONTRATADO: TStringField
      FieldName = 'CEP_CONTRATADO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cdsBuscaFornNUMERO: TStringField
      FieldName = 'NUMERO'
      ReadOnly = True
      Size = 30
    end
    object cdsBuscaFornSIGLA: TStringField
      FieldName = 'SIGLA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object cdsBuscaFornCD_TIPO_LOGRADOURO: TStringField
      FieldName = 'CD_TIPO_LOGRADOURO'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object cdsBuscaFornDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cdsBuscaFornNM_MUNICIPIO: TStringField
      FieldName = 'NM_MUNICIPIO'
      ReadOnly = True
      Size = 40
    end
    object cdsBuscaFornCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      ReadOnly = True
      Size = 10
    end
    object cdsBuscaFornCD_UF: TStringField
      FieldName = 'CD_UF'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object cdsBuscaFornNOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      ReadOnly = True
      Size = 60
    end
    object cdsBuscaFornFUNCAO: TStringField
      FieldName = 'FUNCAO'
      ReadOnly = True
      Size = 60
    end
    object cdsBuscaFornCOMPLEMENTO_1: TStringField
      FieldName = 'COMPLEMENTO_1'
      ReadOnly = True
      Size = 30
    end
    object cdsBuscaFornUF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      Size = 2
    end
    object cdsBuscaFornCEP: TStringField
      FieldName = 'CEP'
      ReadOnly = True
      Size = 10
    end
  end
  object dspBuscaForn: TDataSetProvider
    DataSet = scdsBuscaForn
    Left = 168
    Top = 2
  end
  object scdsBuscaForn: TSQLDataSet
    CommandText = 
      'select '#13#10'forn.CODFORNECEDOR ,'#13#10'forn.NOMEFORNECEDOR,'#13#10'udf_digits(' +
      'forn.CNPJ) as CNPJ,'#13#10'udf_digits(forn.INSCESTADUAL) as CNES,'#13#10'end' +
      'e.LOGRADOURO,'#13#10'ende.COMPLEMENTO,'#13#10'udf_digits(ende.CEP) as CEP_CO' +
      'NTRATADO,'#13#10'ende.E_MAIL as NUMERO,'#13#10'ende.UF as SIGLA,'#13#10'logr.CD_TI' +
      'PO_LOGRADOURO,'#13#10'udf_digits(ende.DADOSADICIONAIS) as DADOSADICION' +
      'AIS,'#13#10'ibge.NM_MUNICIPIO,'#13#10'ibge.CD_IBGE,'#13#10'ibge.CD_UF, '#13#10'repr. NOM' +
      'E_REPRFOR,'#13#10'repr.FUNCAO,'#13#10'repr.COMPLEMENTO,'#13#10'repr.UF,'#13#10'repr.CEP'#13 +
      #10'from FORNECEDOR forn '#13#10'inner join ENDERECOFORNECEDOR ende on en' +
      'de.CODFORNECEDOR = forn.CODFORNECEDOR '#13#10'left outer join TB_IBGE ' +
      'ibge on udf_collatebr(ibge.NM_LOCALIDADE) = udf_collatebr(ende.C' +
      'IDADE)'#13#10'inner join REPR_FORNECEDOR repr on repr.COD_FORNECEDOR =' +
      ' forn.CODFORNECEDOR'#13#10'left outer join TB_TIPO_LOGRADOURO logr on ' +
      'logr.DS_TIPO_LOGRADOURO = ende.BAIRRO'#13#10'where forn.CODFORNECEDOR ' +
      '= :prcod'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'prcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 120
    Top = 34
    object scdsBuscaFornCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object scdsBuscaFornNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object scdsBuscaFornCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object scdsBuscaFornCNES: TStringField
      FieldName = 'CNES'
      Size = 24
    end
    object scdsBuscaFornLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object scdsBuscaFornCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object scdsBuscaFornCEP_CONTRATADO: TStringField
      FieldName = 'CEP_CONTRATADO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object scdsBuscaFornNUMERO: TStringField
      FieldName = 'NUMERO'
      ReadOnly = True
      Size = 30
    end
    object scdsBuscaFornSIGLA: TStringField
      FieldName = 'SIGLA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object scdsBuscaFornCD_TIPO_LOGRADOURO: TStringField
      FieldName = 'CD_TIPO_LOGRADOURO'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object scdsBuscaFornDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object scdsBuscaFornNM_MUNICIPIO: TStringField
      FieldName = 'NM_MUNICIPIO'
      ReadOnly = True
      Size = 40
    end
    object scdsBuscaFornCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      ReadOnly = True
      Size = 10
    end
    object scdsBuscaFornCD_UF: TStringField
      FieldName = 'CD_UF'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object scdsBuscaFornNOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      ReadOnly = True
      Size = 60
    end
    object scdsBuscaFornFUNCAO: TStringField
      FieldName = 'FUNCAO'
      ReadOnly = True
      Size = 60
    end
    object scdsBuscaFornCOMPLEMENTO_1: TStringField
      FieldName = 'COMPLEMENTO_1'
      ReadOnly = True
      Size = 30
    end
    object scdsBuscaFornUF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      Size = 2
    end
    object scdsBuscaFornCEP: TStringField
      FieldName = 'CEP'
      ReadOnly = True
      Size = 10
    end
  end
  object scdsRepr: TSQLDataSet
    CommandText = 
      'select REPR.NOME_REPRFOR, '#13#10'          REPR.FUNCAO, '#13#10'          R' +
      'EPR.UF,'#13#10'          REPR.NUMERO,'#13#10'          REPR.COMPLEMENTO,'#13#10'  ' +
      '        udf_Digits(CBO.CD_CBO_SAUDE) as CD_CBO_SAUDE  '#13#10'from REP' +
      'R_FORNECEDOR REPR'#13#10'INNER JOIN  TB_CBO_SAUDE CBO ON CBO.CD_CBO_SA' +
      'UDE = REPR.FUNCAO'#13#10' where '#13#10'REPR.COD_FORNECEDOR = :PRCOD'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PRCOD'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 480
    Top = 42
    object scdsReprNOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      Size = 60
    end
    object scdsReprFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
    object scdsReprUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object scdsReprNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object scdsReprCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object scdsReprCD_CBO_SAUDE: TStringField
      FieldName = 'CD_CBO_SAUDE'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
  end
  object cdsRepr: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PRCOD'
        ParamType = ptInput
      end>
    ProviderName = 'dspRepr'
    Left = 584
    Top = 42
    object cdsReprNOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      Size = 60
    end
    object cdsReprFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
    object cdsReprUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsReprNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsReprCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsReprCD_CBO_SAUDE: TStringField
      FieldName = 'CD_CBO_SAUDE'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
  end
  object dspRepr: TDataSetProvider
    DataSet = scdsRepr
    Left = 536
    Top = 34
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 656
    Top = 502
  end
  object procforn2: TSQLClientDataSet
    CommandText = 
      'select CODFORNECEDOR,NOMEFORNECEDOR, CNPJ from FORNECEDOR where ' +
      'NOMEFORNECEDOR LIKE :NOME'
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
    Left = 16
    Top = 458
    object procforn2CODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object procforn2NOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object procforn2CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
  end
  object cdsBuscaForn2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'prcod'
        ParamType = ptInput
      end>
    ProviderName = 'dspBuscaForn'
    Left = 56
    Top = 466
    object cdsBuscaForn2CODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsBuscaForn2NOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object cdsBuscaForn2CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsBuscaForn2CNES: TStringField
      FieldName = 'CNES'
      Size = 24
    end
    object cdsBuscaForn2LOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsBuscaForn2COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsBuscaForn2CEP_CONTRATADO: TStringField
      FieldName = 'CEP_CONTRATADO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cdsBuscaForn2NUMERO: TStringField
      FieldName = 'NUMERO'
      ReadOnly = True
      Size = 30
    end
    object cdsBuscaForn2SIGLA: TStringField
      FieldName = 'SIGLA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object cdsBuscaForn2CD_TIPO_LOGRADOURO: TStringField
      FieldName = 'CD_TIPO_LOGRADOURO'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object cdsBuscaForn2DADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cdsBuscaForn2NM_MUNICIPIO: TStringField
      FieldName = 'NM_MUNICIPIO'
      ReadOnly = True
      Size = 40
    end
    object cdsBuscaForn2CD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      ReadOnly = True
      Size = 10
    end
    object cdsBuscaForn2CD_UF: TStringField
      FieldName = 'CD_UF'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object cdsBuscaForn2NOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      ReadOnly = True
      Size = 60
    end
    object cdsBuscaForn2FUNCAO: TStringField
      FieldName = 'FUNCAO'
      ReadOnly = True
      Size = 60
    end
    object cdsBuscaForn2COMPLEMENTO_1: TStringField
      FieldName = 'COMPLEMENTO_1'
      ReadOnly = True
      Size = 30
    end
    object cdsBuscaForn2UF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      Size = 2
    end
    object cdsBuscaForn2CEP: TStringField
      FieldName = 'CEP'
      ReadOnly = True
      Size = 10
    end
  end
  object dspBuscaForn2: TDataSetProvider
    DataSet = scdsBuscaForn2
    Left = 16
    Top = 498
  end
  object scdsBuscaForn2: TSQLDataSet
    CommandText = 
      'select '#13#10'forn.CODFORNECEDOR ,'#13#10'forn.NOMEFORNECEDOR,'#13#10'forn.CNPJ,'#13 +
      #10'forn.INSCESTADUAL as CNES,'#13#10'ende.LOGRADOURO,'#13#10'ende.COMPLEMENTO,' +
      #13#10'udf_digits(ende.CEP) as CEP_CONTRATADO,'#13#10'ende.E_MAIL as NUMERO' +
      ','#13#10'ende.UF as SIGLA,'#13#10'logr.CD_TIPO_LOGRADOURO,'#13#10'udf_digits(ende.' +
      'DADOSADICIONAIS) as DADOSADICIONAIS,'#13#10'ibge.NM_MUNICIPIO,'#13#10'ibge.C' +
      'D_IBGE,'#13#10'ibge.CD_UF, '#13#10'repr. NOME_REPRFOR,'#13#10'repr.FUNCAO,'#13#10'repr.C' +
      'OMPLEMENTO,'#13#10'repr.UF,'#13#10'repr.CEP'#13#10'from FORNECEDOR forn '#13#10'inner jo' +
      'in ENDERECOFORNECEDOR ende on ende.CODFORNECEDOR = forn.CODFORNE' +
      'CEDOR '#13#10'left outer join TB_IBGE ibge on udf_collatebr(ibge.NM_LO' +
      'CALIDADE) = udf_collatebr(ende.CIDADE)'#13#10'inner join REPR_FORNECED' +
      'OR repr on repr.COD_FORNECEDOR = forn.CODFORNECEDOR'#13#10'left outer ' +
      'join TB_TIPO_LOGRADOURO logr on logr.DS_TIPO_LOGRADOURO = ende.B' +
      'AIRRO'#13#10'where forn.CODFORNECEDOR = :prcod'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'prcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 392
    Top = 34
    object scdsBuscaForn2CODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object scdsBuscaForn2NOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object scdsBuscaForn2CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object scdsBuscaForn2CNES: TStringField
      FieldName = 'CNES'
      Size = 24
    end
    object scdsBuscaForn2LOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object scdsBuscaForn2COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object scdsBuscaForn2CEP_CONTRATADO: TStringField
      FieldName = 'CEP_CONTRATADO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object scdsBuscaForn2NUMERO: TStringField
      FieldName = 'NUMERO'
      ReadOnly = True
      Size = 30
    end
    object scdsBuscaForn2SIGLA: TStringField
      FieldName = 'SIGLA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object scdsBuscaForn2CD_TIPO_LOGRADOURO: TStringField
      FieldName = 'CD_TIPO_LOGRADOURO'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object scdsBuscaForn2DADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object scdsBuscaForn2NM_MUNICIPIO: TStringField
      FieldName = 'NM_MUNICIPIO'
      ReadOnly = True
      Size = 40
    end
    object scdsBuscaForn2CD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      ReadOnly = True
      Size = 10
    end
    object scdsBuscaForn2CD_UF: TStringField
      FieldName = 'CD_UF'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object scdsBuscaForn2NOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      ReadOnly = True
      Size = 60
    end
    object scdsBuscaForn2FUNCAO: TStringField
      FieldName = 'FUNCAO'
      ReadOnly = True
      Size = 60
    end
    object scdsBuscaForn2COMPLEMENTO_1: TStringField
      FieldName = 'COMPLEMENTO_1'
      ReadOnly = True
      Size = 30
    end
    object scdsBuscaForn2UF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      Size = 2
    end
    object scdsBuscaForn2CEP: TStringField
      FieldName = 'CEP'
      ReadOnly = True
      Size = 10
    end
  end
  object cdsRepr1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PRCOD'
        ParamType = ptInput
      end>
    ProviderName = 'dspRepr'
    Left = 720
    Top = 50
    object cdsRepr1NOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      Size = 60
    end
    object cdsRepr1FUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
    object cdsRepr1UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsRepr1NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsRepr1COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsRepr1CD_CBO_SAUDE: TStringField
      FieldName = 'CD_CBO_SAUDE'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
  end
  object dspRepr1: TDataSetProvider
    DataSet = scdsRepr1
    Left = 680
    Top = 42
  end
  object scdsRepr1: TSQLDataSet
    CommandText = 
      'select REPR.NOME_REPRFOR, '#13#10'          REPR.FUNCAO, '#13#10'          R' +
      'EPR.UF,'#13#10'          REPR.NUMERO,'#13#10'          REPR.COMPLEMENTO,'#13#10'  ' +
      '        udf_Digits(CBO.CD_CBO_SAUDE) as CD_CBO_SAUDE  '#13#10'from REP' +
      'R_FORNECEDOR REPR'#13#10'INNER JOIN  TB_CBO_SAUDE CBO ON CBO.CD_CBO_SA' +
      'UDE = REPR.FUNCAO'#13#10' where '#13#10'REPR.COD_FORNECEDOR = :PRCOD'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PRCOD'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 640
    Top = 42
    object scdsRepr1NOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      Size = 60
    end
    object scdsRepr1FUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
    object scdsRepr1UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object scdsRepr1NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object scdsRepr1COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object scdsRepr1CD_CBO_SAUDE: TStringField
      FieldName = 'CD_CBO_SAUDE'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
  end
  object sql_numGuia: TSQLDataSet
    CommandText = 
      'select (max(cast(NUMERO_GUIA as integer)) +1) as nu  from guias ' +
      'where TIPO_GUIA = :tipo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 368
    object sql_numGuiaNU: TFMTBCDField
      FieldName = 'NU'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 312
    Top = 8
    object MenuItem1: TMenuItem
      Bitmap.Data = {
        C2070000424DC20700000000000036000000280000001E000000150000000100
        1800000000008C070000120B0000120B00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A01F70A01F80AF0070
        A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF108FBF2F8FB00F0F0F0000001F4F600F7FB0
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0070A020AFDF3FCFFF50909FF0C090806F500000002F607FBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F70AF
        108FC03FCFFF3FCFFF50909FFFCF9FFFCF9F4F4030101F1F2F80B0BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00609F1F9FCF3FCFFF1F9FCF3F
        CFFF4FCFFF50A0BFF0C090FFCF9FAF8F6F0000005F90B0BFBFBFBFBFBF005080
        2F80B000609FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0F7FB02FBFEF3FCFFF3FCFFF2090C070DFFF90E0
        FFAFE0FFAF9F80FFCF9FCFA080000000508FAF00609F409FC0609FB01F1F1F1F
        30400F70A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF108FC03FCFFF40CFFF5FD0FF7FDFFF409FC0AFE0FFD0F0FFE0F0FF
        EFEFF0A09080806F50304F5F308FBF80D0F07FDFFF5F8F9F9F8060000000102F
        3F00609FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF0070A01080
        BF4FD0FF6FD0FF8FDFFFA0E0FFC0EFFFBFE0F05F9FC0F0FFFFF0FFFFDFF0FFBF
        E0FF5FAFCF0F90C050C0EF50D0FF3FCFFF50909FFFCF9F6F5F400000000F5F80
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF0F7FAF30AFDF4FAFDF90E0FF
        AFEFFFCFEFFFDFF0FFEFFFFFF0FFFF2F9FC02F9FC060BFDF409FC00F8FB00070
        A000AFD030BFEF3FCFFF3FCFFF309FBFF0C090CFA0800000001F709FBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBF00609F90DFFF3F8FBFD0F0FFE0F0FFF0
        FFFFF0FFFFE0F0FFCFF0FF90D0EF1F9FCF00A0CF0090C000AFD00080B000AFD0
        20BFEF3FCFFF3FCFFF3FCFFF809080CFA0800000001F6F90BFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBF00609FD0F0FF80BFD07FB0CFF0FFFFDFF0FFC0EF
        FFAFE0FF8FDFFF70DFFF50D0FF1FA0D00070AF0090C0007FAF00A0CF0F9FCF3F
        CFFF3FCFFF3FCFFF3FC0F050808000304F0070A0BFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBF00609F8FBFD0D0E0F02F80AF207FAF60B0DF60BFDF60D0FF
        4FCFFF3FCFFF3FCFFF3FCFFF30C0FF1F9FD00090BF00A0CF00A0CF10A0D030C0
        FF1FAFDF1090C00070AF005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBF00609F00609FBFBFBFBFBFBF0F70A020A0D020A0DF20A0DF30
        C0FF3FCFFF3FCFFF3FCFFF3FCFFF30C0FF20A0DF006F9F0070A0005080BFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F7FAF20AFDF108FC01F9F
        CF109FD01090C0007FB0006F9F005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A0007FAF00609FBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000}
      Caption = 'Procurar'
      ShortCut = 119
    end
    object MenuItem2: TMenuItem
      Bitmap.Data = {
        1E060000424D1E06000000000000360000002800000018000000150000000100
        180000000000E8050000120B0000120B00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302F60302F7F7F
        7FCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302FFF9790
        FF979000FFFF60302F60302FCF67607F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302FFF
        9790FFC8CFFFC8CFFFC8CF00FFFFFFC8CF60302FCF6760CF6760CF67607F7F7F
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F6030
        2FFF9790FFC8CF00FFFFCFFFFFFFC8CFFFC8CFCFFFFFFFC8CFCF676060302FCF
        6760CF6760CF67607F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        7F7F7FCF6760FFC8CF00FFFFFFC8CFFFC8CF7F7F7F7F7F7FCFFFFFFFC8CFCFFF
        FFFFC8CF60302FFF0000CF6760CF6760CF67607F7F7F7F7F7FBFBFBFBFBFBFBF
        BFBFBFBFBF7F7F7FFF9790FFC8CF00FFFFCFFFFF7F7F7F7F7F7FFFC8CF00FFFF
        FFC8CF00FFFFFFC8CFCFFFFFCF67600000FFFF0000FF00007F7F7F7F7F7F7F7F
        7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF00FFFFFFC8CFFFC8CF7F7F7FFFC8CFCF
        FFFFFFC8CF7F7F7F7F7F7FCFFFFFCFFFFFFFC8CFCFFFFF60302F0000FFFF0000
        CF67607F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFFFFFF
        FFFFFFFF00FFFF7F7F7F7F7F7FCFFFFFCFFFFFCFFFFFFFC8CFCFFFFFFFC8CFCF
        6760FF97900000FFFF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFFFC8CFFFFFFFFFFFFF1F201F7F7F7FCFFFFFCFFFFF7F7F7F7F7F7FCFFF
        FFFFC8CFCFFFFFFFC8CF60302FFFC8CF0000FFFF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFFFC8CFCF6760CF67601F201F7F7F7F7F7F7F
        CFFFFFCFFFFFFFC8CFCFFFFFFFC8CFCFFFFFCF6760CFFFFFFF97900000FFFF00
        00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FFC8CFFF9790CF
        67601F201F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFC8CFFFFFFF60302F
        CFFFFFFF97900000FFCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FFC8
        CFFFC8CFFF9790FF9790CF67601F201F7F7F7FCFFFFFFFFFFFCFFFFFFFFFFFCF
        FFFFFFC8CFCF6760FFFFFFFFFFFFFF00000000FFCF6760BFBFBFBFBFBFBFBFBF
        CF6760FFC8CFFFC8CFFFC8CFFF9790FF9790FF9790CF67601F201F7F7F7FFFFF
        FFFFFFFFFFFFFFFFC8CFCFFFFFFFC8CFFFFFFFFFFFFFFFFFFFCF6760CF6760BF
        BFBFBFBFBFCF6760FFC8CFFFFFFFFFC8CFFFC8CFFF9790CF6760CF6760CF6760
        CF67601F201F7F7F7FFFFFFF3F3700CFFFFFCF6760FFFFFF0000FF0000FF0000
        FFCF6760BFBFBFBFBFBFBFBFBF60302F60302F60302FFFC8CFFFC8CFFF9790CF
        67601F201F1F201F1F201F1F201F1F201FFFFFFFFFFFFFFFC8CFFFFFFFFFFFFF
        FFFFFFFFC8CFCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFC8
        CFFFC8CFFF9790CF67601F201F60302F60302F60302F60302FFFC8CFFFC8CFFF
        FFFFFF0000FF0000CF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        FF9790FFC8CFFFC8CFFFFFFFFF9790CF67601F201F60302F0000FF0000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFCF6760FFFFFFFFFFFFFFC8CFFF9790CF67601F201F60302F
        BFBFBFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FF9790FF9790FF9790FF9790CF
        67601F201F60302FBFBFBFBFBFBFFF0000FF0000BFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760CF6760CF67
        60CF6760CF67601F201F60302F7F7F7FFFC8CFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBF}
      Caption = 'Gerar'
      ShortCut = 113
      OnClick = BitBtn1Click
    end
    object MenuItem3: TMenuItem
      Bitmap.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000B00000D00000C0000070000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000014000042
        00007000007700007600007700007700007400006F00004E0000250000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000B00006B000085000080
        00008100008000007F00007D00007D00007E00007D00007C00007200006B0000
        2D00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000048000092000087000087000085
        00008100007F00007E00007C00007B00007C00007C00007C00007E00007B0000
        7300005E00000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000006D00009200008D00008B000088000085
        00008400008100007F00007E00007C00007B00007C00007C00007C00007C0000
        7D00007700006A00000700000000000000000000000000000000000000000000
        000000000000000000000000006900009A00009300008F00008C00008A000088
        00008500008400007B00007800007D00007C00007B00007C00007C00007C0000
        7C00007C00007900006D00000000000000000000000000000000000000000000
        00000000000000000000370000A600009600009400009200008E00008C00008A
        00008800007900B0C0B0C5C9C5007C00007D00007C00007B00007C00007C0000
        7C00007C00007C00007700006100000000000000000000000000000000000000
        00000000000000000000B700009900009700009600009400009200008E00008C
        00007C00B4C5B4D9CFD9E0CFE05AA95A007800007E00007C00007B00007C0000
        7C00007C00007C00007C00007400003200000000000000000000000000000000
        00000000000000680000A700009C00009A00009700009600009400009200007E
        00B1CBB1E9DDE9D4D4D4D5D4D5E7DAE7007D00007E00007E00007C00007B0000
        7C00007C00007C00007C00007B00007100000000000000000000000000000000
        00000000000002C20200A00000A000009C00009A00009700009700008300A8CE
        A8FDEEFDE2E3E2DFDFDFDCDCDCEDE1ED77B877007800007F00007E00007C0000
        7B00007C00007C00007C00007D00007600002C00000000000000000000000000
        00000005340506B80600A10000A00000A000009C00009B0000870093CD93FFFD
        FFECEDECF6F3F6F1F0F1E5E5E5E3E3E3FFEEFF008200007F00007F00007E0000
        7C00007B00007C00007C00007C00007C00005800000000000000000000000000
        0000000F710F06B00600A30000A10000A00000A000008F0074C574FFFFFFF6F7
        F6FFFFFFA4B5A4BABABAF6F5F6EAEAEAF7EFF795C695007A00008100007F0000
        7E00007C00007B00007C00007C00007C00007800000000000000000000000000
        0000001C961C02AD0200A50000A40000A100009A0063C763FFFFFFFFFFFFFFFF
        FFD4D6D40080002B632BFFFFFFF1F1F1F0F0F0FFFEFF02870200820000810000
        7F00007E00007C00007B00007C00007D00007B00000D00000000000000000000
        000000269D2602AD0200A60000A50000A500319C31D9BFD9B5B0B5B7B1B7B3B7
        B3008100009A00007600CEBECEFFFFFFF5F5F5FFF9FFB3D9B300790000840000
        8100007F00007E00007C00007B00007D00007E00000F00000000000000000000
        000000279E2702AF0200A70000A60000A700009C000094000092000091000093
        00009C00009600009D00246124FFFFFFF8F8F8F7F7F7FFFFFF13921300820000
        8400008100007F00007E00007C00007C00007F00001000000000000000000000
        0000002B9E2B03B10300A80000A70000A60000A60000A50000A20000A10000A0
        00009C00009A00009900007B00C5B9C5FFFFFFFAFBFAFFFDFFCDE8CD007B0000
        8500008400008100007F00007E00007D00008000001000000000000000000000
        0000003B9C3B0AB40A00AA0000A90000A70000A60000A50000A40000A10000A0
        0000A000009C00009A00009E001B601BFFFFFFFDFDFDFCFCFCFFFFFF2C9F2C00
        8300008500008400008100007F00008000008300000700000000000000000000
        0000003372331CBF1C00A90000AA0000A90000A70000A60000A50000A40000A1
        0000A00000A000009C00009C00008100BBB3BBFFFFFFFEFEFEFFFFFFE4F3E400
        7C00008800008500008400008100008000008500000000000000000000000000
        00000008040845E24500A90000AA0000AA0000A90000A70000A60000A50000A4
        0000A10000A00000A000009C0000A100115F11FFFFFFFFFFFFFDFDFDFFFFFF48
        AE48008400008800008500008500008500005200000000000000000000000000
        0000000000005DD15D0AB20A00AB0000AA0000AA0000A90000A70000A60000A5
        0000A40000A10000A00000A000009D00008700B1ABB1FFFFFFFFFFFFFFFFFFFE
        FFFE007F00008A00008800008600008F00002400000000000000000000000000
        0000000000002A482A40D84000AA0000AB0000AA0000AA0000A90000A70000A6
        0000A50000A40000A10000A000009F0000A300076007FFFFFFFFFFFFFFFFFFFF
        FFFF77C677008600008A00008900008600000000000000000000000000000000
        00000000000000000067CA6717B91700AB0000AC0000AA0000AA0000A90000A7
        0000A60000A50000A40000A10000A00000A100009300516F516382636080605F
        7C5F82AC82008B00008B0000A300001700000000000000000000000000000000
        0000000000000000000D0D0D6DED6D05AF0500AB0000AC0000AA0000AA0000A9
        0000A70000A60000A50000A40000A10000A00000A00000A200009E00009B0000
        9A00009300009200009A00006300000000000000000000000000000000000000
        000000000000000000000000232E2372FA7204AE0400AB0000AB0000AA0000AA
        0000A90000A70000A60000A50000A40000A10000A000009F00009B00009A0000
        96000094000BA20B0C920C000000000000000000000000000000000000000000
        00000000000000000000000000000024302476F07619B91900AA0000AA0000AA
        0000AA0000A90000A70000A60000A50000A40000A10000A000009F00009B0000
        980017B5171A8A1A000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000E0E0E78D1784DDC4D0BB30B00A8
        0000A80000A90000A80000A60000A60000A50000A20000A000009E0013AD1334
        D734155015000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000354D357CDD7C5EEB
        5E29C2290FB50F05B20504AF0404AE0407AD0713B41329C32949E2492E822E00
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000B07
        0B4D7E4D62B06253AB5350AB5050AB504EA84E40894023462300000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'Imprimir'
      ShortCut = 115
      OnClick = BitBtn3Click
    end
    object MenuItem4: TMenuItem
      Bitmap.Data = {
        060E0000424D060E000000000000360000002800000022000000220000000100
        180000000000D00D0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE9E9E8CBCAC8D9D7D5E9E4E1F2EEEEFCF8F6FFFDFBFF
        FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7E3EA3B7699185D83266689406A844C74
        8B6080917D8C93929999A9A9A9C1BCBAD1CBC6DED7D5EDE8E3F9F6F3FDF9F7FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF5F8FBF3F7FAF4F8FBF5F8FBFCFDFE8AB4CE005696005D9F
        005F99005C94005B93005A90005A91005A9000598E075886195B811F5D823062
        7C4D6D7E5C758293989BF5F5F4FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB4CDDE186A9D146B9F176FA2176FA21970A30C
        679A02639C1B76C91976C61674C11575BE1272BA106FB60B6BAE0B6AAE0666AB
        0364A90064A500619E005A9F005C9C20597BDDD7D4FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72A5C7004A820643700740
        6D06406D073F6D014D800766A5217FD22083D22487D32183D22183D22183D220
        81D01F7ECF1D7DCD1D7DCC1B78C91A78C71871C00668AD125A85D6D0CBFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEE7EFFFF9F65F9BBD
        00508513375F14355D14365F14325A044F660866AC268AD7288CD5278ED6278D
        D6268DD6268BD5268AD4268AD42489D32286D22287D32387D3207FD01072BC12
        5985D3CDC7FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D5D440
        8440BFBFB5629ABE005288123964133561112A5F013E220D785A0B65B7288ED9
        2D93D9268BD5298FD72B91D82B91D8258CD6268CD5288FD7268DD6268CD5268B
        D52188D41475C6125886C9C3BEFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFA8B7A71E8F2305880AB4B0A84A84B60044800B2E4C06393C04651550BC533C
        95A10762B02F93DC2D94D9278CD52B92D92D94DA2D94DA258DD6278DD62C92D9
        2A91D8288ED7268DD5288ED7187EC6115883C0BCB8FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFF5FF86A68B0089042FC44216911C50774C195D3E004827166E1F30A2
        326CD47D9CF0AD2D86900C68B03092DD3197DB248AD52F95DA3098DB2F96DA28
        8ED62990D72E95DB2C92D92A90D8278ED62991D91B80C8085888B7B4B2FFFFFF
        0000FFFFFFFFFFFFF8F4F864956303940E27C23A32C0442EB63C28AE3635B842
        51C55E69D27A76D88D85DF9D79DA8C0062641371BB3396DF349ADD238BD33198
        DC3298DC3399DD298FD72B91D83298DC2F96DA2C93D9288FD72C92D91F82C900
        588DB0AFAEFFFFFF0000FFFFFFEAEFE935863700A1061EBB2F25BB362FBC403A
        C54E4BCA5E58CC6C60D07664D07975D68C7BDC90177F180044611579C93599DF
        399EDF268DD9389EE2359CDF379DDF2B90D82B91D8349BDE3198DC3096DB2990
        D72F94DB2587D500588EA8A8A7FFFFFF0000FFFFFFC7DCC60085010EB72016B9
        2826BB3730BC4039C34C49C75C4EC96260CF7570D78579DE8E24A21E06393403
        4F8B1A7BBF389FE53CA4E51F78B02C83B7369BDC3DA5E82D93DA2D94D9389DE0
        379ADD3299DD2A91D83397DD278BD4005B91A0A3A2FFFFFF0000FFFFFFFFFFFF
        DAE8D92B9A2F12AD2128BF3A2FBC403BC54E47CA5A51CD6357CD6541B34A0B6E
        1A072F481334620153861B80CA3996D21B5E9A0A4D920D4883164C6E3594D12E
        97DE2F95DB3AA1E3389FE1349BDE2A91D7399EE02A8DD9005C93979C9EFFFFFF
        0000FFFFFFFFFFFFFFFFFFEAECE94D9F4E04A31134C5472BB1371A9E22188D25
        16633B09483C0B375014356413385F005288278BCE1A6FB6105EAA1A7DCB1472
        C30A417D2D72932F97DE3198DC3DA3E43BA1E3389EE12A91D8389EE22E93DA02
        619D8A9399FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFBFE71B57315A0211B
        911C5D7A73096095083D7313326013376213375F13375F02578F288CD20F5EA8
        1879C82086D31D81D00F5EAC175E8E3196D9349ADE40A6E53EA4E53BA1E22991
        D83BA2E33398E10665A4869093FFFEFC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFAFD1AE1B931A75939F06639F0C406B13365E13386013375F12385F00
        5D942C91D7145EA657A3D860ACDF5DAADC155FA72172A0359ADE349BDE44A9E8
        40A6E53EA4E42991D83FA5E5369CE40666A5768992FFFDFB0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F5DC95BCD4005B9210386013375F1338
        6013375F12375E005D943199DB2175B19CB0D3EEF5FDC2D2E7195D9E3C9DD333
        9BE0379DE045AAE841A7E541A7E72990D840A6E53A9FE50668A671858CFCFAF8
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BB3CE00578F
        11386013375F13386013375E0D3D670360963297D93FA8E92A84BD559ACA2F85
        BF41A2DD4CB4F1359CDE38A0E249AEEC45ABEA48AEEA2A90D743A9E73EA6E80F
        72B4607F8DFCF9F70000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF76A9C600568E13355E13386113386013365E0E3C6604639E3399DA4DB1F0
        3FA9E92994DC4DB5F24CB3F04CB2EE359CE0389FE14BB1ED48AEEA49AEEB2B91
        D946AAEA3FA7E71374B7597A8BFCF7F50000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF5F9DC0004F861233520F2E5013386013365D0B426C05
        65A13B9FE14DB3EF3EA6E739A1E44DB7F248B0EF4AB3F1319BE0349FE449B3F1
        45AFEF46B1F0258FD93DA8EA47AFEE1375B748718BF9F4F20000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C9DC3004984025A16003B170D25
        4B14365C0B426E0A6BA93EA2E54AB5F438A1E43AA4E853B5EE4EB4EE53B6EF41
        9EDD53A8DD61B7E960B7E863B9E84B9CD462B4E64AAEEF1478BE466F87F5EFED
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5089B8003574
        0E771623A3260033180A183A09406B0B6EAB34A2EB92C4DCDCDBCCE0E5D5EFEB
        D4EFEBD4ECE6D3EEEBD3F8F3D2FCFAD5FAFAD5F2EDD3FBFED9FDE9CC9CC8DD12
        7DC63A6B86F4EEEA0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E1E28B
        A08D175C2E0062072E9B3280E39940B24800420D0A32530B74BA35A5ECFDE7CE
        E6DEEAD1CAF4C7C2F0B7B5F0FFFAF8DFDAF7A19CF4948EF28380F8FCFCFD7874
        FAFFF4EBBFDADF1A81CB306380EDE8E40000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF819E802B862C219E2C35B9424AC55A62CD736ED4847DDB9356C65C0868470B
        6DBB45ABEAEFDED9382FEF2D27F05A56F23C35EF8C87F6615CF38583F6433DF0
        6965F4FCFBFE2C26EFFEF3F1BCDCE21981CB2C6382EAE4E00000FFFFFFFFFFFF
        FFFFFFF8F2F757965705A4122CC03E44C85849C95D56CB6B60D0766CD18076D6
        8C90E89F3793930B6CB554B6EFECDDDA2E28EFE3E2FBFAFAFDF0F0FD2019EC47
        41F0FFFFFF7773F4BCBAF9FCFBFD302AEFFFF7F9C4E3E81B87D2245F81E3E0DD
        0000FFFFFFFFFFFFFFFFFF6EA36E09A0142BC03E34BE443DC35148C75B54CA68
        60CF756CD18175D58B8EE69C3993960C6EB853B7F1F6E4DA2A23ED352FF06966
        F3FFFFFF3C35EF5D58F2FFFFFF7571F4BFBEFAFFFFFE322DF6D9D3CFB5CDCF23
        8ED9215E80E0DBD90000FFFFFFFFFFFFBEC7BF00920321BD322ABF3C31C3443D
        C54F48C95654CD6565D2786BD28083DE9B77DC7E127572147BC65BB9EEF3E2DA
        2924EFB8B4F8DBDBFBB2AFF73A36F0443DEFC0BDF94D47F0645EF3706CF75C53
        D6CFB99C8DB6CF2694DC1B587CD6D5D20000FFFFFFFFFFFF4FA0520BB51D1EBE
        3012AD2118992144A84F117443095B3024912D79DD9056BF620B6610004D6D1C
        83CB69BFEFF7E5DB3630F03C36F05550F1524DF2C0BFFAC2C0F97D79F58480F5
        8E8CF59A97F7F8DDCDCCDEDD57C0FB2C98DE195B7ECFCDCB0000FFFFFFEBF1EB
        0B90100CB61D00900678A178C2D4BED2DAE3025BA108367019842B4BC34D0157
        110F2C53024F851B87CD6DBEEEFFF4DADBDBFBE0E0FBEDEEFCF5F6FDFFFFF8FF
        FFF8FFFFF8FFFFF4FFFFF2FFFFEDFFE4C95DBBF151BDFD349BE015597FCBCBC8
        0000FFFFFFC3DEC30190062A8F2DD2D1CFFFFFFFFFFFFFDAE5F2005A940F3966
        04641801492013306515325B025182228BCF68BDF2FFEDC4FFFADFFFF9E3FFF4
        D9FFF1DAFEEBD4F7E9D6EEE5D3E5E2D5DCDDD9D1DBD98EC4E249B9F955B9F633
        9BE00C547EC0C2C20000FFFFFFC3E1C3007000B4BBB5FFFFFFFFFFFFFFFFFFD6
        E3ED00528D00487C00467400437900477A004576005588268CCE49B5FBB3D0D9
        BED4D5ABD0E2A3CFE390CBE887C6EC74C0F05EB9F548B1F13EAAF033A1E92C9A
        E23093D42B8FCF0F76BD105780CFCFCD0000FFFFFFC5E2C54F9250FFF8FFFFFF
        FFFFFFFFFFFFFFF6F9FA6AA1BF4389B2488BB6478CB5478CB54F91B804619624
        85C644AAEE3BA8EF39A2E92E9BE02892D9238ACF1780C90A74BE046CAD00629F
        005C96005991005A97025893096195186B9D75A0B8FCF9F80000FFFFFFFFFEFF
        F0F7F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF2E77A600589500609E00548F00518800548B0F6192256C972C78A13F
        7DA14B89AA5C96B87AA6C3A5C6DABDCAD2EEF4F5FFFFFEFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF7FAFCA2F79A66190AC8EB1C3AECBDCD2DFE9E4EE
        F4EFF0F1F3F9FCFEFBF7FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
      Caption = 'Sair'
      ShortCut = 120
    end
  end
  object sds_repfor: TSQLDataSet
    CommandText = 'select * from REPR_FORNECEDOR '#13#10'where COD_FORNECEDOR=:pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 484
    Top = 496
    object sds_repforCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_repforCOD_REPRFOR: TIntegerField
      FieldName = 'COD_REPRFOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_repforFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_repforFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_repforFONE2: TStringField
      FieldName = 'FONE2'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_repforENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_repforNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_repforCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_repforBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_repforCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_repforUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sds_repforCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_repforEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_repforNOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_repforFUNCAO: TStringField
      FieldName = 'FUNCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_repforDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
    object sds_repforTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 8
    end
    object sds_repforCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
  end
  object dsp_repfor: TDataSetProvider
    DataSet = sds_repfor
    UpdateMode = upWhereChanged
    Left = 531
    Top = 488
  end
  object cds_repfor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_repfor'
    Left = 570
    Top = 496
    object cds_repforCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object cds_repforCOD_REPRFOR: TIntegerField
      FieldName = 'COD_REPRFOR'
    end
    object cds_repforFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0099;1;_'
      Size = 13
    end
    object cds_repforFONE1: TStringField
      FieldName = 'FONE1'
      EditMask = '!\(99\)0000-0099;1;_'
      Size = 13
    end
    object cds_repforFONE2: TStringField
      FieldName = 'FONE2'
      EditMask = '!\(99\)0000-0099;1;_'
      Size = 13
    end
    object cds_repforENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cds_repforNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cds_repforCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cds_repforBAIRRO: TStringField
      FieldName = 'BAIRRO'
      EditMask = '000\.00000\.00\-0;1;_'
      Size = 50
    end
    object cds_repforCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object cds_repforUF: TStringField
      FieldName = 'UF'
      EditMask = 'LL;1;_'
      Size = 2
    end
    object cds_repforCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cds_repforEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object cds_repforNOME_REPRFOR: TStringField
      FieldName = 'NOME_REPRFOR'
      Size = 60
    end
    object cds_repforFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 60
    end
    object cds_repforDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
    object cds_repforTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 8
    end
    object cds_repforCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000.000.000-00;1;_'
      Size = 14
    end
  end
  object ds_repfor: TDataSource
    DataSet = cds_repfor
    Left = 612
    Top = 494
  end
end
