inherited fCobranca: TfCobranca
  Left = 254
  Top = 106
  Width = 813
  Height = 580
  Caption = 'fCobranca'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 16
    Top = 64
    Width = 68
    Height = 13
    Caption = 'CODCLIENTE'
    FocusControl = DBEdit1
  end
  object Label4: TLabel [1]
    Left = 88
    Top = 64
    Width = 77
    Height = 13
    Caption = 'NOMECLIENTE'
    FocusControl = DBEdit2
  end
  object Label6: TLabel [2]
    Left = 328
    Top = 264
    Width = 43
    Height = 13
    Caption = 'STATUS'
    FocusControl = DBEdit4
  end
  object Label7: TLabel [3]
    Left = 13
    Top = 125
    Width = 42
    Height = 13
    Caption = 'CODIGO'
    FocusControl = DBEdit5
  end
  object Label8: TLabel [4]
    Left = 392
    Top = 168
    Width = 52
    Height = 13
    Caption = 'CONTATO'
    FocusControl = DBEdit6
  end
  object Label9: TLabel [5]
    Left = 16
    Top = 168
    Width = 111
    Height = 13
    Caption = 'FORMA DE CONTATO'
    FocusControl = DBEdit7
  end
  object Label10: TLabel [6]
    Left = 16
    Top = 216
    Width = 84
    Height = 13
    Caption = 'DATA CONTATO'
    FocusControl = DBEdit8
  end
  object Label11: TLabel [7]
    Left = 160
    Top = 216
    Width = 31
    Height = 13
    Caption = 'HORA'
    FocusControl = DBEdit9
  end
  object Label12: TLabel [8]
    Left = 304
    Top = 214
    Width = 54
    Height = 13
    Caption = 'N'#186' TITULO'
    FocusControl = DBEdit10
  end
  object Label13: TLabel [9]
    Left = 416
    Top = 216
    Width = 48
    Height = 13
    Caption = 'DATAEMI'
    FocusControl = DBEdit11
  end
  object Label14: TLabel [10]
    Left = 560
    Top = 216
    Width = 58
    Height = 13
    Caption = 'DATAVENC'
    FocusControl = DBEdit12
  end
  object Label15: TLabel [11]
    Left = 16
    Top = 264
    Width = 97
    Height = 13
    Caption = 'DATA PREV. PGTO'
    FocusControl = DBEdit13
  end
  object Label16: TLabel [12]
    Left = 176
    Top = 264
    Width = 103
    Height = 13
    Caption = 'VALOR NEGOCIADO'
    FocusControl = DBEdit14
  end
  object Label17: TLabel [13]
    Left = 16
    Top = 312
    Width = 22
    Height = 13
    Caption = 'OBS'
    FocusControl = DBMemo1
  end
  object Label5: TLabel [14]
    Left = 104
    Top = 125
    Width = 32
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit5
  end
  object Label18: TLabel [15]
    Left = 384
    Top = 283
    Width = 205
    Height = 13
    Caption = 'A : ATIVO - F : FINALIZADO -E:EXCLUIDO'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 488
    Width = 797
    TabOrder = 16
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 797
    Height = 49
    TabOrder = 17
    inherited Label1: TLabel
      Left = 16
      Top = 17
      Width = 46
      Height = 19
      Font.Height = -16
    end
    inherited Label2: TLabel
      Left = 20
      Top = 18
      Width = 46
      Height = 19
      Font.Height = -16
    end
  end
  object btnP: TBitBtn [18]
    Left = 686
    Top = 76
    Width = 43
    Height = 25
    Caption = '...'
    Enabled = False
    TabOrder = 2
    OnClick = btnPClick
  end
  object DBEdit1: TDBEdit [19]
    Left = 16
    Top = 80
    Width = 49
    Height = 21
    DataField = 'CODCLIENTE'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [20]
    Left = 88
    Top = 80
    Width = 593
    Height = 21
    DataField = 'NOMECLIENTE'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [21]
    Left = 328
    Top = 280
    Width = 49
    Height = 21
    CharCase = ecUpperCase
    DataField = 'STATUS'
    DataSource = DtSrc
    TabOrder = 14
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [22]
    Left = 13
    Top = 141
    Width = 73
    Height = 21
    DataField = 'CODCLI'
    DataSource = DtSrc
    TabOrder = 18
  end
  object DBEdit6: TDBEdit [23]
    Left = 392
    Top = 184
    Width = 377
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CONTATO'
    DataSource = DtSrc
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit [24]
    Left = 16
    Top = 184
    Width = 369
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FORMA'
    DataSource = DtSrc
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit8: TDBEdit [25]
    Left = 16
    Top = 232
    Width = 134
    Height = 21
    DataField = 'DATACADASTRO'
    DataSource = DtSrc
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit9: TDBEdit [26]
    Left = 160
    Top = 232
    Width = 134
    Height = 21
    DataField = 'HORA'
    DataSource = DtSrc
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object DBEdit10: TDBEdit [27]
    Left = 304
    Top = 230
    Width = 97
    Height = 21
    DataField = 'NUMERO_TITULO'
    DataSource = DtSrc
    TabOrder = 9
    OnKeyPress = FormKeyPress
  end
  object DBEdit11: TDBEdit [28]
    Left = 416
    Top = 232
    Width = 134
    Height = 21
    DataField = 'DATAEMI'
    DataSource = DtSrc
    TabOrder = 10
    OnKeyPress = FormKeyPress
  end
  object DBEdit12: TDBEdit [29]
    Left = 560
    Top = 232
    Width = 134
    Height = 21
    DataField = 'DATAVENC'
    DataSource = DtSrc
    TabOrder = 11
    OnKeyPress = FormKeyPress
  end
  object DBEdit13: TDBEdit [30]
    Left = 16
    Top = 280
    Width = 134
    Height = 21
    DataField = 'DATAPREV'
    DataSource = DtSrc
    TabOrder = 12
    OnKeyPress = FormKeyPress
  end
  object DBEdit14: TDBEdit [31]
    Left = 176
    Top = 280
    Width = 134
    Height = 21
    DataField = 'VALORNEGOCIADO'
    DataSource = DtSrc
    TabOrder = 13
    OnKeyPress = FormKeyPress
  end
  object DBMemo1: TDBMemo [32]
    Left = 16
    Top = 328
    Width = 745
    Height = 145
    DataField = 'OBS'
    DataSource = DtSrc
    TabOrder = 15
    OnKeyPress = FormKeyPress
  end
  object Edit1: TEdit [33]
    Left = 101
    Top = 140
    Width = 668
    Height = 21
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object Edit2: TEdit [34]
    Left = 13
    Top = 141
    Width = 81
    Height = 21
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object rA: TRadioButton [35]
    Left = 632
    Top = 56
    Width = 57
    Height = 17
    Caption = 'ASH'
    Checked = True
    Enabled = False
    TabOrder = 19
    TabStop = True
    OnClick = rAClick
  end
  object rP: TRadioButton [36]
    Left = 704
    Top = 56
    Width = 73
    Height = 17
    Caption = 'PCMSO'
    Enabled = False
    TabOrder = 20
    OnClick = rPClick
  end
  inherited PopupMenu1: TPopupMenu
    inherited Procurar1: TMenuItem
      OnClick = btnProcurarClick
    end
  end
  inherited DtSrc: TDataSource
    DataSet = DMSaude.cdsCob
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dspCliente'
    Left = 200
    Top = 8
    object cdsClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cdsClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cdsClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsClienteRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cdsClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cdsClienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object cdsClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object cdsClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cdsClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object cdsClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object cdsClientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object cdsClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object cdsClienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object cdsClienteDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object cdsClienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object cdsClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsClienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object cdsClienteID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object cdsClienteDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object cdsClienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object cdsClienteSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object cdsClienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object cdsClienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object cdsClienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object cdsClienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object cdsClienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object cdsClienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object cdsClienteGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object cdsClienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object cdsClienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object cdsClienteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object cdsClienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object cdsClienteRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsClienteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object cdsClienteUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object cdsClienteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object cdsClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsClienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object cdsClienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object cdsClientePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsClienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object cdsClienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object cdsClienteCOD_ANS: TStringField
      FieldName = 'COD_ANS'
      Size = 10
    end
    object cdsClienteGERADEBITOAU: TStringField
      FieldName = 'GERADEBITOAU'
      FixedChar = True
      Size = 1
    end
    object cdsClienteNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Size = 30
    end
    object cdsClienteTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 60
    end
    object cdsClienteCODIGO_AGENCIA: TStringField
      FieldName = 'CODIGO_AGENCIA'
      Size = 10
    end
    object cdsClienteDIGITO_AGENCIA: TStringField
      FieldName = 'DIGITO_AGENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object cdsClienteDIGITO_CONTA: TStringField
      FieldName = 'DIGITO_CONTA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object cdsClienteSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 9
    end
    object cdsClienteTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 8
    end
    object cdsClienteCNS: TStringField
      FieldName = 'CNS'
      EditMask = '000\.0000\.0000\.0000;1;_'
      Size = 18
    end
    object cdsClienteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object cdsClienteCPF_D: TStringField
      FieldName = 'CPF_D'
      Size = 18
    end
    object cdsClienteCC: TStringField
      FieldName = 'CC'
      Size = 6
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 8
  end
  object sdsCliente: TSQLDataSet
    CommandText = 
      'select CODCLIENTE,NOMECLIENTE,RAZAOSOCIAL, CONTATO, TIPOFIRMA, C' +
      'PF, CNPJ, INSCESTADUAL, RG, SEGMENTO, REGIAO, LIMITECREDITO, DAT' +
      'ACADASTRO, CODUSUARIO, STATUS, HOMEPAGE, PRAZORECEBIMENTO, PRAZO' +
      'ENTREGA, CODBANCO, BASE_ICMS, DATANASC, CONTA_CLIENTE, OBS, TEM_' +
      'IE, ID_COB, DATARESC, NOMEMAE, SEXO, FORMA_CORRESPOND, GRUPO_CLI' +
      'ENTE, CODINCLUCANC, EXIST_COBERT, EXISTCOPART, DATAREINC, GERAAV' +
      'ISO, GERAENV, GERABOL, EMVIAGEM, DTAALTERA, SERIE, COD_FAIXA, RA' +
      ', LIVRONASC ,UFNASC, DATANASCIMENTO ,numero,SITUACAOESCOLAR,ESTA' +
      'DORG,PARCELA,DATAEMISSAORG,COMUNICAALUNO,COD_ANS,GERADEBITOAU'#13#10',' +
      'NOMEBANCO,TITULAR,CODIGO_AGENCIA,DIGITO_AGENCIA,NUMERO_CONTA,DIG' +
      'ITO_CONTA,AGENCIA,'#13#10'(case when STATUS=0 then '#39'ATIVO'#39' else '#39'DESLI' +
      'GADO'#39' end) as SITUACAO,'#13#10'(case when TIPOFIRMA=0 then '#39'FISICA'#39' el' +
      'se '#39'JURIDICA'#39' end) as TIPO'#13#10',cns,n_contrato , cpf_d, cc '#13#10'from C' +
      'LIENTES where CODCLIENTE = :pcod or :pcod = 0 ORDER BY NOMECLIEN' +
      'TE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 120
    Top = 8
    object sdsClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sdsClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object sdsClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sdsClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object sdsClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sdsClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sdsClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sdsClienteRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object sdsClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object sdsClienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object sdsClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object sdsClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object sdsClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sdsClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object sdsClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object sdsClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object sdsClientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object sdsClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object sdsClienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object sdsClienteDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object sdsClienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object sdsClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sdsClienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object sdsClienteID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object sdsClienteDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object sdsClienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object sdsClienteSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object sdsClienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object sdsClienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object sdsClienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object sdsClienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object sdsClienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object sdsClienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object sdsClienteGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object sdsClienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object sdsClienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object sdsClienteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object sdsClienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object sdsClienteRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sdsClienteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object sdsClienteUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object sdsClienteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object sdsClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sdsClienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sdsClienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object sdsClientePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sdsClienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object sdsClienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object sdsClienteCOD_ANS: TStringField
      FieldName = 'COD_ANS'
      Size = 10
    end
    object sdsClienteGERADEBITOAU: TStringField
      FieldName = 'GERADEBITOAU'
      FixedChar = True
      Size = 1
    end
    object sdsClienteNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Size = 30
    end
    object sdsClienteTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 60
    end
    object sdsClienteCODIGO_AGENCIA: TStringField
      FieldName = 'CODIGO_AGENCIA'
      Size = 10
    end
    object sdsClienteDIGITO_AGENCIA: TStringField
      FieldName = 'DIGITO_AGENCIA'
      FixedChar = True
      Size = 1
    end
    object sdsClienteNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object sdsClienteDIGITO_CONTA: TStringField
      FieldName = 'DIGITO_CONTA'
      FixedChar = True
      Size = 1
    end
    object sdsClienteAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object sdsClienteSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 9
    end
    object sdsClienteTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 8
    end
    object sdsClienteCNS: TStringField
      FieldName = 'CNS'
      Size = 18
    end
    object sdsClienteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object sdsClienteCPF_D: TStringField
      FieldName = 'CPF_D'
      Size = 18
    end
    object sdsClienteCC: TStringField
      FieldName = 'CC'
      Size = 6
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsCliente
    Left = 240
    Top = 8
  end
  object cdsCob: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ppar'
        ParamType = ptInput
      end>
    ProviderName = 'dspCob'
    Left = 597
    Top = 96
    object cdsCobCODCOB: TIntegerField
      FieldName = 'CODCOB'
      Required = True
    end
    object cdsCobCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object cdsCobCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object cdsCobFORMA: TStringField
      FieldName = 'FORMA'
      Size = 100
    end
    object cdsCobDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object cdsCobHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsCobNUMERO_TITULO: TStringField
      FieldName = 'NUMERO_TITULO'
      Size = 40
    end
    object cdsCobDATAEMI: TDateField
      FieldName = 'DATAEMI'
    end
    object cdsCobDATAVENC: TDateField
      FieldName = 'DATAVENC'
    end
    object cdsCobDATAPREV: TDateField
      FieldName = 'DATAPREV'
    end
    object cdsCobVALORNEGOCIADO: TFloatField
      FieldName = 'VALORNEGOCIADO'
    end
    object cdsCobOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object cdsCobRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsCobSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object dspCob: TDataSetProvider
    DataSet = sdsCob
    Left = 549
    Top = 96
  end
  object sdsCob: TSQLDataSet
    CommandText = 
      'select  mov.* ,cli.razaosocial from COBRANCA1 mov  '#13#10'inner join ' +
      'CLIENTES cli on cli.CODCLIENTE = mov.CODCLI'#13#10' where codcli = :pp' +
      'ar'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ppar'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 501
    Top = 96
    object sdsCobCODCOB: TIntegerField
      FieldName = 'CODCOB'
      Required = True
    end
    object sdsCobCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object sdsCobCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object sdsCobFORMA: TStringField
      FieldName = 'FORMA'
      Size = 100
    end
    object sdsCobDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object sdsCobHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsCobNUMERO_TITULO: TStringField
      FieldName = 'NUMERO_TITULO'
      Size = 40
    end
    object sdsCobDATAEMI: TDateField
      FieldName = 'DATAEMI'
    end
    object sdsCobDATAVENC: TDateField
      FieldName = 'DATAVENC'
    end
    object sdsCobDATAPREV: TDateField
      FieldName = 'DATAPREV'
    end
    object sdsCobVALORNEGOCIADO: TFloatField
      FieldName = 'VALORNEGOCIADO'
    end
    object sdsCobOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object sdsCobRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sdsCobSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
end
