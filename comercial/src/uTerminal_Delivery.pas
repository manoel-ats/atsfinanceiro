unit uTerminal_Delivery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, SqlExpr, Provider, Grids, DBGrids, Mask, DBCtrls,
  StdCtrls, DBLocal, DBLocalS, DB, DBClient, Menus, XPMenu, Buttons,
  ExtCtrls, MMJPanel, RXCtrls, DBXpress, Printers, JvExStdCtrls, JvCheckBox,
  JvExDBGrids, JvDBGrid, RxGIF, JvExMask, JvToolEdit, JvBaseEdits;

type
  TfTerminal_Delivery = class(TfPai)
    dbeProduto: TEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    btnImprimir: TBitBtn;
    procFone: TSQLDataSet;
    procFoneTELEFONE: TStringField;
    procFoneNOMECLIENTE: TStringField;
    procFoneLOGRADOURO: TStringField;
    procFoneBAIRRO: TStringField;
    BitBtn3: TBitBtn;
    sds_Movimento: TSQLDataSet;
    sds_MovimentoCODMOVIMENTO: TIntegerField;
    sds_MovimentoDATAMOVIMENTO: TDateField;
    sds_MovimentoCODCLIENTE: TIntegerField;
    sds_MovimentoCODNATUREZA: TSmallintField;
    sds_MovimentoSTATUS: TSmallintField;
    sds_MovimentoCODUSUARIO: TSmallintField;
    sds_MovimentoNOMECLIENTE: TStringField;
    sds_MovimentoDESCNATUREZA: TStringField;
    sds_MovimentoALMOXARIFADO: TStringField;
    sds_MovimentoCODVENDEDOR: TSmallintField;
    sds_MovimentoCODALMOXARIFADO: TIntegerField;
    sds_MovimentoNOMEFORNECEDOR: TStringField;
    sds_MovimentoCODFORNECEDOR: TIntegerField;
    sds_MovimentoTIPOTITULO: TSmallintField;
    sds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    sds_MovimentoNOMEUSUARIO: TStringField;
    sds_MovimentoPLACA: TStringField;
    sds_MovimentoMARCA_MODELO: TStringField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    dsp_Movimento: TDataSetProvider;
    cds_Movimento: TClientDataSet;
    cds_MovimentoCODMOVIMENTO: TIntegerField;
    cds_MovimentoDATAMOVIMENTO: TDateField;
    cds_MovimentoCODCLIENTE: TIntegerField;
    cds_MovimentoCODNATUREZA: TSmallintField;
    cds_MovimentoSTATUS: TSmallintField;
    cds_MovimentoCODUSUARIO: TSmallintField;
    cds_MovimentoNOMECLIENTE: TStringField;
    cds_MovimentoDESCNATUREZA: TStringField;
    cds_MovimentoALMOXARIFADO: TStringField;
    cds_MovimentoCODVENDEDOR: TSmallintField;
    cds_MovimentoCODALMOXARIFADO: TIntegerField;
    cds_MovimentoNOMEFORNECEDOR: TStringField;
    cds_MovimentoCODFORNECEDOR: TIntegerField;
    cds_MovimentoTIPOTITULO: TSmallintField;
    cds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    cds_MovimentoNOMEUSUARIO: TStringField;
    cds_MovimentoPLACA: TStringField;
    cds_MovimentoMARCA_MODELO: TStringField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_Mov_det: TClientDataSet;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detPRODUTO: TStringField;
    cds_Mov_detUN: TStringField;
    cds_Mov_detValorTotal: TCurrencyField;
    cds_Mov_detQTDE_ALT: TFloatField;
    cds_Mov_detBAIXA: TStringField;
    cds_Mov_detCONTROLE: TSmallintField;
    cds_Mov_detCODALMOXARIFADO: TIntegerField;
    cds_Mov_detALMOXARIFADO: TStringField;
    cds_Mov_detVALORUNITARIOATUAL: TFloatField;
    cds_Mov_detCOD_COMISSAO: TIntegerField;
    cds_Mov_detCONTA_DESPESA: TStringField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detQTDE_PCT: TFloatField;
    cds_Mov_detCOD_BARRA: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detESTOQUEATUAL: TFloatField;
    cds_Mov_detVALTOTAL: TFloatField;
    cds_Mov_detPRECOCUSTO: TFloatField;
    cds_Mov_detTotalPedido: TAggregateField;
    dsp_Mov_det: TDataSetProvider;
    sds_Mov_Det: TSQLDataSet;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetPRODUTO: TStringField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetBAIXA: TStringField;
    sds_Mov_DetCONTROLE: TSmallintField;
    sds_Mov_DetCODALMOXARIFADO: TIntegerField;
    sds_Mov_DetALMOXARIFADO: TStringField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    sds_Mov_DetCOD_BARRA: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    sds_Mov_DetESTOQUEATUAL: TFloatField;
    sds_Mov_DetVALTOTAL: TFloatField;
    sds_Mov_DetPRECOCUSTO: TFloatField;
    sds_venda: TSQLDataSet;
    sds_vendaCODMOVIMENTO: TIntegerField;
    sds_vendaCODCLIENTE: TIntegerField;
    sds_vendaDATAVENDA: TDateField;
    sds_vendaDATAVENCIMENTO: TDateField;
    sds_vendaNUMEROBORDERO: TIntegerField;
    sds_vendaBANCO: TSmallintField;
    sds_vendaCODVENDEDOR: TSmallintField;
    sds_vendaCODUSUARIO: TSmallintField;
    sds_vendaDATASISTEMA: TDateField;
    sds_vendaVALOR: TFloatField;
    sds_vendaNOTAFISCAL: TIntegerField;
    sds_vendaSERIE: TStringField;
    sds_vendaNOMECLIENTE: TStringField;
    sds_vendaNOMEUSUARIO: TStringField;
    sds_vendaBANCO_1: TStringField;
    sds_vendaCODVENDA: TIntegerField;
    sds_vendaDESCONTO: TFloatField;
    sds_vendaCODCCUSTO: TSmallintField;
    sds_vendaN_PARCELA: TSmallintField;
    sds_vendaN_DOCUMENTO: TStringField;
    sds_vendaCAIXA: TSmallintField;
    sds_vendaMULTA_JUROS: TFloatField;
    sds_vendaAPAGAR: TFloatField;
    sds_vendaVALOR_PAGAR: TFloatField;
    sds_vendaENTRADA: TFloatField;
    sds_vendaN_BOLETO: TStringField;
    sds_vendaFORMARECEBIMENTO: TStringField;
    sds_vendaOPERACAO: TStringField;
    sds_vendaSTATUS: TSmallintField;
    sds_vendaSTATUS1: TStringField;
    sds_vendaCONTROLE: TStringField;
    sds_vendaOBS: TStringField;
    sds_vendaVALOR_ICMS: TFloatField;
    sds_vendaVALOR_FRETE: TFloatField;
    sds_vendaVALOR_SEGURO: TFloatField;
    sds_vendaOUTRAS_DESP: TFloatField;
    sds_vendaVALOR_IPI: TFloatField;
    dsp_venda: TDataSetProvider;
    cds_venda: TClientDataSet;
    cds_vendaCODMOVIMENTO: TIntegerField;
    cds_vendaCODCLIENTE: TIntegerField;
    cds_vendaDATAVENDA: TDateField;
    cds_vendaDATAVENCIMENTO: TDateField;
    cds_vendaNUMEROBORDERO: TIntegerField;
    cds_vendaBANCO: TSmallintField;
    cds_vendaCODVENDEDOR: TSmallintField;
    cds_vendaCODUSUARIO: TSmallintField;
    cds_vendaDATASISTEMA: TDateField;
    cds_vendaVALOR: TFloatField;
    cds_vendaNOTAFISCAL: TIntegerField;
    cds_vendaSERIE: TStringField;
    cds_vendaNOMECLIENTE: TStringField;
    cds_vendaNOMEUSUARIO: TStringField;
    cds_vendaBANCO_1: TStringField;
    cds_vendaCODVENDA: TIntegerField;
    cds_vendaDESCONTO: TFloatField;
    cds_vendaCODCCUSTO: TSmallintField;
    cds_vendaN_PARCELA: TSmallintField;
    cds_vendaN_DOCUMENTO: TStringField;
    cds_vendaCAIXA: TSmallintField;
    cds_vendaMULTA_JUROS: TFloatField;
    cds_vendaAPAGAR: TFloatField;
    cds_vendaVALOR_PAGAR: TFloatField;
    cds_vendaENTRADA: TFloatField;
    cds_vendaN_BOLETO: TStringField;
    cds_vendaFORMARECEBIMENTO: TStringField;
    cds_vendaOPERACAO: TStringField;
    cds_vendaSTATUS: TSmallintField;
    cds_vendaSTATUS1: TStringField;
    cds_vendaCONTROLE: TStringField;
    cds_vendaOBS: TStringField;
    cds_vendadiferenca: TFloatField;
    cds_vendaVALOR_ICMS: TFloatField;
    cds_vendaVALOR_FRETE: TFloatField;
    cds_vendaVALOR_SEGURO: TFloatField;
    cds_vendaOUTRAS_DESP: TFloatField;
    cds_vendaVALOR_IPI: TFloatField;
    DtSrcVenda: TDataSource;
    DtSrc1: TDataSource;
    ds_serv: TDataSource;
    c_8_serv: TClientDataSet;
    c_8_servCODMOVIMENTO: TIntegerField;
    c_8_servCODSERVICO: TIntegerField;
    c_8_servDESCRICAO: TStringField;
    c_8_servQUANTIDADE: TFloatField;
    c_8_servPRECO: TFloatField;
    c_8_servCODDETALHE_SERV: TIntegerField;
    d_8: TDataSetProvider;
    s_8: TSQLDataSet;
    s_8CODMOVIMENTO: TIntegerField;
    s_8CODSERVICO: TIntegerField;
    s_8DESCRICAO: TStringField;
    s_8QUANTIDADE: TFloatField;
    s_8PRECO: TFloatField;
    s_8CODDETALHE_SERV: TIntegerField;
    scds_produto_proc: TClientDataSet;
    scds_produto_procCODPRODUTO: TIntegerField;
    scds_produto_procCOD_BARRA: TStringField;
    scds_produto_procPRODUTO: TStringField;
    scds_produto_procUNIDADEMEDIDA: TStringField;
    scds_produto_procQTDE_PCT: TFloatField;
    scds_produto_procICMS: TFloatField;
    scds_produto_procCODALMOXARIFADO: TIntegerField;
    scds_produto_procCONTA_DESPESA: TStringField;
    scds_produto_procALMOXARIFADO: TStringField;
    scds_produto_procVALORUNITARIOATUAL: TFloatField;
    scds_produto_procVALOR_PRAZO: TFloatField;
    scds_produto_procCOD_COMISSAO: TIntegerField;
    scds_produto_procRATEIO: TStringField;
    scds_produto_procTIPO: TStringField;
    scds_produto_procLOCALIZACAO: TStringField;
    scds_produto_procESTOQUEATUAL: TFloatField;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    RxLabel4: TRxLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    sDelivery: TSQLDataSet;
    pDelivery: TDataSetProvider;
    cDelivery: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    cdsMesa: TClientDataSet;
    dspMesa: TDataSetProvider;
    sdsMesa: TSQLDataSet;
    Label6: TLabel;
    cDeliveryCODMOVIMENTO: TIntegerField;
    cDeliveryDATAMOVIMENTO: TDateField;
    cDeliveryNOMECLIENTE: TStringField;
    cDeliveryLOGRADOURO: TStringField;
    cDeliveryBAIRRO: TStringField;
    sDeliveryCODMOVIMENTO: TIntegerField;
    sDeliveryDATAMOVIMENTO: TDateField;
    sDeliveryNOMECLIENTE: TStringField;
    sDeliveryLOGRADOURO: TStringField;
    sDeliveryBAIRRO: TStringField;
    sDeliveryTELEFONE: TStringField;
    cDeliveryTELEFONE: TStringField;
    procFoneCODCLIENTE: TIntegerField;
    sDeliveryDATA_SISTEMA: TSQLTimeStampField;
    cDeliveryDATA_SISTEMA: TSQLTimeStampField;
    Panel1: TPanel;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    Edit3: TEdit;
    Panel3: TPanel;
    ComboBox1: TComboBox;
    Label14: TLabel;
    ComboBox2: TComboBox;
    sds_s: TSQLDataSet;
    BitBtn4: TBitBtn;
    sdsMesaNOMECLIENTE: TStringField;
    cdsMesaNOMECLIENTE: TStringField;
    BitBtn1: TBitBtn;
    sdsMesaCODMOVIMENTO: TIntegerField;
    cdsMesaCODMOVIMENTO: TIntegerField;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Edit6: TEdit;
    cbMesas: TComboBox;
    sMesas: TSQLDataSet;
    sMesasCODCLIENTE: TIntegerField;
    sMesasNOMECLIENTE: TStringField;
    ComboBox3: TComboBox;
    Label8: TLabel;
    ComboBox4: TComboBox;
    sdsMesaCODCLIENTE: TIntegerField;
    cdsMesaCODCLIENTE: TIntegerField;
    sDeliveryCODCLIENTE: TIntegerField;
    cDeliveryCODCLIENTE: TIntegerField;
    Alteraes1: TMenuItem;
    ExcluirItem1: TMenuItem;
    sds_Mov_DetDESCPRODUTO: TStringField;
    cds_Mov_detDESCPRODUTO: TStringField;
    DBEdit1: TDBEdit;
    JvDBGrid1: TJvDBGrid;
    RadioGroup1: TRadioGroup;
    cds_Mov_detField10: TAggregateField;
    DBEdit4: TDBEdit;
    cbporcento: TCheckBox;
    BitBtn6: TBitBtn;
    sds_MovimentoOBSERVA: TStringField;
    sds_MovimentoOBS: TStringField;
    cds_MovimentoOBSERVA: TStringField;
    cds_MovimentoOBS: TStringField;
    OpenDialog1: TOpenDialog;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    BitBtn7: TBitBtn;
    Image1: TImage;
    BitBtn5: TBitBtn;
    Label15: TLabel;
    Label16: TLabel;
    JvTroco: TJvCalcEdit;
    jvPago: TJvCalcEdit;
    sqsTitulo: TSQLDataSet;
    sqsTituloSTATUS: TStringField;
    Clientes1: TMenuItem;
    BitBtn8: TBitBtn;
    sMov: TSQLDataSet;
    pMov: TDataSetProvider;
    cMov: TClientDataSet;
    cMovCODMOVIMENTO: TIntegerField;
    cMovDATAMOVIMENTO: TDateField;
    cMovCODCLIENTE: TIntegerField;
    cMovCODNATUREZA: TSmallintField;
    cMovSTATUS: TSmallintField;
    cMovCODUSUARIO: TSmallintField;
    cMovCODVENDEDOR: TSmallintField;
    cMovCODALMOXARIFADO: TIntegerField;
    cMovCODFORNECEDOR: TIntegerField;
    cMovDATA_SISTEMA: TSQLTimeStampField;
    cMovCOD_VEICULO: TIntegerField;
    cMovCONTROLE: TStringField;
    cMovOBS: TStringField;
    sMovCODMOVIMENTO: TIntegerField;
    sMovDATAMOVIMENTO: TDateField;
    sMovCODCLIENTE: TIntegerField;
    sMovCODNATUREZA: TSmallintField;
    sMovSTATUS: TSmallintField;
    sMovCODUSUARIO: TSmallintField;
    sMovCODVENDEDOR: TSmallintField;
    sMovCODALMOXARIFADO: TIntegerField;
    sMovCODFORNECEDOR: TIntegerField;
    sMovDATA_SISTEMA: TSQLTimeStampField;
    sMovCOD_VEICULO: TIntegerField;
    sMovCONTROLE: TStringField;
    sMovOBS: TStringField;
    sExportaMov: TSQLDataSet;
    pExportaMov: TDataSetProvider;
    cExportaMov: TClientDataSet;
    cExportaMovCODMOVIMENTO: TIntegerField;
    cExportaMovDATAMOVIMENTO: TDateField;
    cExportaMovCODCLIENTE: TIntegerField;
    cExportaMovCODNATUREZA: TSmallintField;
    cExportaMovSTATUS: TSmallintField;
    cExportaMovCODUSUARIO: TSmallintField;
    cExportaMovCODVENDEDOR: TSmallintField;
    cExportaMovCODALMOXARIFADO: TIntegerField;
    cExportaMovCODFORNECEDOR: TIntegerField;
    cExportaMovDATA_SISTEMA: TSQLTimeStampField;
    cExportaMovCOD_VEICULO: TIntegerField;
    cExportaMovCONTROLE: TStringField;
    cExportaMovOBS: TStringField;
    sExportaMovCODMOVIMENTO: TIntegerField;
    sExportaMovDATAMOVIMENTO: TDateField;
    sExportaMovCODCLIENTE: TIntegerField;
    sExportaMovCODNATUREZA: TSmallintField;
    sExportaMovSTATUS: TSmallintField;
    sExportaMovCODUSUARIO: TSmallintField;
    sExportaMovCODVENDEDOR: TSmallintField;
    sExportaMovCODALMOXARIFADO: TIntegerField;
    sExportaMovCODFORNECEDOR: TIntegerField;
    sExportaMovDATA_SISTEMA: TSQLTimeStampField;
    sExportaMovCOD_VEICULO: TIntegerField;
    sExportaMovCONTROLE: TStringField;
    sExportaMovOBS: TStringField;
    sMovDet: TSQLDataSet;
    sExportaMovDet: TSQLDataSet;
    pExportaMovDet: TDataSetProvider;
    cExportaMovDet: TClientDataSet;
    cExportaVenda: TClientDataSet;
    pExportaVenda: TDataSetProvider;
    sExportaVenda: TSQLDataSet;
    sVenda: TSQLDataSet;
    cExportaVendaCODVENDA: TIntegerField;
    cExportaVendaCODMOVIMENTO: TIntegerField;
    cExportaVendaCODCLIENTE: TIntegerField;
    cExportaVendaDATAVENDA: TDateField;
    cExportaVendaDATAVENCIMENTO: TDateField;
    cExportaVendaNUMEROBORDERO: TIntegerField;
    cExportaVendaBANCO: TSmallintField;
    cExportaVendaCODVENDEDOR: TSmallintField;
    cExportaVendaSTATUS: TSmallintField;
    cExportaVendaCODUSUARIO: TSmallintField;
    cExportaVendaDATASISTEMA: TDateField;
    cExportaVendaVALOR: TFloatField;
    cExportaVendaNOTAFISCAL: TIntegerField;
    cExportaVendaSERIE: TStringField;
    cExportaVendaDESCONTO: TFloatField;
    cExportaVendaCODCCUSTO: TSmallintField;
    cExportaVendaN_PARCELA: TSmallintField;
    cExportaVendaOPERACAO: TStringField;
    cExportaVendaFORMARECEBIMENTO: TStringField;
    cExportaVendaN_DOCUMENTO: TStringField;
    cExportaVendaCAIXA: TSmallintField;
    cExportaVendaMULTA_JUROS: TFloatField;
    cExportaVendaAPAGAR: TFloatField;
    cExportaVendaVALOR_PAGAR: TFloatField;
    cExportaVendaENTRADA: TFloatField;
    cExportaVendaN_BOLETO: TStringField;
    cExportaVendaSTATUS1: TStringField;
    cExportaVendaCONTROLE: TStringField;
    cExportaVendaOBS: TStringField;
    cExportaVendaVALOR_ICMS: TFloatField;
    cExportaVendaVALOR_FRETE: TFloatField;
    cExportaVendaVALOR_SEGURO: TFloatField;
    cExportaVendaOUTRAS_DESP: TFloatField;
    cExportaVendaVALOR_IPI: TFloatField;
    cExportaVendaPRAZO: TStringField;
    sVendaCODVENDA: TIntegerField;
    sVendaCODMOVIMENTO: TIntegerField;
    sVendaCODCLIENTE: TIntegerField;
    sVendaDATAVENDA: TDateField;
    sVendaDATAVENCIMENTO: TDateField;
    sVendaNUMEROBORDERO: TIntegerField;
    sVendaBANCO: TSmallintField;
    sVendaCODVENDEDOR: TSmallintField;
    sVendaSTATUS: TSmallintField;
    sVendaCODUSUARIO: TSmallintField;
    sVendaDATASISTEMA: TDateField;
    sVendaVALOR: TFloatField;
    sVendaNOTAFISCAL: TIntegerField;
    sVendaSERIE: TStringField;
    sVendaDESCONTO: TFloatField;
    sVendaCODCCUSTO: TSmallintField;
    sVendaN_PARCELA: TSmallintField;
    sVendaOPERACAO: TStringField;
    sVendaFORMARECEBIMENTO: TStringField;
    sVendaN_DOCUMENTO: TStringField;
    sVendaCAIXA: TSmallintField;
    sVendaMULTA_JUROS: TFloatField;
    sVendaAPAGAR: TFloatField;
    sVendaVALOR_PAGAR: TFloatField;
    sVendaENTRADA: TFloatField;
    sVendaN_BOLETO: TStringField;
    sVendaSTATUS1: TStringField;
    sVendaCONTROLE: TStringField;
    sVendaOBS: TStringField;
    sVendaVALOR_ICMS: TFloatField;
    sVendaVALOR_FRETE: TFloatField;
    sVendaVALOR_SEGURO: TFloatField;
    sVendaOUTRAS_DESP: TFloatField;
    sVendaVALOR_IPI: TFloatField;
    sVendaPRAZO: TStringField;
    sExportaVendaCODVENDA: TIntegerField;
    sExportaVendaCODMOVIMENTO: TIntegerField;
    sExportaVendaCODCLIENTE: TIntegerField;
    sExportaVendaDATAVENDA: TDateField;
    sExportaVendaDATAVENCIMENTO: TDateField;
    sExportaVendaNUMEROBORDERO: TIntegerField;
    sExportaVendaBANCO: TSmallintField;
    sExportaVendaCODVENDEDOR: TSmallintField;
    sExportaVendaSTATUS: TSmallintField;
    sExportaVendaCODUSUARIO: TSmallintField;
    sExportaVendaDATASISTEMA: TDateField;
    sExportaVendaVALOR: TFloatField;
    sExportaVendaNOTAFISCAL: TIntegerField;
    sExportaVendaSERIE: TStringField;
    sExportaVendaDESCONTO: TFloatField;
    sExportaVendaCODCCUSTO: TSmallintField;
    sExportaVendaN_PARCELA: TSmallintField;
    sExportaVendaOPERACAO: TStringField;
    sExportaVendaFORMARECEBIMENTO: TStringField;
    sExportaVendaN_DOCUMENTO: TStringField;
    sExportaVendaCAIXA: TSmallintField;
    sExportaVendaMULTA_JUROS: TFloatField;
    sExportaVendaAPAGAR: TFloatField;
    sExportaVendaVALOR_PAGAR: TFloatField;
    sExportaVendaENTRADA: TFloatField;
    sExportaVendaN_BOLETO: TStringField;
    sExportaVendaSTATUS1: TStringField;
    sExportaVendaCONTROLE: TStringField;
    sExportaVendaOBS: TStringField;
    sExportaVendaVALOR_ICMS: TFloatField;
    sExportaVendaVALOR_FRETE: TFloatField;
    sExportaVendaVALOR_SEGURO: TFloatField;
    sExportaVendaOUTRAS_DESP: TFloatField;
    sExportaVendaVALOR_IPI: TFloatField;
    sExportaVendaPRAZO: TStringField;
    pMovDet: TDataSetProvider;
    cMovDet: TClientDataSet;
    pVenda: TDataSetProvider;
    cVenda: TClientDataSet;
    cVendaCODVENDA: TIntegerField;
    cVendaCODMOVIMENTO: TIntegerField;
    cVendaCODCLIENTE: TIntegerField;
    cVendaDATAVENDA: TDateField;
    cVendaDATAVENCIMENTO: TDateField;
    cVendaNUMEROBORDERO: TIntegerField;
    cVendaBANCO: TSmallintField;
    cVendaCODVENDEDOR: TSmallintField;
    cVendaSTATUS: TSmallintField;
    cVendaCODUSUARIO: TSmallintField;
    cVendaDATASISTEMA: TDateField;
    cVendaVALOR: TFloatField;
    cVendaNOTAFISCAL: TIntegerField;
    cVendaSERIE: TStringField;
    cVendaDESCONTO: TFloatField;
    cVendaCODCCUSTO: TSmallintField;
    cVendaN_PARCELA: TSmallintField;
    cVendaOPERACAO: TStringField;
    cVendaFORMARECEBIMENTO: TStringField;
    cVendaN_DOCUMENTO: TStringField;
    cVendaCAIXA: TSmallintField;
    cVendaMULTA_JUROS: TFloatField;
    cVendaAPAGAR: TFloatField;
    cVendaVALOR_PAGAR: TFloatField;
    cVendaENTRADA: TFloatField;
    cVendaN_BOLETO: TStringField;
    cVendaSTATUS1: TStringField;
    cVendaCONTROLE: TStringField;
    cVendaOBS: TStringField;
    cVendaVALOR_ICMS: TFloatField;
    cVendaVALOR_FRETE: TFloatField;
    cVendaVALOR_SEGURO: TFloatField;
    cVendaOUTRAS_DESP: TFloatField;
    cVendaVALOR_IPI: TFloatField;
    cVendaPRAZO: TStringField;
    sMovDetCODDETALHE: TIntegerField;
    sMovDetCODMOVIMENTO: TIntegerField;
    sMovDetCODALMOXARIFADO: TSmallintField;
    sMovDetCODPRODUTO: TIntegerField;
    sMovDetQUANTIDADE: TFloatField;
    sMovDetPRECO: TFloatField;
    sMovDetICMS: TFloatField;
    sMovDetUN: TStringField;
    sMovDetQTDE_ALT: TFloatField;
    sMovDetBAIXA: TStringField;
    sMovDetPRECOCUSTO: TFloatField;
    sMovDetVLRESTOQUE: TFloatField;
    sMovDetQTDEESTOQUE: TFloatField;
    sMovDetDESCPRODUTO: TStringField;
    sMovDetPRECOULTIMACOMPRA: TFloatField;
    sMovDetVLR_BASE: TFloatField;
    sExportaMovDetCODDETALHE: TIntegerField;
    sExportaMovDetCODMOVIMENTO: TIntegerField;
    sExportaMovDetCODALMOXARIFADO: TSmallintField;
    sExportaMovDetCODPRODUTO: TIntegerField;
    sExportaMovDetQUANTIDADE: TFloatField;
    sExportaMovDetPRECO: TFloatField;
    sExportaMovDetICMS: TFloatField;
    sExportaMovDetUN: TStringField;
    sExportaMovDetQTDE_ALT: TFloatField;
    sExportaMovDetBAIXA: TStringField;
    sExportaMovDetPRECOCUSTO: TFloatField;
    sExportaMovDetVLRESTOQUE: TFloatField;
    sExportaMovDetQTDEESTOQUE: TFloatField;
    sExportaMovDetDESCPRODUTO: TStringField;
    sExportaMovDetPRECOULTIMACOMPRA: TFloatField;
    sExportaMovDetVLR_BASE: TFloatField;
    sds_Mov_DetLOTE: TStringField;
    cds_Mov_detLOTE: TStringField;
    cExportaMovDetCODDETALHE: TIntegerField;
    cExportaMovDetCODMOVIMENTO: TIntegerField;
    cExportaMovDetCODALMOXARIFADO: TSmallintField;
    cExportaMovDetCODPRODUTO: TIntegerField;
    cExportaMovDetQUANTIDADE: TFloatField;
    cExportaMovDetPRECO: TFloatField;
    cExportaMovDetICMS: TFloatField;
    cExportaMovDetUN: TStringField;
    cExportaMovDetQTDE_ALT: TFloatField;
    cExportaMovDetBAIXA: TStringField;
    cExportaMovDetPRECOCUSTO: TFloatField;
    cExportaMovDetVLRESTOQUE: TFloatField;
    cExportaMovDetQTDEESTOQUE: TFloatField;
    cExportaMovDetDESCPRODUTO: TStringField;
    cExportaMovDetPRECOULTIMACOMPRA: TFloatField;
    cExportaMovDetVLR_BASE: TFloatField;
    cMovDetCODDETALHE: TIntegerField;
    cMovDetCODMOVIMENTO: TIntegerField;
    cMovDetCODALMOXARIFADO: TSmallintField;
    cMovDetCODPRODUTO: TIntegerField;
    cMovDetQUANTIDADE: TFloatField;
    cMovDetPRECO: TFloatField;
    cMovDetICMS: TFloatField;
    cMovDetUN: TStringField;
    cMovDetQTDE_ALT: TFloatField;
    cMovDetBAIXA: TStringField;
    cMovDetPRECOCUSTO: TFloatField;
    cMovDetVLRESTOQUE: TFloatField;
    cMovDetQTDEESTOQUE: TFloatField;
    cMovDetDESCPRODUTO: TStringField;
    cMovDetPRECOULTIMACOMPRA: TFloatField;
    cMovDetVLR_BASE: TFloatField;
    sCaixa: TSQLDataSet;
    sCaixaDATA: TDateField;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure cds_MovimentoBeforePost(DataSet: TDataSet);
    procedure cds_MovimentoNewRecord(DataSet: TDataSet);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure cds_Mov_detReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_vendaBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cbMesasKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure IncluirNovoItem1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExcluirItem1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DtSrc1StateChange(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure jvPagoChange(Sender: TObject);
    procedure cbporcentoClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
     codproduto : integer;
     cod_nat : integer;
     natureza : string;
     cod_vendedor_padrao : integer;
     nome_vendedor_padrao : string;
     codcliente : integer;
     precovenda : double;
     centro_receita : integer;
     codalmoxarif: integer;
     tiporel: string;
     servico : string;
     codserv : integer;
     cod_mov : integer;
     codrec  : integer;
     Cod_orig : Integer;
     tipo_origem : string;
     cod_cli_forn : Integer;
     c_f : string;
    { Private declarations }
  public
     estoque : double;
     function buscaProdLista(codBarra, ProdLista:String): Integer;
     procedure buscaProduto;
     procedure vendaavista;
     procedure vendaaprazo;
     procedure buscaserie;
     procedure buscatitulo;
     procedure novavenda;
     procedure updatevenda;
     procedure imprimecupom;
     procedure buscacliente;
     procedure exportatabelas;
     procedure AbreFormCaixa;
    { Public declarations }
  end;

var
  fTerminal_Delivery: TfTerminal_Delivery;
  usadelivery, strSql, strTit, serie: String;
  numTitulo, caixa, COD_VENDA, varConta, prazoparapgto : Integer;
  total : double;
  TD: TTransactionDesc;
  Rua, Bairro : string;  

implementation

uses UDm, uListaClientes, ufprocura_prod, sCtrlResize, uCaixa,
  uVendaFinalizar, uUtils, uProdudoBusca, uMensagens, UDMNF, uProcurar_nf,
  uFiltroMovimento, uTerminalFinalizar;

{$R *.dfm}

procedure TfTerminal_Delivery.BitBtn1Click(Sender: TObject);
begin
  //inherited;
   fCaixa := TfCaixa.Create(Application);
  try
    fCaixa.ShowModal;
  finally
    fCaixa.Free;
  end;

end;

procedure TfTerminal_Delivery.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (DtSrc.DataSet.State in [dsInsert, dsEdit]) then
 begin
   if (key = #13) then
   begin
      if (procFone.Active) then
         procFone.Close;
      procFone.Params[0].AsString := Edit1.Text;
      procFone.Open;
      if (procFone.IsEmpty) then
      begin
        if MessageDlg('Telefone não cadastrado deseja Cadastrá-lo.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            BitBtn2.Click
        else
            exit;
      end
      else
      begin
         Edit3.Text := '';
         Edit4.Text := '';
         Edit2.Text := procFoneNOMECLIENTE.AsString;
         Edit4.Text := IntToStr(procFoneCODCLIENTE.AsInteger);
         if (procFoneLOGRADOURO.AsString <> '') then
           Rua := procFoneLOGRADOURO.AsString;
         if (procFoneBAIRRO.AsString <> '') then
           bairro := procFoneBAIRRO.AsString;
         Edit3.Text := Rua + ' ' + bairro;
         dbeProduto.SetFocus;
      end;
   end;
 end;  
end;

procedure TfTerminal_Delivery.dbeProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (key = #13) then
 begin
     if (dbeProduto.text <> '') then
     begin
       codproduto := 0;
       buscaProduto;
       dbeProduto.Text := '';
       DBEdit2.SetFocus;
     end
     else
       BitBtn3.Click;
 end;
 jvPago.Text := DBEdit4.Text;
end;

procedure TfTerminal_Delivery.BitBtn3Click(Sender: TObject);
begin
  inherited;
   if DtSrc1.DataSet.State in [dsInactive] then
     exit;
  //fProcura_prod.btnIncluir.Visible := true;
  //PROC_PROD_RESUMIDO
    fProcura_prod.Panel2.Visible := True;
    fProcura_prod.Panel1.Visible := False;
   // if (not fProcura_prod.cds_proc.Active) then
   //   fProcura_prod.cds_proc.Open;
  //varonde := 'compra';
   var_F := 'terminalloja';
  //cds_Mov_detLOTE.AsString := '';
  //fProcura_prod.Edit4.ReadOnly := True;
  fProcura_prod.Edit2.ReadOnly := True;
  //fProcura_prod.Edit4.TabStop := False;
  fProcura_prod.Edit2.TabStop := False;
  fProcura_prod.BitBtn1.Click;
  fProcura_prod.ShowModal;
  jvPago.Text := DBEdit4.Text;
  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.btnIncluirClick(Sender: TObject);
begin
   AbreFormCaixa;

   if (Panel2.Visible = True) then
   begin
    Edit1.Text := '';
    Edit2.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
   end;
  //inherited;

  jvPago.Value := 0;
  JvTroco.Value := 0;

  if cds_Movimento.Active then
    cds_Movimento.Close;

  if cds_Mov_det.Active then
    cds_Mov_det.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;


  if c_8_serv.Active then
    c_8_serv.Close;

  if not DtSrc.DataSet.Active then
     DtSrc.DataSet.open;
  DtSrc.DataSet.Append;

  if DtSrc.DataSet.State in [dsInsert] then
  begin
    cds_MovimentoCODNATUREZA.AsInteger := cod_nat;
    cds_MovimentoDESCNATUREZA.AsString := natureza;
    cds_MovimentoCODUSUARIO.AsInteger := cod_vendedor_padrao;
    cds_MovimentoNOMEUSUARIO.AsString := nome_vendedor_padrao;
    cds_MovimentoCODCLIENTE.AsInteger := 0;
    cds_MovimentoNOMECLIENTE.AsString := 'CONSUMIDOR';
    cds_MovimentoNewRecord(DtSrc.DataSet);
    cds_Movimento.Edit;
  end;

  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
  begin
    if DtSrc1.DataSet.State in [dsInactive] then
    begin
      DtSrc1.DataSet.Open;
      DtSrc1.DataSet.Append;
    end;
    if DtSrc1.DataSet.State in [dsBrowse] then
      DtSrc1.DataSet.Append;
  end;

    if (RadioGroup1.ItemIndex = 1) then
    begin
      GroupBox1.Visible := True;
      GroupBox2.Visible := False;
      Edit1.SetFocus;
    end;
    if (RadioGroup1.ItemIndex = 0) then
    begin
      GroupBox1.Visible := False;
      GroupBox2.Visible := True;
      cbMesas.SetFocus;
    end;

    if (RadioGroup1.ItemIndex = 2) then
    begin
      Edit4.Text := '0'; // Codigo do Cliente Consumidor
      dbeProduto.SetFocus;
    end;
    if (ComboBox3.Text <> 'À VISTA') then
      ComboBox3.Text := 'À VISTA';
end;

procedure TfTerminal_Delivery.buscaProduto;
 var
 s:string;
begin
  if (dbeProduto.Text = '') then
    exit;
  if (cds_Movimento.State in [dsInactive]) then
  begin
     MessageDlg('Para adicionar uma nova venda antes você deve clicar no botão incluir.', mtWarning, [mbOK], 0);
     abort;
  end;

  if (cds_Movimento.State in [dsBrowse]) then
    cds_Movimento.Edit;

  cds_Mov_det.Append;

  s:='';

  if (buscaProdLista(dbeproduto.Text, 'Prod') = 1) then
  begin
    MessageDlg('Produto não encontrado', mtWarning, [mbOK], 0);
    BitBtn3.Click;
    {cds_mov_det.Cancel;
    dbeproduto.SetFocus;
    exit;}
  end
  else
  begin
      cds_Mov_detCODPRODUTO.AsInteger := scds_produto_procCODPRODUTO.AsInteger;
      //cds_Mov_detCODPRO.AsString:= dbeProduto.Text;
      cds_Mov_detCOD_BARRA.AsString := dbeProduto.Text;
      cds_Mov_detPRODUTO.Value:=scds_produto_procPRODUTO.Value;
      cds_Mov_detDESCPRODUTO.Value := scds_produto_procPRODUTO.Value;
      cds_Mov_detCOD_COMISSAO.AsInteger:=scds_produto_procCOD_COMISSAO.AsInteger;
      cds_Mov_detQTDE_PCT.AsFloat:=scds_produto_procQTDE_PCT.AsFloat;
      cds_Mov_detUN.AsString:=scds_produto_procUNIDADEMEDIDA.AsString;
      cds_Mov_detLOCALIZACAO.AsString:=scds_produto_procLOCALIZACAO.AsString;
      cds_Mov_detESTOQUEATUAL.AsFloat:=scds_produto_procESTOQUEATUAL.AsFloat;
      cds_Mov_detQUANTIDADE.AsFloat := 1;
      cds_Mov_detQTDE_ALT.AsFloat := 0;
      cds_Mov_detVALTOTAL.AsFloat := precovenda * cds_Mov_detQUANTIDADE.AsFloat;
      cds_Mov_detCODALMOXARIFADO.AsInteger:=scds_produto_procCODALMOXARIFADO.AsInteger;
      cds_Mov_detALMOXARIFADO.AsString := scds_produto_procALMOXARIFADO.AsString;
      cds_Mov_detICMS.AsFloat := scds_produto_procICMS.AsFloat;
      cds_Mov_detPRECO.AsFloat := precovenda;
      // É serviço ???
     { if (scds_produto_procTIPO.AsString = 'SERV') then
      begin
        servico := 'SIM';
        GroupBox1.Visible := True;
        if (not ds_serv.DataSet.Active) then
        begin
          c_8_serv.params[0].asInteger := cds_Mov_detCODDETALHE.Asinteger;
          ds_serv.DataSet.Open;
        end;
          ds_serv.DataSet.Append;
          c_8_servCODMOVIMENTO.AsInteger := cds_Mov_detCODDETALHE.Asinteger;
          c_8_servDESCRICAO.AsString := scds_produto_procPRODUTO.AsString;
          DbEdit17.Enabled := True;
          DbEdit17.Text := scds_produto_procPRODUTO.AsString;
      end;}
      cds_Mov_det.Post;
      scds_produto_proc.Close;
      dbeProduto.Text := '';
     { if (servico = 'SIM') then
        DbEdit17.SetFocus
      else }
        dbeProduto.SetFocus;
      servico := '';
  end;

end;

procedure TfTerminal_Delivery.cds_MovimentoBeforePost(DataSet: TDataSet);
begin
 // inherited;
   if cds_Movimento.State in [dsInsert] then
   begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_MovimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
   end;
end;

procedure TfTerminal_Delivery.cds_MovimentoNewRecord(DataSet: TDataSet);
begin
  //inherited;
    cds_MovimentoCODMOVIMENTO.asInteger := 1999999;
    cds_MovimentoDATAMOVIMENTO.Value := Date;
    cds_MovimentoDATA_SISTEMA.AsDateTime := Now;
    cds_MovimentoSTATUS.Value := 0;
    cds_MovimentoCODUSUARIO.AsInteger := 1;
    cds_MovimentoCODVENDEDOR.Value:=1;
    cds_MovimentoCODCLIENTE.AsInteger := 1;
    cds_MovimentoNOMECLIENTE.AsString := 'CONSUMIDOR';
    cds_MovimentoCODALMOXARIFADO.AsInteger := 1;
end;

procedure TfTerminal_Delivery.cds_Mov_detCalcFields(DataSet: TDataSet);
var valor : double;
begin
  valor := 0;
  if cds_Mov_detQTDE_ALT.Value > 0 then
  begin
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
    valor := cds_Mov_detValorTotal.Value * (cds_Mov_detQTDE_ALT.Value/100);
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value - valor;
  end
  else
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
end;

procedure TfTerminal_Delivery.cds_Mov_detNewRecord(DataSet: TDataSet);
begin
  //inherited;
   if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  cds_mov_detCODDETALHE.AsInteger := codmovdet;
  cds_Mov_detCODMOVIMENTO.AsInteger:=cds_MovimentoCODMOVIMENTO.AsInteger;
end;

procedure TfTerminal_Delivery.cds_Mov_detReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  //inherited;
  MessageDlg('Não é possível gravar o registro.' + #10#13 + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfTerminal_Delivery.cds_vendaBeforePost(DataSet: TDataSet);
begin
  //inherited;
    if cds_vendaSTATUS1.AsString = '0' then
      cds_vendaSTATUS.AsInteger := 0;
    if cds_vendaSTATUS1.AsString = '1' then
      cds_vendaSTATUS.AsInteger := 1;
    if cds_vendaSTATUS1.AsString = '2' then
      cds_vendaSTATUS.AsInteger := 2;
end;

function TfTerminal_Delivery.buscaProdLista(codBarra,
  ProdLista: String): Integer;
var varsql:string;
begin

  varsql := 'select  prod.CODPRODUTO ' +
         ', prod.COD_BARRA '+
         ', prod.PRODUTO    '+
         ', prod.UNIDADEMEDIDA ' +
         ', prod.QTDE_PCT ' +
         ', prod.ICMS ' +
         ', prod.CODALMOXARIFADO ' +
         ', prod.CONTA_DESPESA ' +
         ', ccus.ALMOXARIFADO ' +
         ', prod.VALORUNITARIOATUAL ' +
         ', prod.VALOR_PRAZO ' +
         ', prod.COD_COMISSAO ' +
         ', prod.RATEIO ' +
         ', prod.TIPO ' +
         ', prod.LOCALIZACAO ' +
         ', prod.ESTOQUEATUAL ' +
         ' from PRODUTOS prod ' +
         ' left outer join ALMOXARIFADO ccus ' +
         ' on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO ' +
         ' where ';

  if scds_produto_proc.IsEmpty then
    scds_produto_proc.Close;
  {if (RadioGroup1.ItemIndex = 1) then
    scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + dbeProduto.Text + ''''
  else }
   // scds_produto_proc.CommandText := varsql + ' CODPRO = ' + '''' + dbeProduto.Text + '''';
    scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + dbeProduto.Text + '''';
  scds_produto_proc.Open;

  if (not scds_produto_proc.IsEmpty) then
  begin
    codproduto := scds_produto_procCODPRODUTO.AsInteger;
    if scds_produto_procQTDE_PCT.AsFloat >= 1 then
      precovenda := scds_produto_procVALOR_PRAZO.AsFloat / scds_produto_procQTDE_PCT.AsFloat
    else
      precovenda := scds_produto_procVALOR_PRAZO.AsFloat;
  end;

  if (scds_produto_proc.IsEmpty) then
    result := 1
  else
    result := 0;
end;

procedure TfTerminal_Delivery.FormCreate(Sender: TObject);
var
  utilcrtitulo : Tutils;
  i, j : integer;
begin

  sCtrlResize.CtrlResize(TForm(fTerminal_Delivery));
  if (FileExists('logo1.jpg')) then
    Image1.Picture.LoadFromFile('logo1.jpg');
 // inherited;
  codmovdet := 1999999;
  codserv := 1999999;
  //codmd := 1999999;
  centro_receita := 0;
    {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRO RECEITA PADRAO';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      centro_receita := strToint(dm.cds_parametroDADOS.AsString);
    end;
    {------Pesquisando na tab Parametro Vendedor Padrão ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'VENDEDORPADRAO';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      cod_vendedor_padrao := strToint(dm.cds_parametroDADOS.AsString);
      nome_vendedor_padrao := dm.cds_parametroD1.AsString;
    end else
    begin
      cod_vendedor_padrao := 1;
      nome_vendedor_padrao := '..'
    end;
  {------Pesquisando na tab Parametro Código e Nome da Natureza da Venda---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PDV';
  dm.cds_parametro.Open;
  cod_nat := strToint(dm.cds_parametroD2.asString);
  natureza := 'Venda a Vista';
  codcliente := strToint(dm.cds_parametroDADOS.asString);
  codalmoxarif := strToint(dm.cds_parametroD1.asString);
  tiporel := dm.cds_parametroD3.asString;

  {------Pesquisando na tab Parametro qual form de Procura Produtos ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DELIVERY';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    usadelivery := dm.cds_parametroCONFIGURADO.AsString
  else
    usadelivery := 'N';

  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    ComboBox2.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;

  {if (usadelivery = 'N') then
     RadioGroup1.Visible := False;}

end;

procedure TfTerminal_Delivery.btnGravarClick(Sender: TObject);
var codigodocliente : integer;
begin
    //inherited;
    // Salvo o Movimento
    if (RadioGroup1.ItemIndex = 0) then
    begin
      if (cbMesas.Text = '') then
      begin
        MessageDlg('Informe a mesa do Cliente', mtWarning, [mbOK], 0);
        exit;
      end
      else
      begin
        sMesas.Open;
        sMesas.Locate('NOMECLIENTE', cbMesas.Text, [loCaseInsensitive]);
        codigodocliente := sMesasCODCLIENTE.AsInteger;
      end;
      cds_MovimentoCODNATUREZA.AsInteger := 13; //Mesa
      cds_MovimentoCODCLIENTE.AsInteger := codigodocliente;
    end;

    if (RadioGroup1.ItemIndex = 1) then
    begin
        if (procFone.Active) then
           procFone.Close;
        procFone.Params[0].AsString := Edit1.Text;
        procFone.Open;
        if (procFone.IsEmpty) then
        begin
          if MessageDlg('Telefone não cadastrado deseja Cadastrá-lo.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              BitBtn2.Click
          else
              exit;
        end
        else
         cds_MovimentoCODCLIENTE.AsInteger := procFoneCODCLIENTE.AsInteger;
      cds_MovimentoCODNATUREZA.AsInteger := 14; //Delivery
    end;

    if (RadioGroup1.ItemIndex = 2) then
      cds_MovimentoCODNATUREZA.AsInteger := 3; //Venda
     // buscacliente;

   cds_Movimento.ApplyUpdates(0);
   cod_mov := cds_MovimentoCODMOVIMENTO.AsInteger;
  // Corrijo o codigo da movimento detalhe(tabela)
  if (cds_Mov_detCODMOVIMENTO.AsInteger = 1999999) then
  begin
    cds_Mov_det.First;
    While not cds_Mov_det.Eof do
    begin
      cds_Mov_det.Edit;
      cds_Mov_detCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
      IF (cds_Mov_detQTDE_ALT.IsNull) then
         cds_Mov_detQTDE_ALT.AsFloat := 0;
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cds_Mov_detCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
      cds_Mov_det.Post;
      cds_Mov_det.Next;
    end;
  end;
  // Salvo a movimento detalhe
  cds_Mov_det.ApplyUpdates(0);

  if (cds_Movimento.State in [dsEdit]) then
      cds_Movimento.ApplyUpdates(0);

  if (RadioGroup1.ItemIndex = 0) then
  begin
    if (cdsMesa.Active) then
      cdsMesa.Close;
    cdsMesa.Open;
    cdsMesa.Last;
  end;

  if (RadioGroup1.ItemIndex = 1) then
  begin
    if (cDelivery.Active) then
      cDelivery.Close;
    cDelivery.Open;
    cDelivery.Last;
  end;

  if (RadioGroup1.ItemIndex = 2) then
    BitBtn4.Click;

end;

procedure TfTerminal_Delivery.DBGrid2DblClick(Sender: TObject);
var
  Rua, Bairro : string;
begin
  inherited;
   Edit1.Text := '';
   Edit2.Text := '';
   Edit3.Text := '';
   Edit1.Text := cDeliveryTELEFONE.AsString;
   Edit2.Text := cDeliveryNOMECLIENTE.AsString;
   Edit4.Text := IntToStr(cDeliveryCODCLIENTE.AsInteger);
   Rua := cDeliveryLOGRADOURO.AsString;
   bairro := cDeliveryBAIRRO.AsString;
   Edit3.Text := Rua + ' ' + bairro;
   if (cds_Movimento.Active) then
       cds_Movimento.Close;
   if (cds_Mov_det.Active) then
       cds_Mov_det.Close;
   cds_Movimento.Params[0].AsInteger := cDeliveryCODMOVIMENTO.AsInteger;
   cds_Movimento.Open;
   cds_Mov_det.Params[0].Clear;
   cds_Mov_det.Params[1].AsInteger := cDeliveryCODMOVIMENTO.AsInteger;
   cds_Mov_det.Open;
   if (GroupBox1.Visible = False) then
       GroupBox1.Visible := True;
   if (GroupBox2.Visible = True) then
       GroupBox2.Visible := False;
      RadioGroup1.ItemIndex := 1;

   jvPago.Text := DBEdit4.Text;
   JvTroco.Value := 0;

  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.FormShow(Sender: TObject);
var str_sql : string;
    datacaixa, diadeHoje : Tdate;
begin
  inherited;
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  str_sql := 'Select * from PLANO ';
  str_sql := str_sql + 'WHERE CODIGO = ';
  str_sql := str_sql + IntToStr(33);//'''' + 'CAIXA INTERNO' + '''';
  DM.c_1_planoc.CommandText := str_sql;
  DM.c_1_planoc.Open;
  if DM.c_1_planoc.IsEmpty then
  begin
    MessageDlg('Codigo não cadastrado.', mtWarning, [mbOK], 0);
    exit;
  end
  else
    varConta := DM.c_1_planocCODIGO.AsInteger;
  DM.c_1_planoc.Close;
  sMesas.Open;
  sMesas.First;
  while not sMesas.Eof do begin
      cbMesas.Items.Add(sMesasNOMECLIENTE.AsString);
      sMesas.Next;
  end;
  sMesas.Close;

  cDelivery.Close;
  cDelivery.Open;
  cdsMesa.Close;
  cdsMesa.Open;

  if (RadioGroup1.ItemIndex <> 2) then
  begin
    Panel2.Visible := True;
    Panel3.Visible := False;
  end
  else
  begin
    Panel2.Visible := False;
    Panel3.Visible := True;
  end;

  if (sCaixa.Active) then
     sCaixa.Close;
  // Verifico se o caixa foi aberto na data atual
  sCaixa.Params[0].AsString := '1.1.1.01.0002';
  sCaixa.Open;
  if (not sCaixa.IsEmpty) then
  begin
    dm.varDataCaixa := sCaixaDATA.AsDateTime;
    diadeHoje := Date;
    if (dm.varDataCaixa <> diadeHoje) then
    begin
       MessageDlg('o Caixa do Dia ' + DateToStr(dm.varDataCaixa) + ' Precisa ser Fechado ', mtWarning, [mbOK], 0);
       sCaixa.Close;
       dm.varStatusCaixa := 0; // Caixa Precisa ser Fechado
       BitBtn1.Click;
    end
    else
    begin
       dm.varStatusCaixa := 1; // Caixa Aberto
    end;
  end
  else
  begin
    sCaixa.Close;
    dm.varDataCaixa := Now;
    dm.varStatusCaixa := 2;  // Caixa Precisa ser Aberto
    BitBtn1.Click;
  end;
  
end;

procedure TfTerminal_Delivery.vendaavista;
begin
   // aqui adiciono uma nova venda ou atualizo caso já exista
   total := 0;
   numTitulo := 0;
   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
  // Verifico se a venda já foi SALVA
  if (cds_venda.Active) then
    cds_venda.Close;
  cds_venda.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  cds_venda.Open;
  if (cds_venda.IsEmpty) then
     novavenda // Adiciono Nova venda
  else   // Já está gravada a Venda , é só atualizar
     updatevenda;
end;

procedure TfTerminal_Delivery.buscaserie;
begin
    if Dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'SERIETERMINAL';
    dm.cds_parametro.Open;
    if dm.cds_parametro.IsEmpty then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.asString := 'Número do Título de Venda para o Terminal';
      dm.cds_parametroPARAMETRO.asString := 'SERIETERMINAL';
      dm.cds_parametroDADOS.asString := 'T'; // T -> Terminal VENDA(CAIXA)
      dm.cds_parametroCONFIGURADO.asString := 'S';
      dm.cds_parametro.ApplyUpdates(0);
    end;
    // Buscar o número do título na tabela SéRIE
    if (sds_s.Active) then
      sds_s.Close;
    sds_s.CommandText := 'SELECT SERIE, ULTIMO_NUMERO FROM SERIES WHERE SERIE = ' + '''' + dm.cds_parametroDADOS.asString + '''';
    sds_s.open;
    if (sds_s.IsEmpty) then
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('INSERT INTO SERIES (SERIE, ULTIMO_NUMERO) VALUES(' + '''' + 'T' + ''',' + '1)');
      Try
         dm.sqlsisAdimin.Commit(TD);
         serie := 'T';
         numTitulo := 0;
      except
         dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
         MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
             [mbOk], 0);
      end;
    end
    else begin
      serie := sds_s.Fields[0].AsString;
      numTitulo := sds_s.Fields[1].AsInteger + 1;
      strSql := 'UPDATE SERIES SET ULTIMO_NUMERO = ';
      strSql := strSql + IntToStr(numTitulo + 1);
      strSql := strSql + ' where SERIE = ';
      strSql := strSql + '''' + serie + '''';
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      Try
         dm.sqlsisAdimin.Commit(TD);
      except
         dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
         MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
             [mbOk], 0);
      end;
    end;
end;

procedure TfTerminal_Delivery.buscatitulo;
begin
    strTit := IntToStr(numTitulo) + '-' + serie;
    strSql := 'SELECT TITULO FROM RECEBIMENTO where TITULO = ' ;
    strSql := strSql + '''' + strTit + '''';
    if sds_s.Active then
      sds_s.Close;
    sds_s.CommandText := strSql;
    sds_s.Open;
    if not sds_s.IsEmpty then
    begin
      strSql := 'SELECT TITULO FROM RECEBIMENTO where CODRECEBIMENTO = ' +
         ' (select MAX(CODRECEBIMENTO) from recebimento)';
         if sds_s.Active then
           sds_s.Close;
         sds_s.CommandText := strSql;
         sds_s.Open;
         MessageDlg('Número do Título repetido, último nº : ''' + sds_s.Fields[0].AsSTring + '''',
         mtWarning, [mbOK], 0);
         Abort;
    end;
end;

procedure TfTerminal_Delivery.novavenda;
var  utilcrtitulo : Tutils;
     vApagar : double;
begin
    // Altero o Cliente Para Consumidor
   //if (usadelivery = 'S')then
    if ((RadioGroup1.ItemIndex = 0) or (RadioGroup1.ItemIndex = 2)) then
    begin
      if (cds_Movimento.State in [dsBrowse]) then
        cds_movimento.Edit;
      cds_MovimentoCODCLIENTE.AsInteger := 0; //Consumidor
      cds_Movimento.ApplyUpdates(0);
    end;
    // fecho o cds_venda
    cds_venda.Close;
    serie := 'x';
    // Busca na tabeça PARAMETRO a SéRIE para trabalhar no Terminal VENDA
    buscaserie;
    // Verificando se existe título com esse número
    buscatitulo;
    {---*********************************************************************---}
    {---                Inserindo dados na tabela VENDA                      ---}
    {---*********************************************************************---}
    if (dm.c_6_genid.Active) then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    COD_VENDA := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    strSql := 'INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA';
    strSql := strSql + ',DATAVENCIMENTO ,BANCO ,CODVENDEDOR ,STATUS ,CODUSUARIO';
    strSql := strSql + ',VALOR ,NOTAFISCAL ,SERIE, DESCONTO, CODCCUSTO, N_PARCELA'; //
    strSql := strSql + ',FORMARECEBIMENTO, ENTRADA, CAIXA, MULTA_JUROS, APAGAR ';
    strSql := strSql + ') VALUES (';
    strSql := strSql + IntToStr(COD_VENDA);
    strSql := strSql + ',' + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
    strSql := strSql + ',' + IntToStr(cds_MovimentoCODCLIENTE.AsInteger);
    strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
    strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
    strSql := strSql + ',1'; //Banco
    strSql := strSql + ',1'; //CodVendedor
    strSql := strSql + ',0'; //status
    strSql := strSql + ',1'; //codusuario

    if (cbporcento.Checked = True) then
      if (DBEdit9.Text <> '') then
      try
        total := StrToFloat(DBEdit9.Text);
      except
        // Valor total inválido.
        MessageDlg('O valor total está errado.', mtError, [mbOK], 0);
        exit;
      end;

    if (cbporcento.Checked = False) then
      if (DBEdit4.Text <> '') then
      try
        total := StrToFloat(DBEdit4.Text);
      except
        // Valor total inválido.
        MessageDlg('O valor total está errado.', mtError, [mbOK], 0);
        exit;
      end;

    vApagar := StrToFloat(jvPago.Text);
    DecimalSeparator := '.';
    ThousandSeparator := ',';
    strSql := strSql + ',' + FloatToStr(total); //valor
    strSql := strSql + ',' + IntToStr(numTitulo); //notafiscal
    strSql := strSql + ',''' + serie + ''''; //serie
    strSql := strSql + ',0'; //desconto
    strSql := strSql + ',' + IntToStr(cds_MovimentoCODALMOXARIFADO.AsInteger);//CODCUSTO
    strSql := strSql + ',1,';
    utilcrtitulo := Tutils.Create;
    strSql := strSql + QuotedStr(utilcrtitulo.pegaForma(ComboBox2.Text));
    DecimalSeparator := '.';
    ThousandSeparator := ',';
    strSql := strSql + ',' + FloatToStr(total);
    strSql := strSql + ',33'; //Caixa
    strSql := strSql + ',0'; //Multa_juros
    strSql := strSql + ',' + FloatToStr(vApagar);
    strSql := strSql + ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
           [mbOk], 0);
    end;
    DecimalSeparator := ',';
    ThousandSeparator := '.';

end;

procedure TfTerminal_Delivery.updatevenda;
begin
    { -- Incluir aqui rotina de UPDATE na tabela venda --}
        strSql := 'UPDATE VENDA SET DATAVENDA = ';
        strSql := strSql + '''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ', DATAVENCIMENTO = ';
        strSql := strSql + '''' + formatdatetime('mm/dd/yyyy',cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ', VALOR = ';
        if (cbporcento.Checked = True) then
          if (DBEdit9.Text <> '') then
          try
            total := StrToFloat(DBEdit9.Text);
          except
            // Valor total inválido.
            MessageDlg('O valor total está errado.', mtError, [mbOK], 0);
            exit;
          end;

        if (cbporcento.Checked = False) then
          if (DBEdit4.Text <> '') then
          try
            total := StrToFloat(DBEdit4.Text);
          except
            // Valor total inválido.
            MessageDlg('O valor total está errado.', mtError, [mbOK], 0);
            exit;
          end;
        DecimalSeparator := '.';
        ThousandSeparator := ',';
        strSql := strSql + FloatToStr(total);
        strSql := strSql + ', APAGAR = ';
        strSql := strSql + jvPago.Text;
        strSql := strSql + ', N_PARCELA = ';
        strSql := strSql + '1';
        strSql := strSql + ', ENTRADA = ';
        DecimalSeparator := '.';
        ThousandSeparator := ',';
        strSql := strSql + FloatToStr(total);
        strSql := strSql + ' where CODVENDA = ';
        strSql := strSql + IntToStr(COD_VENDA);
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
           MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
               [mbOk], 0);
           DecimalSeparator := ',';
           ThousandSeparator := '.';
        end;
        DecimalSeparator := ',';
        ThousandSeparator := '.';

        {---*********************************************************************---}
        {---              Atualiza campos na tabela RECEBIMENTO                  ---}
        {---*********************************************************************---}
        strSql := 'UPDATE RECEBIMENTO SET DATARECEBIMENTO = ';
        strSql := strSql + '''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ', DATABAIXA = ';
        strSql := strSql + '''' + formatdatetime('mm/dd/yyyy', cds_MovimentoDATAMOVIMENTO.AsDateTime) + '''';
        strSql := strSql + ', VALOR_RESTO = 0';
        strSql := strSql + ', VALORRECEBIDO = ';
        DecimalSeparator := '.';
        ThousandSeparator := ',';
        strSql := strSql + FloatToStr(total);
        DecimalSeparator := ',';
        ThousandSeparator := '.';
        strSql := strSql + ', STATUS = ';
        strSql := strSql + '''7-''';
        strSql := strSql + ' where CODVENDA = ';
        strSql := strSql + IntToStr(COD_VENDA);
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strSql);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
           MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
               [mbOk], 0);
           DecimalSeparator := ',';
           ThousandSeparator := '.';
        end;

end;

procedure TfTerminal_Delivery.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if (sqsTitulo.Active) then
      sqsTitulo.Close;
  sqsTitulo.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  sqsTitulo.Open;

  if (sqsTituloSTATUS.AsString = '7-') then
  begin
    MessageDlg('Venda Já Finalizada.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (jvPago.Value = 0) then
  begin
    MessageDlg('Informe o valor Pago', mtWarning, [mbOK], 0);
    jvPago.SetFocus;
    exit;
  end;

  if (cds_MovimentoCODNATUREZA.AsInteger <> 3) then
  begin
    if (cds_Movimento.State in [dsBrowse]) then
      cds_movimento.Edit;
    cds_MovimentoCODNATUREZA.AsInteger := 3; //Venda
    cds_Movimento.ApplyUpdates(0);
  end;

  terminal := 'terminal';

  if (Panel2.Visible = True) then
    if (ComboBox1.Text = 'À PRAZO') then
      vendaaprazo
    else
      vendaavista;

  if (Panel3.Visible = True) then
    if (ComboBox3.Text = 'À PRAZO') then
      vendaaprazo
    else
      vendaavista;

 terminal := '';

 if (MessageDlg('Imprimir Recibo ', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     imprimecupom;

 if (Panel2.Visible = True) then //Mesa - Delivery
 begin
   if (cDelivery.Active) then
     cDelivery.Close;
   cDelivery.Open;
   if (cdsMesa.Active) then
     cdsMesa.Close;
   cdsMesa.Open;
 end;
 cds_Mov_det.Close;
 
end;

procedure TfTerminal_Delivery.DtSrcStateChange(Sender: TObject);
begin
  BitBtn4.Enabled:=DtSrc.State in [dsBrowse];
  inherited;

end;

procedure TfTerminal_Delivery.BitBtn2Click(Sender: TObject);
begin
  inherited;
  fListaClientes:=TfListaClientes.Create(Application);
  try
    codcli := 0;
    nomecli := '';
    fListaClientes.ShowModal;
    if (cds_Movimento.State in [dsBrowse]) then
    begin
      cds_Movimento.edit;
      cds_MovimentoCODCLIENTE.AsInteger := codcli;
      cds_Movimento.ApplyUpdates(0);
    end
    else
      cds_MovimentoCODCLIENTE.AsInteger := codcli;
    Edit3.Text := '';
    Edit4.Text := IntToStr(codcli);
    Edit2.Text := nomecli;
    Edit1.Text := telefonecli;
    Edit3.Text := enderecocli;
    dbeProduto.SetFocus;
  finally
   fListaClientes.cds.Close;
   fListaClientes.Free;
  end;
  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   Edit1.Text := '';
   Edit2.Text := '';
   Edit3.Text := '';
   Edit2.Text := cdsMesaNOMECLIENTE.AsString;
   if (cds_Movimento.Active) then
       cds_Movimento.Close;
   if (cds_Mov_det.Active) then
       cds_Mov_det.Close;
   cds_Movimento.Params[0].AsInteger := cdsMesaCODMOVIMENTO.AsInteger;
   cds_Movimento.Open;
   cds_Mov_det.Params[0].Clear;
   cds_Mov_det.Params[1].AsInteger := cdsMesaCODMOVIMENTO.AsInteger;
   cds_Mov_det.Open;
   if (GroupBox2.Visible = False) then
       GroupBox2.Visible := True;
   if (GroupBox1.Visible = True) then
       GroupBox1.Visible := False;
   if (GroupBox2.Visible = True) then
   begin
      cbMesas.Text := cdsMesaNOMECLIENTE.AsString;
      Edit4.Text := IntToStr(cdsMesaCODCLIENTE.AsInteger);
   end;   
   RadioGroup1.ItemIndex := 0;
   dbeProduto.SetFocus;
   jvPago.Text := DBEdit4.Text;
   JvTroco.Value := 0;
end;

procedure TfTerminal_Delivery.imprimecupom;
const
cJustif = #27#97#51;
cEject = #12;
{ Tamanho da fonte }
c10cpi = #18;
c12cpi = #27#77;
c17cpi = #15;
cIExpandido = #14;
cFExpandido = #20;
{ Formatação da fonte }
cINegrito = #27#71;
cFNegrito = #27#72;
cIItalico = #27#52;
cFItalico = #27#53;

var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
  total, porc, totgeral : double;
  porta : string;
  vNomeCliente, vEnderecoCliente, vFonecli : string;
begin
    {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      porta := dm.cds_parametroDADOS.AsString;
    end
    else
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Porta usada para impressoras de CUPOM';
      dm.cds_parametroPARAMETRO.AsString := 'PORTA IMPRESSORA';
      dm.cds_parametroDADOS.AsString := 'LPT1:';
      dm.cds_parametro.ApplyUpdates(0);
      porta := 'LPT1:';
    end;
    {------Mensagem para impressão ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'MENSAGEM';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      DM.Mensagem := dm.cds_parametroDADOS.AsString;
    end
    else
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Mensagem para impressão';
      dm.cds_parametroPARAMETRO.AsString := 'MENSAGEM';
      dm.cds_parametroDADOS.AsString := '.......';
      dm.cds_parametro.ApplyUpdates(0);
    end;

  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endereço-----}
  logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
  cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
  ' - ' + dm.cds_empresaCEP.Value;
  fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
  ' / ' + dm.cds_empresaFONE_2.Value;
  Texto  := '------------------------------------------------------' ;
  Texto1 := DateTimeToStr(Now) + '               Pedido N.:  ' +
  IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
  Texto2 := '------------------------------------------------------' ;
  //Texto3 := 'Codigo - Produto' ;
  Texto4 := 'Produto                     Qtde      V.Un.   V.Total' ;
  {-----------------------------------------------------------}
  {-------------------Imprimi Cabeçalho-----------------------}
  // Para gravar em arquivo
  //OpenDialog1.Execute;
  //AssignFile(IMPRESSORA, OpenDialog1.FileName);
  AssignFile(IMPRESSORA,porta);
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
  Writeln(Impressora, c10cpi, logradouro);
  Writeln(Impressora, c17cpi, cep);
  Writeln(Impressora, c17cpi, fone);
  Writeln(Impressora, c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
  Writeln(Impressora, c17cpi, texto);
  Writeln(Impressora, c17cpi, texto1);
  Writeln(Impressora, c17cpi, texto2);
  {-----------------------------------------------------------}
  {-------------------Imprimi dados do cliente----------------}
  if (RadioGroup1.ItemIndex = 0) then
  begin
     vNomeCliente := cbMesas.Text;
     Writeln(Impressora, c10cpi, vNomeCliente);
  end
  else
  begin
     vNomeCliente := 'Cliente  : '+ Edit2.Text;
     vEnderecoCliente := 'Endereço : '+ Edit3.Text;
     vFonecli := 'Telefone : (19)' + Edit1.Text;
     Writeln(Impressora, c10cpi, vNomeCliente);
     Writeln(Impressora, c10cpi, vEnderecoCliente);
     Writeln(Impressora, c10cpi, vFonecli);
  end;
  Writeln(Impressora, c17cpi, texto2);
  Writeln(Impressora, c17cpi, texto4);  
  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
  try
    cds_Mov_det.First;
    while not cds_Mov_det.Eof do
    begin
      cds_Mov_det.RecordCount;
      texto6 := cds_Mov_detCODPRO.AsString + '-';
      texto6 := texto6 + Copy(cds_Mov_detDESCPRODUTO.Value, 0, 55);
      Writeln(Impressora, c17cpi, texto6);
      Write(Impressora, c17cpi, Format('%-13s  ',['']));
      Write(Impressora, c17cpi + Format('              %-6.2n',[cds_Mov_detQUANTIDADE.AsFloat]));
      Write(Impressora, c17cpi + Format('  %-6.2n',[cds_Mov_detPRECO.AsFloat]));
      Writeln(Impressora, c17cpi + Format('  %-6.2n',[cds_Mov_detValorTotal.value]));
      with Printer.Canvas do
      begin
        Font.Name := 'Courier New';
        Font.Size := 4;
      end;
      cds_Mov_det.next;
    end;
    {-----------------------------------------------------------}
    {-------------------Imprimi final do Pedido-----------------}
    Texto5 := DateTimeToStr(Now) + '      Total.: R$   ';
    total := cds_Mov_detTotalPedido.Value;
    porc := total * 0.1;
    Writeln(Impressora, c17cpi, texto);
    Write(Impressora, c10cpi, texto5);
    Writeln(Impressora, c10cpi + Format('   %-6.2n',[total]));
    if (cbporcento.Checked = True) then
    begin
      Texto5 := '                           *10% R$ ';
      Write(Impressora, c10cpi, texto5);
      Writeln(Impressora, c10cpi + Format('      %-6.2n',[porc]));
      Texto5 := '                                               -----------';
      Writeln(Impressora, c17cpi, texto5);
      Texto5 := '                           Total Geral.: R$ ';
      Write(Impressora, c17cpi, texto5);
      totgeral := total + porc;
      Writeln(Impressora, c10cpi + Format('     %-6.2n',[totgeral]));
      Texto5 := '* Nao Obrigatorio           ';
      Write(Impressora, c10cpi, texto5);
      Writeln(IMPRESSORA);          
    end;
    Writeln(IMPRESSORA);
    Write(Impressora, c10cpi, DM.Mensagem);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
   { Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);
    Writeln(IMPRESSORA);}
  finally
    CloseFile(IMPRESSORA);
  end;
  dbeProduto.SetFocus;
end;

procedure TfTerminal_Delivery.cbMesasKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (key = #13) then
 begin
    if (cbMesas.text = '') then
    begin
       MessageDlg('escolha uma mesa.', mtWarning, [mbOK], 0);
       cbMesas.SetFocus;
       exit;
    end;
    sMesas.Open;
    sMesas.Locate('NOMECLIENTE', cbMesas.Text, [loCaseInsensitive]);
    Edit4.Text := IntToStr(sMesasCODCLIENTE.AsInteger);
    Edit2.Text := sMesasNOMECLIENTE.AsString;
    dbeProduto.SetFocus;
 end;
end;

procedure TfTerminal_Delivery.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if (RadioGroup1.ItemIndex = 0) then
  begin
    if (Panel2.Visible = False) then
    begin
      Panel3.Visible := False;
      Panel2.Visible := True;
    end;
    GroupBox1.Visible := False;
    GroupBox2.Visible := True;
    cbMesas.SetFocus;
  end;
  if (RadioGroup1.ItemIndex = 1) then
  begin
    if (Panel2.Visible = False) then
    begin
      Panel3.Visible := False;
      Panel2.Visible := True;
    end;
    GroupBox2.Visible := False;
    GroupBox1.Visible := True;
    Edit1.SetFocus;
  end;
  if (RadioGroup1.ItemIndex = 2) then
  begin
    if (Panel2.Visible = True) then
    begin
      Panel3.Visible := True;
      Panel2.Visible := False;
    end;
    //dbEdit1.SetFocus;
  end;

end;

procedure TfTerminal_Delivery.ComboBox3Change(Sender: TObject);
begin
  inherited;
  ComboBox1.Text := ComboBox3.Text;
end;

procedure TfTerminal_Delivery.ComboBox4Change(Sender: TObject);
begin
  inherited;
  ComboBox1.Text := ComboBox3.Text;
end;

procedure TfTerminal_Delivery.DBGrid3DblClick(Sender: TObject);
begin
  inherited;
    if DtSrc.DataSet.State in [dsBrowse] then
      DtSrc.DataSet.Edit;

    if DtSrc1.DataSet.State in [dsBrowse] then
    begin
      DtSrc1.DataSet.Edit;
      DBEdit2.SetFocus;
   end;

end;

procedure TfTerminal_Delivery.IncluirNovoItem1Click(Sender: TObject);
begin
  inherited;
    if DtSrc1.DataSet.State in [dsBrowse] then
    begin
      DtSrc1.DataSet.Append;
      dbeProduto.SetFocus;
    end;
end;

procedure TfTerminal_Delivery.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (cds_Movimento.Active) then
      cds_Movimento.Close;
  if (cds_Mov_det.Active) then
      cds_Mov_det.Close;
  jvPago.Value := 0;
  JvTroco.Value := 0;
  inherited;

end;

procedure TfTerminal_Delivery.ExcluirItem1Click(Sender: TObject);
begin
  inherited;
 if  DtSrc1.DataSet.State in [dsBrowse] then
 begin
   if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.edit;

   if  MessageDlg('Confirma a exclusão do item ''' + cds_Mov_detPRODUTO.AsString + '''?', mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
      DtSrc1.DataSet.Delete;
 end;
end;

procedure TfTerminal_Delivery.btnImprimirClick(Sender: TObject);
begin
  inherited;
 if (MessageDlg('Imprimir Recibo ', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     imprimecupom;
end;

procedure TfTerminal_Delivery.btnCancelarClick(Sender: TObject);
begin
  if cds_venda.Active then
  begin
     cds_venda.Cancel;
     cds_venda.Close;
  end;
  cds_Mov_det.cancel;
  cds_Mov_det.Close;
  inherited;
  cds_Movimento.Close;
  jvPago.Value := 0;
  JvTroco.Value := 0;
end;

procedure TfTerminal_Delivery.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if (cds_Mov_det.Active) then
     cds_Mov_det.Close;
  if (cdsMesa.Active) then
     cdsMesa.Close;
  cdsMesa.Open;
  if (cDelivery.Active) then
     cDelivery.Close;
  cDelivery.Open;

  jvPago.Value := 0;
  JvTroco.Value := 0;

end;

procedure TfTerminal_Delivery.DtSrc1StateChange(Sender: TObject);
begin
  inherited;
  if (DtSrc1.DataSet.State in [dsEdit]) then
  begin
    if (DtSrc.DataSet.State in [dsBrowse]) then
        DtSrc.DataSet.edit;
  end;
end;

procedure TfTerminal_Delivery.BitBtn5Click(Sender: TObject);
begin
  inherited;
   if (cds_Mov_det.State in [dsBrowse]) then
      cds_Mov_det.Append;

   if (cds_Mov_det.State in [dsInsert, dsEdit]) then
     fProdudoBusca.ShowModal;
end;

procedure TfTerminal_Delivery.Edit1Exit(Sender: TObject);
begin
  inherited;
 if (DtSrc.DataSet.State in [dsInsert, dsEdit]) then
 begin
    if (procFone.Active) then
       procFone.Close;
    procFone.Params[0].AsString := Edit1.Text;
    procFone.Open;
    if (procFone.IsEmpty) then
    begin
      if MessageDlg('Telefone não cadastrado deseja Cadastrá-lo.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          BitBtn2.Click
      else
          exit;
    end
    else
    begin
       Edit3.Text := '';
       Edit4.Text := '';
       Edit2.Text := procFoneNOMECLIENTE.AsString;
       Edit4.Text := IntToStr(procFoneCODCLIENTE.AsInteger);
       if (procFoneLOGRADOURO.AsString <> '') then
         Rua := procFoneLOGRADOURO.AsString;
       if (procFoneBAIRRO.AsString <> '') then
         bairro := procFoneBAIRRO.AsString;
       Edit3.Text := Rua + ' ' + bairro;
       dbeProduto.SetFocus;
    end;
  end;  
end;

procedure TfTerminal_Delivery.BitBtn6Click(Sender: TObject);
begin
  inherited;
  fMensagens.ShowModal;
end;

procedure TfTerminal_Delivery.buscacliente;
begin
    fProcurar_nf:= TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
    fProcurar_nf.BtnProcurar.Click;
    fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
    fProcurar_nf.btnIncluir.Visible := True;
    try
      if (fProcurar_nf.ShowModal = mrOK) then
      begin
        if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
        begin
          MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
          exit;
          //dbeCliente.SetFocus;
        end;
        if dtSrc.State=dsBrowse then
          cds_Movimento.Edit;
        cds_MovimentoCODCLIENTE.AsInteger := dmnf.scds_cli_procCODCLIENTE.AsInteger;
        cds_MovimentoNOMECLIENTE.AsString := dmnf.scds_cli_procNOMECLIENTE.AsString;
        prazoparapgto := dmnf.scds_cli_procPRAZORECEBIMENTO.AsInteger;
        dbeProduto.SetFocus;
      end;
    finally
     dmnf.scds_cli_proc.Close;
     fProcurar_nf.Free;
    end;
end;

procedure TfTerminal_Delivery.btnProcurarClick(Sender: TObject);
begin
//  inherited;
   AbreFormCaixa;
    if (not dmnf.cds_ccusto.Active) then
        dmnf.cds_ccusto.Open;
    dmnf.cds_ccusto.First;
    while not dmnf.cds_ccusto.Eof do
    begin
      fFiltroMovimento.ComboBox1.Items.Add(dmnf.cds_ccustoNOME.AsString);
      dmnf.cds_ccusto.Next;
    end;
    {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
    if dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'NATUREZAVENDA';
    dm.cds_parametro.Open;
    fFiltroMovimento.Edit3.Text := dm.cds_parametroDADOS.AsString;
    fFiltroMovimento.Edit4.Text := dm.cds_parametroD1.AsString;
    dm.cds_parametro.Close;
    fFiltroMovimento.BitBtn8.Enabled := False;
    fFiltroMovimento.ShowModal;

    cds_Movimento.Close;
    cds_Movimento.Params[0].AsInteger := fFiltroMovimento.cod_mov;
    cds_Movimento.Open;

    cds_Mov_det.Close;
    cds_Mov_det.Params[0].Clear;
    cds_Mov_det.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    cds_Mov_det.Open;
    if (dm.totalpago > 0) then
      jvPago.Value := dm.totalpago;

end;

procedure TfTerminal_Delivery.vendaaprazo;
begin
   // aqui adiciono uma nova venda ou atualizo caso já exista
 {  total := 0;
   numTitulo := 0;
   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
  // Verifico se a venda já foi SALVA
  if (cds_venda.Active) then
    cds_venda.Close;
  cds_venda.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
  cds_venda.Open;
  if (cds_venda.IsEmpty) then
     novavenda // Adiciono Nova venda
  else   // Já está gravada a Venda , é só atualizar
     updatevenda;
  }
  //Venda á prazo
  fTerminalFinalizar := TfTerminalFinalizar.Create(Application);
  try
    fTerminalFinalizar.ShowModal;
  finally
    fTerminalFinalizar.Free;
  end;
end;

procedure TfTerminal_Delivery.jvPagoChange(Sender: TObject);
var
  vTroco, vPago, vTotal : double;
begin
  if (cds_Movimento.State in [dsInsert, dsEdit] ) then
  begin
    vTotal := cds_Mov_detTotalPedido.value;
    vPago := jvPago.Value;
    if (vTotal > 0) then
      vTroco := vPago - vTotal;
    JvTroco.Value := vTroco;
  end;
end;

procedure TfTerminal_Delivery.cbporcentoClick(Sender: TObject);
begin
  inherited;
  if (cbporcento.Checked = True) then
  begin
     DBEdit9.Enabled := True;
     DBEdit9.Color := clWindow;
  end
  else
  begin
     DBEdit9.Enabled := False;
     DBEdit9.Color := clBtnFace;
  end;
end;

procedure TfTerminal_Delivery.BitBtn7Click(Sender: TObject);
begin
  inherited;
  buscacliente;
  ComboBox3.SetFocus;
end;

procedure TfTerminal_Delivery.DBEdit2Exit(Sender: TObject);
begin
  inherited;
 if (cds_Mov_det.State in [dsEdit]) then
 begin
   cds_Mov_det.Post;
   dbeProduto.Text := '';
   servico := '';
   jvPago.Text := DBEdit4.Text;
 end;
end;

procedure TfTerminal_Delivery.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (key = #13) then
 begin
   if (cds_Mov_det.State in [dsInsert, dsEdit]) then
   begin
      cds_Mov_det.Post;
      dbeProduto.Text := '';
   end;
   jvPago.Text := DBEdit4.Text;
   dbeProduto.SetFocus;
 end;
end;

procedure TfTerminal_Delivery.DBEdit3Exit(Sender: TObject);
begin
  inherited;
   if (cds_Mov_det.State in [dsInsert, dsEdit]) then
   begin
      cds_Mov_det.Post;
      dbeProduto.Text := '';
      jvPago.Text := DBEdit4.Text;
      dbeProduto.SetFocus;
   end;
end;

procedure TfTerminal_Delivery.exportatabelas;
var
  vari: integer;
begin
  //Try
    // Copio dados tabMovimento
    cMov.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    cMov.Open;
    cExportaMov.Open;
    cExportaMov.append;

    for vari := 0 to cMov.fieldcount -1 do
    begin
       if (cMov.fields[vari].fieldkind = fkdata) then
          cExportaMov.fields[vari].value := cMov.fieldbyname(cMov.fields[vari].fieldname).value;
    end;
    cExportaMov.ApplyUpdates(0);
    // Copio dados tabMovimento Detalhe
    cMovDet.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    cMovDet.Open;
    cExportaMovDet.Open;
    cMovDet.First;
    while not cMovDet.Eof do
    begin
      cExportaMovDet.append;
      for vari := 0 to cMovDet.fieldcount -1 do
      begin
         if (cMovDet.fields[vari].fieldkind = fkdata) then
            cExportaMovDet.fields[vari].value := cMovDet.fieldbyname(cMovDet.fields[vari].fieldname).value;
      end;  
      cExportaMovDet.ApplyUpdates(0);
      cMovDet.Next;
    end;
    // Copio dados tab. Venda
    cVenda.Params[0].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
    cVenda.Open;
    cExportaVenda.Open;
    cVenda.First;
    while not cVenda.Eof do
    begin
      cExportaVenda.append;
      for vari := 0 to cVenda.fieldcount -1 do
      begin
         if (cVenda.fields[vari].fieldkind = fkdata) then
            cExportaVenda.fields[vari].value := cVenda.fieldbyname(cVenda.fields[vari].fieldname).value;
      end;
      cExportaVenda.ApplyUpdates(0);
      cVenda.Next;
    end;
    MessageDlg('Arquivos exportados com suscesso', mtWarning, [mbOK], 0);
 // Except
   // MessageDlg('Erro ao exportar arquivos', mtWarning, [mbOK], 0);
 // end;
end;

procedure TfTerminal_Delivery.BitBtn8Click(Sender: TObject);
begin
  inherited;
  if (cds_Movimento.State in [dsBrowse]) then
    exportatabelas;
end;

procedure TfTerminal_Delivery.AbreFormCaixa;
begin
  if (dm.varStatusCaixa = 2) Then
  begin
    if (MessageDlg('Para usar o Terminal o Caixa Precisa Ser  Aberto . Abrir o Caixa Agora ?', mtWarning, [mbYes, mbNo], 0) in [mrYes, mrNone]) then
    begin
      dm.varDataCaixa := Now;
      BitBtn1.Click;
      Abort;
    end
    else
      fTerminal_Delivery.Close;
  end;
  if (dm.varStatusCaixa = 0) Then
  begin
    if (MessageDlg('O Caixa Precisa Ser  Fechado . Fechar o Caixa Agora ?', mtWarning, [mbYes, mbNo], 0) in [mrYes, mrNone]) then
    begin
      BitBtn1.Click;
      Abort;
    end
    else
      fTerminal_Delivery.Close;
  end;
end;

end.
