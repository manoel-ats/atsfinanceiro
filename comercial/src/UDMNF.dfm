object DMNF: TDMNF
  OldCreateOrder = False
  Left = 1
  Top = 32
  Height = 687
  Width = 873
  object sCliente: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE from CLIENTES '#13#10'order by NOMECLIE' +
      'NTE '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 24
    Top = 8
    object sClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object pCliente: TDataSetProvider
    DataSet = sCliente
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 52
  end
  object cCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pCliente'
    Left = 23
    Top = 96
    object cClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object DtSrc: TDataSource
    DataSet = cds_Movimento
    Left = 143
    Top = 142
  end
  object dCliente: TDataSource
    DataSet = cCliente
    Left = 23
    Top = 142
  end
  object cds_Movimento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Movimento'
    OnNewRecord = cds_MovimentoNewRecord
    OnReconcileError = cds_MovimentoReconcileError
    Left = 142
    Top = 97
    object cds_MovimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_MovimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object cds_MovimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cds_MovimentoDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object cds_MovimentoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object cds_MovimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cds_MovimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_MovimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = []
      Size = 200
    end
    object cds_MovimentoPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object cds_MovimentoMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object cds_MovimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
    object cds_MovimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_MovimentoCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Size = 18
    end
  end
  object sds_Movimento: TSQLDataSet
    CommandText = 
      'select mov.*, cli.NOMECLIENTE, cli.OBS, cli.CNPJ , vei.PLACA, ve' +
      'i.MARCA_MODELO, '#13#10'usu.NOMEUSUARIO, forn.NOMEFORNECEDOR, nat.DESC' +
      'NATUREZA, '#13#10'alm.ALMOXARIFADO, nat.TIPOTITULO, nat.BAIXAMOVIMENTO' +
      '  '#13#10'from MOVIMENTO mov '#13#10'left outer join CLIENTES cli on cli.COD' +
      'CLIENTE=mov.CODCLIENTE '#13#10'left outer join VEICULO vei on vei.COD_' +
      'CLIENTE=mov.CODCLIENTE '#13#10'left outer join USUARIO usu on usu.CODU' +
      'SUARIO=mov.CODUSUARIO '#13#10'left outer join FORNECEDOR forn on forn.' +
      'CODFORNECEDOR =mov.CODFORNECEDOR '#13#10'inner join NATUREZAOPERACAO n' +
      'at on  nat.CODNATUREZA=mov.CODNATUREZA '#13#10'left outer join ALMOXAR' +
      'IFADO alm on alm.CODALMOXARIFADO=mov.CODALMOXARIFADO '#13#10' where CO' +
      'DMOVIMENTO=:pCODMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 143
    Top = 9
    object sds_MovimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_MovimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object sds_MovimentoDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object sds_MovimentoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object sds_MovimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object sds_MovimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      ReadOnly = True
    end
    object sds_MovimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = []
      Size = 200
    end
    object sds_MovimentoPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object sds_MovimentoMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object sds_MovimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
    object sds_MovimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_MovimentoCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Size = 18
    end
  end
  object dsp_Movimento: TDataSetProvider
    DataSet = sds_Movimento
    UpdateMode = upWhereKeyOnly
    Left = 143
    Top = 54
  end
  object sds_Mov_Det: TSQLDataSet
    CommandText = 
      'select movd.CODDETALHE'#13#10', movd.CODMOVIMENTO'#13#10', movd.CODPRODUTO'#13#10 +
      ', movd.ICMS'#13#10', movd.PRECO'#13#10', movd.QUANTIDADE'#13#10', movd.QTDE_ALT'#13#10',' +
      ' movd.UN'#13#10', movd.BAIXA'#13#10', movd.CONTROLE'#13#10', movd.COD_COMISSAO'#13#10', ' +
      'movd.LOTE'#13#10', movd.DTAFAB'#13#10', movd.DTAVCTO'#13#10', movd.PRECOCUSTO'#13#10', m' +
      'ovd.VALTOTAL'#13#10', movd.DESCPRODUTO'#13#10', movd.CST'#13#10', prod.COD_BARRA '#13 +
      #10', prod.CODPRO'#13#10', prod.PRODUTO'#13#10', prod.ESTOQUEATUAL'#13#10', prod.CODA' +
      'LMOXARIFADO'#13#10', prod.VALORUNITARIOATUAL'#13#10', prod.QTDE_PCT'#13#10', ccus.' +
      'ALMOXARIFADO'#13#10', prod.CONTA_DESPESA  '#13#10', prod.LOCALIZACAO  '#13#10', cm' +
      '.CODIGO, prod.LOTES  '#13#10', udf_LEFT((prod.PRODUTO),80) as DETALHE ' +
      ', movd.VLR_BASE'#13#10'from MOVIMENTODETALHE movd '#13#10'inner join PRODUTO' +
      'S prod on prod.CODPRODUTO=movd.CODPRODUTO '#13#10'left outer join ALMO' +
      'XARIFADO ccus on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO '#13#10'l' +
      'eft outer join COMISSAO cm on cm.COD_COMISSAO = movd.COD_COMISSA' +
      'O '#13#10'where movd.CODDETALHE=:CODDETALHE or movd.CODMOVIMENTO=:pCOD' +
      'MOV order by movd.coddetalhe'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODDETALHE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 221
    Top = 9
    object sds_Mov_DetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_Mov_DetCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetPRODUTO: TStringField
      DisplayWidth = 50
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 200
    end
    object sds_Mov_DetUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_Mov_DetQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetBAIXA: TStringField
      FieldName = 'BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_Mov_DetCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object sds_Mov_DetVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = []
    end
    object sds_Mov_DetCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = []
      Size = 15
    end
    object sds_Mov_DetCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object sds_Mov_DetQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = []
    end
    object sds_Mov_DetLOCALIZACAO: TStringField
      DisplayWidth = 20
      FieldName = 'LOCALIZACAO'
      ProviderFlags = []
    end
    object sds_Mov_DetESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = []
    end
    object sds_Mov_DetVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ProviderFlags = []
    end
    object sds_Mov_DetLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_Mov_DetDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object sds_Mov_DetDTAFAB: TDateField
      FieldName = 'DTAFAB'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sds_Mov_DetLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_Mov_DetDETALHE: TStringField
      FieldName = 'DETALHE'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object sds_Mov_DetPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_Mov_DetCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_Mov_DetVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_Mov_det: TDataSetProvider
    DataSet = sds_Mov_Det
    UpdateMode = upWhereKeyOnly
    Left = 221
    Top = 55
  end
  object cds_Mov_det: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODDETALHE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Mov_det'
    AfterPost = cds_Mov_detAfterPost
    OnCalcFields = cds_Mov_detCalcFields
    OnNewRecord = cds_Mov_detNewRecord
    OnPostError = cds_Mov_detPostError
    OnReconcileError = cds_Mov_detReconcileError
    Left = 220
    Top = 98
    object cds_Mov_detCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_Mov_detCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#.00'
      currency = True
    end
    object cds_Mov_detQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detPRODUTO: TStringField
      DisplayWidth = 50
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 200
    end
    object cds_Mov_detUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_Mov_detValorTotal: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'ValorTotal'
      ProviderFlags = []
      DisplayFormat = ',#.00'
    end
    object cds_Mov_detQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detBAIXA: TStringField
      FieldName = 'BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_Mov_detCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object cds_Mov_detVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = []
    end
    object cds_Mov_detCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = []
      Size = 15
    end
    object cds_Mov_detCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object cds_Mov_detQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = []
    end
    object cds_Mov_detVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ProviderFlags = []
      DisplayFormat = ',#.00'
    end
    object cds_Mov_detPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_Mov_detLOCALIZACAO: TStringField
      DisplayWidth = 20
      FieldName = 'LOCALIZACAO'
      ProviderFlags = []
    end
    object cds_Mov_detDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object cds_Mov_detESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detDTAFAB: TDateField
      FieldName = 'DTAFAB'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_Mov_detLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_Mov_detDETALHE: TStringField
      FieldName = 'DETALHE'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cds_Mov_detCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Mov_detCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_Mov_detVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#.00'
      EditFormat = ',#.00'
    end
    object cds_Mov_detTotalPedido: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TotalPedido'
      ProviderFlags = []
      Active = True
      currency = True
      DisplayFormat = ',#0.00'
      Expression = 'Sum(VALORTOTAL)'
    end
  end
  object DtSrc1: TDataSource
    DataSet = cds_Mov_det
    OnStateChange = DtSrc1StateChange
    Left = 219
    Top = 142
  end
  object DtSrcVenda: TDataSource
    DataSet = cds_venda
    OnStateChange = DtSrcVendaStateChange
    Left = 289
    Top = 142
  end
  object cds_venda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_venda'
    OnReconcileError = cds_vendaReconcileError
    Left = 288
    Top = 99
    object cds_vendaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_vendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_vendaDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object cds_vendaDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object cds_vendaNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_vendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaBANCO_1: TStringField
      FieldName = 'BANCO_1'
      ProviderFlags = []
      Size = 18
    end
    object cds_vendaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_vendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_vendaCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_vendaAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_vendaVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_vendaENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_vendaN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_vendaFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_vendaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_vendaSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_vendaCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_vendaOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_vendadiferenca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'diferenca'
      DisplayFormat = ',##0.00'
      Calculated = True
    end
    object cds_vendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_venda: TDataSetProvider
    DataSet = sds_venda
    UpdateMode = upWhereKeyOnly
    Left = 289
    Top = 57
  end
  object sds_venda: TSQLDataSet
    CommandText = 
      'select ven.*, cli.NOMECLIENTE, usu.NOMEUSUARIO, banc.BANCO from ' +
      'VENDA ven inner join CLIENTES cli on cli.CODCLIENTE=ven.CODCLIEN' +
      'TE inner join USUARIO usu on usu.CODUSUARIO=ven.CODVENDEDOR left' +
      ' outer join BANCO banc on banc.CODBANCO=ven.BANCO where CODVENDA' +
      ' = :CODVENDA or CODMOVIMENTO = :PCODMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 289
    Top = 9
    object sds_vendaCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaBANCO_1: TStringField
      FieldName = 'BANCO_1'
      ProviderFlags = []
      Size = 18
    end
    object sds_vendaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_vendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_vendaFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_vendaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_vendaSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_vendaCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_vendaOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_vendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'select  prod.CODPRODUTO'#13#10'         , prod.COD_BARRA '#13#10'         , ' +
      'prod.PRODUTO'#13#10'         , prod.UNIDADEMEDIDA'#13#10'         , prod.QTD' +
      'E_PCT'#13#10'         , prod.ICMS'#13#10'         , prod.CODALMOXARIFADO'#13#10'  ' +
      '       , prod.CONTA_DESPESA'#13#10'         , ccus.ALMOXARIFADO'#13#10'     ' +
      '    , prod.VALORUNITARIOATUAL'#13#10'         , prod.VALOR_PRAZO'#13#10'    ' +
      '     , prod.COD_COMISSAO'#13#10'         , prod.RATEIO'#13#10'         , pro' +
      'd.TIPO  '#13#10'         , prod.LOCALIZACAO '#13#10'         , prod.ESTOQUEA' +
      'TUAL   '#13#10'from PRODUTOS prod '#13#10'left outer join ALMOXARIFADO ccus ' +
      #13#10'on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO '#13#10'where CODPROD' +
      'UTO = :CODP'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODP'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 98
    Top = 207
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 98
    Top = 251
  end
  object scds_produto_proc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODP'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    Left = 98
    Top = 294
    object scds_produto_procCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object scds_produto_procCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
    end
    object scds_produto_procPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object scds_produto_procUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object scds_produto_procQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object scds_produto_procICMS: TFloatField
      FieldName = 'ICMS'
    end
    object scds_produto_procCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object scds_produto_procCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object scds_produto_procALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      Size = 30
    end
    object scds_produto_procVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object scds_produto_procVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object scds_produto_procCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object scds_produto_procRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object scds_produto_procTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object scds_produto_procLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 5
    end
    object scds_produto_procESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
  end
  object sUsuario: TSQLDataSet
    CommandText = 'select CODUSUARIO'#13#10'        , NOMEUSUARIO '#13#10'from USUARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 80
    Top = 9
    object sUsuarioCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sUsuarioNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 30
    end
  end
  object pUsuario: TDataSetProvider
    DataSet = sUsuario
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 53
  end
  object cUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pUsuario'
    Left = 78
    Top = 97
    object cUsuarioCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cUsuarioNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 30
    end
  end
  object dUsuario: TDataSource
    DataSet = cUsuario
    Left = 77
    Top = 142
  end
  object s_2: TSQLDataSet
    CommandText = 
      'select CODIGO, CONTA, NOME from PLANO where plnCtaRoot(CONTA) = ' +
      ':PCONTADESPESA AND CONSOLIDA = '#39'S'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCONTADESPESA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 175
    Top = 206
    object s_2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object s_2CONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object s_2NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object d_2: TDataSetProvider
    DataSet = s_2
    Left = 176
    Top = 254
  end
  object cds_ccusto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCONTADESPESA'
        ParamType = ptInput
      end>
    ProviderName = 'd_2'
    Left = 178
    Top = 295
    object cds_ccustoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_ccustoCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object cds_ccustoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object cMatPrima: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dMatPrima'
    Left = 20
    Top = 296
    object cMatPrimaCODMAT: TIntegerField
      FieldName = 'CODMAT'
      Required = True
    end
    object cMatPrimaCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cMatPrimaCODPRODMP: TIntegerField
      FieldName = 'CODPRODMP'
    end
    object cMatPrimaQTDEUSADA: TFloatField
      FieldName = 'QTDEUSADA'
    end
    object cMatPrimaTIPOUSO: TStringField
      FieldName = 'TIPOUSO'
      Size = 30
    end
    object cMatPrimaUSAPRECO: TStringField
      FieldName = 'USAPRECO'
    end
    object cMatPrimaESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object cMatPrimaCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cMatPrimaUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object cMatPrimaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object cMatPrimaPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
  end
  object dMatPrima: TDataSetProvider
    DataSet = sMatPrima
    Left = 20
    Top = 253
  end
  object sMatPrima: TSQLDataSet
    CommandText = 
      'select mp.CODMAT, mp.CODPRODUTO, mp.CODPRODMP, mp.QTDEUSADA, mp.' +
      'TIPOUSO, mp.USAPRECO, prod.ESTOQUEATUAL ,prod.CODPRO, prod.UNIDA' +
      'DEMEDIDA, prod.PRODUTO, prod.PRECOMEDIO  '#13#10'from MATERIA_PRIMA mp' +
      ', PRODUTOS prod '#13#10'where prod.codProduto = mp.codprodmp'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 20
    Top = 209
    object sMatPrimaCODMAT: TIntegerField
      FieldName = 'CODMAT'
      Required = True
    end
    object sMatPrimaCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sMatPrimaCODPRODMP: TIntegerField
      FieldName = 'CODPRODMP'
    end
    object sMatPrimaQTDEUSADA: TFloatField
      FieldName = 'QTDEUSADA'
    end
    object sMatPrimaTIPOUSO: TStringField
      FieldName = 'TIPOUSO'
      Size = 30
    end
    object sMatPrimaUSAPRECO: TStringField
      FieldName = 'USAPRECO'
    end
    object sMatPrimaESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object sMatPrimaCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object sMatPrimaUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object sMatPrimaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object sMatPrimaPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = cds_cm
    Left = 355
    Top = 142
  end
  object cds_cm: TClientDataSet
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
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cm'
    Left = 353
    Top = 99
    object cds_cmCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_cmCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_cmDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cmINDICE: TStringField
      FieldName = 'INDICE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_cmLB: TStringField
      FieldName = 'LB'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_cmCM: TStringField
      FieldName = 'CM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dsp_cm: TDataSetProvider
    DataSet = sds_cm
    UpdateMode = upWhereKeyOnly
    Left = 352
    Top = 55
  end
  object sds_cm: TSQLDataSet
    CommandText = 
      'select * from COMISSAO '#13#10'where ((COD_COMISSAO = :pcod) or (:pcod' +
      ' = 9999999)) '#13#10'or CODIGO = :CODIGO'
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
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 352
    Top = 8
    object sds_cmCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_cmCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sds_cmDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cmINDICE: TStringField
      FieldName = 'INDICE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_cmLB: TStringField
      FieldName = 'LB'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_cmCM: TStringField
      FieldName = 'CM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object sds_Veiculocli: TSQLDataSet
    CommandText = 
      'select * from VEICULO '#13#10'where PLACA = :pplaca or COD_VEICULO =  ' +
      ':PVEIC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pplaca'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PVEIC'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 422
    Top = 10
    object sds_VeiculocliCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_VeiculocliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_VeiculocliPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_VeiculocliMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_VeiculocliTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_VeiculocliCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_VeiculocliANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_VeiculocliANO_MOD: TStringField
      FieldName = 'ANO_MOD'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_VeiculocliCOR: TStringField
      FieldName = 'COR'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_Veiculocli: TDataSetProvider
    DataSet = sds_Veiculocli
    UpdateMode = upWhereKeyOnly
    Left = 422
    Top = 56
  end
  object cds_Veiculocli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pplaca'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PVEIC'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Veiculocli'
    Left = 424
    Top = 100
    object cds_VeiculocliCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_VeiculocliCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VeiculocliPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = [pfInUpdate]
      EditMask = 'LLL\-0000;1;_'
      Size = 10
    end
    object cds_VeiculocliMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_VeiculocliTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VeiculocliCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VeiculocliANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_VeiculocliANO_MOD: TStringField
      FieldName = 'ANO_MOD'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_VeiculocliCOR: TStringField
      FieldName = 'COR'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DataSource2: TDataSource
    DataSet = cds_Veiculocli
    Left = 426
    Top = 143
  end
  object scds_serie_proc: TSQLClientDataSet
    CommandText = 
      'select CODSERIE, SERIE, ULTIMO_NUMERO, NOTAFISCAL from SERIES wh' +
      'ere SERIE like :pSERIE'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pSERIE'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 589
    Top = 2
    object scds_serie_procCODSERIE: TStringField
      FieldName = 'CODSERIE'
      FixedChar = True
      Size = 3
    end
    object scds_serie_procSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
    end
    object scds_serie_procULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
    object scds_serie_procNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
    end
  end
  object scds_cli_proc: TSQLClientDataSet
    CommandText = 
      'select cli.CODCLIENTE, '#13#10'          cli.CODUSUARIO,'#13#10'          cl' +
      'i.NOMECLIENTE, '#13#10'          cli.RAZAOSOCIAL, '#13#10'          cli.CODB' +
      'ANCO, '#13#10'          cli.PRAZORECEBIMENTO, '#13#10'          cli.OBS,  '#13#10 +
      '          cli.SEGMENTO, '#13#10'          cli.STATUS, '#13#10'          usu.' +
      'NOMEUSUARIO, ende.UF , cli.CNPJ, ende.LOGRADOURO, cli.BLOQUEIO '#13 +
      #10'from CLIENTES cli '#13#10'left outer join USUARIO usu '#13#10'on usu.CODUSU' +
      'ARIO=cli.CODUSUARIO '#13#10'left outer join ENDERECOCLIENTE ende on en' +
      'de.CODCLIENTE = cli.CODCLIENTE '#13#10'where  ((ende.TIPOEND = 0) and ' +
      '(cli.STATUS = 1) and ((cli.NOMECLIENTE like :pCLIENTE) '#13#10'or (cli' +
      '.RAZAOSOCIAL like :pRAZAO) '#13#10'or (cli.CODCLIENTE = :pCODCLIENTE))' +
      ') '#13#10'order by cli.NOMECLIENTE '
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pCLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pRAZAO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODCLIENTE'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 589
    Top = 50
    object scds_cli_procCODCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object scds_cli_procCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
      Visible = False
    end
    object scds_cli_procNOMECLIENTE: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object scds_cli_procRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Visible = False
      Size = 50
    end
    object scds_cli_procCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      Visible = False
    end
    object scds_cli_procPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      Visible = False
    end
    object scds_cli_procOBS: TStringField
      FieldName = 'OBS'
      Visible = False
      Size = 200
    end
    object scds_cli_procSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
      Visible = False
    end
    object scds_cli_procSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
      Visible = False
    end
    object scds_cli_procNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Visible = False
      Size = 30
    end
    object scds_cli_procUF: TStringField
      FieldName = 'UF'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object scds_cli_procCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object scds_cli_procLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object scds_cli_procBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
  end
  object ds_Cr: TDataSource
    DataSet = scdsCr_proc
    Left = 264
    Top = 319
  end
  object scdsCr_proc: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 264
    Top = 280
    object scdsCr_procTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object scdsCr_procEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procSTATUS: TStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 16
    end
    object scdsCr_procVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object scdsCr_procN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object scdsCr_procVALORREC: TFloatField
      FieldName = 'VALORREC'
      ProviderFlags = []
      DisplayFormat = ',#0.00'
    end
    object scdsCr_procCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object scdsCr_procDP: TIntegerField
      FieldName = 'DP'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object scdsCr_procCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object scdsCr_procTIT: TStringField
      FieldName = 'TIT'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object scdsCr_procSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 2
    end
    object scdsCr_procDATACONSOLIDA: TDateField
      FieldName = 'DATACONSOLIDA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procTRecebido: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TRecebido'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'SUM(VALORRECEBIDO)'
    end
    object scdsCr_procTotal_resto: TAggregateField
      Alignment = taRightJustify
      FieldName = 'Total_resto'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALOR_PRIM_VIA-VALORRECEBIDO)'
    end
    object scdsCr_procTotalTitulo: TAggregateField
      FieldName = 'TotalTitulo'
      Active = True
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALOR_PRIM_VIA)'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    UpdateMode = upWhereKeyOnly
    Left = 264
    Top = 240
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select rec.CODCLIENTE, rec.CODRECEBIMENTO, rec.TITULO, rec.VIA, ' +
      'rec.DATAVENCIMENTO, rec.VALORTITULO, rec.DP, '#13#10'CASE rec.STATUS W' +
      'HEN '#39'5-'#39' then '#39'Pendente'#39' when '#39'7-'#39' then '#39'Recebido'#39' when '#39'8-'#39' the' +
      'n '#39'Credito Duvidoso'#39' end  as STATUS, rec.VALORRECEBIDO, rec.VALO' +
      'R_RESTO, rec.VALOR_PRIM_VIA, rec.N_DOCUMENTO, rec.CAIXA, cli.NOM' +
      'ECLIENTE, (CASE WHEN (REC.VALORRECEBIDO > 0) THEN (REC.VALORTITU' +
      'LO - rec.VALOR_RESTO)'#13#10'  WHEN (REC.VALORRECEBIDO = 0) THEN rec.V' +
      'ALOR_RESTO END)'#13#10' as VALORREC, rec.EMISSAO, (udf_digits(rec.TITU' +
      'LO) || '#39'/'#39' || rec.VIA) as TIT, rec.STATUS as SITUACAO, rec.DATAC' +
      'ONSOLIDA, rec.PARCELAS, DATARECEBIMENTO  '#13#10' from RECEBIMENTO rec' +
      ' '#13#10' inner join CLIENTES cli on cli.CODCLIENTE=rec.CODCLIENTE '#13#10' ' +
      'where CODVENDA = :pcod order by rec.CODRECEBIMENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 264
    Top = 200
    object SQLDataSet1TITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object SQLDataSet1DATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1CAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1STATUS: TStringField
      DisplayWidth = 20
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 16
    end
    object SQLDataSet1VIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1N_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VALORREC: TFloatField
      FieldName = 'VALORREC'
      ProviderFlags = []
    end
    object SQLDataSet1CODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDataSet1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Required = True
      Size = 50
    end
    object SQLDataSet1DP: TIntegerField
      FieldName = 'DP'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1EMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object SQLDataSet1VALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object SQLDataSet1CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object SQLDataSet1TIT: TStringField
      FieldName = 'TIT'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object SQLDataSet1SITUACAO: TStringField
      FieldName = 'SITUACAO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 2
    end
    object SQLDataSet1DATACONSOLIDA: TDateField
      FieldName = 'DATACONSOLIDA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1PARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object SQLDataSet1DATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
  end
  object sqs_tit: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 672
    Top = 40
  end
  object DtSrc_NF: TDataSource
    DataSet = cds_nf
    OnStateChange = DtSrc_NFStateChange
    Left = 487
    Top = 143
  end
  object cds_nf: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pNF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pvenda'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_nf'
    OnNewRecord = cds_nfNewRecord
    Left = 487
    Top = 99
    object cds_nfNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object cds_nfNUMNF: TIntegerField
      FieldName = 'NUMNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_nfNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_nfQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_nfESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/99;1;_'
    end
    object cds_nfUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_nfCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_nfPLACATRANSP: TStringField
      DisplayWidth = 16
      FieldName = 'PLACATRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cds_nfCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_nfCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_nfUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_nfUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_nfFRETE: TStringField
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_nfINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object cds_nfNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_nfCORPONF1: TStringField
      FieldName = 'CORPONF1'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object cds_nfCORPONF2: TStringField
      FieldName = 'CORPONF2'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object cds_nfCORPONF3: TStringField
      FieldName = 'CORPONF3'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object cds_nfCORPONF4: TStringField
      FieldName = 'CORPONF4'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object cds_nfCORPONF5: TStringField
      FieldName = 'CORPONF5'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object cds_nfCORPONF6: TStringField
      FieldName = 'CORPONF6'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object cds_nfCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_nfCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cds_nfPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object cds_nfPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object cds_nfFATURA: TStringField
      FieldName = 'FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object cds_nfICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_nfRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cds_nfCNPJCLI: TStringField
      FieldName = 'CNPJCLI'
      ProviderFlags = []
      Size = 18
    end
    object cds_nfINSCCLI: TStringField
      FieldName = 'INSCCLI'
      ProviderFlags = []
      Size = 24
    end
    object cds_nfLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = []
      Size = 50
    end
    object cds_nfBAIRROCLI: TStringField
      FieldName = 'BAIRROCLI'
      ProviderFlags = []
      Size = 30
    end
    object cds_nfCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 30
    end
    object cds_nfCIDADECLI: TStringField
      FieldName = 'CIDADECLI'
      ProviderFlags = []
      Size = 40
    end
    object cds_nfUFCLI: TStringField
      FieldName = 'UFCLI'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cds_nfCEPCLI: TStringField
      FieldName = 'CEPCLI'
      ProviderFlags = []
      Size = 10
    end
    object cds_nfTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Size = 9
    end
    object cds_nfSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_nfIMPRESSA: TStringField
      FieldName = 'IMPRESSA'
      FixedChar = True
      Size = 1
    end
  end
  object dsp_nf: TDataSetProvider
    DataSet = sds_nf
    UpdateMode = upWhereKeyOnly
    Left = 483
    Top = 55
  end
  object sds_nf: TSQLDataSet
    CommandText = 
      'select nf.*'#13#10'        , nat.CFNOME as DESCNATUREZA '#13#10'        , cl' +
      'i.NOMECLIENTE '#13#10'        , cli.RAZAOSOCIAL'#13#10'        , cli.CNPJ as' +
      ' cnpjcli'#13#10'        , cli.INSCESTADUAL as insccli'#13#10'        , ende.' +
      'LOGRADOURO, ende.BAIRRO as bairrocli, ende.COMPLEMENTO, ende.CID' +
      'ADE as cidadecli, ende.UF as ufcli, ende.CEP as cepcli, TELEFONE' +
      ' '#13#10'from NOTAFISCAL nf '#13#10'left outer join CFOP nat ON nat.CFCOD = ' +
      'nf.CFOP '#13#10'left outer join CLIENTES cli on '#13#10'cli.CODCLIENTE=nf.CO' +
      'DCLIENTE '#13#10'left outer join ENDERECOCLIENTE ende on '#13#10'ende.CODCLI' +
      'ENTE=cli.CODCLIENTE '#13#10' where nf.NUMNF = :pNF '#13#10' or CODVENDA = :p' +
      'venda'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pNF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pvenda'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 483
    Top = 8
    object sds_nfNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object sds_nfNUMNF: TIntegerField
      FieldName = 'NUMNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_nfNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_nfQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_nfESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_nfCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object sds_nfNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfCORPONF1: TStringField
      FieldName = 'CORPONF1'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sds_nfCORPONF2: TStringField
      FieldName = 'CORPONF2'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sds_nfCORPONF3: TStringField
      FieldName = 'CORPONF3'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sds_nfCORPONF4: TStringField
      FieldName = 'CORPONF4'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sds_nfCORPONF5: TStringField
      FieldName = 'CORPONF5'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sds_nfCORPONF6: TStringField
      FieldName = 'CORPONF6'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object sds_nfCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_nfCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object sds_nfPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object sds_nfPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object sds_nfFATURA: TStringField
      FieldName = 'FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object sds_nfICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_nfPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object sds_nfCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_nfCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_nfUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_nfUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_nfFRETE: TStringField
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_nfINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_nfRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object sds_nfCNPJCLI: TStringField
      FieldName = 'CNPJCLI'
      ProviderFlags = []
      Size = 18
    end
    object sds_nfINSCCLI: TStringField
      FieldName = 'INSCCLI'
      ProviderFlags = []
      Size = 24
    end
    object sds_nfLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = []
      Size = 50
    end
    object sds_nfBAIRROCLI: TStringField
      FieldName = 'BAIRROCLI'
      ProviderFlags = []
      Size = 30
    end
    object sds_nfCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 30
    end
    object sds_nfCIDADECLI: TStringField
      FieldName = 'CIDADECLI'
      ProviderFlags = []
      Size = 40
    end
    object sds_nfUFCLI: TStringField
      FieldName = 'UFCLI'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object sds_nfCEPCLI: TStringField
      FieldName = 'CEPCLI'
      ProviderFlags = []
      Size = 10
    end
    object sds_nfTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Size = 9
    end
    object sds_nfSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_nfIMPRESSA: TStringField
      FieldName = 'IMPRESSA'
      FixedChar = True
      Size = 1
    end
  end
  object scds: TSQLClientDataSet
    CommandText = 'SELECT CFCOD, CFNOME FROM CFOP where CFCOD like :PCOD'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'PCOD'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 589
    Top = 137
  end
  object procCFOP: TSQLClientDataSet
    CommandText = 'SELECT CFCOD, CFNOME FROM CFOP where CFCOD like :PCOD'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'PCOD'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 589
    Top = 97
    object procCFOPCFCOD: TStringField
      FieldName = 'CFCOD'
      Required = True
      Size = 4
    end
    object procCFOPCFNOME: TStringField
      FieldName = 'CFNOME'
      Size = 250
    end
  end
  object repdm: TVCLReport
    Filename = 'C:\home\sisAdmin\relatorio\nf_serv.rep'
    AsyncExecution = False
    Title = 'Untitled'
    Left = 653
    Top = 7
  end
  object DtSrc_cli: TDataSource
    DataSet = cds_cli
    Left = 336
    Top = 320
  end
  object cds_cli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODCLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cli'
    OnNewRecord = cds_cliNewRecord
    Left = 336
    Top = 280
    object cds_cliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000000'
    end
    object cds_cliNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cds_cliRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cds_cliCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cds_cliCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cds_cliINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object cds_cliRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cds_cliSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_cliDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_cliPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_cliOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_cliBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = []
      Size = 18
    end
    object cds_cliNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cds_cliTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_cliSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cds_cliEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cds_cliDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_cliSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_cliRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_cliCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object cds_cliPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object cds_cliLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object cds_cliDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object dsp_cli: TDataSetProvider
    DataSet = sds_cli
    UpdateMode = upWhereKeyOnly
    Left = 336
    Top = 240
  end
  object sds_cli: TSQLDataSet
    CommandText = 
      'select cli.*'#13#10'        , banc.BANCO'#13#10'        , usu.NOMEUSUARIO '#13#10 +
      'from CLIENTES cli '#13#10'left outer join BANCO banc on banc.CODBANCO=' +
      'cli.CODBANCO '#13#10'left outer join USUARIO usu on usu.CODUSUARIO = c' +
      'li.CODUSUARIO '#13#10'where CODCLIENTE=:pCODCLIENTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODCLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 336
    Top = 200
    object sds_cliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object sds_cliNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sds_cliRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sds_cliCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sds_cliCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sds_cliINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object sds_cliRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sds_cliSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_cliPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cliOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_cliBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = []
      Size = 18
    end
    object sds_cliNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object sds_cliTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_cliSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sds_cliEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sds_cliDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_cliSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_cliRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_cliCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object DtSrcE: TDataSource
    DataSet = cdsEnderecoCli
    Left = 400
    Top = 320
  end
  object cdsEnderecoCli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PEND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCli'
        ParamType = ptInput
      end>
    ProviderName = 'dspEnderecoCli'
    Left = 397
    Top = 280
    object cdsEnderecoCliCODENDERECO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEnderecoCliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEnderecoCliLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEnderecoCliBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEnderecoCliCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEnderecoCliCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsEnderecoCliUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsEnderecoCliCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cdsEnderecoCliTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEnderecoCliTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEnderecoCliTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEnderecoCliFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEnderecoCliE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEnderecoCliRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsEnderecoCliTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEnderecoCliDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsEnderecoCliDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEnderecoCliDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object cdsEnderecoCliDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object cdsEnderecoCliDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
  end
  object dspEnderecoCli: TDataSetProvider
    DataSet = sdsEnderecoCli
    UpdateMode = upWhereKeyOnly
    Left = 397
    Top = 240
  end
  object sdsEnderecoCli: TSQLDataSet
    CommandText = 
      'select * from ENDERECOCLIENTE where CODENDERECO = :PEND or CODCL' +
      'IENTE = :pCli'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PEND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCli'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 397
    Top = 200
    object sdsEnderecoCliCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsEnderecoCliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsEnderecoCliLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsEnderecoCliBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsEnderecoCliCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsEnderecoCliCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsEnderecoCliUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsEnderecoCliCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsEnderecoCliTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsEnderecoCliTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsEnderecoCliTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsEnderecoCliFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsEnderecoCliE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsEnderecoCliRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsEnderecoCliTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsEnderecoCliDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sdsEnderecoCliDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsEnderecoCliDDD2: TStringField
      FieldName = 'DDD2'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsEnderecoCliDDD3: TStringField
      FieldName = 'DDD3'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsEnderecoCliDDD1: TStringField
      FieldName = 'DDD1'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object proc_end: TSQLDataSet
    CommandText = 
      'select count(CODENDERECO) from ENDERECOCLIENTE where CODCLIENTE ' +
      '= :pCli'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCli'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 669
    Top = 90
    object proc_endCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
      Required = True
    end
  end
  object scds_usuario_proc: TSQLClientDataSet
    CommandText = 'select * from USUARIO'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DM.sqlsisAdimin
    Left = 589
    Top = 185
    object scds_usuario_procCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object scds_usuario_procNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 30
    end
    object scds_usuario_procSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object scds_usuario_procPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
  end
  object sds_estado: TSQLDataSet
    CommandText = 'select distinct UF from ESTADO_ICMS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 672
    Top = 143
  end
  object DtSrcReg: TDataSource
    DataSet = cdsRegiao
    Left = 466
    Top = 320
  end
  object cdsRegiao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dRegiao'
    Left = 464
    Top = 279
    object cdsRegiaoCODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRegiaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsRegiaoUSO: TStringField
      FieldName = 'USO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsRegiaoCODIGOS: TStringField
      FieldName = 'CODIGOS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsRegiaoOUTROS: TStringField
      FieldName = 'OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object dRegiao: TDataSetProvider
    DataSet = sRegiao
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 235
  end
  object sRegiao: TSQLDataSet
    CommandText = 'select * from DADOS_COMBOS '#13#10'where USO = '#39'regiao'#39' '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 463
    Top = 193
    object SQLDataSet1CODDADOS: TIntegerField
      FieldName = 'CODDADOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDataSet1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SQLDataSet1USO: TStringField
      FieldName = 'USO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQLDataSet1CODIGOS: TStringField
      FieldName = 'CODIGOS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SQLDataSet1OUTROS: TStringField
      FieldName = 'OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object sds_calculo: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 673
    Top = 187
  end
  object cds_fornecedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pPARAM'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_fornecedor'
    Left = 109
    Top = 446
    object cds_fornecedorCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000000'
    end
    object cds_fornecedorNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object cds_fornecedorRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cds_fornecedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cds_fornecedorTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cds_fornecedorCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cds_fornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cds_fornecedorINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cds_fornecedorRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cds_fornecedorSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cds_fornecedorREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object cds_fornecedorLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object cds_fornecedorDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object cds_fornecedorCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cds_fornecedorSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cds_fornecedorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object cds_fornecedorPRAZOPAGAMENTO: TSmallintField
      FieldName = 'PRAZOPAGAMENTO'
    end
    object cds_fornecedorPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object cds_fornecedorCONTA_FORNECEDOR: TStringField
      FieldName = 'CONTA_FORNECEDOR'
      Size = 15
    end
  end
  object dsp_fornecedor: TDataSetProvider
    DataSet = sds_fornecedor
    UpdateMode = upWhereKeyOnly
    Left = 109
    Top = 401
  end
  object sds_fornecedor: TSQLDataSet
    CommandText = 'select * from  FORNECEDOR where CODFORNECEDOR = :pFORN'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pPARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 109
    Top = 358
    object sds_fornecedorCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_fornecedorNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object sds_fornecedorRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sds_fornecedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object sds_fornecedorTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sds_fornecedorCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sds_fornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sds_fornecedorINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sds_fornecedorRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object sds_fornecedorSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object sds_fornecedorREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object sds_fornecedorLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object sds_fornecedorDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object sds_fornecedorCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sds_fornecedorSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object sds_fornecedorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object sds_fornecedorPRAZOPAGAMENTO: TSmallintField
      FieldName = 'PRAZOPAGAMENTO'
    end
    object sds_fornecedorPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object sds_fornecedorCONTA_FORNECEDOR: TStringField
      FieldName = 'CONTA_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object DtsrcEndFor: TDataSource
    DataSet = cds_endfor
    Left = 37
    Top = 486
  end
  object cds_endfor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codfor'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_endfor'
    Left = 38
    Top = 446
    object cds_endforCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_endforCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_endforLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_endforBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_endforCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_endforCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_endforUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_endforCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '00000-999;1;_'
      Size = 10
    end
    object cds_endforDDD: TSmallintField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
    end
    object cds_endforTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cds_endforTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cds_endforTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cds_endforFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cds_endforE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_endforRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_endforTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_endforDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object dsp_endfor: TDataSetProvider
    DataSet = sds_endfor
    UpdateMode = upWhereKeyOnly
    Left = 38
    Top = 401
  end
  object sds_endfor: TSQLDataSet
    CommandText = 'select * from ENDERECOFORNECEDOR'#13#10'where CODFORNECEDOR =:codfor'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codfor'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 38
    Top = 358
    object sds_endforCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_endforCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_endforLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_endforBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_endforCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_endforCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_endforUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_endforCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_endforDDD: TSmallintField
      FieldName = 'DDD'
      ProviderFlags = [pfInUpdate]
    end
    object sds_endforTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sds_endforTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sds_endforTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sds_endforFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sds_endforE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_endforRAMAL: TStringField
      FieldName = 'RAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_endforTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_endforDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object DtsrcFor: TDataSource
    DataSet = cds_fornecedor
    Left = 108
    Top = 489
  end
  object listaCliente: TSQLDataSet
    CommandText = 
      'select cli.CODCLIENTE, cli.NOMECLIENTE, cli.RAZAOSOCIAL, cli.CNP' +
      'J, cli.INSCESTADUAL, cli.PRAZORECEBIMENTO, cli.COD_TRANPORTADORA' +
      ' '#13#10', ende.LOGRADOURO, ende.BAIRRO, ende.COMPLEMENTO, ende.CIDADE' +
      ', ende.UF, ende.CEP, ende.TELEFONE '#13#10'from CLIENTES cli '#13#10'left ou' +
      'ter join ENDERECOCLIENTE ende on ende.CODCLIENTE = cli.CODCLIENT' +
      'E '#13#10'where ende.TIPOEND = 0'#13#10' order by cli.RAZAOSOCIAL '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 688
    Top = 480
    object listaClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object listaClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object listaClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object listaClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Visible = False
      Size = 18
    end
    object listaClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = []
      Visible = False
      Size = 24
    end
    object listaClienteLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = []
      Visible = False
      Size = 50
    end
    object listaClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object listaClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object listaClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Visible = False
      Size = 40
    end
    object listaClienteUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Visible = False
      FixedChar = True
      Size = 2
    end
    object listaClienteCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Visible = False
      Size = 10
    end
    object listaClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Visible = False
      Size = 9
    end
    object listaClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object listaClienteCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
  end
  object listaFornecedor: TSQLDataSet
    CommandText = 
      'select CODFORNECEDOR, RAZAOSOCIAL from FORNECEDOR '#13#10'order by RAZ' +
      'AOSOCIAL '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 608
    Top = 480
    object listaFornecedorCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object listaFornecedorRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
  end
  object listaCFOP: TSQLDataSet
    CommandText = 'select CFCOD, CFNOME from CFOP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 536
    Top = 480
    object listaCFOPCFCOD: TStringField
      FieldName = 'CFCOD'
      Required = True
      Size = 30
    end
    object listaCFOPCFNOME: TStringField
      FieldName = 'CFNOME'
      Size = 250
    end
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pNF'
        ParamType = ptInput
      end>
    Left = 255
    Top = 399
    object StringField1: TStringField
      FieldName = 'NOTASERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object IntegerField1: TIntegerField
      FieldName = 'NUMNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SmallintField1: TSmallintField
      FieldName = 'NATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object FloatField1: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object StringField2: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object StringField3: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
    end
    object DateField1: TDateField
      FieldName = 'DTAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object DateField2: TDateField
      FieldName = 'DTASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object StringField4: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField3: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object StringField5: TStringField
      FieldName = 'NOMETRANSP'
      ProviderFlags = []
      Size = 50
    end
    object StringField6: TStringField
      DisplayWidth = 16
      FieldName = 'PLACATRANSP'
      ProviderFlags = []
      Size = 16
    end
    object StringField7: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
    end
    object StringField8: TStringField
      FieldName = 'END_TRANSP'
      ProviderFlags = []
      Size = 80
    end
    object StringField9: TStringField
      FieldName = 'CIDADE_TRANSP'
      ProviderFlags = []
      Size = 50
    end
    object StringField10: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object StringField11: TStringField
      FieldName = 'UF_TRANSP'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object StringField12: TStringField
      FieldName = 'FRETE'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object StringField13: TStringField
      FieldName = 'INSCRICAOESTADUAL'
      ProviderFlags = []
    end
    object StringField14: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField15: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object IntegerField4: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object TimeField1: TTimeField
      FieldName = 'HORASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField2: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField3: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField4: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField5: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField6: TFloatField
      FieldName = 'VALOR_PRODUTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField7: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField8: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField9: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField10: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object FloatField11: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object StringField16: TStringField
      FieldName = 'CORPONF1'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object StringField17: TStringField
      FieldName = 'CORPONF2'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object StringField18: TStringField
      FieldName = 'CORPONF3'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object StringField19: TStringField
      FieldName = 'CORPONF4'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object StringField20: TStringField
      FieldName = 'CORPONF5'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object StringField21: TStringField
      FieldName = 'CORPONF6'
      ProviderFlags = [pfInUpdate]
      Size = 75
    end
    object StringField22: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object IntegerField5: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object StringField23: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object BCDField1: TBCDField
      FieldName = 'PESOBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object BCDField2: TBCDField
      FieldName = 'PESOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object StringField24: TStringField
      FieldName = 'FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
  end
  object ds: TDataSource
    DataSet = cdsNotaFiscal
    Left = 256
    Top = 448
  end
  object dtSrcCompra: TDataSource
    DataSet = cdsCompra
    OnStateChange = dtSrcCompraStateChange
    Left = 385
    Top = 534
  end
  object sdsCompra: TSQLDataSet
    CommandText = 
      'select comp.*, forn.NOMEFORNECEDOR, usu.NOMEUSUARIO  '#13#10'from COMP' +
      'RA comp '#13#10'inner join FORNECEDOR forn on forn.CODFORNECEDOR = com' +
      'p.CODFORNECEDOR inner join USUARIO usu on usu.CODUSUARIO = comp.' +
      'CODCOMPRADOR '#13#10'where (comp.CODCOMPRA = :CODCOMPRA) or (comp.CODM' +
      'OVIMENTO = :PCODMOV)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 385
    Top = 409
    object sdsCompraCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCompraCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCompraCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCompraDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCompraDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCompraNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCompraFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCompraN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsCompraSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCompraVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCompraCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sdsCompraNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object sdsCompraNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Required = True
      Size = 30
    end
  end
  object dspCompra: TDataSetProvider
    DataSet = sdsCompra
    UpdateMode = upWhereKeyOnly
    Left = 385
    Top = 449
  end
  object cdsCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dspCompra'
    Left = 384
    Top = 491
    object cdsCompraCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      Required = True
    end
    object cdsCompraCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cdsCompraCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsCompraDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object cdsCompraDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object cdsCompraNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
    end
    object cdsCompraBANCO: TSmallintField
      FieldName = 'BANCO'
    end
    object cdsCompraCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
    end
    object cdsCompraSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object cdsCompraCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object cdsCompraDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      EditMask = '!99/99/00;1;_'
    end
    object cdsCompraVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsCompraSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsCompraDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
    end
    object cdsCompraN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
    end
    object cdsCompraOPERACAO: TStringField
      FieldName = 'OPERACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCompraFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCompraN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object cdsCompraCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object cdsCompraMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraAPAGAR: TFloatField
      FieldName = 'APAGAR'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
    end
    object cdsCompraENTRADA: TFloatField
      FieldName = 'ENTRADA'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      Size = 30
    end
    object cdsCompraSTATUS1: TStringField
      FieldName = 'STATUS1'
      FixedChar = True
      Size = 1
    end
    object cdsCompraVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsCompraCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object cdsCompraNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object cdsCompraNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Required = True
      Size = 30
    end
  end
  object sds_cp: TSQLDataSet
    CommandText = 
      'select pag.*, '#13#10'  CASE pag.STATUS WHEN '#39'5-'#39' then '#39'Pendente'#39' when' +
      ' '#39'7-'#39' then '#39'Pago'#39' when '#39'8-'#39' then '#39'Credito Duvidoso'#39' end  as STAT' +
      'USpag, '#13#10'forn.NOMEFORNECEDOR, ( VALOR_RESTO - VALORRECEBIDO) as ' +
      'VALORPAG  from PAGAMENTO pag '#13#10'inner join FORNECEDOR forn on for' +
      'n.CODFORNECEDOR=pag.CODFORNECEDOR '#13#10'where CODCOMPRA=:pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 448
    Top = 413
    object SQLDataSet1CODPAGAMENTO: TIntegerField
      FieldName = 'CODPAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField25: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object DateField3: TDateField
      FieldName = 'EMISSAO'
    end
    object SQLDataSet1CODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object DateField4: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object SQLDataSet1DATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
    end
    object SmallintField2: TSmallintField
      FieldName = 'CAIXA'
    end
    object SQLDataSet1CONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
    end
    object SQLDataSet1CONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
    end
    object StringField26: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField27: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1FORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1DATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object SQLDataSet1HISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object SQLDataSet1CODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
    end
    object SQLDataSet1CODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object SQLDataSet1CODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
    end
    object SQLDataSet1CODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object StringField28: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object SQLDataSet1DATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
    end
    object FloatField12: TFloatField
      FieldName = 'VALORRECEBIDO'
    end
    object SQLDataSet1JUROS: TFloatField
      FieldName = 'JUROS'
    end
    object SQLDataSet1DESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object SQLDataSet1PERDA: TFloatField
      FieldName = 'PERDA'
    end
    object SQLDataSet1TROCA: TFloatField
      FieldName = 'TROCA'
    end
    object SQLDataSet1FUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
    end
    object FloatField13: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
    end
    object FloatField14: TFloatField
      FieldName = 'VALOR_RESTO'
    end
    object FloatField15: TFloatField
      FieldName = 'VALORTITULO'
    end
    object SQLDataSet1OUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
    end
    object SQLDataSet1OUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
    end
    object SQLDataSet1NOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
    object SQLDataSet1VALORPAG: TFloatField
      FieldName = 'VALORPAG'
      ProviderFlags = []
    end
    object sds_cpSTATUSPAG: TStringField
      FieldName = 'STATUSPAG'
      ReadOnly = True
      FixedChar = True
      Size = 16
    end
  end
  object dsp_cp: TDataSetProvider
    DataSet = sds_cp
    UpdateMode = upWhereKeyOnly
    Left = 447
    Top = 462
  end
  object cds_cp: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cp'
    Left = 448
    Top = 509
    object scdsCr_procCODPAGAMENTO: TIntegerField
      FieldName = 'CODPAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField29: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
    object DateField5: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object DateField6: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object SmallintField3: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField30: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField31: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object scdsCr_procFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object scdsCr_procDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object scdsCr_procCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCODCOMPRADOR: TSmallintField
      FieldName = 'CODCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField32: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField16: TFloatField
      FieldName = 'VALORRECEBIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procDESCONTO: TFloatField
      DisplayLabel = 'JUROS'
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procPERDA: TFloatField
      DisplayLabel = 'JUROS'
      FieldName = 'PERDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procTROCA: TFloatField
      DisplayLabel = 'JUROS'
      FieldName = 'TROCA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procFUNRURAL: TFloatField
      DisplayLabel = 'JUROS'
      FieldName = 'FUNRURAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object FloatField17: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object FloatField18: TFloatField
      FieldName = 'VALOR_RESTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object FloatField19: TFloatField
      FieldName = 'VALORTITULO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object scdsCr_procOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object scdsCr_procNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object scdsCr_procVALORPAG: TFloatField
      FieldName = 'VALORPAG'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds_cpSTATUSPAG: TStringField
      FieldName = 'STATUSPAG'
      ReadOnly = True
      FixedChar = True
      Size = 16
    end
    object AggregateField1: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TRecebido'
      Active = True
      DisplayFormat = ',#0.00'
      Expression = 'SUM(VALORRECEBIDO)'
    end
    object AggregateField2: TAggregateField
      Alignment = taRightJustify
      FieldName = 'Total_resto'
      Active = True
      DisplayFormat = ',#0.00'
      Expression = 'sum(VALOR_PRIM_VIA-VALORRECEBIDO)'
    end
    object AggregateField3: TAggregateField
      FieldName = 'TotalTitulo'
      Active = True
      DisplayFormat = ',#0.00'
      Expression = 'sum(VALOR_PRIM_VIA)'
    end
  end
  object ds_cp: TDataSource
    DataSet = cds_cp
    Left = 448
    Top = 556
  end
  object listaProduto: TSQLDataSet
    CommandText = 
      'select prod.CODPRODUTO'#13#10', prod.CODPRO'#13#10', prod.PRODUTO'#13#10', prod.UN' +
      'IDADEMEDIDA'#13#10', prod.QTDE_PCT'#13#10', prod.ICMS'#13#10', prod.CODALMOXARIFAD' +
      'O'#13#10', prod.CONTA_DESPESA'#13#10', ccus.ALMOXARIFADO'#13#10', prod.VALORUNITAR' +
      'IOATUAL'#13#10', prod.VALOR_PRAZO'#13#10', prod.COD_COMISSAO'#13#10', prod.RATEIO'#13 +
      #10', prod.TIPO  '#13#10', prod.ESTOQUEATUAL '#13#10', prod.LOCALIZACAO'#13#10', prod' +
      '.LOTES  , prod.PRECOMEDIO, prod.PESO_QTDE'#13#10'from PRODUTOS prod '#13#10 +
      'left outer join ALMOXARIFADO ccus '#13#10'on ccus.CODALMOXARIFADO = pr' +
      'od.CODALMOXARIFADO  order by prod.PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 752
    Top = 481
    object listaProdutoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object listaProdutoCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object listaProdutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object listaProdutoUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object listaProdutoQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object listaProdutoICMS: TFloatField
      FieldName = 'ICMS'
    end
    object listaProdutoVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object listaProdutoVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object listaProdutoCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object listaProdutoRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object listaProdutoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object listaProdutoESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object listaProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object listaProdutoLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object listaProdutoPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
    object listaProdutoPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
    end
    object listaProdutoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object listaProdutoCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object listaProdutoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      Size = 30
    end
  end
  object sdslistaTransp: TSQLDataSet
    CommandText = 'select * from TRANSPORTADORA order by nometransp'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 536
    Top = 528
    object sdslistaTranspCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      Required = True
    end
    object sdslistaTranspNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object sdslistaTranspPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object sdslistaTranspCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdslistaTranspEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object sdslistaTranspCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object sdslistaTranspUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdslistaTranspUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdslistaTranspFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object sdslistaTranspINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object sdslistaTranspCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 75
    end
    object sdslistaTranspCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 75
    end
    object sdslistaTranspCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 75
    end
    object sdslistaTranspCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 75
    end
    object sdslistaTranspCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object sdslistaTranspCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
  end
  object sdsVeiculoCli: TSQLDataSet
    CommandText = 
      'select first 1 mov.codcliente, cli.nomecliente, cli.obs, cli.PRA' +
      'ZORECEBIMENTO from movimento mov, clientes cli '#13#10'where cli.codcl' +
      'iente = mov.codcliente and mov.cod_veiculo = :pcodvei order by c' +
      'odmovimento desc'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pcodvei'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 658
    Top = 288
  end
  object sdsLoteRepetido: TSQLDataSet
    CommandText = 
      'select prod.codpro, count(movd.lote) from movimentodetalhe movd,' +
      ' produtos prod '#13#10' where prod.codproduto = movd.codproduto and mo' +
      'vd.codmovimento = :pcod'#13#10'group by prod.codpro Having Count(movd.' +
      'LOTE) > 1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 656
    Top = 344
  end
  object cdslotes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PLOTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PLOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PPROD'
        ParamType = ptInput
      end>
    ProviderName = 'dsplotes'
    Left = 704
    Top = 248
    object cdslotesCODLOTE: TIntegerField
      FieldName = 'CODLOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdslotesLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object cdslotesCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslotesDATAFABRICACAO: TDateField
      FieldName = 'DATAFABRICACAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdslotesDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object cdslotesESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
    end
    object cdslotesPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 300
    end
    object cdslotesCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object cdslotesPRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
  object dsplotes: TDataSetProvider
    DataSet = sdslote
    UpdateMode = upWhereKeyOnly
    Left = 656
    Top = 248
  end
  object sdslote: TSQLDataSet
    CommandText = 
      'SELECT lote.*, '#13#10'               prod.PRODUTO, '#13#10'               p' +
      'rod.CODPRO '#13#10'FROM LOTES lote, PRODUTOS prod '#13#10'WHERE prod.CODPROD' +
      'UTO = lote.CODPRODUTO '#13#10'AND (((lote.LOTE = :PLOTE) OR (:PLOTE = ' +
      #39'TODOSLOTESCADASTRADOS'#39')) and (lote.CODPRODUTO = :PPROD) AND (lo' +
      'te.ESTOQUE > 0.00099999999999999999)) order by lote.DATAFABRICAC' +
      'AO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PLOTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PLOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PPROD'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 608
    Top = 248
    object sdsloteCODLOTE: TIntegerField
      FieldName = 'CODLOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsloteLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object sdsloteCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsloteDATAFABRICACAO: TDateField
      FieldName = 'DATAFABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsloteDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsloteESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdslotePRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 300
    end
    object sdsloteCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object sdslotePRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
  object scds1: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 560
    Top = 352
  end
  object dspListaTransp: TDataSetProvider
    DataSet = sdslistaTransp
    Left = 576
    Top = 480
  end
  object listaTransp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspListaTransp'
    Left = 624
    Top = 528
    object listaTranspCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      Required = True
    end
    object listaTranspNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object listaTranspPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object listaTranspCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object listaTranspEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object listaTranspCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object listaTranspUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object listaTranspUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object listaTranspFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object listaTranspINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object listaTranspCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 75
    end
    object listaTranspCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 75
    end
    object listaTranspCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 75
    end
    object listaTranspCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 75
    end
    object listaTranspCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object listaTranspCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
  end
  object sqlNumeroSerie: TSQLDataSet
    CommandText = 
      'SELECT max(cast(NOTASERIE as integer)) as NOTASERIE FROM NOTAFIS' +
      'CAL WHERE NOTASERIE = :NUM AND SERIE = :Serie'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NUM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Serie'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 520
    Top = 208
  end
end
