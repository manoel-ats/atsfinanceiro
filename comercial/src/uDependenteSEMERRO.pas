unit uDependente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  Grids, DBGrids, Mask, DBCtrls, EDBFind, FMTBcd, SqlExpr, uPai,
  UCHistDataset, ComCtrls, Provider, rpcompobase, rpvclreport, DBLocal,
  DBLocalS, DBClient, JvExMask, JvToolEdit, JvExDBGrids, JvDBGrid,
  JvExStdCtrls, JvCombobox, JvDBSearchComboBox,dbxpress, JvDBControls;

type
  TfDependente = class(TfPai)
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label6: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label17: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label14: TLabel;
    Label25: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    dbtxtRAZAOSOCIAL: TDBText;
    lbl1: TLabel;
    lbl2: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBComboBox1: TDBComboBox;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit15: TDBEdit;
    DBEdit24: TDBEdit;
    dbeditcns: TDBEdit;
    BitBtn2: TBitBtn;
    DBEdit18: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit17: TDBEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBEdit20: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    EvDBFind1: TEvDBFind;
    DBEdit1: TDBEdit;
    BitBtn5: TBitBtn;
    DBEdit16: TDBEdit;
    dbCOD_ANS: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit19: TDBEdit;
    sql_ra: TSQLDataSet;
    Hist_Dependente: TUCHist_DataSet;
    Label40: TLabel;
    Edit7: TEdit;
    cdsBuscaGuia: TClientDataSet;
    scdsBuscaGuia: TSQLDataSet;
    dspBuscaGuia: TDataSetProvider;
    dsBuscaGuia: TDataSource;
    procforn: TSQLClientDataSet;
    procfornNOMEFORNECEDOR: TStringField;
    procfornCODFORNECEDOR: TIntegerField;
    cdsBuscaForn: TClientDataSet;
    cdsBuscaFornCODFORNECEDOR: TIntegerField;
    cdsBuscaFornNOMEFORNECEDOR: TStringField;
    cdsBuscaFornCNPJ: TStringField;
    cdsBuscaFornCNES: TStringField;
    cdsBuscaFornLOGRADOURO: TStringField;
    cdsBuscaFornCOMPLEMENTO: TStringField;
    cdsBuscaFornCEP_CONTRATADO: TStringField;
    cdsBuscaFornNUMERO: TStringField;
    cdsBuscaFornSIGLA: TStringField;
    cdsBuscaFornCD_TIPO_LOGRADOURO: TStringField;
    cdsBuscaFornDADOSADICIONAIS: TStringField;
    cdsBuscaFornNM_MUNICIPIO: TStringField;
    cdsBuscaFornCD_IBGE: TStringField;
    cdsBuscaFornCD_UF: TStringField;
    cdsBuscaFornNOME_REPRFOR: TStringField;
    cdsBuscaFornFUNCAO: TStringField;
    cdsBuscaFornCOMPLEMENTO_1: TStringField;
    cdsBuscaFornUF: TStringField;
    cdsBuscaFornCEP: TStringField;
    dspBuscaForn: TDataSetProvider;
    scdsBuscaForn: TSQLDataSet;
    scdsBuscaFornCODFORNECEDOR: TIntegerField;
    scdsBuscaFornNOMEFORNECEDOR: TStringField;
    scdsBuscaFornCNPJ: TStringField;
    scdsBuscaFornCNES: TStringField;
    scdsBuscaFornLOGRADOURO: TStringField;
    scdsBuscaFornCOMPLEMENTO: TStringField;
    scdsBuscaFornCEP_CONTRATADO: TStringField;
    scdsBuscaFornNUMERO: TStringField;
    scdsBuscaFornSIGLA: TStringField;
    scdsBuscaFornCD_TIPO_LOGRADOURO: TStringField;
    scdsBuscaFornDADOSADICIONAIS: TStringField;
    scdsBuscaFornNM_MUNICIPIO: TStringField;
    scdsBuscaFornCD_IBGE: TStringField;
    scdsBuscaFornCD_UF: TStringField;
    scdsBuscaFornNOME_REPRFOR: TStringField;
    scdsBuscaFornFUNCAO: TStringField;
    scdsBuscaFornCOMPLEMENTO_1: TStringField;
    scdsBuscaFornUF: TStringField;
    scdsBuscaFornCEP: TStringField;
    scdsRepr: TSQLDataSet;
    scdsReprNOME_REPRFOR: TStringField;
    scdsReprFUNCAO: TStringField;
    scdsReprUF: TStringField;
    scdsReprNUMERO: TStringField;
    scdsReprCOMPLEMENTO: TStringField;
    scdsReprCD_CBO_SAUDE: TStringField;
    cdsRepr: TClientDataSet;
    cdsReprNOME_REPRFOR: TStringField;
    cdsReprFUNCAO: TStringField;
    cdsReprUF: TStringField;
    cdsReprNUMERO: TStringField;
    cdsReprCOMPLEMENTO: TStringField;
    cdsReprCD_CBO_SAUDE: TStringField;
    dspRepr: TDataSetProvider;
    VCLReport1: TVCLReport;
    procforn2: TSQLClientDataSet;
    procforn2CODFORNECEDOR: TIntegerField;
    procforn2NOMEFORNECEDOR: TStringField;
    procforn2CNPJ: TStringField;
    cdsBuscaForn2: TClientDataSet;
    cdsBuscaForn2CODFORNECEDOR: TIntegerField;
    cdsBuscaForn2NOMEFORNECEDOR: TStringField;
    cdsBuscaForn2CNPJ: TStringField;
    cdsBuscaForn2CNES: TStringField;
    cdsBuscaForn2LOGRADOURO: TStringField;
    cdsBuscaForn2COMPLEMENTO: TStringField;
    cdsBuscaForn2CEP_CONTRATADO: TStringField;
    cdsBuscaForn2NUMERO: TStringField;
    cdsBuscaForn2SIGLA: TStringField;
    cdsBuscaForn2CD_TIPO_LOGRADOURO: TStringField;
    cdsBuscaForn2DADOSADICIONAIS: TStringField;
    cdsBuscaForn2NM_MUNICIPIO: TStringField;
    cdsBuscaForn2CD_IBGE: TStringField;
    cdsBuscaForn2CD_UF: TStringField;
    cdsBuscaForn2NOME_REPRFOR: TStringField;
    cdsBuscaForn2FUNCAO: TStringField;
    cdsBuscaForn2COMPLEMENTO_1: TStringField;
    cdsBuscaForn2UF: TStringField;
    cdsBuscaForn2CEP: TStringField;
    dspBuscaForn2: TDataSetProvider;
    scdsBuscaForn2: TSQLDataSet;
    scdsBuscaForn2CODFORNECEDOR: TIntegerField;
    scdsBuscaForn2NOMEFORNECEDOR: TStringField;
    scdsBuscaForn2CNPJ: TStringField;
    scdsBuscaForn2CNES: TStringField;
    scdsBuscaForn2LOGRADOURO: TStringField;
    scdsBuscaForn2COMPLEMENTO: TStringField;
    scdsBuscaForn2CEP_CONTRATADO: TStringField;
    scdsBuscaForn2NUMERO: TStringField;
    scdsBuscaForn2SIGLA: TStringField;
    scdsBuscaForn2CD_TIPO_LOGRADOURO: TStringField;
    scdsBuscaForn2DADOSADICIONAIS: TStringField;
    scdsBuscaForn2NM_MUNICIPIO: TStringField;
    scdsBuscaForn2CD_IBGE: TStringField;
    scdsBuscaForn2CD_UF: TStringField;
    scdsBuscaForn2NOME_REPRFOR: TStringField;
    scdsBuscaForn2FUNCAO: TStringField;
    scdsBuscaForn2COMPLEMENTO_1: TStringField;
    scdsBuscaForn2UF: TStringField;
    scdsBuscaForn2CEP: TStringField;
    cdsRepr1: TClientDataSet;
    cdsRepr1NOME_REPRFOR: TStringField;
    cdsRepr1FUNCAO: TStringField;
    cdsRepr1UF: TStringField;
    cdsRepr1NUMERO: TStringField;
    cdsRepr1COMPLEMENTO: TStringField;
    cdsRepr1CD_CBO_SAUDE: TStringField;
    dspRepr1: TDataSetProvider;
    scdsRepr1: TSQLDataSet;
    scdsRepr1NOME_REPRFOR: TStringField;
    scdsRepr1FUNCAO: TStringField;
    scdsRepr1UF: TStringField;
    scdsRepr1NUMERO: TStringField;
    scdsRepr1COMPLEMENTO: TStringField;
    scdsRepr1CD_CBO_SAUDE: TStringField;
    sql_numGuia: TSQLDataSet;
    sql_numGuiaNU: TFMTBCDField;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    DBComboBox2: TDBComboBox;
    Label42: TLabel;
    DBEdit25: TDBEdit;
    Label43: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBoxOu1: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    dbrTipo: TDBRadioGroup;
    btndtalt: TBitBtn;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label30: TLabel;
    DBComboBox3: TDBComboBox;
    sds_repfor: TSQLDataSet;
    sds_repforCOD_FORNECEDOR: TIntegerField;
    sds_repforCOD_REPRFOR: TIntegerField;
    sds_repforFONE: TStringField;
    sds_repforFONE1: TStringField;
    sds_repforFONE2: TStringField;
    sds_repforENDERECO: TStringField;
    sds_repforNUMERO: TStringField;
    sds_repforCOMPLEMENTO: TStringField;
    sds_repforBAIRRO: TStringField;
    sds_repforCIDADE: TStringField;
    sds_repforUF: TStringField;
    sds_repforCEP: TStringField;
    sds_repforEMAIL: TStringField;
    sds_repforNOME_REPRFOR: TStringField;
    sds_repforFUNCAO: TStringField;
    sds_repforDDD: TStringField;
    sds_repforTELEFONE: TStringField;
    sds_repforCPF: TStringField;
    dsp_repfor: TDataSetProvider;
    cds_repfor: TClientDataSet;
    cds_repforCOD_FORNECEDOR: TIntegerField;
    cds_repforCOD_REPRFOR: TIntegerField;
    cds_repforFONE: TStringField;
    cds_repforFONE1: TStringField;
    cds_repforFONE2: TStringField;
    cds_repforENDERECO: TStringField;
    cds_repforNUMERO: TStringField;
    cds_repforCOMPLEMENTO: TStringField;
    cds_repforBAIRRO: TStringField;
    cds_repforCIDADE: TStringField;
    cds_repforUF: TStringField;
    cds_repforCEP: TStringField;
    cds_repforEMAIL: TStringField;
    cds_repforNOME_REPRFOR: TStringField;
    cds_repforFUNCAO: TStringField;
    cds_repforDDD: TStringField;
    cds_repforTELEFONE: TStringField;
    cds_repforCPF: TStringField;
    ds_repfor: TDataSource;
    GroupBox7: TGroupBox;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    JvDateEdit3: TJvDateEdit;
    JvDateEdit4: TJvDateEdit;
    JvDateEdit5: TJvDateEdit;
    JvDateEdit6: TJvDateEdit;
    JvDateEdit7: TJvDateEdit;
    JvDateEdit8: TJvDateEdit;
    JvDateEdit9: TJvDateEdit;
    JvDateEdit10: TJvDateEdit;
    JvDateEdit11: TJvDateEdit;
    JvDateEdit12: TJvDateEdit;
    JvDateEdit13: TJvDateEdit;
    CheckBox4: TCheckBox;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    btnInc: TBitBtn;
    btnGrav: TBitBtn;
    btnCan: TBitBtn;
    BitBtn7: TBitBtn;
    btnAsoSair: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Edit15: TEdit;
    Label55: TLabel;
    Label56: TLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Label57: TLabel;
    DBEdit35: TDBEdit;
    Label39: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    Label41: TLabel;
    DBEdit43: TDBEdit;
    Label50: TLabel;
    DBEdit44: TDBEdit;
    Label58: TLabel;
    DBEdit45: TDBEdit;
    Label59: TLabel;
    DBEdit46: TDBEdit;
    Label60: TLabel;
    DBEdit47: TDBEdit;
    Label61: TLabel;
    TabSheet4: TTabSheet;
    scdsBuscaGuiaID_GUIAS: TIntegerField;
    scdsBuscaGuiaNUMERO_GUIA: TStringField;
    scdsBuscaGuiaDATA_EMISSAO: TDateField;
    scdsBuscaGuiaNOME_FUNCIONARIO: TStringField;
    scdsBuscaGuiaNOME_EMPRESA: TStringField;
    scdsBuscaGuiaNOME_EXECUTANTE: TStringField;
    scdsBuscaGuiaSIGLA_CONSELHO: TStringField;
    scdsBuscaGuiaNUMERO_PROFISSIONAL: TStringField;
    scdsBuscaGuiaSIGLA_UNIDADE: TStringField;
    scdsBuscaGuiaCODIGO_ESPECIALIDADE: TStringField;
    scdsBuscaGuiaCODIGO_CID10_1: TStringField;
    scdsBuscaGuiaCODIGO_CID10_2: TStringField;
    scdsBuscaGuiaCODIGO_CID10_3: TStringField;
    scdsBuscaGuiaCODIGO_CID10_4: TStringField;
    scdsBuscaGuiaDATA_ATENDIMENTO: TDateField;
    scdsBuscaGuiaGRAU_RISCO: TStringField;
    scdsBuscaGuiaTIPO_CONSULTA: TStringField;
    scdsBuscaGuiaAPTO: TIntegerField;
    scdsBuscaGuiaOBSERVACAO: TStringField;
    scdsBuscaGuiaTIPO_GUIA: TStringField;
    scdsBuscaGuiaCODCLIENTE: TIntegerField;
    scdsBuscaGuiaTIPO: TStringField;
    scdsBuscaGuiaRG: TStringField;
    scdsBuscaGuiaCPF: TStringField;
    scdsBuscaGuiaCARGO: TStringField;
    scdsBuscaGuiaFUNCAO: TStringField;
    scdsBuscaGuiaPIS: TStringField;
    scdsBuscaGuiaDATA1: TDateField;
    scdsBuscaGuiaCK1: TStringField;
    scdsBuscaGuiaEXAME1: TStringField;
    scdsBuscaGuiaCKA1: TStringField;
    scdsBuscaGuiaALTERADO1: TStringField;
    scdsBuscaGuiaDATA2: TDateField;
    scdsBuscaGuiaCK2: TStringField;
    scdsBuscaGuiaEXAME2: TStringField;
    scdsBuscaGuiaCKA2: TStringField;
    scdsBuscaGuiaALTERADO2: TStringField;
    scdsBuscaGuiaDATA3: TDateField;
    scdsBuscaGuiaCK3: TStringField;
    scdsBuscaGuiaEXAME3: TStringField;
    scdsBuscaGuiaCKA3: TStringField;
    scdsBuscaGuiaALTERADO3: TStringField;
    scdsBuscaGuiaDATA4: TDateField;
    scdsBuscaGuiaCK4: TStringField;
    scdsBuscaGuiaEXAME4: TStringField;
    scdsBuscaGuiaCKA4: TStringField;
    scdsBuscaGuiaALTERADO4: TStringField;
    scdsBuscaGuiaDATA5: TDateField;
    scdsBuscaGuiaCK5: TStringField;
    scdsBuscaGuiaEXAME5: TStringField;
    scdsBuscaGuiaCKA5: TStringField;
    scdsBuscaGuiaALTERADO5: TStringField;
    scdsBuscaGuiaDATA6: TDateField;
    scdsBuscaGuiaCK6: TStringField;
    scdsBuscaGuiaEXAME6: TStringField;
    scdsBuscaGuiaCKA6: TStringField;
    scdsBuscaGuiaALTERADO6: TStringField;
    scdsBuscaGuiaDATA7: TDateField;
    scdsBuscaGuiaCK7: TStringField;
    scdsBuscaGuiaEXAME7: TStringField;
    scdsBuscaGuiaCKA7: TStringField;
    scdsBuscaGuiaALTERADO7: TStringField;
    scdsBuscaGuiaDATA8: TDateField;
    scdsBuscaGuiaCK8: TStringField;
    scdsBuscaGuiaEXAME8: TStringField;
    scdsBuscaGuiaCKA8: TStringField;
    scdsBuscaGuiaALTERADO8: TStringField;
    scdsBuscaGuiaDATA9: TDateField;
    scdsBuscaGuiaCK9: TStringField;
    scdsBuscaGuiaEXAME9: TStringField;
    scdsBuscaGuiaCKA9: TStringField;
    scdsBuscaGuiaALTERADO9: TStringField;
    scdsBuscaGuiaDATA10: TDateField;
    scdsBuscaGuiaCK10: TStringField;
    scdsBuscaGuiaEXAME10: TStringField;
    scdsBuscaGuiaCKA10: TStringField;
    scdsBuscaGuiaALTERADO10: TStringField;
    scdsBuscaGuiaDATA11: TDateField;
    scdsBuscaGuiaCK11: TStringField;
    scdsBuscaGuiaEXAME11: TStringField;
    scdsBuscaGuiaCKA11: TStringField;
    scdsBuscaGuiaALTERADO11: TStringField;
    scdsBuscaGuiaDATA12: TDateField;
    scdsBuscaGuiaCK12: TStringField;
    scdsBuscaGuiaEXAME12: TStringField;
    scdsBuscaGuiaCKA12: TStringField;
    scdsBuscaGuiaALTERADO12: TStringField;
    scdsBuscaGuiaDATA13: TDateField;
    scdsBuscaGuiaCK13: TStringField;
    scdsBuscaGuiaEXAME13: TStringField;
    scdsBuscaGuiaCKA13: TStringField;
    scdsBuscaGuiaALTERADO13: TStringField;
    scdsBuscaGuiaDATA14: TDateField;
    scdsBuscaGuiaCK14: TStringField;
    scdsBuscaGuiaEXAME14: TStringField;
    scdsBuscaGuiaCKA14: TStringField;
    scdsBuscaGuiaALTERADO14: TStringField;
    scdsBuscaGuiaDATA15: TDateField;
    scdsBuscaGuiaCK15: TStringField;
    scdsBuscaGuiaEXAME15: TStringField;
    scdsBuscaGuiaCKA15: TStringField;
    scdsBuscaGuiaALTERADO15: TStringField;
    scdsBuscaGuiaDATA16: TDateField;
    scdsBuscaGuiaCK16: TStringField;
    scdsBuscaGuiaEXAME16: TStringField;
    scdsBuscaGuiaCKA16: TStringField;
    scdsBuscaGuiaALTERADO16: TStringField;
    scdsBuscaGuiaDATA17: TDateField;
    scdsBuscaGuiaCK17: TStringField;
    scdsBuscaGuiaEXAME17: TStringField;
    scdsBuscaGuiaCKA17: TStringField;
    scdsBuscaGuiaALTERADO17: TStringField;
    scdsBuscaGuiaDATA18: TDateField;
    scdsBuscaGuiaCK18: TStringField;
    scdsBuscaGuiaEXAME18: TStringField;
    scdsBuscaGuiaCKA18: TStringField;
    scdsBuscaGuiaALTERADO18: TStringField;
    scdsBuscaGuiaDATA19: TDateField;
    scdsBuscaGuiaCK19: TStringField;
    scdsBuscaGuiaEXAME19: TStringField;
    scdsBuscaGuiaCKA19: TStringField;
    scdsBuscaGuiaALTERADO19: TStringField;
    scdsBuscaGuiaDATA20: TDateField;
    scdsBuscaGuiaCK20: TStringField;
    scdsBuscaGuiaEXAME20: TStringField;
    scdsBuscaGuiaCKA20: TStringField;
    scdsBuscaGuiaALTERADO20: TStringField;
    scdsBuscaGuiaDATA21: TDateField;
    scdsBuscaGuiaCK21: TStringField;
    scdsBuscaGuiaEXAME21: TStringField;
    scdsBuscaGuiaCKA21: TStringField;
    scdsBuscaGuiaALTERADO21: TStringField;
    scdsBuscaGuiaDATA22: TDateField;
    scdsBuscaGuiaCK22: TStringField;
    scdsBuscaGuiaEXAME22: TStringField;
    scdsBuscaGuiaCKA22: TStringField;
    scdsBuscaGuiaALTERADO22: TStringField;
    scdsBuscaGuiaDATA23: TDateField;
    scdsBuscaGuiaCK23: TStringField;
    scdsBuscaGuiaEXAME23: TStringField;
    scdsBuscaGuiaCKA23: TStringField;
    scdsBuscaGuiaALTERADO23: TStringField;
    scdsBuscaGuiaDATA24: TDateField;
    scdsBuscaGuiaCK24: TStringField;
    scdsBuscaGuiaEXAME24: TStringField;
    scdsBuscaGuiaCKA24: TStringField;
    scdsBuscaGuiaALTERADO24: TStringField;
    scdsBuscaGuiaDATA25: TDateField;
    scdsBuscaGuiaCK25: TStringField;
    scdsBuscaGuiaEXAME25: TStringField;
    scdsBuscaGuiaCKA25: TStringField;
    scdsBuscaGuiaALTERADO25: TStringField;
    scdsBuscaGuiaDATA26: TDateField;
    scdsBuscaGuiaCK26: TStringField;
    scdsBuscaGuiaEXAME26: TStringField;
    scdsBuscaGuiaCKA26: TStringField;
    scdsBuscaGuiaALTERADO26: TStringField;
    scdsBuscaGuiaDATA27: TDateField;
    scdsBuscaGuiaCK27: TStringField;
    scdsBuscaGuiaEXAME27: TStringField;
    scdsBuscaGuiaCKA27: TStringField;
    scdsBuscaGuiaALTERADO27: TStringField;
    scdsBuscaGuiaDATA28: TDateField;
    scdsBuscaGuiaCK28: TStringField;
    scdsBuscaGuiaEXAME28: TStringField;
    scdsBuscaGuiaCKA28: TStringField;
    scdsBuscaGuiaALTERADO28: TStringField;
    scdsBuscaGuiaDATA29: TDateField;
    scdsBuscaGuiaCK29: TStringField;
    scdsBuscaGuiaEXAME29: TStringField;
    scdsBuscaGuiaCKA29: TStringField;
    scdsBuscaGuiaALTERADO29: TStringField;
    scdsBuscaGuiaDATA30: TDateField;
    scdsBuscaGuiaCK30: TStringField;
    scdsBuscaGuiaEXAME30: TStringField;
    scdsBuscaGuiaCKA30: TStringField;
    scdsBuscaGuiaALTERADO30: TStringField;
    scdsBuscaGuiaDATA31: TDateField;
    scdsBuscaGuiaCK31: TStringField;
    scdsBuscaGuiaEXAME31: TStringField;
    scdsBuscaGuiaCKA31: TStringField;
    scdsBuscaGuiaALTERADO31: TStringField;
    scdsBuscaGuiaDATA32: TDateField;
    scdsBuscaGuiaCK32: TStringField;
    scdsBuscaGuiaEXAME32: TStringField;
    scdsBuscaGuiaCKA32: TStringField;
    scdsBuscaGuiaALTERADO32: TStringField;
    scdsBuscaGuiaDATA33: TDateField;
    scdsBuscaGuiaCK33: TStringField;
    scdsBuscaGuiaEXAME33: TStringField;
    scdsBuscaGuiaCKA33: TStringField;
    scdsBuscaGuiaALTERADO33: TStringField;
    scdsBuscaGuiaDATA34: TDateField;
    scdsBuscaGuiaCK34: TStringField;
    scdsBuscaGuiaEXAME34: TStringField;
    scdsBuscaGuiaCKA34: TStringField;
    scdsBuscaGuiaALTERADO34: TStringField;
    scdsBuscaGuiaDATA35: TDateField;
    scdsBuscaGuiaCK35: TStringField;
    scdsBuscaGuiaEXAME35: TStringField;
    scdsBuscaGuiaCKA35: TStringField;
    scdsBuscaGuiaALTERADO35: TStringField;
    scdsBuscaGuiaCKANEXO1: TStringField;
    scdsBuscaGuiaANEXO1: TStringField;
    scdsBuscaGuiaCKANEXO2: TStringField;
    scdsBuscaGuiaANEXO2: TStringField;
    scdsBuscaGuiaCKANEXO3: TStringField;
    scdsBuscaGuiaANEXO3: TStringField;
    scdsBuscaGuiaCKANEXO4: TStringField;
    scdsBuscaGuiaANEXO4: TStringField;
    scdsBuscaGuiaCKANEXO5: TStringField;
    scdsBuscaGuiaANEXO5: TStringField;
    scdsBuscaGuiaCKANEXO6: TStringField;
    scdsBuscaGuiaANEXO6: TStringField;
    scdsBuscaGuiaCKANEXO7: TStringField;
    scdsBuscaGuiaANEXO7: TStringField;
    scdsBuscaGuiaCKANEXO8: TStringField;
    scdsBuscaGuiaANEXO8: TStringField;
    scdsBuscaGuiaCKANEXO9: TStringField;
    scdsBuscaGuiaANEXO9: TStringField;
    scdsBuscaGuiaCKANEXO10: TStringField;
    scdsBuscaGuiaANEXO10: TStringField;
    scdsBuscaGuiaCKANEXO11: TStringField;
    scdsBuscaGuiaANEXO11: TStringField;
    scdsBuscaGuiaCKANEXO12: TStringField;
    scdsBuscaGuiaANEXO12: TStringField;
    scdsBuscaGuiaCKANEXO13: TStringField;
    scdsBuscaGuiaANEXO13: TStringField;
    scdsBuscaGuiaCKANEXO14: TStringField;
    scdsBuscaGuiaANEXO14: TStringField;
    scdsBuscaGuiaCKANEXO15: TStringField;
    scdsBuscaGuiaANEXO15: TStringField;
    scdsBuscaGuiaCKANEXO16: TStringField;
    scdsBuscaGuiaANEXO16: TStringField;
    scdsBuscaGuiaCKANEXO17: TStringField;
    scdsBuscaGuiaANEXO17: TStringField;
    scdsBuscaGuiaCKANEXO18: TStringField;
    scdsBuscaGuiaANEXO18: TStringField;
    scdsBuscaGuiaCKQ: TStringField;
    scdsBuscaGuiaQUEIXAP: TStringField;
    scdsBuscaGuiaCKH: TStringField;
    scdsBuscaGuiaHISTORICOMEDICO: TStringField;
    scdsBuscaGuiaCKA: TStringField;
    scdsBuscaGuiaALCOOL: TStringField;
    scdsBuscaGuiaFUMO: TStringField;
    scdsBuscaGuiaCKAF: TStringField;
    scdsBuscaGuiaANTECEDENTESFAMILIARES: TStringField;
    scdsBuscaGuiaCKC: TStringField;
    scdsBuscaGuiaCICATRIZES: TStringField;
    scdsBuscaGuiaCKAPE: TStringField;
    scdsBuscaGuiaANTECEDENTESPESSOAIS: TStringField;
    scdsBuscaGuiaCKACI: TStringField;
    scdsBuscaGuiaACIDENTES: TStringField;
    scdsBuscaGuiaPESO: TFloatField;
    scdsBuscaGuiaALTURA: TFloatField;
    scdsBuscaGuiaIMC: TFloatField;
    scdsBuscaGuiaPA: TStringField;
    scdsBuscaGuiaFC: TStringField;
    scdsBuscaGuiaCKOD: TStringField;
    scdsBuscaGuiaCKOE: TStringField;
    scdsBuscaGuiaCKAPV: TStringField;
    scdsBuscaGuiaMOLESTIA: TStringField;
    scdsBuscaGuiaCKP: TStringField;
    scdsBuscaGuiaPELE: TStringField;
    scdsBuscaGuiaCKAPA: TStringField;
    scdsBuscaGuiaOUVIDOS: TStringField;
    scdsBuscaGuiaCKCP: TStringField;
    scdsBuscaGuiaCABECA: TStringField;
    scdsBuscaGuiaCKABD: TStringField;
    scdsBuscaGuiaABDOMEN: TStringField;
    scdsBuscaGuiaCKAP: TStringField;
    scdsBuscaGuiaAP: TStringField;
    scdsBuscaGuiaCKACV: TStringField;
    scdsBuscaGuiaAPCARDIO: TStringField;
    scdsBuscaGuiaCKAPN: TStringField;
    scdsBuscaGuiaSISTEMANERVOSO: TStringField;
    scdsBuscaGuiaCKAGU: TStringField;
    scdsBuscaGuiaAPURO: TStringField;
    scdsBuscaGuiaCKAOM: TStringField;
    scdsBuscaGuiaAOSTEO: TStringField;
    scdsBuscaGuiaOBSFICHA: TStringField;
    scdsBuscaGuiaA: TStringField;
    scdsBuscaGuiaI: TStringField;
    scdsBuscaGuiaADA: TStringField;
    scdsBuscaGuiaAIA: TStringField;
    scdsBuscaGuiaPAIR: TStringField;
    scdsBuscaGuiaDANO: TStringField;
    scdsBuscaGuiaHISTORICOAV: TStringField;
    scdsBuscaGuiaCONDUTA: TStringField;
    scdsBuscaGuiaAFASTAMENTO: TStringField;
    scdsBuscaGuiaDATAAFASTAMENTO: TDateField;
    scdsBuscaGuiaDATARETORNO: TDateField;
    scdsBuscaGuiaDIASPERDIDOS: TIntegerField;
    cdsBuscaGuiaID_GUIAS: TIntegerField;
    cdsBuscaGuiaNUMERO_GUIA: TStringField;
    cdsBuscaGuiaDATA_EMISSAO: TDateField;
    cdsBuscaGuiaNOME_FUNCIONARIO: TStringField;
    cdsBuscaGuiaNOME_EMPRESA: TStringField;
    cdsBuscaGuiaNOME_EXECUTANTE: TStringField;
    cdsBuscaGuiaSIGLA_CONSELHO: TStringField;
    cdsBuscaGuiaNUMERO_PROFISSIONAL: TStringField;
    cdsBuscaGuiaSIGLA_UNIDADE: TStringField;
    cdsBuscaGuiaCODIGO_ESPECIALIDADE: TStringField;
    cdsBuscaGuiaCODIGO_CID10_1: TStringField;
    cdsBuscaGuiaCODIGO_CID10_2: TStringField;
    cdsBuscaGuiaCODIGO_CID10_3: TStringField;
    cdsBuscaGuiaCODIGO_CID10_4: TStringField;
    cdsBuscaGuiaDATA_ATENDIMENTO: TDateField;
    cdsBuscaGuiaGRAU_RISCO: TStringField;
    cdsBuscaGuiaTIPO_CONSULTA: TStringField;
    cdsBuscaGuiaAPTO: TIntegerField;
    cdsBuscaGuiaOBSERVACAO: TStringField;
    cdsBuscaGuiaTIPO_GUIA: TStringField;
    cdsBuscaGuiaCODCLIENTE: TIntegerField;
    cdsBuscaGuiaTIPO: TStringField;
    cdsBuscaGuiaRG: TStringField;
    cdsBuscaGuiaCPF: TStringField;
    cdsBuscaGuiaCARGO: TStringField;
    cdsBuscaGuiaFUNCAO: TStringField;
    cdsBuscaGuiaPIS: TStringField;
    cdsBuscaGuiaDATA1: TDateField;
    cdsBuscaGuiaCK1: TStringField;
    cdsBuscaGuiaEXAME1: TStringField;
    cdsBuscaGuiaCKA1: TStringField;
    cdsBuscaGuiaALTERADO1: TStringField;
    cdsBuscaGuiaDATA2: TDateField;
    cdsBuscaGuiaCK2: TStringField;
    cdsBuscaGuiaEXAME2: TStringField;
    cdsBuscaGuiaCKA2: TStringField;
    cdsBuscaGuiaALTERADO2: TStringField;
    cdsBuscaGuiaDATA3: TDateField;
    cdsBuscaGuiaCK3: TStringField;
    cdsBuscaGuiaEXAME3: TStringField;
    cdsBuscaGuiaCKA3: TStringField;
    cdsBuscaGuiaALTERADO3: TStringField;
    cdsBuscaGuiaDATA4: TDateField;
    cdsBuscaGuiaCK4: TStringField;
    cdsBuscaGuiaEXAME4: TStringField;
    cdsBuscaGuiaCKA4: TStringField;
    cdsBuscaGuiaALTERADO4: TStringField;
    cdsBuscaGuiaDATA5: TDateField;
    cdsBuscaGuiaCK5: TStringField;
    cdsBuscaGuiaEXAME5: TStringField;
    cdsBuscaGuiaCKA5: TStringField;
    cdsBuscaGuiaALTERADO5: TStringField;
    cdsBuscaGuiaDATA6: TDateField;
    cdsBuscaGuiaCK6: TStringField;
    cdsBuscaGuiaEXAME6: TStringField;
    cdsBuscaGuiaCKA6: TStringField;
    cdsBuscaGuiaALTERADO6: TStringField;
    cdsBuscaGuiaDATA7: TDateField;
    cdsBuscaGuiaCK7: TStringField;
    cdsBuscaGuiaEXAME7: TStringField;
    cdsBuscaGuiaCKA7: TStringField;
    cdsBuscaGuiaALTERADO7: TStringField;
    cdsBuscaGuiaDATA8: TDateField;
    cdsBuscaGuiaCK8: TStringField;
    cdsBuscaGuiaEXAME8: TStringField;
    cdsBuscaGuiaCKA8: TStringField;
    cdsBuscaGuiaALTERADO8: TStringField;
    cdsBuscaGuiaDATA9: TDateField;
    cdsBuscaGuiaCK9: TStringField;
    cdsBuscaGuiaEXAME9: TStringField;
    cdsBuscaGuiaCKA9: TStringField;
    cdsBuscaGuiaALTERADO9: TStringField;
    cdsBuscaGuiaDATA10: TDateField;
    cdsBuscaGuiaCK10: TStringField;
    cdsBuscaGuiaEXAME10: TStringField;
    cdsBuscaGuiaCKA10: TStringField;
    cdsBuscaGuiaALTERADO10: TStringField;
    cdsBuscaGuiaDATA11: TDateField;
    cdsBuscaGuiaCK11: TStringField;
    cdsBuscaGuiaEXAME11: TStringField;
    cdsBuscaGuiaCKA11: TStringField;
    cdsBuscaGuiaALTERADO11: TStringField;
    cdsBuscaGuiaDATA12: TDateField;
    cdsBuscaGuiaCK12: TStringField;
    cdsBuscaGuiaEXAME12: TStringField;
    cdsBuscaGuiaCKA12: TStringField;
    cdsBuscaGuiaALTERADO12: TStringField;
    cdsBuscaGuiaDATA13: TDateField;
    cdsBuscaGuiaCK13: TStringField;
    cdsBuscaGuiaEXAME13: TStringField;
    cdsBuscaGuiaCKA13: TStringField;
    cdsBuscaGuiaALTERADO13: TStringField;
    cdsBuscaGuiaDATA14: TDateField;
    cdsBuscaGuiaCK14: TStringField;
    cdsBuscaGuiaEXAME14: TStringField;
    cdsBuscaGuiaCKA14: TStringField;
    cdsBuscaGuiaALTERADO14: TStringField;
    cdsBuscaGuiaDATA15: TDateField;
    cdsBuscaGuiaCK15: TStringField;
    cdsBuscaGuiaEXAME15: TStringField;
    cdsBuscaGuiaCKA15: TStringField;
    cdsBuscaGuiaALTERADO15: TStringField;
    cdsBuscaGuiaDATA16: TDateField;
    cdsBuscaGuiaCK16: TStringField;
    cdsBuscaGuiaEXAME16: TStringField;
    cdsBuscaGuiaCKA16: TStringField;
    cdsBuscaGuiaALTERADO16: TStringField;
    cdsBuscaGuiaDATA17: TDateField;
    cdsBuscaGuiaCK17: TStringField;
    cdsBuscaGuiaEXAME17: TStringField;
    cdsBuscaGuiaCKA17: TStringField;
    cdsBuscaGuiaALTERADO17: TStringField;
    cdsBuscaGuiaDATA18: TDateField;
    cdsBuscaGuiaCK18: TStringField;
    cdsBuscaGuiaEXAME18: TStringField;
    cdsBuscaGuiaCKA18: TStringField;
    cdsBuscaGuiaALTERADO18: TStringField;
    cdsBuscaGuiaDATA19: TDateField;
    cdsBuscaGuiaCK19: TStringField;
    cdsBuscaGuiaEXAME19: TStringField;
    cdsBuscaGuiaCKA19: TStringField;
    cdsBuscaGuiaALTERADO19: TStringField;
    cdsBuscaGuiaDATA20: TDateField;
    cdsBuscaGuiaCK20: TStringField;
    cdsBuscaGuiaEXAME20: TStringField;
    cdsBuscaGuiaCKA20: TStringField;
    cdsBuscaGuiaALTERADO20: TStringField;
    cdsBuscaGuiaDATA21: TDateField;
    cdsBuscaGuiaCK21: TStringField;
    cdsBuscaGuiaEXAME21: TStringField;
    cdsBuscaGuiaCKA21: TStringField;
    cdsBuscaGuiaALTERADO21: TStringField;
    cdsBuscaGuiaDATA22: TDateField;
    cdsBuscaGuiaCK22: TStringField;
    cdsBuscaGuiaEXAME22: TStringField;
    cdsBuscaGuiaCKA22: TStringField;
    cdsBuscaGuiaALTERADO22: TStringField;
    cdsBuscaGuiaDATA23: TDateField;
    cdsBuscaGuiaCK23: TStringField;
    cdsBuscaGuiaEXAME23: TStringField;
    cdsBuscaGuiaCKA23: TStringField;
    cdsBuscaGuiaALTERADO23: TStringField;
    cdsBuscaGuiaDATA24: TDateField;
    cdsBuscaGuiaCK24: TStringField;
    cdsBuscaGuiaEXAME24: TStringField;
    cdsBuscaGuiaCKA24: TStringField;
    cdsBuscaGuiaALTERADO24: TStringField;
    cdsBuscaGuiaDATA25: TDateField;
    cdsBuscaGuiaCK25: TStringField;
    cdsBuscaGuiaEXAME25: TStringField;
    cdsBuscaGuiaCKA25: TStringField;
    cdsBuscaGuiaALTERADO25: TStringField;
    cdsBuscaGuiaDATA26: TDateField;
    cdsBuscaGuiaCK26: TStringField;
    cdsBuscaGuiaEXAME26: TStringField;
    cdsBuscaGuiaCKA26: TStringField;
    cdsBuscaGuiaALTERADO26: TStringField;
    cdsBuscaGuiaDATA27: TDateField;
    cdsBuscaGuiaCK27: TStringField;
    cdsBuscaGuiaEXAME27: TStringField;
    cdsBuscaGuiaCKA27: TStringField;
    cdsBuscaGuiaALTERADO27: TStringField;
    cdsBuscaGuiaDATA28: TDateField;
    cdsBuscaGuiaCK28: TStringField;
    cdsBuscaGuiaEXAME28: TStringField;
    cdsBuscaGuiaCKA28: TStringField;
    cdsBuscaGuiaALTERADO28: TStringField;
    cdsBuscaGuiaDATA29: TDateField;
    cdsBuscaGuiaCK29: TStringField;
    cdsBuscaGuiaEXAME29: TStringField;
    cdsBuscaGuiaCKA29: TStringField;
    cdsBuscaGuiaALTERADO29: TStringField;
    cdsBuscaGuiaDATA30: TDateField;
    cdsBuscaGuiaCK30: TStringField;
    cdsBuscaGuiaEXAME30: TStringField;
    cdsBuscaGuiaCKA30: TStringField;
    cdsBuscaGuiaALTERADO30: TStringField;
    cdsBuscaGuiaDATA31: TDateField;
    cdsBuscaGuiaCK31: TStringField;
    cdsBuscaGuiaEXAME31: TStringField;
    cdsBuscaGuiaCKA31: TStringField;
    cdsBuscaGuiaALTERADO31: TStringField;
    cdsBuscaGuiaDATA32: TDateField;
    cdsBuscaGuiaCK32: TStringField;
    cdsBuscaGuiaEXAME32: TStringField;
    cdsBuscaGuiaCKA32: TStringField;
    cdsBuscaGuiaALTERADO32: TStringField;
    cdsBuscaGuiaDATA33: TDateField;
    cdsBuscaGuiaCK33: TStringField;
    cdsBuscaGuiaEXAME33: TStringField;
    cdsBuscaGuiaCKA33: TStringField;
    cdsBuscaGuiaALTERADO33: TStringField;
    cdsBuscaGuiaDATA34: TDateField;
    cdsBuscaGuiaCK34: TStringField;
    cdsBuscaGuiaEXAME34: TStringField;
    cdsBuscaGuiaCKA34: TStringField;
    cdsBuscaGuiaALTERADO34: TStringField;
    cdsBuscaGuiaDATA35: TDateField;
    cdsBuscaGuiaCK35: TStringField;
    cdsBuscaGuiaEXAME35: TStringField;
    cdsBuscaGuiaCKA35: TStringField;
    cdsBuscaGuiaALTERADO35: TStringField;
    cdsBuscaGuiaCKANEXO1: TStringField;
    cdsBuscaGuiaANEXO1: TStringField;
    cdsBuscaGuiaCKANEXO2: TStringField;
    cdsBuscaGuiaANEXO2: TStringField;
    cdsBuscaGuiaCKANEXO3: TStringField;
    cdsBuscaGuiaANEXO3: TStringField;
    cdsBuscaGuiaCKANEXO4: TStringField;
    cdsBuscaGuiaANEXO4: TStringField;
    cdsBuscaGuiaCKANEXO5: TStringField;
    cdsBuscaGuiaANEXO5: TStringField;
    cdsBuscaGuiaCKANEXO6: TStringField;
    cdsBuscaGuiaANEXO6: TStringField;
    cdsBuscaGuiaCKANEXO7: TStringField;
    cdsBuscaGuiaANEXO7: TStringField;
    cdsBuscaGuiaCKANEXO8: TStringField;
    cdsBuscaGuiaANEXO8: TStringField;
    cdsBuscaGuiaCKANEXO9: TStringField;
    cdsBuscaGuiaANEXO9: TStringField;
    cdsBuscaGuiaCKANEXO10: TStringField;
    cdsBuscaGuiaANEXO10: TStringField;
    cdsBuscaGuiaCKANEXO11: TStringField;
    cdsBuscaGuiaANEXO11: TStringField;
    cdsBuscaGuiaCKANEXO12: TStringField;
    cdsBuscaGuiaANEXO12: TStringField;
    cdsBuscaGuiaCKANEXO13: TStringField;
    cdsBuscaGuiaANEXO13: TStringField;
    cdsBuscaGuiaCKANEXO14: TStringField;
    cdsBuscaGuiaANEXO14: TStringField;
    cdsBuscaGuiaCKANEXO15: TStringField;
    cdsBuscaGuiaANEXO15: TStringField;
    cdsBuscaGuiaCKANEXO16: TStringField;
    cdsBuscaGuiaANEXO16: TStringField;
    cdsBuscaGuiaCKANEXO17: TStringField;
    cdsBuscaGuiaANEXO17: TStringField;
    cdsBuscaGuiaCKANEXO18: TStringField;
    cdsBuscaGuiaANEXO18: TStringField;
    cdsBuscaGuiaCKQ: TStringField;
    cdsBuscaGuiaQUEIXAP: TStringField;
    cdsBuscaGuiaCKH: TStringField;
    cdsBuscaGuiaHISTORICOMEDICO: TStringField;
    cdsBuscaGuiaCKA: TStringField;
    cdsBuscaGuiaALCOOL: TStringField;
    cdsBuscaGuiaFUMO: TStringField;
    cdsBuscaGuiaCKAF: TStringField;
    cdsBuscaGuiaANTECEDENTESFAMILIARES: TStringField;
    cdsBuscaGuiaCKC: TStringField;
    cdsBuscaGuiaCICATRIZES: TStringField;
    cdsBuscaGuiaCKAPE: TStringField;
    cdsBuscaGuiaANTECEDENTESPESSOAIS: TStringField;
    cdsBuscaGuiaCKACI: TStringField;
    cdsBuscaGuiaACIDENTES: TStringField;
    cdsBuscaGuiaPESO: TFloatField;
    cdsBuscaGuiaALTURA: TFloatField;
    cdsBuscaGuiaIMC: TFloatField;
    cdsBuscaGuiaPA: TStringField;
    cdsBuscaGuiaFC: TStringField;
    cdsBuscaGuiaCKOD: TStringField;
    cdsBuscaGuiaCKOE: TStringField;
    cdsBuscaGuiaCKAPV: TStringField;
    cdsBuscaGuiaMOLESTIA: TStringField;
    cdsBuscaGuiaCKP: TStringField;
    cdsBuscaGuiaPELE: TStringField;
    cdsBuscaGuiaCKAPA: TStringField;
    cdsBuscaGuiaOUVIDOS: TStringField;
    cdsBuscaGuiaCKCP: TStringField;
    cdsBuscaGuiaCABECA: TStringField;
    cdsBuscaGuiaCKABD: TStringField;
    cdsBuscaGuiaABDOMEN: TStringField;
    cdsBuscaGuiaCKAP: TStringField;
    cdsBuscaGuiaAP: TStringField;
    cdsBuscaGuiaCKACV: TStringField;
    cdsBuscaGuiaAPCARDIO: TStringField;
    cdsBuscaGuiaCKAPN: TStringField;
    cdsBuscaGuiaSISTEMANERVOSO: TStringField;
    cdsBuscaGuiaCKAGU: TStringField;
    cdsBuscaGuiaAPURO: TStringField;
    cdsBuscaGuiaCKAOM: TStringField;
    cdsBuscaGuiaAOSTEO: TStringField;
    cdsBuscaGuiaOBSFICHA: TStringField;
    cdsBuscaGuiaA: TStringField;
    cdsBuscaGuiaI: TStringField;
    cdsBuscaGuiaADA: TStringField;
    cdsBuscaGuiaAIA: TStringField;
    cdsBuscaGuiaPAIR: TStringField;
    cdsBuscaGuiaDANO: TStringField;
    cdsBuscaGuiaHISTORICOAV: TStringField;
    cdsBuscaGuiaCONDUTA: TStringField;
    cdsBuscaGuiaAFASTAMENTO: TStringField;
    cdsBuscaGuiaDATAAFASTAMENTO: TDateField;
    cdsBuscaGuiaDATARETORNO: TDateField;
    cdsBuscaGuiaDIASPERDIDOS: TIntegerField;
    DBEdit50: TDBEdit;
    radAlcool: TDBRadioGroup;
    Label62: TLabel;
    BitBtn8: TBitBtn;
    Label63: TLabel;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    BitBtn9: TBitBtn;
    Label28: TLabel;
    Label29: TLabel;
    Label33: TLabel;
    BitBtn11: TBitBtn;
    radTipo1: TDBRadioGroup;
    radTipo: TDBRadioGroup;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit79: TDBEdit;
    Label64: TLabel;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    DBEdit107: TDBEdit;
    DBEdit108: TDBEdit;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    DBEdit111: TDBEdit;
    DBEdit112: TDBEdit;
    DBEdit113: TDBEdit;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    DBEdit120: TDBEdit;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    DBEdit121: TDBEdit;
    DBEdit122: TDBEdit;
    DBEdit123: TDBEdit;
    DBEdit124: TDBEdit;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    DBEdit125: TDBEdit;
    DBEdit126: TDBEdit;
    DBEdit127: TDBEdit;
    DBEdit128: TDBEdit;
    DBEdit129: TDBEdit;
    DBEdit130: TDBEdit;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    DBEdit131: TDBEdit;
    DBEdit132: TDBEdit;
    DBEdit133: TDBEdit;
    DBEdit134: TDBEdit;
    DBEdit135: TDBEdit;
    DBEdit136: TDBEdit;
    DBEdit137: TDBEdit;
    DBEdit138: TDBEdit;
    DBEdit139: TDBEdit;
    Label103: TLabel;
    Label104: TLabel;
    MaskEdit1: TDBEdit;
    MaskEdit2: TDBEdit;
    Edit2: TDBEdit;
    DBEdit74: TDBEdit;
    Label85: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    DBEdit76: TDBEdit;
    DBEdit140: TDBEdit;
    DBEdit141: TDBEdit;
    DBEdit142: TDBEdit;
    DBEdit143: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure dbeditcnsExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btndtaltClick(Sender: TObject);
    procedure btnIncClick(Sender: TObject);
    procedure btnGravClick(Sender: TObject);
    procedure btnAsoSairClick(Sender: TObject);
    procedure btnCanClick(Sender: TObject);
    procedure dsBuscaGuiaStateChange(Sender: TObject);
    procedure DBEdit32Exit(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure limparCampos;
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   nGuia : string ;  
   function cpf(num: string): boolean;
   Function ValidaCNS(Num: string):Boolean;
   Function ValidaCNS_PROV(Num: string):Boolean;
  end;

var
  fDependente: TfDependente;

implementation

uses UDmSaude, uClientePlano, UDm, uPlanoSaude;

{$R *.dfm}

procedure TfDependente.FormShow(Sender: TObject);
  var dependente : string;
begin
    DBComboBox1.Clear;

    if ( grupo = 'ASH') then
    begin
      if DMSaude.cdsCombo.Active then
        DMSaude.cdsCombo.Close;
      DMSaude.cdsCombo.Params[0].AsString := 'TIPO DEPENDENTE';
      DMSaude.cdsCombo.Open;
      if DBEdit8.Visible = false then
      DBEdit8.Visible:= true;
      While not DMSaude.cdsCombo.Eof do
      begin
        DBComboBox1.Items.Add(DMSaude.cdsComboDESCRICAO.AsString);
        DMSaude.cdsCombo.Next;
      end;
    end
    else begin
    if DMSaude.cdsCombo.Active then
        DMSaude.cdsCombo.Close;
      DMSaude.cdsCombo.Params[0].AsString := 'FUNCAO FUNCIONARIO';
      DMSaude.cdsCombo.Open;
    if DBEdit8.Visible = true then
      DBEdit8.Visible:= false;
      While not DMSaude.cdsCombo.Eof do
      begin
        DBComboBox1.Items.Add(DMSaude.cdsComboDESCRICAO.AsString);
        DMSaude.cdsCombo.Next;
      end;

    DBComboBox2.Clear;

    if ( grupo = 'PCMSO') then
    begin
      if DMSaude.cdsCombo.Active then
        DMSaude.cdsCombo.Close;
      DMSaude.cdsCombo.Params[0].AsString := 'SETOR FUNCIONARIO';
      DMSaude.cdsCombo.Open;
      While not DMSaude.cdsCombo.Eof do
      begin
        DBComboBox2.Items.Add(DMSaude.cdsComboDESCRICAO.AsString);
        DMSaude.cdsCombo.Next;
      end;
    end;



  if(DMSaude.cdsDependente.Active) then
  DMSaude.cdsDependente.Close;
{
  DMSaude.cdsDependente.CommandText := 'select EMISSAO_NF ,CGC_CPF,ENDERECO,CIDADE, ' +
  ' CEP,ESTADO,DARF,DATA_CREDITO,NF ,VALOR_RENDIMENTO,DATA_PAGAMENTO, ' +
  ' VALOR_IR,INSS_DEVIDO,CSLL_RETIDO,COFINS_RETIDO,PIS_RETIDO,BASE_CALCULO,' +
  ' SUBSTR(BENEFICIARIO,0,50)as BENEFICIARIO  from I_LAYOUT where  EMISSAO_NF BETWEEN ' +
  QuotedStr(FormatDateTime('dd/mm/yyyy',dataini.Date)) +
  ' and ' + QuotedStr(FormatDateTime('dd/mm/yyyy',datafim.Date))+ ' order by EMISSAO_NF' ;

  cds.Open;

  select *  from CLIENTES where RAZAOSOCIAL = :id and segmento = 1 AND GRUPO_CLIENTE = 'PCMSO'
  'and' + ' ID_COB = :sit  order by RA';
}

    end;
      DBComboBox3.Clear;
      if cds_repfor.Active then
        cds_repfor.Close;
      cds_repfor.Params[0].AsInteger := 139;
      cds_repfor.Open;
      While not cds_repfor.Eof do
      begin
        DBComboBox3.Items.Add(cds_repforNOME_REPRFOR.AsString
                             + '- CRM -' + cds_repforNUMERO.AsString
                             + '- CPF -' + cds_repforCPF.AsString
                             + '- PIS -' + cds_repforBAIRRO.AsString
                             );
        cds_repfor.Next;
      end;
      DBComboBox3.Text := '';

  inherited;
  { if grupo = 'ASH' then
   begin
    MMJPanel2.Background.StartColor := clSkyBlue;
    MMJPanel1.Background.EndColor := clSkyBlue;
    fDependente.Color := clSkyBlue;
   end;
  }
  EvDBFind1.SetFocus;

  if DMSaude.cdsDependente.Active then
    DMSaude.cdsDependente.Close;
    DMSaude.cdsDependente.Params[0].AsString := DMSaude.cdsClienteRAZAOSOCIAL.AsString;
    DMSaude.cdsDependente.Params[1].AsString := DMSaude.cdsClienteGRUPO_CLIENTE.AsString;
    DMSaude.cdsDependente.Params[2].AsInteger := DMSaude.cdsClienteID_COB.AsInteger;
    DMSaude.cdsDependente.Open;

  

end;

procedure TfDependente.btnIncluirClick(Sender: TObject);
begin
  Panel1.Visible := true;
  DBComboBox1.SetFocus;
  inherited;
  DMSaude.cdsDependenteSTATUS.AsString :='0';
  DMSaude.cdsDependenteRAZAOSOCIAL.AsString := DMSaude.cdsClienteRAZAOSOCIAL.AsString;
  DMSaude.cdsDependenteTIPOFIRMA.AsInteger := 0;
  DMSaude.cdsDependenteSEGMENTO.AsInteger := 1;
  DMSaude.cdsDependenteREGIAO.AsInteger := 0;
  DMSaude.cdsDependenteCODUSUARIO.AsInteger := 1 ;
  DMSaude.cdsDependenteGRUPO_CLIENTE.AsString := grupo;
  DMSaude.cdsDependenteESTADORG.AsString := '00';
  DMSaude.cdsDependenteEXIST_COBERT.AsInteger := 2 ;
  DMSaude.cdsDependenteEXISTCOPART.AsInteger := 1 ;
  DMSaude.cdsDependenteCODINCLUCANC.AsInteger := 15 ;
 // DMSaude.cdsDependenteCNPJ.AsString := '   .   .   -  ';
  DMSaude.cdsDependenteID_COB.AsInteger := 0 ;
  if(grupo <> 'ASH')then
  DMSaude.cdsDependenteNUMERO.AsInteger := 9 ;

  if sql_ra.Active then
    sql_ra.Close;
  if(grupo = 'ASH') then
  begin
    sql_ra.CommandText := 'select udf_strzero(max(cast(RA as integer))+ 1,7) '+
    'as RA from CLIENTES where grupo_cliente = :grupo and razaosocial = :prcod' ;
    sql_ra.Params[0].AsString := grupo;
    sql_ra.Params[1].AsString := DMSaude.cdsClienteRAZAOSOCIAL.AsString;
  end
  else
    sql_ra.CommandText := 'select * from ra_pcmso (' +
    QuotedStr(DMSaude.cdsClienteRAZAOSOCIAL.AsString) + ')';

  sql_ra.Open;
  DMSaude.cdsDependenteRA.AsString := sql_ra.Fields[0].AsString;
end;

procedure TfDependente.btnGravarClick(Sender: TObject);
begin

  if (DMSaude.cdsDependente.State in [dsInsert]) then
   begin
     if DM.c_6_genid.Active then
       DM.c_6_genid.Close;
     DM.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
     DM.c_6_genid.Open;
     DMSaude.cdsDependenteCODCLIENTE.AsInteger := DM.c_6_genid.Fields[0].AsInteger;
     DM.c_6_genid.Close;
     if(DBEdit13.Text = '000.000.000-00') then
     begin
      MessageDlg('CPF Invalido !!!'+#13+#10+'SE for Mesnor sem CFP '+#13+#10+'Não Preecher .', mtError, [mbOK], 0);
      exit;
     end;
   end;
   DMSaude.cdsCombo.Locate('DESCRICAO', DBComboBox1.Text, [loCaseInsensitive]);
   DMSaude.cdsDependenteSITUACAOESCOLAR.AsString := DMSaude.cdsComboCODIGOS.AsString;
   DMSaude.cdsDependenteESTADORG.AsString := DBEdit12.Text;
   DMSaude.cdsDependenteEXIST_COBERT.AsInteger := 2 ;
   DMSaude.cdsDependenteEXISTCOPART.AsInteger := 1 ;
   DMSaude.cdsDependenteCODINCLUCANC.AsInteger := 15 ;
 //  DMSaude.cdsDependenteTIPOFIRMA.AsInteger := 0 ;
 //  DMSaude.cdsDependenteSEGMENTO.AsInteger := 1 ;
   if(grupo <> 'ASH')then
   DMSaude.cdsDependenteNUMERO.AsInteger := 9 ;

  // DMSaude.cdsDependenteCNPJ.AsString := '00000000000';

 {    if DBRadioGroup2.ItemIndex = 1 then
    DMSaude.cdsDependenteID_COB.AsInteger := 1
   else
     DMSaude.cdsDependenteID_COB.AsInteger := 0 ;
 }
 {    if(DBRadioGroup2.ItemIndex = 1) then
    begin
     MessageDlg('Data de Rescisão deve ser Preenchida ', mtConfirmation, [mbYes, mbNo], 0);

      if( DBEdit10.Text = '  /  /    ') then
      begin
        DBEdit10.SetFocus;
        exit;
      end;
    end;

    if(DBRadioGroup2.ItemIndex = 0) then
    begin
      MessageDlg('Data de Rescisão deve ser Apagada ', mtConfirmation, [mbYes, mbNo], 0);

      if( DBEdit10.Text <> '  /  /    ') then
      begin
        DBEdit10.SetFocus;
        exit;
      end;
    end;
  }

   MessageDlg('Data de  Alteração  Será Atualizado  ', mtConfirmation, [mbYes, mbNo], 0);

   DMSaude.cdsDependenteDTAALTERA.AsDateTime := now;
  inherited;
end;

procedure TfDependente.FormCreate(Sender: TObject);
//var dependente : string;
begin
  PageControl1.ActivePage := TabSheet1;
  {  if ( grupo = 'ASH') then
    begin
      if DMSaude.cdsCombo.Active then
        DMSaude.cdsCombo.Close;
      DMSaude.cdsCombo.Params[0].AsString := 'TIPO DEPENDENTE';
      DMSaude.cdsCombo.Open;
      if DBEdit8.Visible = false then
      DBEdit8.Visible:= true;
      While not DMSaude.cdsCombo.Eof do
      begin
        DBComboBox1.Items.Add(DMSaude.cdsComboDESCRICAO.AsString);
        DMSaude.cdsCombo.Next;
      end;
    end
    else begin
    if DMSaude.cdsCombo.Active then
        DMSaude.cdsCombo.Close;
      DMSaude.cdsCombo.Params[0].AsString := 'FUNCAO FUNCIONARIO';
      DMSaude.cdsCombo.Open;
    if DBEdit8.Visible = true then
      DBEdit8.Visible:= false;
      While not DMSaude.cdsCombo.Eof do
      begin
        DBComboBox1.Items.Add(DMSaude.cdsComboDESCRICAO.AsString);


        DMSaude.cdsCombo.Next;
      end;

    end;
   }
 // inherited;

end;

procedure TfDependente.btnExcluirClick(Sender: TObject);
begin
//  inherited;
  if(DMSaude.cdsDependente.State in [dsBrowse]) then
    DMSaude.cdsDependente.Edit;
  DMSaude.cdsDependenteSTATUS.AsInteger := 1;
  DMSaude.cdsDependenteDATARESC.AsDateTime := now;
  DMSaude.cdsDependenteDTAALTERA.AsDateTime := now;
  
  DMSaude.cdsDependente.ApplyUpdates(0);

end;

procedure TfDependente.BitBtn5Click(Sender: TObject);
begin
  inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  DMSaude.cdsDependenteDATARESC.Text := '';
end;

procedure TfDependente.BitBtn1Click(Sender: TObject);
begin
 // inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  DMSaude.cdsDependenteDATANASCIMENTO.Text := '';
end;

procedure TfDependente.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  DMSaude.cdsDependenteCNPJ.Text := '';
end;

procedure TfDependente.DBEdit13Exit(Sender: TObject);
 Var str_cpf: String;
begin
 IF (DBEdit13.Text = '   .   .   -  ') then
    DBEdit13.SetFocus
  else
  begin
  inherited;
  if(DBEdit13.Text <> '   .   .   -  ')then
    begin
      str_cpf := copy(DMSaude.cdsDependenteCNPJ.AsString,0,3)+copy(DMSaude.cdsDependenteCNPJ.AsString,5,3)+
         copy(DMSaude.cdsDependenteCNPJ.AsString,9,3)+copy(DMSaude.cdsDependenteCNPJ.AsString,13,2);
      if cpf(str_cpf) = False then
      begin
        MessageDlg('CPF Inválido !', mtWarning,[mbOk], 0);
        DBEdit13.SetFocus;
        exit;
      end;
    end;
  end;
 end;

function TfDependente.cpf(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
d1,d2: integer;
digitado, calculado: string;
begin
n1:=StrToInt(num[1]);
n2:=StrToInt(num[2]);
n3:=StrToInt(num[3]);
n4:=StrToInt(num[4]);
n5:=StrToInt(num[5]);
n6:=StrToInt(num[6]);
n7:=StrToInt(num[7]);
n8:=StrToInt(num[8]);
n9:=StrToInt(num[9]);
d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
d1:=11-(d1 mod 11);
if d1>=10 then d1:=0;
d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
d2:=11-(d2 mod 11);
if d2>=10 then d2:=0;
calculado:=inttostr(d1)+inttostr(d2);
digitado:=num[10]+num[11];
if calculado=digitado then
  cpf:=true
  else
  cpf:=false;
end;

function TfDependente.ValidaCNS(Num: string): Boolean;
var
pis       : string;
resto     : integer;
dv        : integer;
soma      : int64;
resultado : string;
 
begin
pis := copy(Num,1,11);
 
soma:=  ( ( strtoint64( copy( pis, 1, 1 ) ) ) * 15 ) +
        ( ( strtoint64( copy( pis, 2, 1 ) ) ) * 14 ) +
        ( ( strtoint64( copy( pis, 3, 1 ) ) ) * 13 ) +
        ( ( strtoint64( copy( pis, 4, 1 ) ) ) * 12 ) +
        ( ( strtoint64( copy( pis, 5, 1 ) ) ) * 11 ) +
        ( ( strtoint64( copy( pis, 6, 1 ) ) ) * 10 ) +
        ( ( strtoint64( copy( pis, 7, 1 ) ) ) * 9 ) +
        ( ( strtoint64( copy( pis, 8, 1 ) ) ) * 8 ) +
        ( ( strtoint64( copy( pis, 9, 1 ) ) ) * 7 ) +
        ( ( strtoint64( copy( pis, 10, 1 ) ) ) * 6 ) +
        ( ( strtoint64( copy( pis, 11, 1 ) ) ) * 5 );
 
resto:= soma mod 11;
dv     := 11 - resto;
 
if dv = 11 then
   dv:= 0;
 
if dv = 10 then
begin
  soma:=  ( ( strtoint64( copy( pis, 1, 1 ) ) ) * 15 ) +
          ( ( strtoint64( copy( pis, 2, 1 ) ) ) * 14 ) +
          ( ( strtoint64( copy( pis, 3, 1 ) ) ) * 13 ) +
          ( ( strtoint64( copy( pis, 4, 1 ) ) ) * 12 ) +
          ( ( strtoint64( copy( pis, 5, 1 ) ) ) * 11 ) +
          ( ( strtoint64( copy( pis, 6, 1 ) ) ) * 10 ) +
          ( ( strtoint64( copy( pis, 7, 1 ) ) ) * 9 ) +
          ( ( strtoint64( copy( pis, 8, 1 ) ) ) * 8 ) +
          ( ( strtoint64( copy( pis, 9, 1 ) ) ) * 7 ) +
          ( ( strtoint64( copy( pis, 10, 1 ) ) ) * 6 ) +
          ( ( strtoint64( copy( pis, 11, 1 ) ) ) * 5 ) + 2;
  resto:= soma mod 11;
  dv     := 11 - resto;
  resultado:= pis + '001' + inttostr( dv );
end
else
  resultado:= pis + '000' + inttostr( dv );
 
if  Num <> resultado then
 result := false
else
 result := true;

end;

procedure TfDependente.DBEdit17Exit(Sender: TObject);
var str_cpf , tipo_cns : String;
begin
 // inherited;
  tipo_cns := copy(DMSaude.cdsDependenteCNS_ANS.AsString,0,1) ;

  if((tipo_cns = '1') or (tipo_cns = '2'))then
  begin
    str_cpf := stringReplace(DMSaude.cdsDependenteCNS_ANS.AsString, '.', '', [RfReplaceAll]); //stringReplace(Valor, ',', '', [])
    if ValidaCNS(str_cpf) = False then
    begin
      MessageDlg('CNS Inválido Verifique os Numeros !', mtWarning,[mbOk], 0);
      DBEdit17.SetFocus;
      exit;
    end;
  end else
  begin
  if((tipo_cns = '7') or (tipo_cns = '8') or (tipo_cns = '9'))then
  begin
    str_cpf := stringReplace(DMSaude.cdsDependenteCNS_ANS.AsString, '.', '', [RfReplaceAll]); //stringReplace(Valor, ',', '', [])
    if ValidaCNS_PROV(str_cpf) = False then
    begin
      MessageDlg('CNS Inválido Verifique os Numeros !', mtWarning,[mbOk], 0);
      DBEdit17.SetFocus;
      exit;
    end;
end;
end;
end;

function TfDependente.ValidaCNS_PROV(Num: string): Boolean;
var
pis       : string;
resto     : integer;
dv        : integer;
soma      : int64;
resultado : string;

begin
soma:=  ( ( strtoint64( copy( Num, 1, 1 ) ) ) * 15 ) +
        ( ( strtoint64( copy( Num, 2, 1 ) ) ) * 14 ) +
        ( ( strtoint64( copy( Num, 3, 1 ) ) ) * 13 ) +
        ( ( strtoint64( copy( Num, 4, 1 ) ) ) * 12 ) +
        ( ( strtoint64( copy( Num, 5, 1 ) ) ) * 11 ) +
        ( ( strtoint64( copy( Num, 6, 1 ) ) ) * 10 ) +
        ( ( strtoint64( copy( Num, 7, 1 ) ) ) * 9 ) +
        ( ( strtoint64( copy( Num, 8, 1 ) ) ) * 8 ) +
        ( ( strtoint64( copy( Num, 9, 1 ) ) ) * 7 ) +
        ( ( strtoint64( copy( Num, 10, 1 ) ) ) * 6 ) +
        ( ( strtoint64( copy( Num, 11, 1 ) ) ) * 5 ) +
        ( ( strtoint64( copy( Num, 12, 1 ) ) ) * 4 ) +
        ( ( strtoint64( copy( Num, 13, 1 ) ) ) * 3 ) +
        ( ( strtoint64( copy( Num, 14, 1 ) ) ) * 2 ) +
        ( ( strtoint64( copy( Num, 15, 1 ) ) ) * 1 );

resto:= soma mod 11;
if resto <> 0 then
 result := false
else
 result := true;


end;

procedure TfDependente.dbeditcnsExit(Sender: TObject);
var str_cpf , tipo_cns : String;
begin
 // inherited;
  tipo_cns := copy(DMSaude.cdsDependenteCNS.AsString,0,1) ;

  if((tipo_cns = '1') or (tipo_cns = '2'))then
  begin
    str_cpf := stringReplace(DMSaude.cdsDependenteCNS.AsString, '.', '', [RfReplaceAll]); //stringReplace(Valor, ',', '', [])
    if ValidaCNS(str_cpf) = False then
    begin
      MessageDlg('CNS Inválido Verifique os Numeros !', mtWarning,[mbOk], 0);
      dbeditcns.SetFocus;
      exit;
    end;
  end else
  begin
  if((tipo_cns = '7') or (tipo_cns = '8') or (tipo_cns = '9'))then
  begin
    str_cpf := stringReplace(DMSaude.cdsDependenteCNS.AsString, '.', '', [RfReplaceAll]); //stringReplace(Valor, ',', '', [])
    if ValidaCNS_PROV(str_cpf) = False then
    begin
      MessageDlg('CNS Inválido Verifique os Numeros !', mtWarning,[mbOk], 0);
      dbeditcns.SetFocus;
      exit;
    end;
end;
end;
end;

procedure TfDependente.BitBtn3Click(Sender: TObject);
begin
//  inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
  DtSrc.DataSet.Edit;
  DMSaude.cdsDependenteCNS.Text := '';
end;

procedure TfDependente.BitBtn4Click(Sender: TObject);
begin
 // inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
  DtSrc.DataSet.Edit;
  DMSaude.cdsDependenteCNS_ANS.Text := '';
end;

procedure TfDependente.TabSheet1Show(Sender: TObject);
begin
  inherited;
  fDependente.btnSair.Enabled     := True;
  fDependente.btnIncluir.Enabled  := True;
  fDependente.btnGravar.Enabled   := True;
  fDependente.btnCancelar.Enabled := True;
  fDependente.btnExcluir.Enabled  := True;
  {
  fDependente.btnInc.Enabled      := False;
  fDependente.btnGrav.Enabled     := False;
  fDependente.btnCan.Enabled      := False;
  fDependente.btnAsoSair.Enabled  := False;
  fDependente.BitBtn7.Enabled     := False;
  fDependente.JvDBGrid1.Visible   := False;
 }
  cdsBuscaGuia.Close;
  fDependente.Panel2.Visible      := False;
end;

procedure TfDependente.BitBtn7Click(Sender: TObject);
begin
  if(PageControl1.TabIndex = 3) then
  begin
    VCLReport1.Filename := str_relatorio + 'aso.rep';
    VCLReport1.Title := VCLReport1.Filename;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('PNUM').Value := DMSaude.cdsDependenteRA.AsString;
    VCLReport1.Report.Params.ParamByName('NGUIA').Value := cdsBuscaGuiaID_GUIAS.AsInteger;
    VCLReport1.Execute;
  end;
  if(PageControl1.TabIndex = 2) then
  begin
    VCLReport1.Filename := str_relatorio + 'atendimento2.rep';
    VCLReport1.Title := VCLReport1.Filename;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('PNUM').Value := DMSaude.cdsDependenteRA.AsString;
    VCLReport1.Report.Params.ParamByName('NGUIA').Value := cdsBuscaGuiaID_GUIAS.AsInteger;
    VCLReport1.Execute;
  end;
  if(PageControl1.TabIndex = 1) then
  begin
    VCLReport1.Filename := str_relatorio + 'atendimento.rep';
    VCLReport1.Title := VCLReport1.Filename;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('PNUM').Value := DMSaude.cdsDependenteRA.AsString;
    VCLReport1.Report.Params.ParamByName('NGUIA').Value := cdsBuscaGuiaID_GUIAS.AsInteger;
    VCLReport1.Execute;
  end;

end;

procedure TfDependente.btndtaltClick(Sender: TObject);
begin
 // inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  DMSaude.cdsDependenteDATARESC.Text := '';
end;

procedure TfDependente.btnIncClick(Sender: TObject);

begin
 // limparCampos;

  MaskEdit1.Text := '  /  /    ';
  MaskEdit2.Text := '  /  /    ';
  if btnInc.Enabled = false then Exit;
  if not dsBuscaGuia.DataSet.Active then

     dsBuscaGuia.DataSet.open;
  dsBuscaGuia.DataSet.Append;
  dsBuscaGuia.DataSet.Insert;
  BitBtn11.Click;

  Edit2.Text :=   DMSaude.cdsDependenteRA.AsString;
  nGuia :=  Edit2.Text;
  if(not DMSaude.cdsGuias.Active) then
    DMSaude.cdsGuias.Open;
  DMSaude.cdsGuias.Append;
  DMSaude.dsGuias.DataSet.Insert;

 // btnGrav.Visible := True;
 // btnInc.Visible := False;
  {     02/10
 // inherited;
  Edit2.Text := DMSaude.cdsDependenteRA.AsString;
  nGuia :=  Edit2.Text;
  if(not DMSaude.cdsGuias.Active) then
    DMSaude.cdsGuias.Open;
  DMSaude.cdsGuias.Append;
  DMSaude.dsGuias.DataSet.Insert;

////  btnGrav.Enabled := True;
////  btnInc.Enabled := False;
  }
    MaskEdit1.SetFocus;
end;

procedure TfDependente.btnGravClick(Sender: TObject);
var str, str1 ,CK14,CK15,CK16,CK17,CK18,CK19,CK20,CK21,CK22,CK23,CK24,CK25,CK26,CK27,CK28,CK29,CK30,CK31,CK32,CK33,CK34,CK35:string;
     CK36,CK37,CK38,CK39,CK40,CK41,CK42,CK43,CK44,CK45,CK46,CK47,CK48,CK49,CK50,CK51,CK52,CK53,CK54,CK55,CK56,CK57 :string;
     CK58,CK59,CK60,CK61,CK62,CK63,CK64,CK65,CK66,CK67,CK68,CK69,CK70,CK71,CK72,CK73,CK74,CK75,CK76,CK77,CK78,CK79 :string;
     CK80,CK81,CK82,CK83,CK84,CK85 :string;
     CK86,CK87,CK88,CK89,CK90,CK91,CK92,CK93,CK94,CK95,CK96,CK97,CK98 :string;
     CK99,CK100,CK101,CK102,CK103,CK104,CK105,CK106,CK107,CK108,CK109,CK110,CK111,CK112,CK113 :string;
     TD: TTransactionDesc;
     func,vTIPO,vA,vI,vADA,vAIA,vDANO, vPAIR : string;
     data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11 : TDateTime;
     data12,data13,data14,data15,data16,data17,data18,data19,data20,data21,data22 : TDateTime;

     vAPTO : integer;
begin
 // inherited;


  if (DMSaude.cdsGuias.State in [dsInsert]) then
  begin
    DMSaude.cdsGuiasNUMERO_GUIA.AsString := nGuia;
    Edit2.Text := nGuia;
  {
    if(MaskEdit1.Text = '  /  /    ')then
    begin
      MessageDlg('Preencha a Data de Emissão', mtWarning, [mbOK], 0);
      MaskEdit1.SetFocus;
      Exit;
    end;
    }
    DMSaude.cdsGuiasDATA_EMISSAO.AsDateTime := StrToDate(MaskEdit1.Text);


   // if(MaskEdit2.Text <> '  /  /    ')then
    DMSaude.cdsGuiasDATA_ATENDIMENTO.AsDateTime := StrToDate(MaskEdit2.Text);

    ///////////////// DMSaude.cdsGuiasNOME_PLANO.AsString := 'ASH';   // Nome do Plano
    ////////////////// DMSaude.cdsGuiasTIPO_GUIA.AsString := 'Consulta';

    DMSaude.cdsGuiasGRAU_RISCO.AsString := Edit7.Text;  // Grau de Risco
   { if(Edit7.Text ='')then
    begin
      MessageDlg('Preencha o Grau de Risco', mtWarning, [mbOK], 0);
      Edit7.SetFocus;
      Exit;
    end;
   }
     // ASO

    if(dbrTipo.ItemIndex = 1) then     // apto inapto
    DMSaude.cdsGuiasAPTO.AsInteger := 1 ;
    if(dbrTipo.ItemIndex = 2) then
    DMSaude.cdsGuiasAPTO.AsInteger := 2 ;
     // FIM ASO
    DMSaude.cdsGuiasCODCLIENTE.AsInteger      := StrToInt(DMSaude.cdsDependenteRA.AsString);
    DMSaude.cdsGuiasNOME_FUNCIONARIO.AsString := DMSaude.cdsDependenteNOMECLIENTE.AsString;
    ////////////////DMSaude.cdsGuiasNUMERO_CARTAO_BENEFICIARIO.AsString := DMSaude.cdsDependenteRA.AsString;

    DMSaude.cdsGuiasRG.AsString              := DMSaude.cdsDependenteINSCESTADUAL.AsString;
    DMSaude.cdsGuiasCPF.AsString             := DMSaude.cdsDependenteCNPJ.AsString;
    DMSaude.cdsGuiasCARGO.AsString           := DMSaude.cdsDependenteCONTATO.AsString;
    DMSaude.cdsGuiasFUNCAO.AsString          := DMSaude.cdsDependenteMARCA.AsString;
    DMSaude.cdsGuiasPIS.AsString             := DMSaude.cdsDependenteIP.AsString;
    DMSaude.cdsGuiasNOME_EMPRESA.AsString    := DMSaude.cdsDependenteRAZAOSOCIAL.AsString;

//if(PageControl1.ActivePage = TabSheet3)then
//begin
    //inicio aba 1

      DMSaude.cdsGuiasCKQ.AsString := DBEdit77.Text;
      DMSaude.cdsGuiasQUEIXAP.Text := DBEdit26.Text;

      DMSaude.cdsGuiasCKH.AsString                    := DBEdit78.Text;
      DMSaude.cdsGuiasHISTORICOMEDICO.AsString        := DBEdit27.Text;

      DMSaude.cdsGuiasCKA.AsString := DBEdit79.Text;


    if(DMSaude.cdsGuiasCKA.AsString = 'S')then
    begin
      if(radAlcool.ItemIndex = 0) then
      Dmsaude.cdsGuiasALCOOL.AsString := '0' ;
      if(radAlcool.ItemIndex = 1) then
      Dmsaude.cdsGuiasALCOOL.AsString := '1' ;
      if(radAlcool.ItemIndex = 2) then
      Dmsaude.cdsGuiasALCOOL.AsString := '2' ;
    end;


      DMSaude.cdsGuiasFUMO.AsString     := DBEdit81.Text;

      DMSaude.cdsGuiasCKAF.AsString     := DBEdit80.Text;
      DMSaude.cdsGuiasANTECEDENTESFAMILIARES.AsString := DBEdit28.Text;

      DMSaude.cdsGuiasCKC.AsString        := DBEdit82.Text;
      DMSaude.cdsGuiasCICATRIZES.AsString := DBEdit29.Text;

      DMSaude.cdsGuiasCKAPE.AsString                  := DBEdit83.Text;
      DMSaude.cdsGuiasANTECEDENTESPESSOAIS.AsString   := DBEdit30.Text;

      DMSaude.cdsGuiasCKACI.AsString                  := DBEdit84.Text;
      DMSaude.cdsGuiasACIDENTES.AsString              := DBEdit42.Text;

      DMSaude.cdsGuiasCKOD.AsString     := DBEdit85.Text;

      DMSaude.cdsGuiasCKOE.AsString     := DBEdit86.Text;


      DMSaude.cdsGuiasPESO.AsString                     := DBEdit31.Text;
      DMSaude.cdsGuiasALTURA.AsString                   := DBEdit32.Text;
      DMSaude.cdsGuiasIMC.AsString                      := DBEdit33.Text;
      DMSaude.cdsGuiasPA.AsString                       := DBEdit35.Text;
      DMSaude.cdsGuiasFC.AsString                       := DBEdit36.Text;

      DMSaude.cdsGuiasCKAPV.AsString     := DBEdit87.Text;
      DMSaude.cdsGuiasMOLESTIA.AsString               := DBEdit34.Text;

      DMSaude.cdsGuiasCKP.AsString       := DBEdit88.Text;
      DMSaude.cdsGuiasPELE.AsString                   := DBEdit37.Text;

      DMSaude.cdsGuiasCKAPA.AsString     := DBEdit89.Text;
      DMSaude.cdsGuiasOUVIDOS.AsString                := DBEdit38.Text;

      DMSaude.cdsGuiasCKCP.AsString      := DBEdit90.Text;
      DMSaude.cdsGuiasCABECA.AsString                 := DBEdit39.Text;

      DMSaude.cdsGuiasCKABD.AsString     := DBEdit91.Text;
      DMSaude.cdsGuiasABDOMEN.AsString                := DBEdit40.Text;

      DMSaude.cdsGuiasCKAP.AsString     := DBEdit92.Text;
      DMSaude.cdsGuiasAP.AsString                     := DBEdit41.Text;

      DMSaude.cdsGuiasCKACV.AsString     := DBEdit93.Text;
      DMSaude.cdsGuiasAPCARDIO.AsString               := DBEdit43.Text;

      DMSaude.cdsGuiasCKAPN.AsString     := DBEdit94.Text;
      DMSaude.cdsGuiasSISTEMANERVOSO.AsString         := DBEdit44.Text;

      DMSaude.cdsGuiasCKAGU.AsString     := DBEdit95.Text;
      DMSaude.cdsGuiasAPURO.AsString                  := DBEdit45.Text;

      DMSaude.cdsGuiasCKAOM.AsString     := DBEdit96.Text;
      DMSaude.cdsGuiasAOSTEO.AsString                 := DBEdit46.Text;

    DMSaude.cdsGuiasOBSFICHA.AsString                 := DBEdit47.Text;

//end;
    //fim aba 1



    if(radTipo.ItemIndex = 0) then
    Dmsaude.cdsGuiasTIPO.AsString := '0' ;
    if(radTipo.ItemIndex = 1) then
    Dmsaude.cdsGuiasTIPO.AsString := '1' ;
    if(radTipo.ItemIndex = 2) then
    Dmsaude.cdsGuiasTIPO.AsString := '2' ;
    if(radTipo.ItemIndex = 3) then
    Dmsaude.cdsGuiasTIPO.AsString := '3' ;
    if(radTipo.ItemIndex = 4) then
    Dmsaude.cdsGuiasTIPO.AsString := '4' ;

    if(radTipo1.ItemIndex = 0) then
    Dmsaude.cdsGuiasTIPO.AsString := '0' ;
    if(radTipo1.ItemIndex = 1) then
    Dmsaude.cdsGuiasTIPO.AsString := '1' ;
    if(radTipo1.ItemIndex = 2) then
    Dmsaude.cdsGuiasTIPO.AsString := '2' ;
    if(radTipo1.ItemIndex = 3) then
    Dmsaude.cdsGuiasTIPO.AsString := '3' ;
    if(radTipo1.ItemIndex = 4) then
    Dmsaude.cdsGuiasTIPO.AsString := '4' ;
    if(radTipo1.ItemIndex = 5) then
    Dmsaude.cdsGuiasTIPO.AsString := '5' ;
    if(radTipo1.ItemIndex = 6) then
    Dmsaude.cdsGuiasTIPO.AsString := '6' ;
    // abaixo 07/11  ALTERADOS

//if(PageControl1.ActivePage = TabSheet4)then
//begin

   // if(DBCheckBox66.Checked = True)then
    DMSaude.cdsGuiasA.Value := DBEdit75.Text;
   // else DMSaude.cdsGuiasA.Value := 'N';

   // if(DBCheckBox67.Checked = True)then
    DMSaude.cdsGuiasI.Value := DBEdit76.Text;
  //  else DMSaude.cdsGuiasI.Value := 'N';

  //  if(DBCheckBox68.Checked = True)then
    DMSaude.cdsGuiasADA.Value := DBEdit140.Text;
  //  else DMSaude.cdsGuiasADA.Value := 'N';

  //  if(DBCheckBox69.Checked = True)then
    DMSaude.cdsGuiasAIA.Value := DBEdit141.Text;
  //  else DMSaude.cdsGuiasAIA.Value := 'N';

  //  if(DBCheckBox71.Checked = True)then
    DMSaude.cdsGuiasPAIR.Value := DBEdit142.Text;
  //  else DMSaude.cdsGuiasPAIR.Value := 'N';

  //  if(DBCheckBox70.Checked = True)then
    DMSaude.cdsGuiasDANO.Value := DBEdit143.Text;
  //  else DMSaude.cdsGuiasDANO.Value := 'N';



   ////   DMSaude.cdsGuiasCKA14.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO14.Text := DBEdit48.Text;

   ////    DMSaude.cdsGuiasCKA15.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO15.Text := DBEdit49.Text;

  ////     DMSaude.cdsGuiasCKA16.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO16.Text := DBEdit50.Text;

  ////     DMSaude.cdsGuiasCKA17.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO17.Text := DBEdit51.Text;

  ////     DMSaude.cdsGuiasCKA18.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO18.Text := DBEdit52.Text;

  ////     DMSaude.cdsGuiasCKA19.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO19.Text := DBEdit53.Text;

  ////     DMSaude.cdsGuiasCKA20.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO20.Text := DBEdit54.Text;

 ////      DMSaude.cdsGuiasCKA21.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO21.Text := DBEdit55.Text;

 ////      DMSaude.cdsGuiasCKA22.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO22.Text := DBEdit56.Text;

  ////     DMSaude.cdsGuiasCKA23.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO23.Text := DBEdit57.Text;

   ////    DMSaude.cdsGuiasCKA24.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO24.Text := DBEdit58.Text;

  ////     DMSaude.cdsGuiasCKA25.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO25.Text := DBEdit59.Text;

  ////     DMSaude.cdsGuiasCKA26.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO26.Text := DBEdit60.Text;

 ////      DMSaude.cdsGuiasCKA27.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO27.Text := DBEdit61.Text;

  ////     DMSaude.cdsGuiasCKA28.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO28.Text := DBEdit62.Text;

  ////     DMSaude.cdsGuiasCKA29.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO29.Text := DBEdit63.Text;

 ////      DMSaude.cdsGuiasCKA30.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO30.Text := DBEdit64.Text;

 ////      DMSaude.cdsGuiasCKA31.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO31.Text := DBEdit65.Text;

 ////      DMSaude.cdsGuiasCKA32.AsString     := 'S';
      DMSaude.cdsGuiasALTERADO32.Text := DBEdit66.Text;

 ////      DMSaude.cdsGuiasCKA33.AsString     := 'S';
      DMSaude.cdsGuiasEXAME33.Text := DBEdit70.Text;
      DMSaude.cdsGuiasALTERADO33.Text := DBEdit67.Text;

 ////      DMSaude.cdsGuiasCKA34.AsString     := 'S';
      DMSaude.cdsGuiasEXAME34.Text := DBEdit71.Text;
      DMSaude.cdsGuiasALTERADO34.Text := DBEdit68.Text;

  ////     DMSaude.cdsGuiasCKA35.AsString     := 'S';
      DMSaude.cdsGuiasEXAME35.Text := DBEdit72.Text;
      DMSaude.cdsGuiasALTERADO35.Text := DBEdit69.Text;


//end;
    // acima 07/11
    if(JvDateEdit1.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA1.AsDateTime := JvDateEdit1.Date;
      DMSaude.cdsGuiasCK1.AsString     := 'S';
      DMSaude.cdsGuiasEXAME1.Text := 'Exame Clinico';   // 1
    end;
  {
    if((JvDateEdit2.Date <> 0 ) or (DBEdit97.Text <> '0' ))then
    begin
      if(DBEdit97.Text <> '0' )then
      JvDateEdit2.Date := DBEdit97.Text;
      if(JvDateEdit2.Date <> 0 )then
      DBEdit97.Text := JvDateEdit2.Date;
      DMSaude.cdsGuiasDATA14.AsDateTime := JvDateEdit14.Date;
      DMSaude.cdsGuiasCK14.AsString     := 'S';
      DMSaude.cdsGuiasEXAME14.Text := 'Hemograma';
      DMSaude.cdsGuiasDATA2.AsDateTime := JvDateEdit2.Date;
      DMSaude.cdsGuiasCK2.AsString     := 'S';
      DMSaude.cdsGuiasEXAME2.Text := 'Hemograma';       // 2  14
    end;
   }

      DMSaude.cdsGuiasDATA15.AsDateTime := StrToDate(DBEdit98.Text);
      DMSaude.cdsGuiasCK15.AsString     := 'S';
      DMSaude.cdsGuiasEXAME15.Text := 'Plaquetas';      // 15

  {
    if((JvDateEdit3.Date <> 0) or (JvDateEdit16.Date <> 0 ))then
    begin
      if(JvDateEdit16.Date <> 0 )then
        JvDateEdit3.Date := JvDateEdit16.Date;
      if(JvDateEdit3.Date <> 0 )then
      JvDateEdit16.Date := JvDateEdit3.Date;
        DMSaude.cdsGuiasDATA16.AsDateTime := JvDateEdit16.Date;
        DMSaude.cdsGuiasCK16.AsString     := 'S';
        DMSaude.cdsGuiasEXAME16.Text := 'Colinesterase';

      DMSaude.cdsGuiasDATA3.AsDateTime := JvDateEdit3.Date;
      DMSaude.cdsGuiasCK3.AsString     := 'S';
      DMSaude.cdsGuiasEXAME3.Text := 'Colinesterase';   // 3  16
    end;

    if((JvDateEdit4.Date <> 0 )or (JvDateEdit17.Date <> 0 ))then
    begin
      if(JvDateEdit17.Date <> 0 )then
        JvDateEdit4.Date := JvDateEdit17.Date;
      if(JvDateEdit4.Date <> 0 )then
        JvDateEdit17.Date := JvDateEdit4.Date;
        DMSaude.cdsGuiasDATA17.AsDateTime := JvDateEdit17.Date;
        DMSaude.cdsGuiasCK17.AsString     := 'S';
        DMSaude.cdsGuiasEXAME17.Text := 'Pratoparasitologico';

      DMSaude.cdsGuiasDATA4.AsDateTime := JvDateEdit4.Date;
      DMSaude.cdsGuiasCK4.AsString     := 'S';
      DMSaude.cdsGuiasEXAME4.Text := 'Pratoparasitologico';   // 4  17
    end;
   }

      DMSaude.cdsGuiasDATA18.AsDateTime := StrToDate(DBEdit101.Text);
      DMSaude.cdsGuiasCK18.AsString     := 'S';
      DMSaude.cdsGuiasEXAME18.Text := 'AST';                  // 18

      DMSaude.cdsGuiasDATA19.AsDateTime := StrToDate(DBEdit102.Text);
      DMSaude.cdsGuiasCK19.AsString     := 'S';
      DMSaude.cdsGuiasEXAME19.Text := 'ALT';                 //  19

  {  if((JvDateEdit8.Date <> 0 )or(JvDateEdit20.Date <> 0))then
    begin
      if(JvDateEdit20.Date <> 0 )then
        JvDateEdit8.Date := JvDateEdit20.Date;
      if(JvDateEdit8.Date <> 0 )then
        JvDateEdit20.Date := JvDateEdit8.Date;
        DMSaude.cdsGuiasDATA20.AsDateTime := JvDateEdit20.Date;
        DMSaude.cdsGuiasCK20.AsString     := 'S';
        DMSaude.cdsGuiasEXAME20.Text := 'Audiometria';

      DMSaude.cdsGuiasDATA8.AsDateTime := JvDateEdit8.Date;
      DMSaude.cdsGuiasCK8.AsString     := 'S';
      DMSaude.cdsGuiasEXAME8.Text := 'Audiometria';         // 8  20
    end;
    if((JvDateEdit9.Date <> 0 )or(JvDateEdit21.Date <> 0 ))then
    begin
      if(JvDateEdit21.Date <> 0 )then
        JvDateEdit9.Date := JvDateEdit21.Date;
      if(JvDateEdit9.Date <> 0 )then
        JvDateEdit21.Date := JvDateEdit9.Date;
        DMSaude.cdsGuiasDATA21.AsDateTime := JvDateEdit21.Date;
        DMSaude.cdsGuiasCK21.AsString     := 'S';
        DMSaude.cdsGuiasEXAME21.Text := 'RX Tórax';
      DMSaude.cdsGuiasDATA9.AsDateTime := JvDateEdit9.Date;
      DMSaude.cdsGuiasCK9.AsString     := 'S';
      DMSaude.cdsGuiasEXAME9.Text := 'RX Tórax';           // 9  21
    end;
    if((JvDateEdit10.Date <> 0 )or (JvDateEdit22.Date <> 0 ))then
    begin
      if(JvDateEdit22.Date <> 0 )then
        JvDateEdit10.Date := JvDateEdit22.Date;
      if(JvDateEdit10.Date <> 0 )then
        JvDateEdit22.Date := JvDateEdit10.Date;
        DMSaude.cdsGuiasDATA22.AsDateTime := JvDateEdit22.Date;
        DMSaude.cdsGuiasCK22.AsString     := 'S';
        DMSaude.cdsGuiasEXAME22.Text := 'ECG';

      DMSaude.cdsGuiasDATA10.AsDateTime := JvDateEdit10.Date;
      DMSaude.cdsGuiasCK10.AsString     := 'S';
      DMSaude.cdsGuiasEXAME10.Text := 'ECG';             // 10  22
    end;
   }

      DMSaude.cdsGuiasDATA23.AsDateTime := StrToDate(DBEdit106.Text);;
      DMSaude.cdsGuiasCK23.AsString     := 'S';
      DMSaude.cdsGuiasEXAME23.Text := 'Urina I';             // 23

      DMSaude.cdsGuiasDATA24.AsDateTime := StrToDate(DBEdit107.Text);
      DMSaude.cdsGuiasCK24.AsString     := 'S';
      DMSaude.cdsGuiasEXAME24.Text := 'Gama GT';             // 24

   { if((JvDateEdit7.Date <> 0 ) or (JvDateEdit25.Date <> 0 ))then
    begin
      if(JvDateEdit25.Date <> 0 )then
        JvDateEdit7.Date := JvDateEdit25.Date;
      if(JvDateEdit7.Date <> 0 )then
        JvDateEdit25.Date := JvDateEdit7.Date;
        DMSaude.cdsGuiasDATA25.AsDateTime := JvDateEdit25.Date;
        DMSaude.cdsGuiasCK25.AsString     := 'S';
        DMSaude.cdsGuiasEXAME25.Text := 'Espirometria';
      DMSaude.cdsGuiasDATA7.AsDateTime := JvDateEdit7.Date;
      DMSaude.cdsGuiasCK7.AsString     := 'S';
      DMSaude.cdsGuiasEXAME7.Text := 'Espirometria';     // 7  25
    end;
    }

      DMSaude.cdsGuiasDATA26.AsDateTime := StrToDate(DBEdit109.Text);
      DMSaude.cdsGuiasCK26.AsString     := 'S';
      DMSaude.cdsGuiasEXAME26.Text := 'Ac Metil Hipúrico';   // 26

      DMSaude.cdsGuiasDATA27.AsDateTime := StrToDate(DBEdit110.Text);
      DMSaude.cdsGuiasCK27.AsString     := 'S';
      DMSaude.cdsGuiasEXAME27.Text := 'Ac Hipúrico';        // 27

      DMSaude.cdsGuiasDATA28.AsDateTime := StrToDate(DBEdit111.Text);
      DMSaude.cdsGuiasCK28.AsString     := 'S';
      DMSaude.cdsGuiasEXAME28.Text := 'Chumbo';               // 28

      DMSaude.cdsGuiasDATA29.AsDateTime :=  StrToDate(DBEdit112.Text);
      DMSaude.cdsGuiasCK29.AsString     := 'S';
      DMSaude.cdsGuiasEXAME29.Text := 'RX Coluna Lombar';     // 29

   {
    if((JvDateEdit6.Date <> 0) or (JvDateEdit30.Date <> 0 ))then
    begin
      if(JvDateEdit30.Date <> 0 )then
        JvDateEdit6.Date := JvDateEdit30.Date;
      if(JvDateEdit6.Date <> 0 )then
        JvDateEdit30.Date := JvDateEdit6.Date;
        DMSaude.cdsGuiasDATA30.AsDateTime := JvDateEdit30.Date;
        DMSaude.cdsGuiasCK30.AsString     := 'S';
        DMSaude.cdsGuiasEXAME30.Text := 'VDRL';
      DMSaude.cdsGuiasDATA6.AsDateTime := JvDateEdit6.Date;
      DMSaude.cdsGuiasCK6.AsString     := 'S';
      DMSaude.cdsGuiasEXAME6.Text := 'VDRL';              //  6  30
    end;
    if((JvDateEdit5.Date <> 0) or (JvDateEdit31.Date <> 0 ))then
    begin
      if(JvDateEdit31.Date <> 0 )then
        JvDateEdit5.Date := JvDateEdit31.Date;
      if(JvDateEdit5.Date <> 0 )then
        JvDateEdit31.Date := JvDateEdit5.Date;
        DMSaude.cdsGuiasDATA31.AsDateTime := JvDateEdit31.Date;
        DMSaude.cdsGuiasCK31.AsString     := 'S';
        DMSaude.cdsGuiasEXAME31.Text := 'Coprocultura';
      DMSaude.cdsGuiasDATA5.AsDateTime := JvDateEdit5.Date;
      DMSaude.cdsGuiasCK5.AsString     := 'S';
      DMSaude.cdsGuiasEXAME5.Text := 'Coprocultura';        // 5  31
    end;

    if((JvDateEdit11.Date <> 0 )or(JvDateEdit32.Date <> 0 ))then
    begin
      if(JvDateEdit32.Date <> 0 )then
        JvDateEdit11.Date := JvDateEdit32.Date;
      if(JvDateEdit11.Date <> 0 )then
        JvDateEdit32.Date := JvDateEdit11.Date;
        DMSaude.cdsGuiasDATA32.AsDateTime := JvDateEdit32.Date;
        DMSaude.cdsGuiasCK32.AsString     := 'S';
        DMSaude.cdsGuiasEXAME32.Text := 'EEG';

      DMSaude.cdsGuiasDATA11.AsDateTime := JvDateEdit11.Date;
      DMSaude.cdsGuiasCK11.AsString     := 'S';
      DMSaude.cdsGuiasEXAME11.Text := 'EEG';             // 11  32
    end;
   }
    if(JvDateEdit12.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA12.AsDateTime := JvDateEdit12.Date;
      DMSaude.cdsGuiasCK12.AsString     := 'S';
      DMSaude.cdsGuiasEXAME12.Text := 'Oftalmo/Ac.Visual';    // 12
    end;
   {
    if((JvDateEdit13.Date <> 0 )or (JvDateEdit33.Date <> 0 ))then
    begin
      if(JvDateEdit33.Date <> 0 )then
        JvDateEdit13.Date := JvDateEdit33.Date;
      if(JvDateEdit13.Date <> 0 )then
        JvDateEdit33.Date := JvDateEdit13.Date;
        DMSaude.cdsGuiasDATA33.AsDateTime := JvDateEdit33.Date;
        DMSaude.cdsGuiasCK33.AsString     := 'S';
        DMSaude.cdsGuiasEXAME33.Text := DBEdit70.Text;   // outros   1
        DMSaude.cdsGuiasALTERADO33.Text := DBEdit67.Text;   // alterado 1
        DMSaude.cdsGuiasDATA13.AsDateTime := JvDateEdit13.Date;
      DMSaude.cdsGuiasCK13.AsString     := 'S';
      DMSaude.cdsGuiasEXAME13.Text := DBEdit73.Text;   // outros1  13  33
    end;
    }
    if(DBEdit117.Text <> '  /  /    ' )then
    begin
      DMSaude.cdsGuiasDATA34.AsDateTime := StrToDate(DBEdit117.Text);
      DMSaude.cdsGuiasCK34.AsString     := 'S';
      DMSaude.cdsGuiasEXAME34.Text      := DBEdit71.Text;     // outros2    34
      DMSaude.cdsGuiasALTERADO34.Text   := DBEdit68.Text;      // alterado 2
    end;

    if(DBEdit118.Text <> '  /  /    ' )then
    begin
      DMSaude.cdsGuiasDATA35.AsDateTime := StrToDate(DBEdit118.Text);
      DMSaude.cdsGuiasCK35.AsString     := 'S';
      DMSaude.cdsGuiasEXAME35.Text      := DBEdit72.Text;   // outros3      35
      DMSaude.cdsGuiasALTERADO35.Text   := DBEdit69.Text;   // alterado 3
    end;
                                    /////////////////
    if(CheckBox13.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO1.Text := 'Anexo 1 Ruido Cont/ Interminitente';
      DMSaude.cdsGuiasCKANEXO1.AsString     := 'S';      // 13
    end;
    if(CheckBox14.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO2.Text := 'Anexo 2 Ruidos de Impacto';
      DMSaude.cdsGuiasCKANEXO2.AsString     := 'S';
    end;
    if(CheckBox15.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO3.Text := 'Anexo 3 Calor';
      DMSaude.cdsGuiasCKANEXO3.AsString     := 'S';
    end;
    if(CheckBox16.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO4.Text := 'Anexo 5 Radiações Ionizantes';
      DMSaude.cdsGuiasCKANEXO4.AsString     := 'S';
    end;
    if(CheckBox17.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO5.Text := 'Anexo 6 Hiperbarica';
      DMSaude.cdsGuiasCKANEXO5.AsString     := 'S';
    end;
    if(CheckBox18.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO6.Text := 'Anexo 9 Frio';
      DMSaude.cdsGuiasCKANEXO6.AsString     := 'S';
    end;
    if(CheckBox19.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO7.Text := 'Anexo 10 Umidade';
      DMSaude.cdsGuiasCKANEXO7.AsString     := 'S';
    end;
    if(CheckBox20.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO8.Text := 'Anexo 11 Agentes Quimicos';
      DMSaude.cdsGuiasCKANEXO8.AsString     := 'S';
    end;
    if(CheckBox21.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO9.Text := 'Anexo 12 Poeiras';
      DMSaude.cdsGuiasCKANEXO9.AsString     := 'S';
    end;
    if(CheckBox22.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO10.Text := 'Anexo 14 Agentes Biologicos';
      DMSaude.cdsGuiasCKANEXO10.AsString     := 'S';
    end;
    if(CheckBox23.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO11.Text := 'Osteo Muscular';
      DMSaude.cdsGuiasCKANEXO11.AsString     := 'S';
    end;
    if(CheckBox24.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO12.Text := 'Ergonômico';
      DMSaude.cdsGuiasCKANEXO12.AsString     := 'S';
    end;
    if(CheckBox25.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO13.Text := 'Apto Trabalhar em Altura';
      DMSaude.cdsGuiasCKANEXO13.AsString     := 'S';
    end;
    if(CheckBox26.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO14.Text := 'Apto Op. de Empilhadeira';
      DMSaude.cdsGuiasCKANEXO14.AsString     := 'S';
    end;
    if(CheckBox27.Checked = True)then
    begin
      DMSaude.cdsGuiasANEXO15.Text := 'Manipular Alimentos';
      DMSaude.cdsGuiasCKANEXO15.AsString     := 'S';
    end;



    DMSaude.cdsGuiasNOME_EXECUTANTE.AsString      := DBComboBox3.Text;
    DMSaude.cdsGuiasCODIGO_ESPECIALIDADE.AsString := cdsReprCD_CBO_SAUDE.AsString;
    DMSaude.cdsGuiasNUMERO_PROFISSIONAL.AsString  := cdsReprNUMERO.AsString;
    DMSaude.cdsGuiasSIGLA_UNIDADE.AsString        := cdsReprUF.AsString;
    DMSaude.cdsGuiasSIGLA_CONSELHO.AsString       := cdsReprCOMPLEMENTO.AsString;




    if(dm.c_6_genid.Active) then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_GUIAS, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DMSaude.cdsGuiasID_GUIAS.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;

    DMSaude.cdsGuias.ApplyUpdates(0);


   // BitBtn6.Enabled := False;
    cdsBuscaGuia.Close;
    if(not cdsBuscaGuia.Active) then
    cdsBuscaGuia.Params[0].AsString := DMSaude.cdsDependenteRA.AsString;
    cdsBuscaGuia.Open;
    cdsBuscaGuia.Last;
    MessageDlg('Guia Gerado Com Sucesso .', mtInformation, [mbOK], 0);
  //  dsBuscaGuia.DataSet.Last;

  end;

  /// Editar  +++++++++++++++++++++++++++++++++++++++++++++++++++++ \\\\\

 if (cdsBuscaGuia.State in [dsEdit]) then
  //if (DMSaude.cdsGuias.State in [dsEdit]) then
  begin


    // inicio TabSheet4
    if(PageControl1.ActivePage = TabSheet4)then
    begin
      {
      if(DBCheckBox22.Checked = True )then
      CK14 := 'S'
      else CK14 := 'N';
      if(DBCheckBox23.Checked = True )then
      CK15 := 'S'
      else CK15 := 'N';
      if(DBCheckBox24.Checked = True )then
      CK16 := 'S'
      else CK16 := 'N';
      if(DBCheckBox25.Checked = True )then
      CK17 := 'S'
      else CK17 := 'N';
      if(DBCheckBox26.Checked = True )then
      CK18 := 'S'
      else CK18 := 'N';
      if(DBCheckBox27.Checked = True )then
      CK19 := 'S'
      else CK19 := 'N';
      if(DBCheckBox28.Checked = True )then
      CK20 := 'S'
      else CK20 := 'N';
      if(DBCheckBox29.Checked = True )then
      CK21 := 'S'
      else CK21 := 'N';
      if(DBCheckBox30.Checked = True )then
      CK22 := 'S'
      else CK22 := 'N';
      if(DBCheckBox31.Checked = True )then
      CK23 := 'S'
      else CK23 := 'N';
      if(DBCheckBox32.Checked = True )then
      CK24 := 'S'
      else CK24 := 'N';
      if(DBCheckBox33.Checked = True )then
      CK25 := 'S'
      else CK25 := 'N';
      if(DBCheckBox34.Checked = True )then
      CK26 := 'S'
      else CK26 := 'N';
      if(DBCheckBox35.Checked = True )then
      CK27 := 'S'
      else CK27 := 'N';
      if(DBCheckBox36.Checked = True )then
      CK28 := 'S'
      else CK28 := 'N';
      if(DBCheckBox37.Checked = True )then
      CK29 := 'S'
      else CK29 := 'N';
      if(DBCheckBox38.Checked = True )then
      CK30 := 'S'
      else CK30 := 'N';
      if(DBCheckBox39.Checked = True )then
      CK31 := 'S'
      else CK31 := 'N';
      if(DBCheckBox40.Checked = True )then
      CK32 := 'S'
      else CK32 := 'N';
      if(DBCheckBox41.Checked = True )then
      CK33 := 'S'
      else CK33 := 'N';
      if(DBCheckBox42.Checked = True )then
      CK34 := 'S'
      else CK34 := 'N';
      if(DBCheckBox43.Checked = True )then
      CK35 := 'S'
      else CK35 := 'N';
      }
      {
      if(DBCheckBox44.Checked = True )then
      CK36 := 'S'
      else CK36 := 'N';
      if(DBCheckBox45.Checked = True )then
      CK37 := 'S'
      else CK37 := 'N';
      if(DBCheckBox46.Checked = True )then
      CK38 := 'S'
      else CK38 := 'N';
      if(DBCheckBox47.Checked = True )then
      CK39 := 'S'
      else CK39 := 'N';
      if(DBCheckBox48.Checked = True )then
      CK40 := 'S'
      else CK40 := 'N';
      if(DBCheckBox49.Checked = True )then
      CK41 := 'S'
      else CK41 := 'N';
      if(DBCheckBox50.Checked = True )then
      CK42 := 'S'
      else CK42 := 'N';
      if(DBCheckBox51.Checked = True )then
      CK43 := 'S'
      else CK43 := 'N';
      if(DBCheckBox52.Checked = True )then
      CK44 := 'S'
      else CK44 := 'N';
      if(DBCheckBox53.Checked = True )then
      CK45 := 'S'
      else CK45 := 'N';
      if(DBCheckBox54.Checked = True )then
      CK46 := 'S'
      else CK46 := 'N';
      if(DBCheckBox55.Checked = True )then
      CK47 := 'S'
      else CK47 := 'N';
      if(DBCheckBox56.Checked = True )then
      CK48 := 'S'
      else CK48 := 'N';
      if(DBCheckBox57.Checked = True )then
      CK49 := 'S'
      else CK49 := 'N';
      if(DBCheckBox58.Checked = True )then
      CK50 := 'S'
      else CK50 := 'N';
      if(DBCheckBox59.Checked = True )then
      CK51 := 'S'
      else CK51 := 'N';
      if(DBCheckBox60.Checked = True )then
      CK52 := 'S'
      else CK52 := 'N';
      if(DBCheckBox61.Checked = True )then
      CK53 := 'S'
      else CK53 := 'N';
      if(DBCheckBox62.Checked = True )then
      CK54 := 'S'
      else CK54 := 'N';
      if(DBCheckBox63.Checked = True )then
      CK55 := 'S'
      else CK55 := 'N';
      if(DBCheckBox64.Checked = True )then
      CK56 := 'S'
      else CK56 := 'N';
      if(DBCheckBox65.Checked = True )then
      CK57 := 'S'
      else CK57 := 'N';
      }
     // if(DBCheckBox66.Checked = True )then
      vA := DBEdit74.Text;
     // else vA := 'N';
    //  if(DBCheckBox67.Checked = True )then
      vI := DBEdit76.Text;
    //  else vI := 'N';
    //  if(DBCheckBox68.Checked = True )then
      vADA := DBEdit140.Text;
    //  else vADA := 'N';
    //  if(DBCheckBox69.Checked = True )then
      vAIA := DBEdit141.Text;
    //  else vAIA := 'N';
    //  if(DBCheckBox70.Checked = True )then
      vDANO := DBEdit143.Text;
    //  else vDANO := 'N';
    //  if(DBCheckBox71.Checked = True )then
      vPAIR := DBEdit142.Text;
    //  else vPAIR := 'N';

      data1  := StrToDateTime(DBEdit97.Text);
      data2  := StrToDateTime(DBEdit98.Text);
      data3  := StrToDateTime(DBEdit99.Text);
      data4  := StrToDateTime(DBEdit100.Text);
      data5  := StrToDateTime(DBEdit101.Text);
      data6  := StrToDateTime(DBEdit102.Text);
      data7  := StrToDateTime(DBEdit103.Text);
      data8  := StrToDateTime(DBEdit104.Text);
      data9  := StrToDateTime(DBEdit105.Text);
      data10 := StrToDateTime(DBEdit106.Text);
      data11 := StrToDateTime(DBEdit107.Text);
      data12 := StrToDateTime(DBEdit108.Text);
      data13 := StrToDateTime(DBEdit109.Text);
      data14 := StrToDateTime(DBEdit110.Text);
      data15 := StrToDateTime(DBEdit111.Text);
      data16 := StrToDateTime(DBEdit112.Text);
      data17 := StrToDateTime(DBEdit113.Text);
      data18 := StrToDateTime(DBEdit114.Text);
      data19 := StrToDateTime(DBEdit115.Text);
      data20 := StrToDateTime(DBEdit116.Text);
      data21 := StrToDateTime(DBEdit117.Text);
      data22 := StrToDateTime(DBEdit118.Text);

      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET CK14 = ' +  QuotedStr(DBEdit75.Text) +
      ', CK15 = ' +  QuotedStr(DBEdit119.Text) +
      ', CK16 = ' +  QuotedStr(DBEdit120.Text) +
      ', CK17 = ' +  QuotedStr(DBEdit121.Text) +
      ', CK18 = ' +  QuotedStr(DBEdit122.Text) +
      ', CK19 = ' +  QuotedStr(DBEdit123.Text) +
      ', CK20 = ' +  QuotedStr(DBEdit124.Text) +
      ', CK21 = ' +  QuotedStr(DBEdit125.Text) +
      ', CK22 = ' +  QuotedStr(DBEdit126.Text) +
      ', CK23 = ' +  QuotedStr(DBEdit127.Text) +
      ', CK24 = ' +  QuotedStr(DBEdit128.Text) +
      ', CK25 = ' +  QuotedStr(DBEdit129.Text) +
      ', CK26 = ' +  QuotedStr(DBEdit130.Text) +
      ', CK27 = ' +  QuotedStr(DBEdit131.Text) +
      ', CK28 = ' +  QuotedStr(DBEdit132.Text) +
      ', CK29 = ' +  QuotedStr(DBEdit133.Text) +
      ', CK30 = ' +  QuotedStr(DBEdit134.Text) +
      ', CK31 = ' +  QuotedStr(DBEdit135.Text) +
      ', CK32 = ' +  QuotedStr(DBEdit136.Text) +
      ', CK33 = ' +  QuotedStr(DBEdit137.Text) +
      ', CK34 = ' +  QuotedStr(DBEdit138.Text) +
      ', CK35 = ' +  QuotedStr(DBEdit139.Text) +
     {
      ', CKA14 = ' +  QuotedStr(CK36) +
      ', CKA15 = ' +  QuotedStr(CK37) +
      ', CKA16 = ' +  QuotedStr(CK38) +
      ', CKA17 = ' +  QuotedStr(CK39) +
      ', CKA18 = ' +  QuotedStr(CK40) +
      ', CKA19 = ' +  QuotedStr(CK41) +
      ', CKA20 = ' +  QuotedStr(CK42) +
      ', CKA21 = ' +  QuotedStr(CK43) +
      ', CKA22 = ' +  QuotedStr(CK44) +
      ', CKA23 = ' +  QuotedStr(CK45) +
      ', CKA24 = ' +  QuotedStr(CK46) +
      ', CKA25 = ' +  QuotedStr(CK47) +
      ', CKA26 = ' +  QuotedStr(CK48) +
      ', CKA27 = ' +  QuotedStr(CK49) +
      ', CKA28 = ' +  QuotedStr(CK50) +
      ', CKA29 = ' +  QuotedStr(CK51) +
      ', CKA30 = ' +  QuotedStr(CK52) +
      ', CKA31 = ' +  QuotedStr(CK53) +
      ', CKA32 = ' +  QuotedStr(CK54) +
      ', CKA33 = ' +  QuotedStr(CK55) +
      ', CKA34 = ' +  QuotedStr(CK56) +
      ', CKA35 = ' +  QuotedStr(CK57) +
     }
      ', A     = ' +  QuotedStr(vA)   +
      ', I     = ' +  QuotedStr(vI)   +
      ', ADA   = ' +  QuotedStr(vADA) +
      ', AIA   = ' +  QuotedStr(vAIA) +
      ', DANO  = ' +  QuotedStr(vDANO)+
      ', PAIR  = ' +  QuotedStr(vPAIR)+

      ', DATA14 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data1))  +
      ', DATA15 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data2))  +
      ', DATA16 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data3))  +
      ', DATA17 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data4))  +
      ', DATA18 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data5))  +
      ', DATA19 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data6))  +
      ', DATA20 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data7))  +
      ', DATA21 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data8))  +
      ', DATA22 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data9))  +
      ', DATA23 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data10))  +
      ', DATA24 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data11))  +
      ', DATA25 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data12))  +
      ', DATA26 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data13))  +
      ', DATA27 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data14))  +
      ', DATA28 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data15))  +
      ', DATA29 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data16))  +
      ', DATA30 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data17))  +
      ', DATA31 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data18))  +
      ', DATA32 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data19))  +
      ', DATA33 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data20))  +
      ', DATA34 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data21))  +
      ', DATA35 = ' + QuotedStr(FormatDateTime('mm/dd/yy',data22))  +

      ', ALTERADO14 = ' +  QuotedStr(cdsBuscaGuiaALTERADO14.AsString) +
      ', ALTERADO15 = ' +  QuotedStr(cdsBuscaGuiaALTERADO15.AsString) +
      ', ALTERADO16 = ' +  QuotedStr(cdsBuscaGuiaALTERADO16.AsString) +
      ', ALTERADO17 = ' +  QuotedStr(cdsBuscaGuiaALTERADO17.AsString) +
      ', ALTERADO18 = ' +  QuotedStr(cdsBuscaGuiaALTERADO18.AsString) +
      ', ALTERADO19 = ' +  QuotedStr(cdsBuscaGuiaALTERADO19.AsString) +
      ', ALTERADO20 = ' +  QuotedStr(cdsBuscaGuiaALTERADO20.AsString) +
      ', ALTERADO21 = ' +  QuotedStr(cdsBuscaGuiaALTERADO21.AsString) +
      ', ALTERADO22 = ' +  QuotedStr(cdsBuscaGuiaALTERADO22.AsString) +
      ', ALTERADO23 = ' +  QuotedStr(cdsBuscaGuiaALTERADO23.AsString) +
      ', ALTERADO24 = ' +  QuotedStr(cdsBuscaGuiaALTERADO24.AsString) +
      ', ALTERADO25 = ' +  QuotedStr(cdsBuscaGuiaALTERADO25.AsString) +
      ', ALTERADO26 = ' +  QuotedStr(cdsBuscaGuiaALTERADO26.AsString) +
      ', ALTERADO27 = ' +  QuotedStr(cdsBuscaGuiaALTERADO27.AsString) +
      ', ALTERADO28 = ' +  QuotedStr(cdsBuscaGuiaALTERADO28.AsString) +
      ', ALTERADO29 = ' +  QuotedStr(cdsBuscaGuiaALTERADO29.AsString) +
      ', ALTERADO30 = ' +  QuotedStr(cdsBuscaGuiaALTERADO30.AsString) +
      ', ALTERADO31 = ' +  QuotedStr(cdsBuscaGuiaALTERADO31.AsString) +
      ', ALTERADO32 = ' +  QuotedStr(cdsBuscaGuiaALTERADO32.AsString) +
      ', ALTERADO33 = ' +  QuotedStr(cdsBuscaGuiaALTERADO33.AsString) +
      ', ALTERADO34 = ' +  QuotedStr(cdsBuscaGuiaALTERADO34.AsString) +
      ', ALTERADO35 = ' +  QuotedStr(cdsBuscaGuiaALTERADO35.AsString) +

      ', EXAME33 = ' +  QuotedStr(cdsBuscaGuiaEXAME33.AsString) +
      ', EXAME34 = ' +  QuotedStr(cdsBuscaGuiaEXAME34.AsString) +
      ', EXAME35 = ' +  QuotedStr(cdsBuscaGuiaEXAME35.AsString) +


      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);


    end; /// fim TabSheet4

    //inicio TabSheet3

    if(PageControl1.ActivePage = TabSheet3)then
    begin

      if(radTipo1.ItemIndex = 0) then
      vTIPO := '0' ;
      if(radTipo1.ItemIndex = 1) then
      vTIPO := '1' ;
      if(radTipo1.ItemIndex = 2) then
      vTIPO := '2' ;
      if(radTipo1.ItemIndex = 3) then
      vTIPO := '3' ;
      if(radTipo1.ItemIndex = 4) then
      vTIPO := '4' ;
      if(radTipo1.ItemIndex = 5) then
      vTIPO := '5' ;
      if(radTipo1.ItemIndex = 6) then
      vTIPO := '6' ;
      {
  	  if(DBCheckBox4.Checked = True )then
      CK61 := 'S'
      else CK61 := 'N';
      if(DBCheckBox5.Checked = True )then
      CK62 := 'S'
      else CK62 := 'N';
      if(DBCheckBox6.Checked = True )then
      CK63 := 'S'
      else CK63 := 'N';
      if(DBCheckBox7.Checked = True )then
      CK64 := 'S'
      else CK64 := 'N';
      if(DBCheckBox8.Checked = True )then
      CK65 := 'S'
      else CK65 := 'N';
      if(DBCheckBox9.Checked = True )then
      CK66 := 'S'
      else CK66 := 'N';
      if(DBCheckBox10.Checked = True )then
      CK67 := 'S'
      else CK67 := 'N';
      if(DBCheckBox11.Checked = True )then
      CK68 := 'S'
      else CK68 := 'N';
      if(DBCheckBox12.Checked = True )then
      CK69 := 'S'
      else CK69 := 'N';
      if(DBCheckBox13.Checked = True )then
      CK70 := 'S'
      else CK70 := 'N';
      if(DBCheckBox14.Checked = True )then
      CK71:= 'S'
      else CK71 := 'N';
      if(DBCheckBox15.Checked = True )then
      CK72 := 'S'
      else CK72 := 'N';
      if(DBCheckBox16.Checked = True )then
      CK73 := 'S'
      else CK73:= 'N';
      if(DBCheckBox17.Checked = True )then
      CK74 := 'S'
      else CK74 := 'N';
      if(DBCheckBox18.Checked = True )then
      CK75 := 'S'
      else CK75 := 'N';
      if(DBCheckBox19.Checked = True )then
      CK76 := 'S'
      else CK76 := 'N';
      if(DBCheckBox20.Checked = True )then
      CK77 := 'S'
      else CK77 := 'N';
      }
      if(radAlcool.ItemIndex = -1) then
      CK61 := '5' ;
      if(radAlcool.ItemIndex = 0) then
      CK61 := '0' ;
      if(radAlcool.ItemIndex = 1) then
      CK61 := '1' ;
      if(radAlcool.ItemIndex = 2) then
      CK61 := '2' ;

      if(DBEdit79.Text = '') then
      begin
        CK61 := '5' ;
      end;

      DecimalSeparator := '.';
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET TIPO = ' +  QuotedStr(vTIPO) +
      ', CKQ                    = ' +  QuotedStr(DBEdit77.Text) +
      ', QUEIXAP                = ' + QuotedStr(DBEdit26.Text) +
      ', CKH                    = ' +  QuotedStr(DBEdit78.Text) +
      ', HISTORICOMEDICO        = ' +  QuotedStr(cdsBuscaGuiaHISTORICOMEDICO.AsString) +
      ', CKA                    = ' +  QuotedStr(DBEdit79.Text) +
      ', ALCOOL                 = ' +  QuotedStr(CK61) +
      ', FUMO                   = ' +  QuotedStr(DBEdit81.Text) +
      ', CKAF                   = ' +  QuotedStr(DBEdit80.Text) +
      ', ANTECEDENTESFAMILIARES = ' +  QuotedStr(cdsBuscaGuiaANTECEDENTESFAMILIARES.AsString) +
      ', CKC                    = ' +  QuotedStr(DBEdit82.Text) +
      ', CICATRIZES             = ' +  QuotedStr(cdsBuscaGuiaCICATRIZES.AsString) +
      ', CKAPE                  = ' +  QuotedStr(DBEdit83.Text) +
      ', ANTECEDENTESPESSOAIS   = ' +  QuotedStr(cdsBuscaGuiaANTECEDENTESPESSOAIS.AsString) +
      ', CKACI                  = ' +  QuotedStr(DBEdit84.Text) +
      ', ACIDENTES              = ' +  QuotedStr(cdsBuscaGuiaACIDENTES.AsString) +
      ', PESO                   = ' +  FloatToStr(cdsBuscaGuiaPESO.Value) +
      ', ALTURA                 = ' +  FloatToStr(cdsBuscaGuiaALTURA.Value) +
      ', IMC                    = ' +  FloatToStr(cdsBuscaGuiaIMC.Value) +
      ', PA                     = ' +  QuotedStr(cdsBuscaGuiaPA.AsString) +
      ', FC                     = ' +  QuotedStr(cdsBuscaGuiaFC.AsString) +
      ', CKOD                   = ' +  QuotedStr(DBEdit85.Text) +
      ', CKOE                   = ' +  QuotedStr(DBEdit86.Text) +
      ', CKAPV                  = ' +  QuotedStr(DBEdit87.Text) +
      ', MOLESTIA               = ' +  QuotedStr(cdsBuscaGuiaMOLESTIA.AsString) +
      ', CKP                    = ' +  QuotedStr(DBEdit88.Text) +
      ', PELE                   = ' +  QuotedStr(cdsBuscaGuiaPELE.AsString) +
      ', CKAPA                  = ' +  QuotedStr(DBEdit89.Text) +
      ', OUVIDOS                = ' +  QuotedStr(cdsBuscaGuiaOUVIDOS.AsString) +
      ', CKCP                   = ' +  QuotedStr(DBEdit90.Text) +
      ', CABECA                 = ' +  QuotedStr(cdsBuscaGuiaCABECA.AsString) +
      ', CKABD                  = ' +  QuotedStr(DBEdit91.Text) +
      ', ABDOMEN                = ' +  QuotedStr(cdsBuscaGuiaABDOMEN.AsString) +
      ', CKAP                   = ' +  QuotedStr(DBEdit92.Text) +
      ', AP                     = ' +  QuotedStr(cdsBuscaGuiaAP.AsString) +
      ', CKACV                  = ' +  QuotedStr(DBEdit93.Text) +
      ', APCARDIO               = ' +  QuotedStr(cdsBuscaGuiaAPCARDIO.AsString) +
      ', CKAPN                  = ' +  QuotedStr(DBEdit94.Text) +
      ', SISTEMANERVOSO         = ' +  QuotedStr(cdsBuscaGuiaSISTEMANERVOSO.AsString) +
      ', CKAGU                  = ' +  QuotedStr(DBEdit95.Text) +
      ', APURO                  = ' +  QuotedStr(cdsBuscaGuiaAPURO.AsString) +
      ', CKAOM                  = ' +  QuotedStr(DBEdit96.Text) +
      ', AOSTEO                 = ' +  QuotedStr(cdsBuscaGuiaAOSTEO.AsString) +
      ', OBSFICHA               = ' +  QuotedStr(cdsBuscaGuiaOBSFICHA.AsString) +
    //  ', A                      = ' +  QuotedStr(CK80) +
    //  ', I                      = ' +  QuotedStr(CK81) +
    //  ', ADA                    = ' +  QuotedStr(CK82) +
    //  ', AIA                    = ' +  QuotedStr(CK83) +
    //  ', PAIR                   = ' +  QuotedStr(CK84) +
    //  ', DANO                   = ' +  QuotedStr(CK85) +
    //  ', HISTORICOAV            = ' +  QuotedStr(cdsBuscaGuiaHISTORICOAV.AsString) +


      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      DecimalSeparator := ',';
    end; //// Fim TabSheet3


    //    cdsBuscaGuiaTIPO_GUIA.AsString := 'CORRIGIDO';
    //    cdsBuscaGuiaGRAU_RISCO.AsString := Edit7.Text;
    //   DMSaude.cdsGuiasTIPO_GUIA.AsString := 'CORRIGIDO';

    // corrigir aqui
    // DMSaude.cdsGuiasNOME_EXECUTANTE.AsString      := DBComboBox3.Text;

    // inicio TabSheet2
    if(PageControl1.ActivePage = TabSheet2)then
    begin

      if(radTipo.ItemIndex = 0) then
      vTIPO := '0' ;
      if(radTipo.ItemIndex = 1) then
      vTIPO := '1' ;
      if(radTipo.ItemIndex = 2) then
      vTIPO := '2' ;
      if(radTipo.ItemIndex = 3) then
      vTIPO := '3' ;
      if(radTipo.ItemIndex = 4) then
      vTIPO := '4' ;

      if(dbrTipo.ItemIndex = 0) then
      vAPTO := 0 ;
      if(dbrTipo.ItemIndex = 1) then
      vAPTO := 1 ; // apto
      if(dbrTipo.ItemIndex = 2) then
      vAPTO := 2 ; // inapto

      if(CheckBox1.Checked = True )then
      CK86 := 'S'
      else CK86 := 'N';
	    if(CheckBox2.Checked = True )then
      CK87 := 'S'
      else CK87 := 'N';
	    if(CheckBox3.Checked = True )then
      CK88 := 'S'
      else CK88 := 'N';
  	  if(CheckBox4.Checked = True )then
      CK89 := 'S'
      else CK89 := 'N';
      if(CheckBox5.Checked = True )then
      CK90 := 'S'
      else CK90 := 'N';
      if(CheckBox6.Checked = True )then
      CK91 := 'S'
      else CK91 := 'N';
      if(CheckBox7.Checked = True )then
      CK92 := 'S'
      else CK92 := 'N';
      if(CheckBox8.Checked = True )then
      CK93 := 'S'
      else CK93 := 'N';
      if(CheckBox9.Checked = True )then
      CK94 := 'S'
      else CK94 := 'N';
      if(CheckBox10.Checked = True )then
      CK95 := 'S'
      else CK95 := 'N';
      if(CheckBox11.Checked = True )then
      CK96 := 'S'
      else CK96 := 'N';
      if(CheckBox12.Checked = True )then
      CK97 := 'S'
      else CK97 := 'N';
      if(CheckBoxOu1.Checked = True )then
      CK98 := 'S'
      else CK98 := 'N';

      if(CheckBox13.Checked = True )then
      CK99 := 'S'
      else CK99 := 'N';
	    if(CheckBox14.Checked = True )then
      CK100 := 'S'
      else CK100 := 'N';
	    if(CheckBox15.Checked = True )then
      CK101 := 'S'
      else CK101 := 'N';
  	  if(CheckBox16.Checked = True )then
      CK102 := 'S'
      else CK102 := 'N';
      if(CheckBox17.Checked = True )then
      CK103 := 'S'
      else CK103 := 'N';
      if(CheckBox18.Checked = True )then
      CK104 := 'S'
      else CK104 := 'N';
      if(CheckBox19.Checked = True )then
      CK105 := 'S'
      else CK105 := 'N';
      if(CheckBox20.Checked = True )then
      CK106 := 'S'
      else CK106 := 'N';
      if(CheckBox21.Checked = True )then
      CK107 := 'S'
      else CK107 := 'N';
      if(CheckBox22.Checked = True )then
      CK108 := 'S'
      else CK108 := 'N';
      if(CheckBox23.Checked = True )then
      CK109 := 'S'
      else CK109 := 'N';
      if(CheckBox24.Checked = True )then
      CK110 := 'S'
      else CK110 := 'N';
      if(CheckBox25.Checked = True )then
      CK111 := 'S'
      else CK111 := 'N';
      if(CheckBox26.Checked = True )then
      CK112 := 'S'
      else CK112 := 'N';
      if(CheckBox27.Checked = True )then
      CK113 := 'S'
      else CK113 := 'N';


      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET GRAU_RISCO = ' +  QuotedStr(Edit7.Text) +
      ', TIPO           = ' + QuotedStr(vTIPO) +
      ', APTO           = ' + IntToStr(vAPTO) +
      ', DATA1          = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date))  +
      ', CK1            = ' + QuotedStr(CK86) +
      ', DATA2          = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date))  +
      ', CK2            = ' + QuotedStr(CK87) +
      ', DATA3          = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit3.Date))  +
      ', CK3            = ' + QuotedStr(CK88) +
      ', DATA4          = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit4.Date))  +
      ', CK4            = ' + QuotedStr(CK89) +
      ', DATA5          = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit5.Date))  +
      ', CK5            = ' + QuotedStr(CK90) +
      ', DATA6          = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit6.Date))  +
      ', CK6            = ' + QuotedStr(CK91) +
      ', DATA7          = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit7.Date))  +
      ', CK7            = ' + QuotedStr(CK92) +
      ', DATA8          = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit8.Date))  +
      ', CK8            = ' + QuotedStr(CK93) +
      ', DATA9          = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit9.Date))  +
      ', CK9            = ' + QuotedStr(CK94) +
      ', DATA10         = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit10.Date))  +
      ', CK10           = ' + QuotedStr(CK95) +
      ', DATA11         = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit11.Date))  +
      ', CK11           = ' + QuotedStr(CK96) +
      ', DATA12         = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit12.Date))  +
      ', CK12           = ' + QuotedStr(CK97) +
      ', DATA13         = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit13.Date))  +
      ', CK13           = ' + QuotedStr(CK98) +

      ', CKANEXO1       = ' + QuotedStr(CK99) +
      ', CKANEXO2       = ' + QuotedStr(CK100) +
      ', CKANEXO3       = ' + QuotedStr(CK101) +
      ', CKANEXO4       = ' + QuotedStr(CK102) +
      ', CKANEXO5       = ' + QuotedStr(CK103) +
      ', CKANEXO6       = ' + QuotedStr(CK104) +
      ', CKANEXO7       = ' + QuotedStr(CK105) +
      ', CKANEXO8       = ' + QuotedStr(CK106) +
      ', CKANEXO9       = ' + QuotedStr(CK107) +
      ', CKANEXO10      = ' + QuotedStr(CK108) +
      ', CKANEXO11      = ' + QuotedStr(CK109) +
      ', CKANEXO12      = ' + QuotedStr(CK110) +
      ', CKANEXO13      = ' + QuotedStr(CK111) +
      ', CKANEXO14      = ' + QuotedStr(CK112) +
      ', CKANEXO15      = ' + QuotedStr(CK113) +

      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);

      {
      if(CheckBox1.Checked = True)then
      begin
        cdsBuscaGuiaDATA1.AsDateTime := JvDateEdit1.Date ;
        cdsBuscaGuiaCK1.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaDATA1.AsDateTime :=  0 ;
        cdsBuscaGuiaCK1.AsString := '';
      end;
      if(CheckBox2.Checked = True )then
      begin
        cdsBuscaGuiaDATA2.AsDateTime := JvDateEdit2.Date ;
        cdsBuscaGuiaCK2.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaDATA2.AsDateTime := 0 ;
        cdsBuscaGuiaCK2.AsString := '';
      end;
      if(CheckBox3.Checked = True)then
      begin
        cdsBuscaGuiaDATA3.AsDateTime := JvDateEdit3.Date ;
        cdsBuscaGuiaCK3.AsString := 'S' ;
      end else
      begin
        cdsBuscaGuiaDATA3.AsDateTime := 0 ;
        cdsBuscaGuiaCK3.AsString := '' ;
      end;
      if(CheckBox4.Checked = True )then
      begin
        cdsBuscaGuiaDATA4.AsDateTime := JvDateEdit4.Date ;
        cdsBuscaGuiaCK4.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaDATA4.AsDateTime := 0 ;
        cdsBuscaGuiaCK4.AsString := 'N';
      end;
      if(CheckBox5.Checked = True )then
      begin
        cdsBuscaGuiaDATA5.AsDateTime := JvDateEdit5.Date ;
        cdsBuscaGuiaCK5.AsString := 'S' ;
      end else
      begin
        cdsBuscaGuiaDATA5.AsDateTime := 0 ;
        cdsBuscaGuiaCK5.AsString := '' ;
      end;

      if(CheckBox6.Checked = True )then
      begin
        cdsBuscaGuiaDATA6.AsDateTime := JvDateEdit6.Date ;
        cdsBuscaGuiaCK6.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaDATA6.AsDateTime := 0 ;
        cdsBuscaGuiaCK6.AsString := '';
      end;
      if(CheckBox7.Checked = True)then
      begin
        cdsBuscaGuiaDATA7.AsDateTime := JvDateEdit7.Date ;
        cdsBuscaGuiaCK7.AsString := 'S'  ;
      end else
      begin
        cdsBuscaGuiaDATA7.AsDateTime := 0 ;
        cdsBuscaGuiaCK7.AsString := ''  ;
      end;
      if(CheckBox8.Checked = True )then
      begin
        cdsBuscaGuiaDATA8.AsDateTime := JvDateEdit8.Date ;
        cdsBuscaGuiaCK8.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaDATA8.AsDateTime := 0 ;
        cdsBuscaGuiaCK8.AsString := '';
      end;
      if(CheckBox9.Checked = True)then
      begin
        cdsBuscaGuiaDATA9.AsDateTime := JvDateEdit9.Date  ;
        cdsBuscaGuiaCK9.AsString := 'S' ;
      end else
      begin
        cdsBuscaGuiaDATA9.AsDateTime := 0 ;
        cdsBuscaGuiaCK9.AsString := '' ;
      end;
      if(CheckBox10.Checked = True )then
      begin
        cdsBuscaGuiaDATA10.AsDateTime := JvDateEdit10.Date ;
        cdsBuscaGuiaCK10.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaDATA10.AsDateTime := 0 ;
        cdsBuscaGuiaCK10.AsString := '';
      end;
      if(CheckBox11.Checked = True)then
      begin
        cdsBuscaGuiaDATA11.AsDateTime := JvDateEdit11.Date ;
        cdsBuscaGuiaCK11.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaDATA11.AsDateTime := 0 ;
        cdsBuscaGuiaCK11.AsString := '';
      end;

      if(CheckBox12.Checked = True)then
      begin
        cdsBuscaGuiaDATA12.AsDateTime := JvDateEdit12.Date ;
        cdsBuscaGuiaCK12.AsString := 'S' ;
      end else
      begin
        cdsBuscaGuiaDATA12.AsDateTime := 0 ;
        cdsBuscaGuiaCK12.AsString := '' ;
      end;

      if(CheckBoxOu1.Checked = True)then
      begin
        cdsBuscaGuiaDATA13.AsDateTime := JvDateEdit13.Date ;
        cdsBuscaGuiaEXAME13.AsString := Edit3.Text;
        cdsBuscaGuiaCK13.AsString := 'S' ;
      end else
      begin
        cdsBuscaGuiaDATA13.AsDateTime := 0 ;
        cdsBuscaGuiaEXAME13.AsString := '';
        cdsBuscaGuiaCK13.AsString := '' ;
      end;
       }
       /// anexos
      if(CheckBox13.Checked = True)then
      begin
        cdsBuscaGuiaANEXO1.AsString := 'Anexo 1 Ruido Cont/ Interminitente';
        cdsBuscaGuiaCKANEXO1.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO1.AsString := '';
        cdsBuscaGuiaCKANEXO1.AsString := '';
      end;
      if(CheckBox14.Checked = True)then
      begin
        cdsBuscaGuiaANEXO2.AsString := 'Anexo 2 Ruidos de Impacto';
        cdsBuscaGuiaCKANEXO2.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO2.AsString := '';
        cdsBuscaGuiaCKANEXO2.AsString := '';
      end;
      if(CheckBox15.Checked = True)then
      begin
        cdsBuscaGuiaANEXO3.AsString := 'Anexo 3 Calor';
        cdsBuscaGuiaCKANEXO3.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO3.AsString := '';
        cdsBuscaGuiaCKANEXO3.AsString := '';
      end;
      if(CheckBox16.Checked = True)then
      begin
        cdsBuscaGuiaANEXO4.AsString := 'Anexo 5 Radiações Ionizantes';
        cdsBuscaGuiaCKANEXO4.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO4.AsString := '';
        cdsBuscaGuiaCKANEXO4.AsString := '';
      end;
      if(CheckBox17.Checked = True)then
      begin
        cdsBuscaGuiaANEXO5.AsString := 'Anexo 6 Hiperbarica';
        cdsBuscaGuiaCKANEXO5.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO5.AsString := '';
        cdsBuscaGuiaCKANEXO5.AsString := '';
      end;
      if(CheckBox18.Checked = True)then
      begin
        cdsBuscaGuiaANEXO6.AsString := 'Anexo 9 Frio';
        cdsBuscaGuiaCKANEXO6.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO6.AsString := '';
        cdsBuscaGuiaCKANEXO6.AsString := '';
      end;
      if(CheckBox19.Checked = True)then
      begin
        cdsBuscaGuiaANEXO7.AsString := 'Anexo 10 Umidade';
        cdsBuscaGuiaCKANEXO7.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO7.AsString := '';
        cdsBuscaGuiaCKANEXO7.AsString := '';
      end;
      if(CheckBox20.Checked = True)then
      begin
        cdsBuscaGuiaANEXO8.AsString := 'Anexo 11 Agentes Quimicos';
        cdsBuscaGuiaCKANEXO8.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO8.AsString := '';
        cdsBuscaGuiaCKANEXO8.AsString := '';
      end;
      if(CheckBox21.Checked = True)then
      begin
        cdsBuscaGuiaANEXO9.AsString := 'Anexo 12 Poeiras';
        cdsBuscaGuiaCKANEXO9.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO9.AsString := '';
        cdsBuscaGuiaCKANEXO9.AsString := '';
      end;
      if(CheckBox22.Checked = True)then
      begin
        cdsBuscaGuiaANEXO10.AsString := 'Anexo 14 Agentes Biologicos';
        cdsBuscaGuiaCKANEXO10.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO10.AsString := '';
        cdsBuscaGuiaCKANEXO10.AsString := '';
      end;
      if(CheckBox23.Checked = True)then
      begin
        cdsBuscaGuiaANEXO11.AsString := 'Osteo Muscular';
        cdsBuscaGuiaCKANEXO11.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO11.AsString := '';
        cdsBuscaGuiaCKANEXO11.AsString := '';
      end;
      if(CheckBox24.Checked = True)then
      begin
        cdsBuscaGuiaANEXO12.AsString := 'Ergonômico';
        cdsBuscaGuiaCKANEXO12.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO12.AsString := '';
        cdsBuscaGuiaCKANEXO12.AsString := '';
      end;
      if(CheckBox25.Checked = True)then
      begin
        cdsBuscaGuiaANEXO13.AsString := 'Apto Trabalhar em Altura';
        cdsBuscaGuiaCKANEXO13.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO13.AsString := '';
        cdsBuscaGuiaCKANEXO13.AsString := '';
      end;
      if(CheckBox26.Checked = True)then
      begin
        cdsBuscaGuiaANEXO14.AsString := 'Apto Op. de Empilhadeira';
        cdsBuscaGuiaCKANEXO14.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO14.AsString := '';
        cdsBuscaGuiaCKANEXO14.AsString := '';
      end;
      if(CheckBox27.Checked = True)then
      begin
        cdsBuscaGuiaANEXO15.AsString := 'Manipular Alimentos';
        cdsBuscaGuiaCKANEXO15.AsString := 'S';
      end else
      begin
        cdsBuscaGuiaANEXO15.AsString := ' ';
        cdsBuscaGuiaCKANEXO15.AsString := ' ';
      end;
      // apto inapto
      if(dbrTipo.ItemIndex = 0) then
      cdsBuscaGuiaAPTO.AsInteger := 0 ;
      if(dbrTipo.ItemIndex = 1) then
      cdsBuscaGuiaAPTO.AsInteger := 1 ; // apto
      if(dbrTipo.ItemIndex = 2) then
      cdsBuscaGuiaAPTO.AsInteger := 2 ; // inapto

    end; /// fim tabsheet2


    {
    if(JvDateEdit2.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA2.AsDateTime := JvDateEdit2.Date;
      DMSaude.cdsGuiasCK2.AsString     := 'S';
      DMSaude.cdsGuiasEXAME2.Text := 'Hemograma';
    end;
    if(JvDateEdit3.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA3.AsDateTime := JvDateEdit3.Date;
      DMSaude.cdsGuiasCK3.AsString     := 'S';
      DMSaude.cdsGuiasEXAME3.Text := 'Pratoparasitologico';
    end;
    if(JvDateEdit4.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA4.AsDateTime := JvDateEdit4.Date;
      DMSaude.cdsGuiasCK4.AsString     := 'S';
      DMSaude.cdsGuiasEXAME4.Text := 'Coprocultura';
    end;
    if(JvDateEdit5.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA5.AsDateTime := JvDateEdit5.Date;
      DMSaude.cdsGuiasCK5.AsString     := 'S';
      DMSaude.cdsGuiasEXAME5.Text := 'VDRL';
    end;
    if(JvDateEdit6.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA6.AsDateTime := JvDateEdit6.Date;
      DMSaude.cdsGuiasCK6.AsString     := 'S';
      DMSaude.cdsGuiasEXAME6.Text := 'Espirometria';
    end;

    }

    //  if DMSaude.cdsGuias.applyUpdates(0) <> 0 then
    //   showmessage('Não gravou!');

  cdsBuscaGuia.ApplyUpdates(-1);
  func   := cdsBuscaGuiaNUMERO_GUIA.AsString;
  cdsBuscaGuia.Close;
  cdsBuscaGuia.Params[0].AsString := func ;
  cdsBuscaGuia.Open;

  //  DMSaude.cdsGuias.ApplyUpdates(-1);
    // não pode cdsBuscaGuia.Refresh;

  end; // fim do Updadte


end;

procedure TfDependente.btnAsoSairClick(Sender: TObject);
begin
//inherited;
  TabSheet1.Show;
end;

procedure TfDependente.btnCanClick(Sender: TObject);
begin
 // inherited;
   if Cancelar = 'N' then Exit;
 /////DtSrc.DataSet.Cancel;
  dsBuscaGuia.DataSet.Cancel;
end;

procedure TfDependente.dsBuscaGuiaStateChange(Sender: TObject);
var icompA: integer;
const
 Estados : array [TDataSetState] of string =
 ('Fechado','Consultando','Alterando','Inserindo','','','','','','','','','');
begin
 if Incluir = 'S' then
  btnInc.Enabled:=dsBuscaGuia.State in [dsBrowse,dsInactive]
 else
    btnInc.Enabled:= False;

 if Alterar = 'S' then
  btnGrav.Enabled:=dsBuscaGuia.State in [dsInsert,dsEdit]
 else
  btnGrav.Enabled:=False;

 if Cancelar = 'S' then
  btnCan.Enabled:=dsBuscaGuia.State in [dsInsert,dsEdit]
 else
  btnCan.Enabled:=false;
 {
 if Excluir = 'S' then
  btnExcluir.Enabled:=DtSrc.State in [dsBrowse]
 else
  btnExcluir.Enabled:=false;

 if Procurar = 'S' then
  btnProcurar.Enabled := DtSrc.State in [dsBrowse,dsInactive]
 else
  btnProcurar.Enabled := False;
  btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
 }
  for icompA:=0 to ComponentCount - 1 do
   if Components[icompA] is TDbEdit then
      (Components[icompA] as TDbEdit).Enabled := dsBuscaGuia.State in [dsInsert,dsEdit, dsBrowse];

  if dsBuscaGuia.State in [dsInsert, dsEdit] then
  begin
    btnInc.Visible := False;
   // btnexcluir.Visible := False;
    btnGrav.Visible := True;
    btnGrav.Enabled := True;
    btnCan.Visible := True;
    btnCan.Enabled := True;
  end;

  if dsBuscaGuia.State in [dsBrowse,dsInactive] then
  begin
    btnInc.Enabled := True;
    btnInc.Visible := True;
    //btnexcluir.Visible := True;
    //btnExcluir.Enabled := True;
    btnGrav.Visible := False;
    btnCan.Visible := False;
  end;

end;
        

procedure TfDependente.DBEdit32Exit(Sender: TObject);
var
A,B,C,D,R: Currency;
begin
    //inherited;
    DecimalSeparator := ',';

    A:=StrToCurr(DBEdit31.Text);

    B:=StrToCurr(DBEdit32.Text);

    C:=StrToCurr(DBEdit32.Text);

    try

    D:=A/(B*C);

    finally
    Label61.Caption := CurrToStr(D);
    DBEdit33.Text := CurrToStr(D);
    cdsBuscaGuiaIMC.Value :=  StrToCurr(DBEdit33.Text);
    //DBEdit33.Text:= Label61.Caption ; //CurrToStr(D);
    DecimalSeparator := ',';
    end;
end;

procedure TfDependente.TabSheet3Show(Sender: TObject);
begin
  inherited;

  fDependente.btnSair.Enabled      := False;
  fDependente.btnIncluir.Enabled   := False;
  fDependente.btnGravar.Enabled    := False;
  fDependente.btnCancelar.Enabled  := False;
  fDependente.btnExcluir.Enabled   := False;

  fDependente.Panel2.Visible       := True;

 //// if(dsBuscaGuia.DataSet.Active) then
 //// begin

   BitBtn11.Click;

 // if not(cdsBuscaGuia.State in [dsBrowse]) then
 // begin
   if(not cdsBuscaGuia.Active) then
    cdsBuscaGuia.Close;
    cdsBuscaGuia.Params[0].AsString := DMSaude.cdsDependenteRA.AsString;
    cdsBuscaGuia.Open;
    cdsBuscaGuia.Last;

   {
    if(not DMSaude.cdsGuias.Active) then
    DMSaude.cdsGuias.Close;
    DMSaude.cdsGuias.Params[0].AsString := DMSaude.cdsDependenteRA.AsString;
    DMSaude.cdsGuias.Open;
    DMSaude.cdsGuias.Last;
   }

 // end;

  if(DMSaude.cdsDependenteSTATUS.AsInteger = 1) then
  btnInc.Enabled := False
  else
    btnInc.Enabled := True;
 //// end;
end;

procedure TfDependente.TabSheet2Show(Sender: TObject);
begin
 // inherited;
    if(cdsBuscaGuiaTIPO.AsString > '4')then
    begin
      radTipo.Enabled := False;
    end;
     if(cdsBuscaGuiaTIPO.AsString = '')then
    begin
      radTipo.Enabled := True;
    end;
end;

procedure TfDependente.limparCampos;
var x: Integer;
begin
for x := 0 to (ComponentCount) - 1 do
  begin
     //ShowMessage (IntToStr(Components[x].tag));
     //Verificação da propriedade pTag
     if (TComponent(Components[x]).Tag<>100) then
       begin
         if (Components[x] is TCustomEdit) then
           (Components[x] as TCustomEdit).Clear;
         if (Components[x] is TComboBox) then
           Begin
             (Components[x] as TComboBox).ItemIndex:=-1;
             (Components[x] as TComboBox).Text:=EmptyStr;
           End;
         if (Components[x] is TCheckBox) then
           (Components[x] as TCheckBox).Checked := False;
         if (Components[x] is TRadioGroup) then
           (Components[x] as TRadioGroup).ItemIndex:=-1;
         if (Components[x] is TDBRadioGroup) then
           (Components[x] as TDBRadioGroup).ItemIndex:=-1;
         if (Components[x] is TDBCheckBox) then
           (Components[x] as TDBCheckBox).Checked := False;
       end;
  end;

end;

procedure TfDependente.BitBtn8Click(Sender: TObject);
var x: Integer;
begin
for x := 0 to (ComponentCount) - 1 do
  begin
     //ShowMessage (IntToStr(Components[x].tag));
     //Verificação da propriedade pTag
     if (TComponent(Components[x]).Tag<>100) then
       begin
         if (Components[x] is TCustomEdit) then
           (Components[x] as TCustomEdit).Clear;

         if (Components[x] is TComboBox) then
           Begin
             (Components[x] as TComboBox).ItemIndex:=-1;
             (Components[x] as TComboBox).Text:=EmptyStr;
           End;

         if (Components[x] is TCheckBox) then
           (Components[x] as TCheckBox).Checked := False;

         if (Components[x] is TRadioGroup) then
           (Components[x] as TRadioGroup).ItemIndex:=-1;

         if (Components[x] is TDBRadioGroup) then
           (Components[x] as TDBRadioGroup).ItemIndex:=-1;

         if (Components[x] is TDBCheckBox) then
           (Components[x] as TDBCheckBox).Checked := False;

       end;
  end;

end;

procedure TfDependente.BitBtn9Click(Sender: TObject);
begin
 // inherited;
  cdsBuscaGuia.Close;
  if(not cdsBuscaGuia.Active) then
  cdsBuscaGuia.Close;
  cdsBuscaGuia.Params[0].AsString := DMSaude.cdsDependenteRA.AsString;
  cdsBuscaGuia.Open;

end;

procedure TfDependente.BitBtn10Click(Sender: TObject);
begin
 // inherited;
   if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
    dsBuscaGuia.DataSet.Edit;
  cdsBuscaGuiaDATA14.Text := '';
end;

procedure TfDependente.JvDBGrid1DblClick(Sender: TObject);
begin
  inherited;

 //  limparCampos;  // 14/11/18

  BitBtn11.Click;

  ///// inicio complemento
  {
  if(cdsBuscaGuiaDATA15.AsDateTime <> 0 )then
  begin
    JvDateEdit15.Date  := cdsBuscaGuiaDATA15.AsDateTime ;
  end;
  if(cdsBuscaGuiaDATA18.AsDateTime <> 0 )then
  begin
    JvDateEdit18.Date  := cdsBuscaGuiaDATA18.AsDateTime ;
  end;
  if(cdsBuscaGuiaDATA19.AsDateTime <> 0 )then
  begin
    JvDateEdit19.Date  := cdsBuscaGuiaDATA19.AsDateTime ;
  end;
  if(cdsBuscaGuiaDATA23.AsDateTime <> 0 )then
  begin
    JvDateEdit23.Date  := cdsBuscaGuiaDATA23.AsDateTime ;
  end;
  if(cdsBuscaGuiaDATA24.AsDateTime <> 0 )then
  begin
    JvDateEdit24.Date  := cdsBuscaGuiaDATA24.AsDateTime ;
  end;
  if(cdsBuscaGuiaDATA26.AsDateTime <> 0 )then
  begin
    JvDateEdit26.Date  := cdsBuscaGuiaDATA26.AsDateTime ;
  end;
  if(cdsBuscaGuiaDATA27.AsDateTime <> 0 )then
  begin
    JvDateEdit27.Date  := cdsBuscaGuiaDATA27.AsDateTime ;
  end;
  if(cdsBuscaGuiaDATA28.AsDateTime <> 0 )then
  begin
    JvDateEdit28.Date  := cdsBuscaGuiaDATA28.AsDateTime ;
  end;
  if(cdsBuscaGuiaDATA29.AsDateTime <> 0 )then
  begin
    JvDateEdit29.Date  := cdsBuscaGuiaDATA29.AsDateTime ;
  end;
  if(cdsBuscaGuiaDATA34.AsDateTime <> 0 )then
  begin
    JvDateEdit34.Date  := cdsBuscaGuiaDATA34.AsDateTime ;
  end;
  if(cdsBuscaGuiaDATA35.AsDateTime <> 0 )then
  begin
    JvDateEdit35.Date  := cdsBuscaGuiaDATA35.AsDateTime ;
  end;


  if( cdsBuscaGuiaCK14.Value = 'S')then
  DBCheckBox22.Checked := True
  else DBCheckBox22.Checked := False;

  if( cdsBuscaGuiaCK15.Value = 'S')then
  DBCheckBox23.Checked := True
  else DBCheckBox23.Checked := False;

  if( cdsBuscaGuiaCK16.Value = 'S')then
  DBCheckBox24.Checked := True
  else DBCheckBox24.Checked := False;

  if(cdsBuscaGuiaCK17.Value = 'S')then
  DBCheckBox25.Checked := True
  else DBCheckBox25.Checked := False ;

  if(cdsBuscaGuiaCK18.Value = 'S')then
  DBCheckBox26.Checked := True
  else DBCheckBox26.Checked := False;

  if(cdsBuscaGuiaCK19.Value = 'S')then
  DBCheckBox27.Checked := True
  else DBCheckBox27.Checked := False;

  if(cdsBuscaGuiaCK20.Value = 'S')then
  DBCheckBox28.Checked := True
  else DBCheckBox28.Checked := False;

  if(cdsBuscaGuiaCK21.Value = 'S')then
  DBCheckBox29.Checked := True
  else DBCheckBox29.Checked := False;

  if(cdsBuscaGuiaCK22.Value = 'S')then
  DBCheckBox30.Checked := True
  else DBCheckBox30.Checked := False;

  if(cdsBuscaGuiaCK23.Value = 'S')then
  DBCheckBox31.Checked := True
  else DBCheckBox31.Checked := False;

  if(cdsBuscaGuiaCK24.Value = 'S')then
  DBCheckBox32.Checked := True
  else DBCheckBox32.Checked := False;

  if(cdsBuscaGuiaCK25.Value = 'S')then
  DBCheckBox33.Checked := True
  else DBCheckBox33.Checked := False;

  if(cdsBuscaGuiaCK26.Value = 'S')then
  DBCheckBox34.Checked := True
  else DBCheckBox34.Checked := False;

  if(cdsBuscaGuiaCK27.Value = 'S')then
  DBCheckBox35.Checked := True
  else DBCheckBox35.Checked := False;

  if(cdsBuscaGuiaCK28.Value = 'S')then
  DBCheckBox36.Checked := True
  else DBCheckBox36.Checked := False;

  if(cdsBuscaGuiaCK29.Value = 'S')then
  DBCheckBox37.Checked := True
  else DBCheckBox37.Checked := False;

  if(cdsBuscaGuiaCK30.Value = 'S')then
  DBCheckBox38.Checked := True
  else DBCheckBox38.Checked := False;

  if(cdsBuscaGuiaCK31.Value = 'S')then
  DBCheckBox39.Checked := True
  else DBCheckBox39.Checked := False;

  if(cdsBuscaGuiaCK32.Value = 'S')then
  DBCheckBox40.Checked := True
  else DBCheckBox40.Checked := False;

  if(cdsBuscaGuiaCK33.Value = 'S')then
  DBCheckBox41.Checked := True
  else DBCheckBox41.Checked := False;

  if(cdsBuscaGuiaCK34.Value = 'S')then
  DBCheckBox42.Checked := True
  else DBCheckBox42.Checked := False;

  if(cdsBuscaGuiaCK35.Value = 'S')then
  DBCheckBox43.Checked := True
  else DBCheckBox43.Checked := False;

  DBEdit26.Text := cdsBuscaGuiaQUEIXAP.Text;
  DBEdit27.Text := cdsBuscaGuiaHISTORICOMEDICO.Text;
  DBEdit28.Text := cdsBuscaGuiaANTECEDENTESFAMILIARES.Text;
  DBEdit29.Text := cdsBuscaGuiaCICATRIZES.Text;
  DBEdit30.Text := cdsBuscaGuiaANTECEDENTESPESSOAIS.Text;
  DBEdit31.Text := cdsBuscaGuiaPESO.Text;
  DBEdit32.Text := cdsBuscaGuiaALTURA.Text;
  DBEdit33.Text := cdsBuscaGuiaIMC.Text;
  DBEdit34.Text := cdsBuscaGuiaMOLESTIA.Text;
  DBEdit35.Text := cdsBuscaGuiaPA.Text;
  DBEdit36.Text := cdsBuscaGuiaFC.Text;
  DBEdit37.Text := cdsBuscaGuiaPELE.Text;
  DBEdit38.Text := cdsBuscaGuiaOUVIDOS.Text;
  DBEdit39.Text := cdsBuscaGuiaCABECA.Text;
  DBEdit40.Text := cdsBuscaGuiaABDOMEN.Text;
  DBEdit41.Text := cdsBuscaGuiaAP.Text;
  DBEdit42.Text := cdsBuscaGuiaACIDENTES.Text;
  DBEdit43.Text := cdsBuscaGuiaAPCARDIO.Text;
  DBEdit44.Text := cdsBuscaGuiaSISTEMANERVOSO.Text;
  DBEdit45.Text := cdsBuscaGuiaAPURO.Text;
  DBEdit46.Text := cdsBuscaGuiaAOSTEO.Text;
  DBEdit47.Text := cdsBuscaGuiaOBSFICHA.Text;

  if(cdsBuscaGuiaCKA14.Value = 'S')then
  begin
    DBCheckBox44.Checked := True;
    DBEdit48.Text := cdsBuscaGuiaALTERADO14.Text;
  end else DBCheckBox44.Checked := False;
  if(cdsBuscaGuiaCKA15.Value = 'S')then
  begin
    DBCheckBox45.Checked := True;
    DBEdit49.Text := cdsBuscaGuiaALTERADO15.Text;
  end else DBCheckBox45.Checked := False;
  if(cdsBuscaGuiaCKA16.Value = 'S')then
  begin
    DBCheckBox46.Checked := True;
    DBEdit50.Text := cdsBuscaGuiaALTERADO16.Text;
  end else DBCheckBox46.Checked := False;
  if(cdsBuscaGuiaCKA17.Value = 'S')then
  begin
    DBCheckBox47.Checked := True;
    DBEdit51.Text := cdsBuscaGuiaALTERADO17.Text;
  end else DBCheckBox47.Checked := False;
  if(cdsBuscaGuiaCKA18.Value = 'S')then
  begin
    DBCheckBox48.Checked := True;
    DBEdit52.Text := cdsBuscaGuiaALTERADO18.Text;
  end else DBCheckBox48.Checked := False;
  if(cdsBuscaGuiaCKA19.Value = 'S')then
  begin
    DBCheckBox49.Checked := True;
    DBEdit53.Text := cdsBuscaGuiaALTERADO19.Text;
  end else DBCheckBox49.Checked := False;
  if(cdsBuscaGuiaCKA20.Value = 'S')then
  begin
    DBCheckBox50.Checked := True;
    DBEdit54.Text := cdsBuscaGuiaALTERADO20.Text;
  end else DBCheckBox50.Checked := False;
  if(cdsBuscaGuiaCKA21.Value = 'S')then
  begin
    DBCheckBox51.Checked := True;
    DBEdit55.Text := cdsBuscaGuiaALTERADO21.Text;
  end else DBCheckBox51.Checked := False;
  if(cdsBuscaGuiaCKA22.Value = 'S')then
  begin
    DBCheckBox52.Checked := True;
    DBEdit56.Text := cdsBuscaGuiaALTERADO22.Text;
  end else DBCheckBox52.Checked := False;
  if(cdsBuscaGuiaCKA23.Value = 'S')then
  begin
    DBCheckBox53.Checked := True;
    DBEdit57.Text := cdsBuscaGuiaALTERADO23.Text;
  end else DBCheckBox53.Checked := False;
  if(cdsBuscaGuiaCKA24.Value = 'S')then
  begin
    DBCheckBox54.Checked := True;
    DBEdit58.Text := cdsBuscaGuiaALTERADO24.Text;
  end else DBCheckBox54.Checked := False;
  if(cdsBuscaGuiaCKA25.Value = 'S')then
  begin
    DBCheckBox55.Checked := True;
    DBEdit59.Text := cdsBuscaGuiaALTERADO25.Text;
  end else DBCheckBox55.Checked := False;
  if(cdsBuscaGuiaCKA26.Value = 'S')then
  begin
    DBCheckBox56.Checked := True;
    DBEdit60.Text := cdsBuscaGuiaALTERADO26.Text;
  end else DBCheckBox56.Checked := False;
  if(cdsBuscaGuiaCKA27.Value = 'S')then
  begin
    DBCheckBox57.Checked := True;
    DBEdit61.Text := cdsBuscaGuiaALTERADO27.Text;
  end else DBCheckBox57.Checked := False;
  if(cdsBuscaGuiaCKA28.Value = 'S')then
  begin
    DBCheckBox58.Checked := True;
    DBEdit62.Text := cdsBuscaGuiaALTERADO28.Text;
  end else DBCheckBox58.Checked := False;
  if(cdsBuscaGuiaCKA29.Value = 'S')then
  begin
    DBCheckBox59.Checked := True;
    DBEdit63.Text := cdsBuscaGuiaALTERADO29.Text;
  end else DBCheckBox59.Checked := False;
  if(cdsBuscaGuiaCKA30.Value = 'S')then
  begin
    DBCheckBox60.Checked := True;
    DBEdit64.Text := cdsBuscaGuiaALTERADO30.Text;
  end else DBCheckBox60.Checked := False;
  if(cdsBuscaGuiaCKA31.Value = 'S')then
  begin
    DBCheckBox61.Checked := True;
    DBEdit65.Text := cdsBuscaGuiaALTERADO31.Text;
  end else DBCheckBox61.Checked := False;
  if(cdsBuscaGuiaCKA32.Value = 'S')then
  begin
    DBCheckBox62.Checked := True;
    DBEdit66.Text := cdsBuscaGuiaALTERADO32.Text;
  end else DBCheckBox62.Checked := False;
  if(cdsBuscaGuiaCKA33.Value = 'S')then
  begin
    DBCheckBox63.Checked := True;
    DBEdit70.Text := cdsBuscaGuiaEXAME33.Text;
    DBEdit73.Text := cdsBuscaGuiaEXAME33.Text;
    DBEdit67.Text := cdsBuscaGuiaALTERADO33.Text;
  end else DBCheckBox63.Checked := False;

  if(cdsBuscaGuiaA.Value = 'S')then
  DBCheckBox66.Checked := True
  else DBCheckBox66.Checked := False;

  if(cdsBuscaGuiaI.Value = 'S')then
  DBCheckBox67.Checked := True
  else DBCheckBox67.Checked := False;

  if(cdsBuscaGuiaADA.Value = 'S')then
  DBCheckBox68.Checked := True
  else DBCheckBox68.Checked := False;

  if(cdsBuscaGuiaAIA.Value = 'S')then
  DBCheckBox69.Checked := True
  else DBCheckBox69.Checked := False;

  if(cdsBuscaGuiaDANO.Value = 'S')then
  DBCheckBox70.Checked := True
  else DBCheckBox70.Checked := False;

  if(cdsBuscaGuiaPAIR.Value = 'S')then
  DBCheckBox71.Checked := True
  else DBCheckBox71.Checked := False;

  if(cdsBuscaGuiaCKA34.Value = 'S')then
  begin
    DBCheckBox64.Checked := True;
    DBEdit71.Text := cdsBuscaGuiaEXAME34.Text;
    DBEdit68.Text := cdsBuscaGuiaALTERADO34.Text;
  end else DBCheckBox64.Checked := False;

  if(cdsBuscaGuiaCKA35.Value = 'S')then
  begin
    DBCheckBox65.Checked := True;
    DBEdit72.Text := cdsBuscaGuiaEXAME35.Text;
    DBEdit69.Text := cdsBuscaGuiaALTERADO35.Text;
  end else DBCheckBox65.Checked := False;

  ////// fim complemento

  ///// Incio ficha atendimento

  MaskEdit1.Text    := cdsBuscaGuiaDATA_EMISSAO.AsString;
  MaskEdit2.Text    := cdsBuscaGuiaDATA_ATENDIMENTO.AsString ;

  if(cdsBuscaGuiaTIPO.AsString <> '')then
  begin
    if(cdsBuscaGuiaTIPO.AsString < '5')then
    radTipo.ItemIndex := StrToInt(cdsBuscaGuiaTIPO.AsString)
    else
    radTipo1.ItemIndex := StrToInt(cdsBuscaGuiaTIPO.AsString);

    if(cdsBuscaGuiaTIPO.AsString < '5')then
    begin
      radTipo1.ItemIndex := StrToInt(cdsBuscaGuiaTIPO.AsString);
    end;
  end;

 // if( cdsBuscaGuiaCKQ.Value = 'S')then
 // DBCheckBox1.Checked := True
  // else DBCheckBox1.Checked := False;

 // if( cdsBuscaGuiaCKH.Value = 'S')then
 // DBCheckBox2.Checked := True
 //  else DBCheckBox2.Checked := False;

 // if( cdsBuscaGuiaCKA.Value = 'S')then
 // DBCheckBox3.Checked := True
 //  else DBCheckBox3.Checked := False;

  if( cdsBuscaGuiaFUMO.Value = 'S')then
  DBCheckBox4.Checked := True
   else DBCheckBox4.Checked := False;

  if( cdsBuscaGuiaCKAF.Value = 'S')then
  DBCheckBox5.Checked := True
  else DBCheckBox5.Checked := False;

  if( cdsBuscaGuiaCKAPE.Value = 'S')then
  DBCheckBox6.Checked := True
  else DBCheckBox6.Checked := False;

  if( cdsBuscaGuiaCKC.Value = 'S')then
  DBCheckBox7.Checked := True
  else DBCheckBox7.Checked := False;

  if( cdsBuscaGuiaCKACI.Value = 'S')then
  DBCheckBox8.Checked := True
  else DBCheckBox8.Checked := False;

  if( cdsBuscaGuiaCKOD.Value = 'S')then
  DBCheckBox9.Checked := True
  else DBCheckBox9.Checked := False;

  if( cdsBuscaGuiaCKOE.Value = 'S')then
  DBCheckBox10.Checked := True
  else DBCheckBox10.Checked := False;

  if( cdsBuscaGuiaCKAPV.Value = 'S')then
  DBCheckBox11.Checked := True
   else DBCheckBox11.Checked := False;

  if( cdsBuscaGuiaCKP.Value = 'S')then
  DBCheckBox12.Checked := True
   else DBCheckBox12.Checked := False;

  if( cdsBuscaGuiaCKAPA.Value = 'S')then
  DBCheckBox13.Checked := True
   else DBCheckBox13.Checked := False;
  if( cdsBuscaGuiaCKCP.Value = 'S')then
  DBCheckBox14.Checked := True
   else DBCheckBox14.Checked := False;
  if( cdsBuscaGuiaCKABD.Value = 'S')then
  DBCheckBox15.Checked := True
   else DBCheckBox15.Checked := False;
  if( cdsBuscaGuiaCKAP.Value = 'S')then
  DBCheckBox16.Checked := True
   else DBCheckBox16.Checked := False;

  if( cdsBuscaGuiaCKAGU.Value = 'S')then
  DBCheckBox17.Checked := True
   else DBCheckBox17.Checked := False;

  if( cdsBuscaGuiaCKAPN.Value = 'S')then
  DBCheckBox19.Checked := True
   else DBCheckBox19.Checked := False;

  if( cdsBuscaGuiaCKACV.Value = 'S')then
  DBCheckBox18.Checked := True
   else DBCheckBox18.Checked := False;

  if( cdsBuscaGuiaCKAOM.Value = 'S')then
  DBCheckBox20.Checked := True
   else DBCheckBox20.Checked := False;

  ///// Fim ficha atendimento

      /// inicio  ASO
      if(cdsBuscaGuiaAPTO.AsString <> '') then
      dbrTipo.ItemIndex := StrToInt(cdsBuscaGuiaAPTO.AsString);
      Edit7.Text        := cdsBuscaGuiaGRAU_RISCO.AsString ;


      DBComboBox3.Text  := cdsBuscaGuiaNOME_EXECUTANTE.AsString ;
    }
      if(cdsBuscaGuiaDATA1.AsDateTime <> 0 )then
      begin
        JvDateEdit1.Date  := cdsBuscaGuiaDATA1.AsDateTime ;
        CheckBox1.Checked := True;
      end;

      if(cdsBuscaGuiaDATA2.AsDateTime <> 0 )then
      begin
        JvDateEdit2.Date  := cdsBuscaGuiaDATA2.AsDateTime ;
        CheckBox2.Checked := True;
   /////     JvDateEdit14.Date  := cdsBuscaGuiaDATA14.AsDateTime ;
      end;

      if(cdsBuscaGuiaDATA3.AsDateTime <> 0 )then
      begin
        JvDateEdit3.Date  := cdsBuscaGuiaDATA3.AsDateTime ;
        CheckBox3.Checked := True;
         /////  .Date  := cdsBuscaGuiaDATA16.AsDateTime ;
      end;

      if(cdsBuscaGuiaDATA4.AsDateTime <> 0 )then
      begin
        JvDateEdit4.Date  := cdsBuscaGuiaDATA4.AsDateTime ;
        CheckBox4.Checked := True;
   /////        JvDateEdit17.Date  := cdsBuscaGuiaDATA17.AsDateTime ;
      end;
      if(cdsBuscaGuiaDATA5.AsDateTime <> 0 )then
      begin
        JvDateEdit5.Date  := cdsBuscaGuiaDATA5.AsDateTime ;
        CheckBox5.Checked := True;
    /////       JvDateEdit31.Date  := cdsBuscaGuiaDATA31.AsDateTime ;
      end;
      if(cdsBuscaGuiaDATA6.AsDateTime <> 0 )then
      begin
        JvDateEdit6.Date  := cdsBuscaGuiaDATA6.AsDateTime ;
        CheckBox6.Checked := True;
     /////      JvDateEdit30.Date  := cdsBuscaGuiaDATA30.AsDateTime ;
      end;

      if(cdsBuscaGuiaDATA7.AsDateTime <> 0 )then
      begin
        JvDateEdit7.Date  := cdsBuscaGuiaDATA7.AsDateTime ;
        CheckBox7.Checked := True;
    /////       JvDateEdit25.Date  := cdsBuscaGuiaDATA25.AsDateTime ;
      end;
      if(cdsBuscaGuiaDATA8.AsDateTime <> 0 )then
      begin
        JvDateEdit8.Date  := cdsBuscaGuiaDATA8.AsDateTime ;
        CheckBox8.Checked := True;
    /////       JvDateEdit20.Date  := cdsBuscaGuiaDATA20.AsDateTime ;
      end;
      if(cdsBuscaGuiaDATA9.AsDateTime <> 0 )then
      begin
        JvDateEdit9.Date  := cdsBuscaGuiaDATA9.AsDateTime ;
        CheckBox9.Checked := True;
    /////       JvDateEdit21.Date  := cdsBuscaGuiaDATA21.AsDateTime ;
      end;
      if(cdsBuscaGuiaDATA10.AsDateTime <> 0 )then
      begin
        JvDateEdit10.Date  := cdsBuscaGuiaDATA10.AsDateTime ;
        CheckBox10.Checked := True;
   /////        JvDateEdit22.Date  := cdsBuscaGuiaDATA22.AsDateTime ;
      end;
      if(cdsBuscaGuiaDATA11.AsDateTime <> 0 )then
      begin
        JvDateEdit11.Date  := cdsBuscaGuiaDATA11.AsDateTime ;
        CheckBox11.Checked := True;
   /////        JvDateEdit32.Date  := cdsBuscaGuiaDATA32.AsDateTime ;
      end;

      if(cdsBuscaGuiaDATA12.AsDateTime <> 0 )then
      begin
        JvDateEdit12.Date  := cdsBuscaGuiaDATA12.AsDateTime ;
        CheckBox12.Checked := True;
      end;

      if(cdsBuscaGuiaDATA13.AsDateTime <> 0 )then
      begin
        JvDateEdit13.Date  := cdsBuscaGuiaDATA13.AsDateTime ;
        CheckBoxOu1.Checked := True;
        DBEdit73.Text := cdsBuscaGuiaEXAME13.Text;
   /////        JvDateEdit33.Date  := cdsBuscaGuiaDATA33.AsDateTime ;
      end;

       //anexos ASO

      if(cdsBuscaGuiaCKANEXO1.AsString  = 'S')then
      begin
      //  cdsBuscaGuiaEXAME13.AsString := 'Anexo 1 Ruido Cont/ Interminitente';
        CheckBox13.Checked := True ;
      end;

      if(cdsBuscaGuiaCKANEXO2.AsString     = 'S')then
      begin
       // cdsBuscaGuiaEXAME14.AsString := 'Anexo 2 Ruidos de Impacto';
        CheckBox14.Checked := True ;
      end;
      if(cdsBuscaGuiaCKANEXO3.AsString     = 'S')then
      begin
       // cdsBuscaGuiaEXAME15.AsString := 'Anexo 3 Calor';
        CheckBox15.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO4.AsString     = 'S')then
      begin
        //cdsBuscaGuiaEXAME16.AsString := 'Anexo 5 Radiações Ionizantes';
        CheckBox16.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO5.AsString     = 'S')then
      begin
        //cdsBuscaGuiaEXAME17.AsString := 'Anexo 6 Hiperbarica';
        CheckBox17.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO6.AsString    = 'S')then
      begin
        //cdsBuscaGuiaEXAME18.AsString := 'Anexo 9 Frio';
        CheckBox18.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO7.AsString     = 'S')then
      begin
        //cdsBuscaGuiaEXAME19.AsString := 'Anexo 10 Umidade';
        CheckBox19.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO8.AsString     = 'S')then
      begin
        //cdsBuscaGuiaEXAME20.AsString := 'Anexo 11 Agentes Quimicos';
        CheckBox20.Checked := True ;
      end;
      if(cdsBuscaGuiaCKANEXO9.AsString     = 'S')then
      begin
        //cdsBuscaGuiaEXAME21.AsString := 'Anexo 12 Poeiras';
        CheckBox21.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO10.AsString     = 'S')then
      begin
        //cdsBuscaGuiaEXAME22.AsString := 'Anexo 14 Agentes Biologicos';
        CheckBox22.Checked := True ;
      end;
      if(cdsBuscaGuiaCKANEXO11.AsString     = 'S')then
      begin
        //cdsBuscaGuiaEXAME23.AsString := 'Osteo Muscular';
        CheckBox23.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO12.AsString     = 'S')then
      begin
        //cdsBuscaGuiaEXAME24.AsString := 'Ergonômico';
        CheckBox24.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO13.AsString     = 'S')then
      begin
        //cdsBuscaGuiaEXAME25.AsString := 'Apto Trabalhar em Altura';
        CheckBox25.Checked := True ;
      end;
      if(cdsBuscaGuiaCKANEXO14.AsString     = 'S')then
      begin
        //cdsBuscaGuiaEXAME26.AsString := 'Apto Op. de Empilhadeira';
        CheckBox26.Checked := True ;
      end;
      if(cdsBuscaGuiaCKANEXO15.AsString     = 'S')then
      begin
        //cdsBuscaGuiaEXAME27.AsString := 'Manipular Alimentos';
        CheckBox27.Checked := True;
      end;

      if((cdsBuscaGuiaCKA.AsString <> '')or (cdsBuscaGuiaCKA.AsString <> 'N'))then
      radAlcool.ItemIndex := StrToInt(cdsBuscaGuiaALCOOL.AsString);

      //Fim do  ASO

  if btnInc.Enabled = false
  then Exit;
 // if not dsBuscaGuia.DataSet.Active then
 //   dsBuscaGuia.DataSet.open;

  dsBuscaGuia.DataSet.Edit;

 // DMSaude.cdsGuias.Open;
 // DMSaude.dsGuias.DataSet.Edit;


end;

procedure TfDependente.BitBtn11Click(Sender: TObject);
var x: Integer;
begin
for x := 0 to (ComponentCount) - 1 do
  begin
     //ShowMessage (IntToStr(Components[x].tag));
     //Verificação da propriedade pTag
     if (TComponent(Components[x]).Tag<>100) then
       begin
          if (Components[x] is TDBCheckBox) then
           (Components[x] as TDBCheckBox).Checked := False;

          if (Components[x] is TJvDateEdit) then
           (Components[x] as TJvDateEdit).Text:=EmptyStr;

       end;
  end;


end;




end.







