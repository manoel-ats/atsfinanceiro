object flerRet: TflerRet
  Left = 283
  Top = 42
  Width = 940
  Height = 643
  Caption = 'Arquivos Remessas e Retornos '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 13
    Top = 8
    Width = 913
    Height = 601
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Todos Retornos'
      object Label2: TLabel
        Left = 194
        Top = 430
        Width = 9
        Height = 13
        Caption = '...'
      end
      object Label3: TLabel
        Left = 242
        Top = 432
        Width = 44
        Height = 13
        Caption = 'Registros'
      end
      object Label4: TLabel
        Left = 618
        Top = 558
        Width = 9
        Height = 13
        Caption = '...'
      end
      object Label5: TLabel
        Left = 650
        Top = 560
        Width = 44
        Height = 13
        Caption = 'Registros'
      end
      object Label1: TLabel
        Left = 164
        Top = 14
        Width = 9
        Height = 13
        Caption = '...'
      end
      object Label7: TLabel
        Left = 600
        Top = 72
        Width = 83
        Height = 13
        Caption = 'Taxas Recebidas'
      end
      object Label12: TLabel
        Left = 144
        Top = 432
        Width = 24
        Height = 13
        Caption = 'Total'
      end
      object Label13: TLabel
        Left = 576
        Top = 560
        Width = 24
        Height = 13
        Caption = 'Total'
      end
      object Label6: TLabel
        Left = 152
        Top = 70
        Width = 137
        Height = 13
        Hint = 
          '02 Entrada confirmada'#13#10'03 Entrada rejeitada'#13#10'04 transfer'#234'ncia de' +
          ' carteira/entrada'#13#10'05 transfer'#234'ncia de carteira/baixa'#13#10'06 Liquid' +
          'a'#231#227'o'#13#10'09 Baixa'#13#10'11 t'#237'tulos em carteira ( em ser)'#13#10'12 confirma'#231#227'o' +
          ' recebimento instru'#231#227'o de abatimento'#13#10'13 confirma'#231#227'o recebimento' +
          ' instru'#231#227'o de cancelamento abatimento'#13#10'14 confirma'#231#227'o recebiment' +
          'o instru'#231#227'o altera'#231#227'o de vencimento'#13#10'17 liquida'#231#227'o ap'#243's baixa ou' +
          ' liquida'#231#227'o t'#237'tulo n'#227'o registrado'#13#10'19 confirma'#231#227'o recebimento in' +
          'stru'#231#227'o de protesto'#13#10'20 confirma'#231#227'o recebimento instru'#231#227'o de sus' +
          'ta'#231#227'o/cancelamento de protesto'#13#10'23 remessa a cartorio ( aponte e' +
          'm cartorio)'#13#10'24 retirada de cartorio e manuten'#231#227'o em carteira'#13#10'2' +
          '5 protestado e baixado ( baixa por ter sido protestado)'#13#10'26 inst' +
          'ru'#231#227'o rejeitada'#13#10'27 confirma'#231#227'o do pedido de altera'#231#227'o de outros' +
          ' dados'#13#10'28 debito de tarifas/custas'#13#10'29 ocorr'#234'ncias do sacado'#13#10'3' +
          '0 altera'#231#227'o de dados rejeitada '
        Caption = 'Ocorr'#234'ncias(passar o mouse)'
        ParentShowHint = False
        ShowHint = True
      end
      object BitBtn1: TBitBtn
        Left = 8
        Top = 3
        Width = 145
        Height = 25
        Caption = 'Carregar arquivo CNAB 400'
        Enabled = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 824
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Limpar'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object Memo1: TMemo
        Left = 10
        Top = 88
        Width = 425
        Height = 337
        TabOrder = 2
      end
      object Memo2: TMemo
        Left = 448
        Top = 88
        Width = 457
        Height = 463
        TabOrder = 3
      end
      object BitBtn7: TBitBtn
        Left = 8
        Top = 38
        Width = 145
        Height = 25
        Caption = 'Carregar arquivo CNAB 240'
        TabOrder = 4
        OnClick = BitBtn7Click
      end
      object Memo5: TMemo
        Left = 18
        Top = 448
        Width = 425
        Height = 121
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Remessa Lote '
      ImageIndex = 1
      object Label8: TLabel
        Left = 200
        Top = 24
        Width = 9
        Height = 13
        Caption = '...'
      end
      object Label9: TLabel
        Left = 248
        Top = 560
        Width = 9
        Height = 13
        Caption = '...'
      end
      object Label10: TLabel
        Left = 192
        Top = 560
        Width = 24
        Height = 13
        Caption = 'Total'
      end
      object Label11: TLabel
        Left = 288
        Top = 560
        Width = 44
        Height = 13
        Caption = 'Registros'
      end
      object Label14: TLabel
        Left = 368
        Top = 560
        Width = 9
        Height = 13
        Caption = '...'
      end
      object BitBtn3: TBitBtn
        Left = 8
        Top = 11
        Width = 145
        Height = 25
        Caption = 'Carregar arquivo'
        TabOrder = 0
        OnClick = BitBtn3Click
      end
      object Memo3: TMemo
        Left = 8
        Top = 48
        Width = 881
        Height = 497
        TabOrder = 1
      end
      object BitBtn4: TBitBtn
        Left = 808
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Limpar'
        TabOrder = 2
        OnClick = BitBtn4Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Remessa Mensal / Remessa  Trimestral'
      ImageIndex = 2
      object Label15: TLabel
        Left = 200
        Top = 24
        Width = 9
        Height = 13
        Caption = '...'
      end
      object Label16: TLabel
        Left = 192
        Top = 560
        Width = 24
        Height = 13
        Caption = 'Total'
      end
      object Label17: TLabel
        Left = 248
        Top = 560
        Width = 9
        Height = 13
        Caption = '...'
      end
      object Label18: TLabel
        Left = 288
        Top = 560
        Width = 44
        Height = 13
        Caption = 'Registros'
      end
      object BitBtn5: TBitBtn
        Left = 8
        Top = 11
        Width = 145
        Height = 25
        Caption = 'Carregar arquivo'
        TabOrder = 0
        OnClick = BitBtn5Click
      end
      object Memo4: TMemo
        Left = 8
        Top = 48
        Width = 873
        Height = 489
        TabOrder = 1
      end
      object BitBtn6: TBitBtn
        Left = 800
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Limpar'
        TabOrder = 2
        OnClick = BitBtn6Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    FileName = 'C:\BANCO SANTANDER\retorno\COBST_SR71_02_050410P_MOV.TXT'
    Filter = 'Todos Arquivos|*.*'
    InitialDir = 'C:\BANCO SANTANDER\retorno'
    Left = 288
    Top = 34
  end
  object OpenDialog2: TOpenDialog
    DefaultExt = '*.txt'
    FileName = 'C:\BANCO SANTANDER\retorno\COBST_SR71_02_050410P_MOV.TXT'
    Filter = 'Todos Arquivos|*.*'
    InitialDir = 'C:\BANCO SANTANDER\retorno'
    Left = 368
    Top = 42
  end
end
