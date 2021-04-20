object fArquivoRetorno: TfArquivoRetorno
  Left = 303
  Top = 51
  Width = 772
  Height = 634
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 65
    Align = alTop
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clBackground
    Background.EndColor = clTeal
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 259
      Top = 26
      Width = 267
      Height = 22
      Caption = 'Arquivo Retorno - Banco Sicredi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 256
      Top = 22
      Width = 267
      Height = 22
      Caption = 'Arquivo Retorno - Banco Sicredi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 64
    Width = 753
    Height = 531
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Arquivo Retorno'
      object Label3: TLabel
        Left = 6
        Top = 9
        Width = 13
        Height = 16
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 220
        Top = 217
        Width = 18
        Height = 13
        Caption = '......'
      end
      object Label5: TLabel
        Left = 272
        Top = 217
        Width = 44
        Height = 13
        Caption = 'Registros'
      end
      object BitBtn1: TBitBtn
        Left = 596
        Top = 48
        Width = 89
        Height = 33
        Caption = 'PROCURAR'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object DBGrid2: TDBGrid
        Left = 6
        Top = 238
        Width = 726
        Height = 47
        Ctl3D = False
        DataSource = DtSrcREC
        ParentCtl3D = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TITULO'
            Title.Caption = 'T'#237'tulo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAVENCIMENTO'
            Title.Caption = 'Vencimento'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_RESTO'
            Title.Caption = 'Valor R$'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = 'Situa'#231#227'o'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RA'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMECLIENTE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Caption = 'Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 300
            Visible = True
          end>
      end
      object BitBtn2: TBitBtn
        Left = 596
        Top = 86
        Width = 89
        Height = 33
        Caption = 'BAIXAR'
        TabOrder = 2
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 596
        Top = 165
        Width = 89
        Height = 33
        Caption = 'SAIR'
        TabOrder = 3
        OnClick = BitBtn3Click
      end
      object Memo1: TMemo
        Left = 6
        Top = 276
        Width = 726
        Height = 110
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
      end
      object BitBtn4: TBitBtn
        Left = 596
        Top = 125
        Width = 89
        Height = 33
        Caption = 'IMPRIMIR'
        Enabled = False
        TabOrder = 5
      end
      object DBGrid3: TDBGrid
        Left = 8
        Top = 38
        Width = 545
        Height = 169
        DataSource = DataSource2
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TITULO'
            Title.Caption = 'Titulo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_RECEBIDO'
            Title.Caption = 'Valor Recebido'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TITULO'
            Title.Caption = 'valor Titulo'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MULTA_JUROS'
            Title.Caption = 'Multa/Juros'
            Width = 78
            Visible = True
          end>
      end
      object RadioGroup1: TRadioGroup
        Left = 455
        Top = 0
        Width = 284
        Height = 33
        Caption = 'Conta'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'ASH'
          'PCMSO'
          'PARTICULAR')
        TabOrder = 7
      end
      object BitBtn5: TBitBtn
        Left = 597
        Top = 202
        Width = 89
        Height = 31
        Caption = 'Limpar'
        TabOrder = 8
        OnClick = BitBtn5Click
      end
      object DBGrid1: TDBGrid
        Left = 9
        Top = 392
        Width = 545
        Height = 82
        DataSource = DataSource3
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TITULO'
            Title.Caption = 'Titulo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_RECEBIDO'
            Title.Caption = 'Valor Recebido'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MULTA_JUROS'
            Title.Caption = 'Multa/Juros'
            Width = 78
            Visible = True
          end>
      end
      object BitBtn6: TBitBtn
        Left = 584
        Top = 404
        Width = 113
        Height = 25
        Caption = 'Limpar N'#227'o Baixado'
        TabOrder = 10
        OnClick = BitBtn6Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Retorno Debito Automatico'
      ImageIndex = 1
      object Label6: TLabel
        Left = 48
        Top = 224
        Width = 111
        Height = 13
        Caption = '*OBS  campo '#39'DEBITO'#39
      end
      object Label7: TLabel
        Left = 496
        Top = 29
        Width = 29
        Height = 13
        Caption = '*OBS.'
      end
      object Label8: TLabel
        Left = 112
        Top = 24
        Width = 32
        Height = 13
        Caption = 'Label8'
      end
      object BitBtn7: TBitBtn
        Left = 628
        Top = 48
        Width = 89
        Height = 33
        Caption = 'PROCURAR'
        TabOrder = 0
        OnClick = BitBtn7Click
      end
      object DBGrid4: TDBGrid
        Left = 72
        Top = 49
        Width = 545
        Height = 169
        DataSource = dsDebito
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENCIMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CENTAVOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEBITO'
            Visible = True
          end>
      end
      object BitBtn8: TBitBtn
        Left = 640
        Top = 176
        Width = 75
        Height = 25
        Caption = 'Limpar'
        TabOrder = 2
        OnClick = BitBtn8Click
      end
      object Memo2: TMemo
        Left = 48
        Top = 241
        Width = 665
        Height = 257
        Lines.Strings = (
          #8220'00'#8221' = D'#233'bito efetuado '
          #8220'01'#8221' = D'#233'bito n'#227'o efetuado - Insufici'#234'ncia de fundos '
          #8220'02'#8221' = D'#233'bito n'#227'o efetuado - Conta n'#227'o cadastrada '
          #8220'04'#8221' = D'#233'bito n'#227'o efetuado - Outras restri'#231#245'es '
          
            #8220'05'#8221' = D'#233'bito n'#227'o efetuado '#8211' valor do d'#233'bito excede valor limite' +
            ' aprovado. '
          #8220'10'#8221' = D'#233'bito n'#227'o efetuado - Ag'#234'ncia em regime de encerramento '
          #8220'12'#8221' = D'#233'bito n'#227'o efetuado - Valor inv'#225'lido '
          #8220'13'#8221' = D'#233'bito n'#227'o efetuado - Data de lan'#231'amento inv'#225'lida '
          #8220'14'#8221' = D'#233'bito n'#227'o efetuado - Ag'#234'ncia inv'#225'lida '
          #8220'15'#8221' = D'#233'bito n'#227'o efetuado - conta inv'#225'lida '
          
            #8220'18'#8221' = D'#233'bito n'#227'o efetuado - Data do d'#233'bito anterior '#224' do proces' +
            'samento '
          
            #8220'19'#8221' = D'#233'bito n'#227'o efetuado '#8211' Ag'#234'ncia/Conta n'#227'o pertence ao CPF/C' +
            'NPJ informado '
          #8220'20'#8221' = D'#233'bito n'#227'o efetuado '#8211' conta conjunta n'#227'o solid'#225'ria '
          #8220'30'#8221' = D'#233'bito n'#227'o efetuado - Sem contrato de d'#233'bito autom'#225'tico '
          
            #8220'31'#8221' = D'#233'bito efetuado em data diferente da data informada '#8211' fer' +
            'iado na pra'#231'a de d'#233'bito '
          #8220'96'#8221' = Manuten'#231#227'o do Cadastro '
          #8220'97'#8221' = Cancelamento - N'#227'o encontrado '
          #8220'98'#8221' = Cancelamento - N'#227'o efetuado, fora do tempo h'#225'bil '
          #8220'99'#8221' = Cancelamento - cancelado conforme solicita'#231#227'o')
        TabOrder = 3
      end
    end
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 160
    Top = 32
  end
  object sqlArquivoRetorno: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 288
    Top = 40
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    FileName = 'C:\BANCOBRASIL\Retorno\CBR64337.RET'
    Filter = 'Todos Arquivos|*.*'
    InitialDir = 'C:\BANCOBRASIL\Retorno'
    Left = 48
    Top = 194
  end
  object DataSource1: TDataSource
    DataSet = cds
    Left = 112
    Top = 160
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 48
    Top = 160
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 80
    Top = 160
    object cdsID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object cdsTITULO: TStringField
      FieldName = 'TITULO'
      FixedChar = True
      Size = 5
    end
    object cdsVALOR: TStringField
      FieldName = 'VALOR'
      FixedChar = True
      Size = 11
    end
    object cdsCENTAVOS: TStringField
      FieldName = 'CENTAVOS'
      FixedChar = True
      Size = 2
    end
    object cdsVALORPG: TStringField
      FieldName = 'VALORPG'
      FixedChar = True
      Size = 11
    end
    object cdsCENTAVOSPG: TStringField
      FieldName = 'CENTAVOSPG'
      FixedChar = True
      Size = 2
    end
    object cdsDATA: TStringField
      FieldName = 'DATA'
      Size = 8
    end
    object cdsVALOR_JUROS: TStringField
      FieldName = 'VALOR_JUROS'
      FixedChar = True
      Size = 11
    end
    object cdsCENTAVOS_JUROS: TStringField
      FieldName = 'CENTAVOS_JUROS'
      FixedChar = True
      Size = 2
    end
    object cdsVALOR_COM_JUROS: TStringField
      FieldName = 'VALOR_COM_JUROS'
      FixedChar = True
      Size = 14
    end
    object cdsVALPG: TStringField
      FieldName = 'VALPG'
      FixedChar = True
      Size = 14
    end
    object cdsVALOR_MULTA: TStringField
      FieldName = 'VALOR_MULTA'
      FixedChar = True
      Size = 11
    end
    object cdsCENTAVOS_MULTA: TStringField
      FieldName = 'CENTAVOS_MULTA'
      FixedChar = True
      Size = 2
    end
    object cdsVALOR_COM_MULTA: TStringField
      FieldName = 'VALOR_COM_MULTA'
      FixedChar = True
      Size = 14
    end
  end
  object sds: TSQLDataSet
    CommandText = 'Select *  from TABRETORNO where ID = '#39'06'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 160
    object sdsID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object sdsTITULO: TStringField
      FieldName = 'TITULO'
      FixedChar = True
      Size = 5
    end
    object sdsVALOR: TStringField
      FieldName = 'VALOR'
      FixedChar = True
      Size = 11
    end
    object sdsCENTAVOS: TStringField
      FieldName = 'CENTAVOS'
      FixedChar = True
      Size = 2
    end
    object sdsVALORPG: TStringField
      FieldName = 'VALORPG'
      FixedChar = True
      Size = 11
    end
    object sdsCENTAVOSPG: TStringField
      FieldName = 'CENTAVOSPG'
      FixedChar = True
      Size = 2
    end
    object sdsDATA: TStringField
      FieldName = 'DATA'
      Size = 8
    end
    object sdsVALOR_JUROS: TStringField
      FieldName = 'VALOR_JUROS'
      FixedChar = True
      Size = 11
    end
    object sdsCENTAVOS_JUROS: TStringField
      FieldName = 'CENTAVOS_JUROS'
      FixedChar = True
      Size = 2
    end
    object sdsVALOR_COM_JUROS: TStringField
      FieldName = 'VALOR_COM_JUROS'
      FixedChar = True
      Size = 14
    end
    object sdsVALPG: TStringField
      FieldName = 'VALPG'
      FixedChar = True
      Size = 14
    end
    object sdsVALOR_MULTA: TStringField
      FieldName = 'VALOR_MULTA'
      FixedChar = True
      Size = 11
    end
    object sdsCENTAVOS_MULTA: TStringField
      FieldName = 'CENTAVOS_MULTA'
      FixedChar = True
      Size = 2
    end
    object sdsVALOR_COM_MULTA: TStringField
      FieldName = 'VALOR_COM_MULTA'
      FixedChar = True
      Size = 14
    end
  end
  object sdsREC: TSQLDataSet
    CommandText = 
      'select  rec.*,'#13#10'           soc.NOMECLIENTE,'#13#10'           soc.CODC' +
      'LIENTE,'#13#10'           soc.RA'#13#10'from RECEBIMENTO rec'#13#10'inner join  CL' +
      'IENTES soc on'#13#10'soc.CODCLIENTE = rec.CODCLIENTE'#13#10'where   rec.TITU' +
      'LO = :tit  and rec.CODALMOXARIFADO = :setor'#13#10'and rec.STATUS = '#39'5' +
      '-'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'tit'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'setor'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 80
    Top = 352
    object sdsRECCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      Required = True
    end
    object sdsRECTITULO: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object sdsRECEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object sdsRECCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sdsRECDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object sdsRECDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
    end
    object sdsRECCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object sdsRECCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
    end
    object sdsRECCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
    end
    object sdsRECSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsRECVIA: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sdsRECFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsRECDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object sdsRECHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object sdsRECCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object sdsRECCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object sdsRECCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object sdsRECCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object sdsRECN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object sdsRECDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
    end
    object sdsRECVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
    end
    object sdsRECJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object sdsRECDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object sdsRECPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object sdsRECTROCA: TFloatField
      FieldName = 'TROCA'
    end
    object sdsRECFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
    end
    object sdsRECVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
    end
    object sdsRECVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
    end
    object sdsRECVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
    end
    object sdsRECOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
    end
    object sdsRECOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
    end
    object sdsRECPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
    object sdsRECDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      Size = 15
    end
    object sdsRECNF: TIntegerField
      FieldName = 'NF'
    end
    object sdsRECDP: TIntegerField
      FieldName = 'DP'
    end
    object sdsRECBL: TIntegerField
      FieldName = 'BL'
    end
    object sdsRECCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object sdsRECCODIGO_DE_BARRAS: TStringField
      FieldName = 'CODIGO_DE_BARRAS'
      Size = 54
    end
    object sdsRECIMAGE_COD_BARRAS: TGraphicField
      FieldName = 'IMAGE_COD_BARRAS'
      BlobType = ftGraphic
    end
    object sdsRECDV: TStringField
      FieldName = 'DV'
      FixedChar = True
      Size = 2
    end
    object sdsRECNOMEARQUIVORETORNO: TStringField
      FieldName = 'NOMEARQUIVORETORNO'
      Size = 80
    end
    object sdsRECDATACONSOLIDA: TDateField
      FieldName = 'DATACONSOLIDA'
    end
    object sdsRECNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object sdsRECCODCLIENTE_1: TIntegerField
      FieldName = 'CODCLIENTE_1'
      Required = True
    end
    object sdsRECRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
  end
  object dspREC: TDataSetProvider
    DataSet = sdsREC
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 352
  end
  object cdsREC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tit'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'setor'
        ParamType = ptInput
      end>
    ProviderName = 'dspREC'
    Left = 160
    Top = 352
    object cdsRECCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      Required = True
    end
    object cdsRECTITULO: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object cdsRECEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsRECCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsRECDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsRECDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
    end
    object cdsRECCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object cdsRECCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
    end
    object cdsRECCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
    end
    object cdsRECSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsRECVIA: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsRECFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsRECDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object cdsRECHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object cdsRECCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object cdsRECCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object cdsRECCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object cdsRECCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object cdsRECN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object cdsRECDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
    end
    object cdsRECVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
    end
    object cdsRECJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object cdsRECDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsRECPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object cdsRECTROCA: TFloatField
      FieldName = 'TROCA'
    end
    object cdsRECFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
    end
    object cdsRECVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
    end
    object cdsRECVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
    end
    object cdsRECVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
    end
    object cdsRECOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
    end
    object cdsRECOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
    end
    object cdsRECPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
    object cdsRECDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      Size = 15
    end
    object cdsRECNF: TIntegerField
      FieldName = 'NF'
    end
    object cdsRECDP: TIntegerField
      FieldName = 'DP'
    end
    object cdsRECBL: TIntegerField
      FieldName = 'BL'
    end
    object cdsRECCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object cdsRECCODIGO_DE_BARRAS: TStringField
      FieldName = 'CODIGO_DE_BARRAS'
      Size = 54
    end
    object cdsRECIMAGE_COD_BARRAS: TGraphicField
      FieldName = 'IMAGE_COD_BARRAS'
      BlobType = ftGraphic
    end
    object cdsRECDV: TStringField
      FieldName = 'DV'
      FixedChar = True
      Size = 2
    end
    object cdsRECNOMEARQUIVORETORNO: TStringField
      FieldName = 'NOMEARQUIVORETORNO'
      Size = 80
    end
    object cdsRECDATACONSOLIDA: TDateField
      FieldName = 'DATACONSOLIDA'
    end
    object cdsRECNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsRECCODCLIENTE_1: TIntegerField
      FieldName = 'CODCLIENTE_1'
      Required = True
    end
    object cdsRECRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
  end
  object DtSrcREC: TDataSource
    DataSet = cdsREC
    Left = 200
    Top = 352
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Color = clBtnFace
    DrawMenuBar = False
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    AutoDetect = True
    Active = True
    Left = 80
    Top = 192
  end
  object sqs: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 144
    Top = 136
  end
  object sds_cbr: TSQLDataSet
    CommandText = 'select * from CBR643'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 480
    Top = 377
    object sds_cbrID_CBR: TIntegerField
      FieldName = 'ID_CBR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_cbrDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cbrNOMECBR: TStringField
      FieldName = 'NOMECBR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sds_cbrOBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
  end
  object dsp_cbr: TDataSetProvider
    DataSet = sds_cbr
    Left = 510
    Top = 360
  end
  object cds_cbr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_cbr'
    Left = 540
    Top = 359
    object cds_cbrID_CBR: TIntegerField
      FieldName = 'ID_CBR'
    end
    object cds_cbrDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object cds_cbrNOMECBR: TStringField
      FieldName = 'NOMECBR'
      Required = True
      Size = 100
    end
    object cds_cbrOBS: TGraphicField
      FieldName = 'OBS'
      BlobType = ftGraphic
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'Select ID, '#13#10'           cast(TITULO as integer) as TITULO, '#13#10'   ' +
      '        DATA, '#13#10'          CAST(VALPG as DOUBLE PRECISION) as Val' +
      'or_Recebido ,'#13#10'          CAST(VALOR || '#39'.'#39' || centavos as DOUBLE' +
      ' PRECISION) as Valor_Titulo,'#13#10#13#10'          CAST(valor_com_juros a' +
      's DOUBLE PRECISION) + CAST(valor_com_multa as DOUBLE PRECISION) ' +
      'as multa_juros ,'#13#10'         baixado'#13#10'from TABRETORNO where ID = '#39 +
      '06'#39' '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 176
    Top = 168
    object SQLDataSet1ID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object SQLDataSet1TITULO: TIntegerField
      FieldName = 'TITULO'
      ReadOnly = True
    end
    object SQLDataSet1DATA: TStringField
      FieldName = 'DATA'
      ReadOnly = True
      Size = 8
    end
    object SQLDataSet1VALOR_RECEBIDO: TFloatField
      FieldName = 'VALOR_RECEBIDO'
      ReadOnly = True
    end
    object SQLDataSet1VALOR_TITULO: TFloatField
      FieldName = 'VALOR_TITULO'
      ReadOnly = True
    end
    object SQLDataSet1MULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ReadOnly = True
    end
    object SQLDataSet1BAIXADO: TStringField
      FieldName = 'BAIXADO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText]
    Left = 208
    Top = 168
  end
  object cdsB: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 240
    Top = 168
    object cdsBID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object cdsBTITULO: TIntegerField
      FieldName = 'TITULO'
      ReadOnly = True
    end
    object cdsBDATA: TStringField
      FieldName = 'DATA'
      ReadOnly = True
      Size = 8
    end
    object cdsBVALOR_RECEBIDO: TFloatField
      FieldName = 'VALOR_RECEBIDO'
      ReadOnly = True
      DisplayFormat = ',#0.00'
      EditFormat = ',#0.00'
    end
    object cdsBVALOR_TITULO: TFloatField
      FieldName = 'VALOR_TITULO'
      ReadOnly = True
      DisplayFormat = ',#0.00'
      EditFormat = ',#0.00'
    end
    object cdsBMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ReadOnly = True
      DisplayFormat = ',#0.00'
      EditFormat = ',#0.00'
    end
    object cdsBBAIXADO: TStringField
      FieldName = 'BAIXADO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object DataSource2: TDataSource
    DataSet = cdsB
    Left = 272
    Top = 168
  end
  object sqlBaixa: TSQLDataSet
    CommandText = 
      'Select ID, '#13#10'           cast(TITULO as integer) as TITULO, '#13#10'   ' +
      '        DATA, '#13#10'          CAST(VALPG as DOUBLE PRECISION) as Val' +
      'or_Recebido ,'#13#10'          CAST(VALOR || '#39'.'#39' || centavos as DOUBLE' +
      ' PRECISION) as Valor_Titulo,'#13#10#13#10'          CAST(valor_com_juros a' +
      's DOUBLE PRECISION) + CAST(valor_com_multa as DOUBLE PRECISION) ' +
      'as multa_juros ,'#13#10'         baixado'#13#10'from TABRETORNO where ID = '#39 +
      '06'#39'  and baixado is null'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 560
    Top = 520
    object StringField1: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object IntegerField1: TIntegerField
      FieldName = 'TITULO'
      ReadOnly = True
    end
    object StringField2: TStringField
      FieldName = 'DATA'
      ReadOnly = True
      Size = 8
    end
    object FloatField1: TFloatField
      FieldName = 'VALOR_RECEBIDO'
      ReadOnly = True
    end
    object FloatField2: TFloatField
      FieldName = 'VALOR_TITULO'
      ReadOnly = True
    end
    object FloatField3: TFloatField
      FieldName = 'MULTA_JUROS'
      ReadOnly = True
    end
    object StringField3: TStringField
      FieldName = 'BAIXADO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object dspBaixa: TDataSetProvider
    DataSet = sqlBaixa
    Options = [poAllowCommandText]
    Left = 592
    Top = 520
  end
  object CDSbaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBaixa'
    Left = 632
    Top = 520
    object StringField4: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object IntegerField2: TIntegerField
      FieldName = 'TITULO'
      ReadOnly = True
    end
    object StringField5: TStringField
      FieldName = 'DATA'
      ReadOnly = True
      Size = 8
    end
    object FloatField4: TFloatField
      FieldName = 'VALOR_RECEBIDO'
      ReadOnly = True
      DisplayFormat = ',#0.00'
      EditFormat = ',#0.00'
    end
    object FloatField5: TFloatField
      FieldName = 'VALOR_TITULO'
      ReadOnly = True
      DisplayFormat = ',#0.00'
      EditFormat = ',#0.00'
    end
    object FloatField6: TFloatField
      FieldName = 'MULTA_JUROS'
      ReadOnly = True
      DisplayFormat = ',#0.00'
      EditFormat = ',#0.00'
    end
    object StringField6: TStringField
      FieldName = 'BAIXADO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object DataSource3: TDataSource
    DataSet = CDSbaixa
    Left = 664
    Top = 520
  end
  object sqlDebito: TSQLDataSet
    CommandText = 'Select *  from TABDEBITO where ID = '#39'F'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 392
    Top = 104
    object sqlDebitoID: TStringField
      FieldName = 'ID'
      Size = 1
    end
    object sqlDebitoCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object sqlDebitoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 4
    end
    object sqlDebitoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 6
    end
    object sqlDebitoVENCIMENTO: TStringField
      FieldName = 'VENCIMENTO'
      Size = 8
    end
    object sqlDebitoVALOR: TStringField
      FieldName = 'VALOR'
      Size = 13
    end
    object sqlDebitoCENTAVOS: TStringField
      FieldName = 'CENTAVOS'
      Size = 2
    end
    object sqlDebitoDEBITO: TStringField
      FieldName = 'DEBITO'
      Size = 2
    end
  end
  object dspDebito: TDataSetProvider
    DataSet = sqlDebito
    Options = [poAllowCommandText]
    Left = 424
    Top = 104
  end
  object cdsDebito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDebito'
    Left = 456
    Top = 104
    object cdsDebitoID: TStringField
      FieldName = 'ID'
      Size = 1
    end
    object cdsDebitoCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsDebitoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 4
    end
    object cdsDebitoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 6
    end
    object cdsDebitoVENCIMENTO: TStringField
      FieldName = 'VENCIMENTO'
      Size = 8
    end
    object cdsDebitoVALOR: TStringField
      FieldName = 'VALOR'
      Size = 13
    end
    object cdsDebitoCENTAVOS: TStringField
      FieldName = 'CENTAVOS'
      Size = 2
    end
    object cdsDebitoDEBITO: TStringField
      FieldName = 'DEBITO'
      Size = 2
    end
  end
  object dsDebito: TDataSource
    DataSet = cdsDebito
    Left = 308
    Top = 88
  end
end
