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
    DBEdit50: TDBEdit;
    radAlcool: TDBRadioGroup;
    Label62: TLabel;
    BitBtn8: TBitBtn;
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
    DBEdit81: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
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
    btndJ1: TBitBtn;
    btnD1: TBitBtn;
    btnD2: TBitBtn;
    btnD3: TBitBtn;
    btnD4: TBitBtn;
    btnD5: TBitBtn;
    btnD6: TBitBtn;
    btnD7: TBitBtn;
    btnD9: TBitBtn;
    btnD10: TBitBtn;
    btnD11: TBitBtn;
    btnD12: TBitBtn;
    btnD13: TBitBtn;
    btnD8: TBitBtn;
    btnD14: TBitBtn;
    btnD15: TBitBtn;
    btnD16: TBitBtn;
    btnD17: TBitBtn;
    btnD18: TBitBtn;
    btnD19: TBitBtn;
    btnD20: TBitBtn;
    btnD21: TBitBtn;
    btnD22: TBitBtn;
    btndJ2: TBitBtn;
    btndJ3: TBitBtn;
    btndJ4: TBitBtn;
    btndJ5: TBitBtn;
    btndJ6: TBitBtn;
    btndJ7: TBitBtn;
    btndJ8: TBitBtn;
    btndJ9: TBitBtn;
    btndJ10: TBitBtn;
    btndJ11: TBitBtn;
    btndJ12: TBitBtn;
    btndJ13: TBitBtn;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox35: TCheckBox;
    CheckBox36: TCheckBox;
    CheckBox37: TCheckBox;
    CheckBox38: TCheckBox;
    CheckBox39: TCheckBox;
    Label110: TLabel;
    Label111: TLabel;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    CheckBox43: TCheckBox;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;
    CheckBox49: TCheckBox;
    CheckBox50: TCheckBox;
    CheckBox51: TCheckBox;
    CheckBox52: TCheckBox;
    CheckBox53: TCheckBox;
    CheckBox54: TCheckBox;
    CheckBox55: TCheckBox;
    CheckBox56: TCheckBox;
    CheckBox57: TCheckBox;
    CheckBox58: TCheckBox;
    CheckBox59: TCheckBox;
    CheckBox60: TCheckBox;
    CheckBox61: TCheckBox;
    Label63: TLabel;
    btnAP: TBitBtn;
    dbrTipo1: TDBRadioGroup;
    btnAP1: TBitBtn;
    DBComboBox4: TDBComboBox;
    Label112: TLabel;
    btnExc: TBitBtn;
    btnATUA: TBitBtn;
    CheckBox62: TCheckBox;
    DBEdit80: TDBEdit;
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
    scdsBuscaGuiaCASE: TStringField;
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
    cdsBuscaGuiaCASE: TStringField;
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
    procedure carregaASO;
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnD1Click(Sender: TObject);
    procedure btnD2Click(Sender: TObject);
    procedure btnD3Click(Sender: TObject);
    procedure btnD4Click(Sender: TObject);
    procedure btnD5Click(Sender: TObject);
    procedure btnD6Click(Sender: TObject);
    procedure btnD7Click(Sender: TObject);
    procedure btnD8Click(Sender: TObject);
    procedure btnD9Click(Sender: TObject);
    procedure btnD10Click(Sender: TObject);
    procedure btnD11Click(Sender: TObject);
    procedure btnD12Click(Sender: TObject);
    procedure btnD13Click(Sender: TObject);
    procedure btnD14Click(Sender: TObject);
    procedure btnD15Click(Sender: TObject);
    procedure btnD16Click(Sender: TObject);
    procedure btnD17Click(Sender: TObject);
    procedure btnD18Click(Sender: TObject);
    procedure btnD19Click(Sender: TObject);
    procedure btnD20Click(Sender: TObject);
    procedure btnD21Click(Sender: TObject);
    procedure btnD22Click(Sender: TObject);
    procedure btndJ1Click(Sender: TObject);
    procedure btndJ2Click(Sender: TObject);
    procedure btndJ3Click(Sender: TObject);
    procedure btndJ4Click(Sender: TObject);
    procedure btndJ5Click(Sender: TObject);
    procedure btndJ6Click(Sender: TObject);
    procedure btndJ7Click(Sender: TObject);
    procedure btndJ8Click(Sender: TObject);
    procedure btndJ9Click(Sender: TObject);
    procedure btndJ10Click(Sender: TObject);
    procedure btndJ11Click(Sender: TObject);
    procedure btndJ12Click(Sender: TObject);
    procedure btndJ13Click(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure CheckBox28Click(Sender: TObject);
    procedure CheckBox34Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox40Click(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnAPClick(Sender: TObject);
    procedure btnAP1Click(Sender: TObject);
    procedure DBComboBox4Click(Sender: TObject);
    procedure DBComboBox3Click(Sender: TObject);
    procedure btnExcClick(Sender: TObject);
    procedure btnATUAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   nGuia : string ;  
   function cpf(num: string): boolean;
   function ValidaCNS(Num: string):Boolean;
   function ValidaCNS_PROV(Num: string):Boolean;
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

      DBComboBox4.Clear;
      if cds_repfor.Active then
        cds_repfor.Close;
      cds_repfor.Params[0].AsInteger := 139;
      cds_repfor.Open;
      While not cds_repfor.Eof do
      begin
        DBComboBox4.Items.Add(cds_repforNOME_REPRFOR.AsString
                             + '- CRM -' + cds_repforNUMERO.AsString
                             + '- CPF -' + cds_repforCPF.AsString
                             + '- PIS -' + cds_repforBAIRRO.AsString
                             );
        cds_repfor.Next;
      end;
      DBComboBox4.Text := '';


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
var dataAD , dataRD ,dataNAS ,dataCD:  TDateTime;
    TD: TTransactionDesc;
    strD , func : string;
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

 //  MessageDlg('Data de  Alteração  Será Atualizado  ', mtConfirmation, [mbYes, mbNo], 0);

   DMSaude.cdsDependenteDTAALTERA.AsDateTime := now;

   if (DMSaude.cdsDependente.State in [dsInsert]) then  //,dsEdit
   begin
    inherited;
   end;
   //
  //

     if (DMSaude.cdsDependente.State in [dsEdit]) then
    // if (DMSaude.cdsDependente.State in [dsBrowse]) then
     begin
       func := DMSaude.cdsDependenteNOMECLIENTE.AsString ;

       if(DBEdit14.Text <> '  /  /    ' )then
         dataAD := StrToDateTime(DBEdit14.Text);

       if(DBEdit3.Text <> '  /  /    ' )then
         dataNAS := StrToDateTime(DBEdit3.Text);

       if(DBEdit5.Text <> '  /  /    ' )then
         dataCD := StrToDateTime(DBEdit5.Text);

       if(DBEdit10.Text <> '  /  /    ' )then
         dataRD := StrToDateTime(DBEdit10.Text);

       TD.TransactionID := 1;
       TD.IsolationLevel := xilREADCOMMITTED;
       dm.sqlsisAdimin.StartTransaction(TD);
       strD := ' UPDATE CLIENTES SET STATUS = ' + QuotedStr(DBRadioGroup1.Value) ;

              if(DBEdit14.Text <> '  /  /    ' )then
              strD := strD + ', DTAALTERA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dataAD));

              if(DBEdit10.Text <> '  /  /    ' )then
              strD := strD + ', DATARESC = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dataRD));

              if(DBEdit3.Text <> '  /  /    ' )then
              strD := strD + ', DATANASC = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dataNAS));

              if(DBEdit5.Text <> '  /  /    ' )then
              strD := strD + ', DATACADASTRO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dataCD));

              strD := strD + ',CONTATO      = ' + QuotedStr(DBComboBox1.Text);
              strD := strD + ',MARCA        = ' + QuotedStr(DBComboBox2.Text);
              strD := strD + ',NOMECLIENTE  = ' + QuotedStr(DMSaude.cdsDependenteNOMECLIENTE.AsString);
              strD := strD + ',NOMEMAE      = ' + QuotedStr(DBEdit8.Text);
              strD := strD + ',CNPJ         = ' + QuotedStr(DBEdit13.Text);
              strD := strD + ',INSCESTADUAL = ' + QuotedStr(DBEdit6.Text);
              strD := strD + ',IP           = ' + QuotedStr(DBEdit25.Text);
              strD := strD + ',OBS          = ' + QuotedStr(DBEdit18.Text);

              strD := strD +   ' WHERE RAZAOSOCIAL = ' + QuotedStr(DMSaude.cdsClienteRAZAOSOCIAL.AsString) ;
            //  strD := strD +  ' and NOMECLIENTE   = ' + QuotedStr(DBEdit2.Text) ;
              strD := strD +  ' and GRUPO_CLIENTE = ' + QuotedStr('PCMSO');
              strD := strD +  ' and RA = ' + QuotedStr(DBEdit11.Text);   
       try
         dm.sqlsisAdimin.ExecuteDirect(strD);
         dm.sqlsisAdimin.Commit(TD);
         MessageDlg('Cadastro Alterado com Sucesso ', mtWarning, [mbOK], 0);
         DtSrc.DataSet.Post;
       except
         dm.sqlsisAdimin.Rollback(TD);
         MessageDlg('Erro ao Alterar .', mtError, [mbOK], 0);
         exit;
       end;
     end;


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
var dataAD , dataRD :  TDateTime;
    TD: TTransactionDesc;
    str1 : string;
begin
 { inherited;
  if(DMSaude.cdsDependente.State in [dsBrowse]) then
    DMSaude.cdsDependente.Edit;
  DMSaude.cdsDependenteSTATUS.AsInteger := 1;
  DMSaude.cdsDependenteDATARESC.AsDateTime := now;
  DMSaude.cdsDependenteDTAALTERA.AsDateTime := now;

  DMSaude.cdsDependente.ApplyUpdates(0);
 }

     dataAD := StrToDateTime(DBEdit14.Text);
     dataRD := StrToDateTime(DBEdit10.Text);

     if (grupo = 'PCMSO') then
     begin
       TD.TransactionID := 1;
       TD.IsolationLevel := xilREADCOMMITTED;
       dm.sqlsisAdimin.StartTransaction(TD);
       str1 := ' UPDATE CLIENTES SET STATUS = ' + QuotedStr('1') +
               ', DTAALTERA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dataAD)) +
               ', DATARESC     = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dataRD)) +

               ' WHERE RAZAOSOCIAL = ' + QuotedStr(DMSaude.cdsClienteRAZAOSOCIAL.AsString) +
               ' and NOMECLIENTE   = ' + QuotedStr(DBEdit2.Text) +
               ' and GRUPO_CLIENTE = ' + QuotedStr('PCMSO')+
               ' and RA = ' + QuotedStr(DBEdit11.Text);

       try
         dm.sqlsisAdimin.ExecuteDirect(str1);
         dm.sqlsisAdimin.Commit(TD);
         MessageDlg('Cadastro Alterado ', mtWarning, [mbOK], 0);

       except
         dm.sqlsisAdimin.Rollback(TD);
         MessageDlg('Erro ao Alterar .', mtError, [mbOK], 0);
         exit;
       end;
     end;





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
 {begin
  inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  DMSaude.cdsDependenteDATARESC.Text := '';
  }

var      TD: TTransactionDesc;
         strf : string;
begin
// inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  strf := 'UPDATE CLIENTES SET DATARESC =  null ' +
  ' WHERE CODCLIENTE  = ' + IntToStr(DMSaude.cdsDependenteCODCLIENTE.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(strf);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit10.Text := '';
  DMSaude.cdsDependenteDATARESC.Text := '';

end;

procedure TfDependente.btnIncClick(Sender: TObject);

begin
  limparCampos;

  btnInc.Enabled := True;    

//  MaskEdit1.Text := '  /  /    ';
//  MaskEdit2.Text := '  /  /    ';
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
     data12,data13,data14,data15,data16,data17,data18,data19,data20,data21,data22,dataATEN : TDateTime;
     vCKH,vCKQ ,vCKA ,vFUMO,vCKOD,vCKOE,vCKAOM : string;

     vAPTO : integer;
begin
 // inherited;


  if (DMSaude.cdsGuias.State in [dsInsert]) then
  begin
    Edit2.Text := nGuia;
    DMSaude.cdsGuiasNUMERO_GUIA.AsString := nGuia;

  {
    if(MaskEdit1.Text = '  /  /    ')then
    begin
      MessageDlg('Preencha a Data de Emissão', mtWarning, [mbOK], 0);
      MaskEdit1.SetFocus;
      Exit;
    end;
    }
    DMSaude.cdsGuiasDATA_EMISSAO.AsDateTime := StrToDate(MaskEdit1.Text);


    if(MaskEdit2.Text <> '  /  /    ')then
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
     // ASO  30/11/2018
    if(dbrTipo.ItemIndex = -1) then
    DMSaude.cdsGuiasAPTO.AsInteger := 9 ; // nada
    if(dbrTipo.ItemIndex = 0) then
    DMSaude.cdsGuiasAPTO.AsInteger := 0 ; // apto
    if(dbrTipo.ItemIndex = 1) then
    DMSaude.cdsGuiasAPTO.AsInteger := 1 ; // apto inapto
    if(dbrTipo.ItemIndex = 2) then
    DMSaude.cdsGuiasAPTO.AsInteger := 2 ; // apto ccom restrição

    // Complemento
    if(dbrTipo1.ItemIndex = -1) then
    DMSaude.cdsGuiasAPTO.AsInteger := 9 ; // apto
    if(dbrTipo1.ItemIndex = 0) then
    DMSaude.cdsGuiasAPTO.AsInteger := 0 ; // apto
    if(dbrTipo1.ItemIndex = 1) then
    DMSaude.cdsGuiasAPTO.AsInteger := 1 ; // apto inapto
    if(dbrTipo1.ItemIndex = 2) then
    DMSaude.cdsGuiasAPTO.AsInteger := 2 ; // apto ccom restrição


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
    DMSaude.cdsGuiasDATARETORNO.AsString     := DMSaude.cdsDependenteDATANASC.AsString;

    //inicio aba 1
    if(CheckBox28.Checked = True) then
    DMSaude.cdsGuiasCKQ.AsString := 'S'; //  := DBEdit77.Text;
    DMSaude.cdsGuiasQUEIXAP.Text                    := DBEdit26.Text;

    if(CheckBox29.Checked = True) then
    DMSaude.cdsGuiasCKH.AsString := 'S'; //  := DBEdit78.Text;
    DMSaude.cdsGuiasHISTORICOMEDICO.AsString        := DBEdit27.Text;

    if(CheckBox30.Checked = True) then
    DMSaude.cdsGuiasCKA.AsString := 'S'; //  := DBEdit79.Text;


    if(DMSaude.cdsGuiasCKA.AsString = 'S')then
    begin
      if(radAlcool.ItemIndex = 0) then
      Dmsaude.cdsGuiasALCOOL.AsString := '0' ;
      if(radAlcool.ItemIndex = 1) then
      Dmsaude.cdsGuiasALCOOL.AsString := '1' ;
      if(radAlcool.ItemIndex = 2) then
      Dmsaude.cdsGuiasALCOOL.AsString := '2' ;
    end;

    if(CheckBox31.Checked = True) then
    DMSaude.cdsGuiasFUMO.AsString := 'S'; //    := DBEdit81.Text;

    //  DMSaude.cdsGuiasCKAF.AsString     := DBEdit80.Text;
      DMSaude.cdsGuiasANTECEDENTESFAMILIARES.AsString := DBEdit28.Text;

    //  DMSaude.cdsGuiasCKC.AsString        := DBEdit82.Text;
      DMSaude.cdsGuiasCICATRIZES.AsString := DBEdit29.Text;

    //  DMSaude.cdsGuiasCKAPE.AsString                  := DBEdit83.Text;
      DMSaude.cdsGuiasANTECEDENTESPESSOAIS.AsString   := DBEdit30.Text;

    //  DMSaude.cdsGuiasCKACI.AsString                  := DBEdit84.Text;
      DMSaude.cdsGuiasACIDENTES.AsString              := DBEdit42.Text;

      if(CheckBox32.Checked = True) then
      DMSaude.cdsGuiasCKOD.AsString  := 'S'; //   := DBEdit85.Text;
      if(CheckBox33.Checked = True) then
      DMSaude.cdsGuiasCKOE.AsString  := 'S'; //   := DBEdit86.Text;


      DMSaude.cdsGuiasPESO.AsString                     := DBEdit31.Text;
      DMSaude.cdsGuiasALTURA.AsString                   := DBEdit32.Text;
      DMSaude.cdsGuiasIMC.AsString                      := DBEdit33.Text;
      DMSaude.cdsGuiasPA.AsString                       := DBEdit35.Text;
      DMSaude.cdsGuiasFC.AsString                       := DBEdit36.Text;

   //   DMSaude.cdsGuiasCKAPV.AsString     := DBEdit87.Text;
      DMSaude.cdsGuiasMOLESTIA.AsString               := DBEdit34.Text;

    //  DMSaude.cdsGuiasCKP.AsString       := DBEdit88.Text;
      DMSaude.cdsGuiasPELE.AsString                   := DBEdit37.Text;

   //   DMSaude.cdsGuiasCKAPA.AsString     := DBEdit89.Text;
      DMSaude.cdsGuiasOUVIDOS.AsString                := DBEdit38.Text;

   //   DMSaude.cdsGuiasCKCP.AsString      := DBEdit90.Text;
      DMSaude.cdsGuiasCABECA.AsString                 := DBEdit39.Text;

   //   DMSaude.cdsGuiasCKABD.AsString     := DBEdit91.Text;
      DMSaude.cdsGuiasABDOMEN.AsString                := DBEdit40.Text;

   //   DMSaude.cdsGuiasCKAP.AsString     := DBEdit92.Text;
      DMSaude.cdsGuiasAP.AsString                     := DBEdit41.Text;

   //   DMSaude.cdsGuiasCKACV.AsString     := DBEdit93.Text;
      DMSaude.cdsGuiasAPCARDIO.AsString               := DBEdit43.Text;

   //   DMSaude.cdsGuiasCKAPN.AsString     := DBEdit94.Text;
      DMSaude.cdsGuiasSISTEMANERVOSO.AsString         := DBEdit44.Text;

   //   DMSaude.cdsGuiasCKAGU.AsString     := DBEdit95.Text;
      DMSaude.cdsGuiasAPURO.AsString                  := DBEdit45.Text;

      DMSaude.cdsGuiasCKAOM.AsString                  := DBEdit80.Text;
      DMSaude.cdsGuiasAOSTEO.AsString                 := DBEdit46.Text;

    DMSaude.cdsGuiasOBSFICHA.AsString                 := DBEdit47.Text;


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

     // audiometria
    if(CheckBox34.Checked = True) then
    DMSaude.cdsGuiasA.Value    := DBEdit74.Text;
    if(CheckBox35.Checked = True) then
    DMSaude.cdsGuiasI.Value    := DBEdit76.Text;
    if(CheckBox36.Checked = True) then
    DMSaude.cdsGuiasADA.Value  := DBEdit140.Text;
    if(CheckBox37.Checked = True) then
    DMSaude.cdsGuiasAIA.Value  := DBEdit141.Text;
    if(CheckBox38.Checked = True) then
    DMSaude.cdsGuiasPAIR.Value := DBEdit142.Text;
    if(CheckBox39.Checked = True) then
    DMSaude.cdsGuiasDANO.Value := DBEdit143.Text;

   {
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
   }


    // acima 07/11
    if(JvDateEdit1.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA1.AsDateTime := JvDateEdit1.Date;
      DMSaude.cdsGuiasCK1.AsString     := 'S';
      DMSaude.cdsGuiasEXAME1.Text      := 'Exame Clinico';   // 1
    end;

    if(JvDateEdit2.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA2.AsDateTime := JvDateEdit1.Date;
      DMSaude.cdsGuiasCK2.AsString     := 'S';
      DMSaude.cdsGuiasEXAME2.Text      := 'Hemograma';   // 2
    end;

    if(JvDateEdit3.Date <> 0)then
    begin
      DMSaude.cdsGuiasDATA3.AsDateTime := JvDateEdit3.Date;
      DMSaude.cdsGuiasCK3.AsString     := 'S';
      DMSaude.cdsGuiasEXAME3.Text      := 'Colinesterase';   // 3  16
    end;

    if(JvDateEdit4.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA4.AsDateTime := JvDateEdit4.Date;
      DMSaude.cdsGuiasCK4.AsString     := 'S';
      DMSaude.cdsGuiasEXAME4.Text      := 'Pratoparasitologico';   // 4  17
    end;

    if(JvDateEdit5.Date <> 0)then
    begin
      DMSaude.cdsGuiasDATA5.AsDateTime := JvDateEdit5.Date;
      DMSaude.cdsGuiasCK5.AsString     := 'S';
      DMSaude.cdsGuiasEXAME5.Text      := 'Coprocultura';      // 5  31
    end;

    if(JvDateEdit6.Date <> 0)then
    begin
      DMSaude.cdsGuiasDATA6.AsDateTime := JvDateEdit6.Date;
      DMSaude.cdsGuiasCK6.AsString     := 'S';
      DMSaude.cdsGuiasEXAME6.Text      := 'VDRL';              //  6  30
    end;

    if(JvDateEdit7.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA7.AsDateTime := JvDateEdit7.Date;
      DMSaude.cdsGuiasCK7.AsString     := 'S';
      DMSaude.cdsGuiasEXAME7.Text      := 'Espirometria';       // 7  25
    end;

    if(JvDateEdit8.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA8.AsDateTime := JvDateEdit8.Date;
      DMSaude.cdsGuiasCK8.AsString     := 'S';
      DMSaude.cdsGuiasEXAME8.Text      := 'Audiometria';         // 8  20
    end;

    if(JvDateEdit9.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA9.AsDateTime := JvDateEdit9.Date;
      DMSaude.cdsGuiasCK9.AsString     := 'S';
      DMSaude.cdsGuiasEXAME9.Text      := 'RX Tórax';           // 9  21
    end;

    if(JvDateEdit10.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA10.AsDateTime := JvDateEdit10.Date;
      DMSaude.cdsGuiasCK10.AsString     := 'S';
      DMSaude.cdsGuiasEXAME10.Text      := 'ECG';               // 10  22
    end;

    if(JvDateEdit11.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA11.AsDateTime := JvDateEdit11.Date;
      DMSaude.cdsGuiasCK11.AsString     := 'S';
      DMSaude.cdsGuiasEXAME11.Text      := 'EEG';             // 11  32
    end;

    if(JvDateEdit12.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA12.AsDateTime := JvDateEdit12.Date;
      DMSaude.cdsGuiasCK12.AsString     := 'S';
      DMSaude.cdsGuiasEXAME12.Text      := 'Oftalmo/Ac.Visual';    // 12
    end;

    if(JvDateEdit13.Date <> 0 )then
    begin
      DMSaude.cdsGuiasDATA13.AsDateTime := JvDateEdit13.Date;
      DMSaude.cdsGuiasCK13.AsString     := 'S';
      DMSaude.cdsGuiasEXAME13.Text      := DBEdit73.Text;   // outros1  13  33
    end;


    ////////////// fim do dos JvDateEdit ASO


    if(DBEdit97.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA14.AsDateTime := StrToDate(DBEdit97.Text);
      DMSaude.cdsGuiasDATA2.AsDateTime  := StrToDate(DBEdit97.Text);
      DMSaude.cdsGuiasCK2.AsString      := 'S';
      DMSaude.cdsGuiasEXAME2.Text       := 'Hemograma';   // 2
    end;

   // if(DBEdit75.Text <> '')then
   //   DMSaude.cdsGuiasCKA14.AsString      := DBEdit75.Text;
    if(CheckBox40.Checked = true )then
    DMSaude.cdsGuiasCKA14.AsString := 'S';
      DMSaude.cdsGuiasALTERADO14.AsString := DBEdit48.Text;
      DMSaude.cdsGuiasEXAME14.Text        := 'Hemograma';      // 14


    if(DBEdit98.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA15.AsDateTime   := StrToDate(DBEdit98.Text);
    end;
   // if(DBEdit119.Text <> '')then
    if(CheckBox41.Checked = true )then
      DMSaude.cdsGuiasCKA15.AsString      := 'S'; //:= DBEdit119.Text;
      DMSaude.cdsGuiasALTERADO15.AsString := DBEdit49.Text;
      DMSaude.cdsGuiasEXAME15.Text        := 'Plaquetas';      // 15


     if(DBEdit99.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA16.AsDateTime   := StrToDate(DBEdit99.Text);
      DMSaude.cdsGuiasDATA3.AsDateTime    := StrToDate(DBEdit99.Text);
      DMSaude.cdsGuiasCK3.AsString        := 'S';
      DMSaude.cdsGuiasEXAME3.Text         := 'Colinesterase';   // 3  16
    end;
    //if(DBEdit120.Text <> '')then
    if(CheckBox42.Checked = true )then
      DMSaude.cdsGuiasCKA16.AsString      := 'S'; //DBEdit120.Text;
      DMSaude.cdsGuiasALTERADO16.AsString := DBEdit50.Text;
      DMSaude.cdsGuiasEXAME16.Text        := 'Colinesterase';       // 3  16

    if(DBEdit100.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA17.AsDateTime   := StrToDate(DBEdit100.Text);
      DMSaude.cdsGuiasDATA4.AsDateTime    := StrToDate(DBEdit100.Text);
      DMSaude.cdsGuiasCK4.AsString        := 'S';
      DMSaude.cdsGuiasEXAME4.Text         := 'Pratoparasitologico';   // 4  17

    end;
    //if(DBEdit121.Text <> '')then
    if(CheckBox43.Checked = true )then
      DMSaude.cdsGuiasCKA17.AsString      := 'S'; // DBEdit121.Text;
      DMSaude.cdsGuiasALTERADO17.AsString := DBEdit51.Text ;
      DMSaude.cdsGuiasEXAME17.Text        := 'Pratoparasitologico';    // 17


    if(DBEdit101.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA18.AsDateTime   := StrToDate(DBEdit101.Text);
    end;
    //if(DBEdit122.Text <> '')then
    if(CheckBox44.Checked = true )then
      DMSaude.cdsGuiasCKA18.AsString      := 'S'; // := DBEdit122.Text;
      DMSaude.cdsGuiasALTERADO18.AsString := DBEdit52.Text;
      DMSaude.cdsGuiasEXAME18.Text        := 'AST';                  // 18

    if(DBEdit102.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA19.AsDateTime   := StrToDate(DBEdit102.Text);
    end;
    //if(DBEdit123.Text <> '')then
    if(CheckBox45.Checked = true )then
      DMSaude.cdsGuiasCKA19.AsString      := 'S'; // := DBEdit123.Text;
      DMSaude.cdsGuiasALTERADO19.AsString := DBEdit53.Text;
      DMSaude.cdsGuiasEXAME19.Text        := 'ALT';                 //  19


    if(DBEdit103.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA20.AsDateTime   := StrToDate(DBEdit103.Text);
      DMSaude.cdsGuiasDATA8.AsDateTime    := StrToDate(DBEdit103.Text);
      DMSaude.cdsGuiasCK8.AsString        := 'S';
      DMSaude.cdsGuiasEXAME8.Text         := 'Audiometria';         // 8  20
    end;
    //if(DBEdit124.Text <> '')then
    if(CheckBox46.Checked = true )then
      DMSaude.cdsGuiasCKA20.AsString      := 'S'; // := DBEdit124.Text;
      DMSaude.cdsGuiasALTERADO20.AsString := DBEdit54.Text;
      DMSaude.cdsGuiasEXAME20.Text        := 'Audiometria';         // 20

    if(DBEdit104.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA21.AsDateTime   := StrToDate(DBEdit104.Text);
      DMSaude.cdsGuiasDATA9.AsDateTime    := StrToDate(DBEdit104.Text);
      DMSaude.cdsGuiasCK9.AsString        := 'S';
      DMSaude.cdsGuiasEXAME9.Text         := 'RX Tórax';           // 9  21
    end;
    //if(DBEdit125.Text <> '')then
    if(CheckBox47.Checked = true )then
      DMSaude.cdsGuiasCKA21.AsString      := 'S'; // := DBEdit125.Text;
      DMSaude.cdsGuiasALTERADO21.AsString := DBEdit55.Text;
      DMSaude.cdsGuiasEXAME21.Text        := 'RX Tórax';         //  21


    if(DBEdit105.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA22.AsDateTime   := StrToDate(DBEdit105.Text);
      DMSaude.cdsGuiasDATA10.AsDateTime   := StrToDate(DBEdit105.Text);
      DMSaude.cdsGuiasCK10.AsString       := 'S';
      DMSaude.cdsGuiasEXAME10.Text        := 'ECG';               // 10  22
    end;
    //if(DBEdit126.Text <> '')then
    if(CheckBox48.Checked = true )then
      DMSaude.cdsGuiasCKA22.AsString      := 'S'; // := DBEdit126.Text;
      DMSaude.cdsGuiasALTERADO22.AsString := DBEdit56.Text;
      DMSaude.cdsGuiasEXAME22.Text        := 'ECG';                 //  22


    if(DBEdit106.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA23.AsDateTime   := StrToDate(DBEdit106.Text);;
    end;
    //if(DBEdit127.Text <> '')then
    if(CheckBox49.Checked = true )then
      DMSaude.cdsGuiasCKA23.AsString      := 'S'; // := DBEdit127.Text;
      DMSaude.cdsGuiasALTERADO23.AsString := DBEdit57.Text;
      DMSaude.cdsGuiasEXAME23.Text        := 'Urina I';             // 23


    if(DBEdit107.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA24.AsDateTime   := StrToDate(DBEdit107.Text);
    end;
    //if(DBEdit128.Text <> '')then
    if(CheckBox50.Checked = true )then
      DMSaude.cdsGuiasCKA24.AsString      := 'S'; // := DBEdit128.Text;
      DMSaude.cdsGuiasALTERADO24.AsString := DBEdit58.Text;
      DMSaude.cdsGuiasEXAME24.Text        := 'Gama GT';             // 24

    if(DBEdit108.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA25.AsDateTime   := StrToDate(DBEdit108.Text);
      DMSaude.cdsGuiasDATA7.AsDateTime    := StrToDate(DBEdit108.Text);
      DMSaude.cdsGuiasCK7.AsString        := 'S';
      DMSaude.cdsGuiasEXAME7.Text         := 'Espirometria';       // 7  25
    end;
    //if(DBEdit129.Text <> '')then
    if(CheckBox51.Checked = true )then
      DMSaude.cdsGuiasCKA25.AsString      := 'S'; // := DBEdit129.Text;
      DMSaude.cdsGuiasALTERADO25.AsString := DBEdit59.Text;
      DMSaude.cdsGuiasEXAME25.Text        := 'Espirometria';       // 25


    if(DBEdit109.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA26.AsDateTime   := StrToDate(DBEdit109.Text);
    end;
    //if(DBEdit130.Text <> '')then
    if(CheckBox52.Checked = true )then
      DMSaude.cdsGuiasCKA26.AsString      := 'S'; // := DBEdit130.Text;
      DMSaude.cdsGuiasALTERADO26.AsString := DBEdit60.Text;
      DMSaude.cdsGuiasEXAME26.Text        := 'Ac Metil Hipúrico';         // 26


    if(DBEdit110.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA27.AsDateTime   := StrToDate(DBEdit110.Text);
    end;
    //if(DBEdit131.Text <> '')then
    if(CheckBox53.Checked = true )then
      DMSaude.cdsGuiasCKA27.AsString      := 'S'; // := DBEdit131.Text;
      DMSaude.cdsGuiasALTERADO27.AsString := DBEdit61.Text;
      DMSaude.cdsGuiasEXAME27.Text        := 'Ac Hipúrico';        // 27


    if(DBEdit111.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA28.AsDateTime   := StrToDate(DBEdit111.Text);
    end;
    //if(DBEdit132.Text <> '')then
    if(CheckBox54.Checked = true )then
      DMSaude.cdsGuiasCKA28.AsString      := 'S'; // := DBEdit132.Text;
      DMSaude.cdsGuiasALTERADO28.AsString := DBEdit62.Text;
      DMSaude.cdsGuiasEXAME28.Text        := 'Chumbo';              // 28


    if(DBEdit112.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA29.AsDateTime   := StrToDate(DBEdit112.Text);
    end;
    //if(DBEdit133.Text <> '')then
    if(CheckBox55.Checked = true )then
      DMSaude.cdsGuiasCKA29.AsString      := 'S'; // := DBEdit133.Text;
      DMSaude.cdsGuiasALTERADO29.AsString := DBEdit63.Text;
      DMSaude.cdsGuiasEXAME29.Text        := 'RX Coluna Lombar';    // 29


    if(DBEdit113.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA30.AsDateTime   := StrToDate(DBEdit113.Text);
      DMSaude.cdsGuiasDATA6.AsDateTime    := StrToDate(DBEdit113.Text);
    //06 08 19  DMSaude.cdsGuiasCKA30.AsString      := 'S'; // := DBEdit134.Text;
      DMSaude.cdsGuiasALTERADO30.AsString := DBEdit64.Text;
      DMSaude.cdsGuiasEXAME30.Text        := 'VDRL';    //  6  30
    end;

    if(CheckBox56.Checked = true )then
      DMSaude.cdsGuiasCKA6.AsString      := 'S'; // := DBEdit135.Text;
      DMSaude.cdsGuiasALTERADO6.AsString := DBEdit64.Text;
      DMSaude.cdsGuiasEXAME6.Text        := 'VDRL';    //



    if(DBEdit114.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA31.AsDateTime   := StrToDate(DBEdit114.Text);
      DMSaude.cdsGuiasDATA5.AsDateTime    := StrToDate(DBEdit114.Text);
      DMSaude.cdsGuiasCK5.AsString        := 'S';
      DMSaude.cdsGuiasEXAME5.Text         := 'Coprocultura';      // 5  31
    end;
    //if(DBEdit135.Text <> '')then
    if(CheckBox57.Checked = true )then
      DMSaude.cdsGuiasCKA31.AsString      := 'S'; // := DBEdit135.Text;
      DMSaude.cdsGuiasALTERADO31.AsString := DBEdit65.Text;
      DMSaude.cdsGuiasEXAME31.Text        := 'Coprocultura';    // 31


    if(DBEdit115.Text <> '  /  /    ') then
    begin
      DMSaude.cdsGuiasDATA32.AsDateTime   := StrToDate(DBEdit115.Text);
      DMSaude.cdsGuiasDATA11.AsDateTime   := StrToDate(DBEdit115.Text);
      DMSaude.cdsGuiasCK11.AsString       := 'S';
      DMSaude.cdsGuiasEXAME11.Text        := 'EEG';             // 11  32
    end;
    //if(DBEdit136.Text <> '')then
    if(CheckBox58.Checked = true )then
      DMSaude.cdsGuiasCKA32.AsString      := 'S'; // := DBEdit136.Text;
      DMSaude.cdsGuiasALTERADO32.AsString := DBEdit66.Text;
      DMSaude.cdsGuiasEXAME32.Text        := 'EEG';    // 32


    if(DBEdit116.Text <> '  /  /    ' )then
    begin
      DMSaude.cdsGuiasDATA33.AsDateTime  := StrToDate(DBEdit116.Text);
      DMSaude.cdsGuiasDATA13.AsDateTime  := StrToDate(DBEdit116.Text);
      DMSaude.cdsGuiasCK13.AsString      := 'S';
      DMSaude.cdsGuiasEXAME13.Text       := DBEdit70.Text;   // outros1  13  33
    end;
    //if(DBEdit137.Text <> '')then
    if(CheckBox59.Checked = true )then
      DMSaude.cdsGuiasCKA33.AsString     := 'S'; // := DBEdit137.Text;
      DMSaude.cdsGuiasEXAME33.Text       := DBEdit70.Text;      // outros1   33
      DMSaude.cdsGuiasALTERADO33.Text    := DBEdit67.Text;      // alterado 1

    if(DBEdit117.Text <> '  /  /    ' )then
    begin
      DMSaude.cdsGuiasDATA34.AsDateTime := StrToDate(DBEdit117.Text);
    end;
    //if(DBEdit138.Text <> '')then
    if(CheckBox60.Checked = true )then
      DMSaude.cdsGuiasCKA34.AsString    := 'S'; // := DBEdit138.Text;
      DMSaude.cdsGuiasEXAME34.Text      := DBEdit71.Text;      // outros2    34
      DMSaude.cdsGuiasALTERADO34.Text   := DBEdit68.Text;      // alterado 2


    if(DBEdit118.Text <> '  /  /    ' )then
    begin
      DMSaude.cdsGuiasDATA35.AsDateTime := StrToDate(DBEdit118.Text);
    end;
    //if(DBEdit139.Text <> '')then
    if(CheckBox61.Checked = true )then
      DMSaude.cdsGuiasCKA35.AsString    := 'S'; // := DBEdit139.Text;
      DMSaude.cdsGuiasEXAME35.Text      := DBEdit72.Text;     // outros3     35
      DMSaude.cdsGuiasALTERADO35.Text   := DBEdit69.Text;     // alterado 3


     DMSaude.cdsGuiasHISTORICOAV.Text   := DBEdit82.Text;
     DMSaude.cdsGuiasCONDUTA.Text       := DBEdit83.Text;

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
   // cdsBuscaGuia.Last;
    MessageDlg('Guia Gerado Com Sucesso .', mtInformation, [mbOK], 0);
  //  dsBuscaGuia.DataSet.Last;
    carregaASO;
  end;

  /// Editar  +++++++++++++++++++++++++++++++++++++++++++++++++++++ \\\\\

  if (cdsBuscaGuia.State in [dsEdit]) then
 // if (DMSaude.cdsGuias.State in [dsEdit]) then
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


      if(CheckBox34.Checked = False)then
      DBEdit74.Text := '';
      if(CheckBox34.Checked = True)then
      DBEdit74.Text := 'S';
      if( DBEdit74.Text = '')then
      vA := 'null';
      if( DBEdit74.Text <> '')then
      vA := QuotedStr(DBEdit74.Text);

      if(CheckBox35.Checked = False)then
      DBEdit76.Text := '';
      if(CheckBox35.Checked = True)then
      DBEdit76.Text := 'S';
      if( DBEdit76.Text = '')then
      vI := 'null';
      if( DBEdit76.Text <> '')then
      vI := QuotedStr(DBEdit76.Text);

      if(CheckBox36.Checked = False)then
      DBEdit140.Text := '';
      if(CheckBox36.Checked = True)then
      DBEdit140.Text := 'S';
      if( DBEdit140.Text = '')then
      vADA := 'null';
      if( DBEdit140.Text <> '')then
      vADA := QuotedStr(DBEdit140.Text);

      if(CheckBox37.Checked = False)then
      DBEdit141.Text := '';
      if(CheckBox37.Checked = True)then
      DBEdit141.Text := 'S';
      if( DBEdit141.Text = '')then
      vAIA := 'null';
      if( DBEdit141.Text <> '')then
      vAIA := QuotedStr(DBEdit141.Text);

      if(CheckBox38.Checked = False)then
      DBEdit142.Text := '';
      if(CheckBox38.Checked = True)then
      DBEdit142.Text := 'S';
      if( DBEdit142.Text = '')then
      vPAIR := 'null';
      if( DBEdit142.Text <> '')then
      vPAIR := QuotedStr(DBEdit142.Text);

      if(CheckBox39.Checked = False)then
      DBEdit143.Text := '';
      if(CheckBox39.Checked = True)then
      DBEdit143.Text := 'S';
      if( DBEdit143.Text = '')then
      vDANO := 'null';
      if( DBEdit143.Text <> '')then
      vDANO := QuotedStr(DBEdit143.Text);

      if(CheckBox40.Checked = False)then
      DBEdit75.Text := '';
      if(CheckBox40.Checked = True)then
      DBEdit75.Text := 'S';

      if(CheckBox41.Checked = False)then
      DBEdit119.Text := '';
      if(CheckBox41.Checked = True)then
      DBEdit119.Text := 'S';

      if(CheckBox42.Checked = False)then
      DBEdit120.Text := '';
      if(CheckBox42.Checked = True)then
      DBEdit120.Text := 'S';

      if(CheckBox43.Checked = False)then
      DBEdit121.Text := '';
      if(CheckBox43.Checked = True)then
      DBEdit121.Text := 'S';

      if(CheckBox44.Checked = False)then
      DBEdit122.Text := '';
      if(CheckBox44.Checked = True)then
      DBEdit122.Text := 'S';

      if(CheckBox45.Checked = False)then
      DBEdit123.Text := '';
      if(CheckBox45.Checked = True)then
      DBEdit123.Text := 'S';

      if(CheckBox46.Checked = False)then
      DBEdit124.Text := '';
      if(CheckBox46.Checked = True)then
      DBEdit124.Text := 'S';

      if(CheckBox47.Checked = False)then
      DBEdit125.Text := '';
      if(CheckBox47.Checked = True)then
      DBEdit125.Text := 'S';

      if(CheckBox48.Checked = False)then
      DBEdit126.Text := '';
      if(CheckBox48.Checked = True)then
      DBEdit126.Text := 'S';

      if(CheckBox49.Checked = False)then
      DBEdit127.Text := '';
      if(CheckBox49.Checked = True)then
      DBEdit127.Text := 'S';

      if(CheckBox50.Checked = False)then
      DBEdit128.Text := '';
      if(CheckBox50.Checked = True)then
      DBEdit128.Text := 'S';

      if(CheckBox51.Checked = False)then
      DBEdit129.Text := '';
      if(CheckBox51.Checked = True)then
      DBEdit129.Text := 'S';

      if(CheckBox52.Checked = False)then
      DBEdit130.Text := '';
      if(CheckBox52.Checked = True)then
      DBEdit130.Text := 'S';

      if(CheckBox53.Checked = False)then
      DBEdit131.Text := '';
      if(CheckBox53.Checked = True)then
      DBEdit131.Text := 'S';

      if(CheckBox54.Checked = False)then
      DBEdit132.Text := '';
      if(CheckBox54.Checked = True)then
      DBEdit132.Text := 'S';

      if(CheckBox55.Checked = False)then
      DBEdit133.Text := '';
      if(CheckBox55.Checked = True)then
      DBEdit133.Text := 'S';

      if(CheckBox56.Checked = False)then
      DBEdit134.Text := '';
      if(CheckBox56.Checked = True)then
      DBEdit134.Text := 'S';

      if(CheckBox57.Checked = False)then
      DBEdit135.Text := '';
      if(CheckBox57.Checked = True)then
      DBEdit135.Text := 'S';

      if(CheckBox58.Checked = False)then
      DBEdit136.Text := '';
      if(CheckBox58.Checked = True)then
      DBEdit136.Text := 'S';

      if(CheckBox59.Checked = False)then
      DBEdit137.Text := '';
      if(CheckBox59.Checked = True)then
      DBEdit137.Text := 'S';

      if(CheckBox60.Checked = False)then
      DBEdit138.Text := '';
      if(CheckBox60.Checked = True)then
      DBEdit138.Text := 'S';

      if(CheckBox61.Checked = False)then
      DBEdit139.Text := '';
      if(CheckBox61.Checked = True)then
      DBEdit139.Text := 'S';

           //Complemento
      if(dbrTipo1.ItemIndex = -1) then
      vAPTO := 9 ; // nada
      if(dbrTipo1.ItemIndex = 0) then
      vAPTO := 0 ; // apto
      if(dbrTipo1.ItemIndex = 1) then
      vAPTO := 1 ; // inapto
      if(dbrTipo1.ItemIndex = 2) then
      vAPTO := 2 ; // apto com restrição

      if(DBEdit97.Text <> '  /  /    ' )then
        data1  := StrToDateTime(DBEdit97.Text);
     // else
      if(DBEdit98.Text <> '  /  /    ' )then
        data2  := StrToDateTime(DBEdit98.Text);
     // else
      if(DBEdit99.Text <> '  /  /    ' )then
        data3  := StrToDateTime(DBEdit99.Text);
    //  else
      if(DBEdit100.Text <> '  /  /    ' )then
        data4  := StrToDateTime(DBEdit100.Text);
     // else
      if(DBEdit101.Text <> '  /  /    ' )then
        data5  := StrToDateTime(DBEdit101.Text);
    //  else
      if(DBEdit102.Text <> '  /  /    ' )then
        data6  := StrToDateTime(DBEdit102.Text);
     // else
      if(DBEdit103.Text <> '  /  /    ' )then
        data7  := StrToDateTime(DBEdit103.Text);
     // else
      if(DBEdit104.Text <> '  /  /    ' )then
        data8  := StrToDateTime(DBEdit104.Text);
     // else
      if(DBEdit105.Text <> '  /  /    ' )then
        data9  := StrToDateTime(DBEdit105.Text);
     // else
      if(DBEdit106.Text <> '  /  /    ' )then
        data10 := StrToDateTime(DBEdit106.Text);
    //  else
      if(DBEdit107.Text <> '  /  /    ' )then
        data11 := StrToDateTime(DBEdit107.Text);
     // else
      if(DBEdit108.Text <> '  /  /    ' )then
        data12 := StrToDateTime(DBEdit108.Text);
     // else
      if(DBEdit109.Text <> '  /  /    ' )then
        data13 := StrToDateTime(DBEdit109.Text);
     // else
      if(DBEdit110.Text <> '  /  /    ' )then
        data14 := StrToDateTime(DBEdit110.Text);
     // else
      if(DBEdit98.Text <> '  /  /    ' )then
        data15 := StrToDateTime(DBEdit111.Text);
     // else
      if(DBEdit112.Text <> '  /  /    ' )then
        data16 := StrToDateTime(DBEdit112.Text);
     // else
      if(DBEdit113.Text <> '  /  /    ' )then
        data17 := StrToDateTime(DBEdit113.Text);
     // else
      if(DBEdit114.Text <> '  /  /    ' )then
        data18 := StrToDateTime(DBEdit114.Text);
     // else
      if(DBEdit115.Text <> '  /  /    ' )then
        data19 := StrToDateTime(DBEdit115.Text);
     // else
      if(DBEdit116.Text <> '  /  /    ' )then
        data20 := StrToDateTime(DBEdit116.Text);
     // else
      if(DBEdit117.Text <> '  /  /    ' )then
        data21 := StrToDateTime(DBEdit117.Text);
     // else
      if(DBEdit118.Text <> '  /  /    ' )then
      data22 := StrToDateTime(DBEdit118.Text);

      if(DBEdit75.Text <> '' )then
      CK14 := QuotedStr('S')
      else CK14 := 'NULL';
      if(DBEdit119.Text <> '' )then
      CK15 := QuotedStr('S')
      else CK15 := 'NULL';
      if(DBEdit120.Text <> '' )then
      CK16 := QuotedStr('S')
      else CK16 := 'NULL';
      if(DBEdit121.Text <> '' )then
      CK17 := QuotedStr('S')
      else CK17 := 'NULL';
      if(DBEdit122.Text <> '' )then
      CK18 := QuotedStr('S')
      else CK18 := 'NULL';
      if(DBEdit123.Text <> '' )then
      CK19 := QuotedStr('S')
      else CK19 := 'NULL';
      if(DBEdit124.Text <> '' )then
      CK20 := QuotedStr('S')
      else CK20 := 'NULL';
      if(DBEdit125.Text <> '' )then
      CK21 := QuotedStr('S')
      else CK21 := 'NULL';
      if(DBEdit126.Text <> '' )then
      CK22 := QuotedStr('S')
      else CK22 := 'NULL';
      if(DBEdit127.Text <> '' )then
      CK23 := QuotedStr('S')
      else CK23 := 'NULL';
      if(DBEdit128.Text <> '' )then
      CK24 := QuotedStr('S')
      else CK24 := 'NULL';
      if(DBEdit129.Text <> '' )then
      CK25 := QuotedStr('S')
      else CK25 := 'NULL';
      if(DBEdit130.Text <> '' )then
      CK26 := QuotedStr('S')
      else CK26 := 'NULL';
      if(DBEdit131.Text <> '' )then
      CK27 := QuotedStr('S')
      else CK27 := 'NULL';
      if(DBEdit132.Text <> '' )then
      CK28 := QuotedStr('S')
      else CK28 := 'NULL';
      if(DBEdit133.Text <> '' )then
      CK29 := QuotedStr('S')
      else CK29 := 'NULL';
      if(DBEdit134.Text <> '' )then
      CK30 := QuotedStr('S')
      else CK30 := 'NULL';
      if(DBEdit135.Text <> '' )then
      CK31 := QuotedStr('S')
      else CK31 := 'NULL';
      if(DBEdit136.Text <> '' )then
      CK32 := QuotedStr('S')
      else CK32 := 'NULL';
      if(DBEdit137.Text <> '' )then
      CK33 := QuotedStr('S')
      else CK33 := 'NULL';
      if(DBEdit138.Text <> '' )then
      CK34 := QuotedStr('S')
      else CK34 := 'NULL';
      if(DBEdit139.Text <> '' )then
      CK35 := QuotedStr('S')
      else CK35 := 'NULL';

      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET CKA14 = ' + (CK14) ; // QuotedStr(DBEdit75.Text) ;
      str := str + ', CKA15 = ' + (CK15) ;
      str := str + ', CKA16 = ' + (CK16) ; //  QuotedStr(DBEdit120.Text) ;
      str := str + ', CKA17 = ' + (CK17) ; //  QuotedStr(DBEdit121.Text) ;
      str := str + ', CKA18 = ' + (CK18) ; //  QuotedStr(DBEdit122.Text) ;
      str := str + ', CKA19 = ' + (CK19) ; //  QuotedStr(DBEdit123.Text) ;
      str := str + ', CKA20 = ' + (CK20) ; //  QuotedStr(DBEdit124.Text) ;
      str := str + ', CKA21 = ' + (CK21) ; //  QuotedStr(DBEdit125.Text) ;
      str := str + ', CKA22 = ' + (CK22) ; //  QuotedStr(DBEdit126.Text) ;
      str := str + ', CKA23 = ' + (CK23) ; //  QuotedStr(DBEdit127.Text) ;
      str := str + ', CKA24 = ' + (CK24) ; //  QuotedStr(DBEdit128.Text) ;
      str := str + ', CKA25 = ' + (CK25) ; //  QuotedStr(DBEdit129.Text) ;
      str := str + ', CKA26 = ' + (CK26) ; //  QuotedStr(DBEdit130.Text) ;
      str := str + ', CKA27 = ' + (CK27) ; //  QuotedStr(DBEdit131.Text) ;
      str := str + ', CKA28 = ' + (CK28) ; //  QuotedStr(DBEdit132.Text) ;
      str := str + ', CKA29 = ' + (CK29) ; //  QuotedStr(DBEdit133.Text) ;
      str := str + ', CKA30 = ' + (CK30) ; //  QuotedStr(DBEdit134.Text) ;
      str := str + ', CKA31 = ' + (CK31) ; //  QuotedStr(DBEdit135.Text) ;
      str := str + ', CKA32 = ' + (CK32) ; //  QuotedStr(DBEdit136.Text) ;
      str := str + ', CKA33 = ' + (CK33) ; //  QuotedStr(DBEdit137.Text) ;
      str := str + ', CKA34 = ' + (CK34) ; //  QuotedStr(DBEdit138.Text) ;
      str := str + ', CKA35 = ' + (CK35) ; //  QuotedStr(DBEdit139.Text) ;

      {       ', CKA14 = ' +  QuotedStr(CK36) +
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
      str := str +', A     = ' +  (vA)   ;
      str := str +', I     = ' +  (vI)   ;
      str := str +', ADA   = ' +  (vADA) ;
      str := str +', AIA   = ' +  (vAIA) ;
      str := str +', DANO  = ' +  (vDANO);
      str := str +', PAIR  = ' +  (vPAIR);

      if(DBEdit97.Text <> '  /  /    ' )then
        str := str +', DATA14 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data1));
     // else
      if(DBEdit98.Text <> '  /  /    ' )then
        str := str +', DATA15 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data2));
     // else
      if(DBEdit99.Text <> '  /  /    ' )then
        str := str +', DATA16 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data3));
    //  else
      if(DBEdit100.Text <> '  /  /    ' )then
        str := str +', DATA17 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data4));
    //  else
      if(DBEdit101.Text <> '  /  /    ' )then
        str := str +', DATA18 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data5));
    //  else
      if(DBEdit102.Text <> '  /  /    ' )then
        str := str +', DATA19 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data6));
    //  else
      if(DBEdit103.Text <> '  /  /    ' )then
        str := str +', DATA20 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data7));
    //  else
      if(DBEdit104.Text <> '  /  /    ' )then
        str := str +', DATA21 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data8));
   //   else
      if(DBEdit105.Text <> '  /  /    ' )then
        str := str +', DATA22 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data9));
    //  else
      if(DBEdit106.Text <> '  /  /    ' )then
        str := str +', DATA23 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data10));
   //   else
      if(DBEdit107.Text <> '  /  /    ' )then
        str := str +', DATA24 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data11));
    //  else
      if(DBEdit108.Text <> '  /  /    ' )then
        str := str +', DATA25 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data12));
   //   else
      if(DBEdit109.Text <> '  /  /    ' )then
        str := str +', DATA26 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data13));
   //   else
      if(DBEdit110.Text <> '  /  /    ' )then
        str := str +', DATA27 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data14));
   //   else
      if(DBEdit98.Text <> '  /  /    ' )then
        str := str +', DATA28 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data15));
    //  else
      if(DBEdit112.Text <> '  /  /    ' )then
        str := str +', DATA29 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data16));
   //   else
      if(DBEdit113.Text <> '  /  /    ' )then
        str := str +', DATA30 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data17));
    //  else
      if(DBEdit114.Text <> '  /  /    ' )then
        str := str +', DATA31 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data18));
    //  else
      if(DBEdit115.Text <> '  /  /    ' )then
        str := str +', DATA32 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data19));
    //  else
      if(DBEdit116.Text <> '  /  /    ' )then
        str := str +', DATA33 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data20));
    //  else
      if(DBEdit117.Text <> '  /  /    ' )then
        str := str +', DATA34 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data21));
   //   else
      if(DBEdit118.Text <> '  /  /    ' )then
        str := str +', DATA35 = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',data22));
    //  else

      str := str +', ALTERADO14 = ' +  QuotedStr(cdsBuscaGuiaALTERADO14.AsString) ;
      str := str +', ALTERADO15 = ' +  QuotedStr(cdsBuscaGuiaALTERADO15.AsString) ;
      str := str +', ALTERADO16 = ' +  QuotedStr(cdsBuscaGuiaALTERADO16.AsString) ;
      str := str +', ALTERADO17 = ' +  QuotedStr(cdsBuscaGuiaALTERADO17.AsString) ;
      str := str +', ALTERADO18 = ' +  QuotedStr(cdsBuscaGuiaALTERADO18.AsString) ;
      str := str +', ALTERADO19 = ' +  QuotedStr(cdsBuscaGuiaALTERADO19.AsString) ;
      str := str +', ALTERADO20 = ' +  QuotedStr(cdsBuscaGuiaALTERADO20.AsString) ;
      str := str +', ALTERADO21 = ' +  QuotedStr(cdsBuscaGuiaALTERADO21.AsString) ;
      str := str +', ALTERADO22 = ' +  QuotedStr(cdsBuscaGuiaALTERADO22.AsString) ;
      str := str +', ALTERADO23 = ' +  QuotedStr(cdsBuscaGuiaALTERADO23.AsString) ;
      str := str +', ALTERADO24 = ' +  QuotedStr(cdsBuscaGuiaALTERADO24.AsString) ;
      str := str +', ALTERADO25 = ' +  QuotedStr(cdsBuscaGuiaALTERADO25.AsString) ;
      str := str +', ALTERADO26 = ' +  QuotedStr(cdsBuscaGuiaALTERADO26.AsString) ;
      str := str +', ALTERADO27 = ' +  QuotedStr(cdsBuscaGuiaALTERADO27.AsString) ;
      str := str +', ALTERADO28 = ' +  QuotedStr(cdsBuscaGuiaALTERADO28.AsString) ;
      str := str +', ALTERADO29 = ' +  QuotedStr(cdsBuscaGuiaALTERADO29.AsString) ;
      str := str +', ALTERADO30 = ' +  QuotedStr(cdsBuscaGuiaALTERADO30.AsString) ;
      str := str +', ALTERADO31 = ' +  QuotedStr(cdsBuscaGuiaALTERADO31.AsString) ;
      str := str +', ALTERADO32 = ' +  QuotedStr(cdsBuscaGuiaALTERADO32.AsString) ;
      str := str +', ALTERADO33 = ' +  QuotedStr(cdsBuscaGuiaALTERADO33.AsString) ;
      str := str +', ALTERADO34 = ' +  QuotedStr(cdsBuscaGuiaALTERADO34.AsString) ;
      str := str +', ALTERADO35 = ' +  QuotedStr(cdsBuscaGuiaALTERADO35.AsString) ;

      str := str +', EXAME33 = ' +  QuotedStr(cdsBuscaGuiaEXAME33.AsString) ; // outros 1 ABA Complemento
      str := str +', EXAME13 = ' +  QuotedStr(cdsBuscaGuiaEXAME33.AsString) ; // outros 1 ABA ASO
      str := str +', EXAME34 = ' +  QuotedStr(cdsBuscaGuiaEXAME34.AsString) ;
      str := str +', EXAME35 = ' +  QuotedStr(cdsBuscaGuiaEXAME35.AsString) ;

      str := str +', HISTORICOAV = ' +  QuotedStr(cdsBuscaGuiaHISTORICOAV.AsString) ;
      str := str +', CONDUTA = ' +  QuotedStr(cdsBuscaGuiaCONDUTA.AsString) ;
      str := str + ', APTO           = ' + IntToStr(vAPTO) ;


      str := str + ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);


    end; /// fim TabSheet4

    //inicio TabSheet3

    if(PageControl1.ActivePage = TabSheet3)then
    begin

      if(MaskEdit2.Text <> '  /  /    ' )then
        dataATEN  := StrToDateTime(MaskEdit2.Text);



      if(CheckBox28.Checked = False)then
      DBEdit77.Text := '';
      if(CheckBox28.Checked = True)then
      DBEdit77.Text := 'S';
      if( DBEdit77.Text = '')then
      vCKQ := 'null';
      if( DBEdit77.Text <> '')then
      vCKQ := QuotedStr(DBEdit77.Text);

      if(CheckBox29.Checked = False)then
      DBEdit78.Text := '';
      if(CheckBox29.Checked = True)then
      DBEdit78.Text := 'S';
      if( DBEdit78.Text = '')then
      vCKH := 'null';
      if( DBEdit78.Text <> '')then
      vCKH := QuotedStr(DBEdit78.Text);

      if(CheckBox30.Checked = False)then
      DBEdit79.Text := '';
      if(CheckBox30.Checked = True)then
      DBEdit79.Text := 'S';
      if( DBEdit79.Text = '')then
      begin
        vCKA := 'null';
        radAlcool.ItemIndex := -1;
      end;
      if( DBEdit79.Text <> '')then
      vCKA:= QuotedStr(DBEdit79.Text);

      if(CheckBox31.Checked = False)then
      DBEdit81.Text := '';
      if(CheckBox31.Checked = True)then
      DBEdit81.Text := 'S';

      if( DBEdit81.Text = '')then
      vFUMO := 'null';
      if( DBEdit81.Text <> '')then
      vFUMO:= QuotedStr(DBEdit81.Text);

      if(CheckBox32.Checked = False)then
      DBEdit85.Text := '';
      if(CheckBox32.Checked = True)then
      DBEdit85.Text := 'S';
      if( DBEdit85.Text = '')then
      vCKOD := 'null';
      if( DBEdit85.Text <> '')then
      vCKOD:= QuotedStr(DBEdit85.Text);

      if(CheckBox33.Checked = False)then
      DBEdit86.Text := '';
      if(CheckBox33.Checked = True)then
      DBEdit86.Text := 'S';
      if( DBEdit86.Text = '')then
      vCKOE:= 'null';
      if( DBEdit86.Text <> '')then
      vCKOE := QuotedStr(DBEdit86.Text);

              // 25/09/19
      if(CheckBox62.Checked = False)then
      DBEdit80.Text := '';
      if(CheckBox62.Checked = True)then
      DBEdit80.Text := 'S';
      if( DBEdit80.Text = '')then
      vCKAOM:= 'null';
      if( DBEdit80.Text <> '')then
      vCKAOM := QuotedStr(DBEdit80.Text);



      
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
        CK61 := '5' ; // gravar para ficar sem aparecer
      end;

      if(DBComboBox4.Text <> '') then
      begin
        cdsBuscaGuiaNOME_EXECUTANTE.AsString := DBComboBox4.Text ;
      end;

      DecimalSeparator := '.';
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET TIPO = ' +  QuotedStr(vTIPO) ;

      str := str + ', CKQ                    = ' +  (vCKQ) ;  //QuotedStr(DBEdit77.Text) ;
      str := str + ', QUEIXAP                = ' +  QuotedStr(DBEdit26.Text) ;
      str := str + ', CKH                    = ' +  (vCKH) ;  // QuotedStr(DBEdit78.Text) ;
      str := str + ', HISTORICOMEDICO        = ' +  QuotedStr(cdsBuscaGuiaHISTORICOMEDICO.AsString) ;
      str := str + ', CKA                    = ' +  (vCKA) ;  // QuotedStr(DBEdit79.Text) ;
      str := str + ', ALCOOL                 = ' +  QuotedStr(CK61) ;
      str := str + ', FUMO                   = ' +  (vFUMO) ;  // QuotedStr(DBEdit81.Text) ;
   //   ', CKAF                   = ' +  QuotedStr(DBEdit80.Text) +
      str := str + ', ANTECEDENTESFAMILIARES = ' +  QuotedStr(cdsBuscaGuiaANTECEDENTESFAMILIARES.AsString) ;
   //   ', CKC                    = ' +  QuotedStr(DBEdit82.Text) +
      str := str + ', CICATRIZES             = ' +  QuotedStr(cdsBuscaGuiaCICATRIZES.AsString) ;
   //   ', CKAPE                  = ' +  QuotedStr(DBEdit83.Text) +
      str := str + ', ANTECEDENTESPESSOAIS   = ' +  QuotedStr(cdsBuscaGuiaANTECEDENTESPESSOAIS.AsString) ;
   //   ', CKACI                  = ' +  QuotedStr(DBEdit84.Text) +
      str := str + ', ACIDENTES              = ' +  QuotedStr(cdsBuscaGuiaACIDENTES.AsString) ;
      str := str + ', PESO                   = ' +  FloatToStr(cdsBuscaGuiaPESO.Value) ;
      str := str + ', ALTURA                 = ' +  FloatToStr(cdsBuscaGuiaALTURA.Value) ;
      str := str + ', IMC                    = ' +  FloatToStr(cdsBuscaGuiaIMC.Value);
      str := str + ', PA                     = ' +  QuotedStr(cdsBuscaGuiaPA.AsString) ;
      str := str + ', FC                     = ' +  QuotedStr(cdsBuscaGuiaFC.AsString) ;
      str := str + ', CKOD                   = ' +  (vCKOD) ;  // QuotedStr(DBEdit85.Text) +
      str := str + ', CKOE                   = ' +  (vCKOE) ;  // QuotedStr(DBEdit86.Text) +
   //   ', CKAPV                  = ' +  QuotedStr(DBEdit87.Text) ;
      str := str + ', MOLESTIA               = ' +  QuotedStr(cdsBuscaGuiaMOLESTIA.AsString) ;
   //   ', CKP                    = ' +  QuotedStr(DBEdit88.Text) +
      str := str + ', PELE                   = ' +  QuotedStr(cdsBuscaGuiaPELE.AsString) ;
   //   ', CKAPA                  = ' +  QuotedStr(DBEdit89.Text) +
      str := str + ', OUVIDOS                = ' +  QuotedStr(cdsBuscaGuiaOUVIDOS.AsString) ;
   //   ', CKCP                   = ' +  QuotedStr(DBEdit90.Text) +
      str := str + ', CABECA                 = ' +  QuotedStr(cdsBuscaGuiaCABECA.AsString) ;
   //   ', CKABD                  = ' +  QuotedStr(DBEdit91.Text) +
      str := str + ', ABDOMEN                = ' +  QuotedStr(cdsBuscaGuiaABDOMEN.AsString) ;
   //   ', CKAP                   = ' +  QuotedStr(DBEdit92.Text) +
      str := str + ', AP                     = ' +  QuotedStr(cdsBuscaGuiaAP.AsString) ;
   //   ', CKACV                  = ' +  QuotedStr(DBEdit93.Text) +
      str := str + ', APCARDIO               = ' +  QuotedStr(cdsBuscaGuiaAPCARDIO.AsString) ;
   //   ', CKAPN                  = ' +  QuotedStr(DBEdit94.Text) +
      str := str + ', SISTEMANERVOSO         = ' +  QuotedStr(cdsBuscaGuiaSISTEMANERVOSO.AsString) ;
   //   ', CKAGU                  = ' +  QuotedStr(DBEdit95.Text) +
      str := str + ', APURO                  = ' +  QuotedStr(cdsBuscaGuiaAPURO.AsString) ;
      str := str + ', CKAOM                  = ' +  (vCKAOM);
      str := str + ', AOSTEO                 = ' +  QuotedStr(cdsBuscaGuiaAOSTEO.AsString) ;
      str := str + ', OBSFICHA               = ' +  QuotedStr(cdsBuscaGuiaOBSFICHA.AsString) ;
    //  ', A                      = ' +  QuotedStr(CK80) +
    //  ', I                      = ' +  QuotedStr(CK81) +
    //  ', ADA                    = ' +  QuotedStr(CK82) +
    //  ', AIA                    = ' +  QuotedStr(CK83) +
    //  ', PAIR                   = ' +  QuotedStr(CK84) +
    //  ', DANO                   = ' +  QuotedStr(CK85) +
    //  ', HISTORICOAV            = ' +  QuotedStr(cdsBuscaGuiaHISTORICOAV.AsString) +

      if(MaskEdit2.Text <> '  /  /    ' )then
        str := str + ', DATA_ATENDIMENTO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dataATEN));

      if(DBComboBox4.Text <> '') then
        str := str + ',  NOME_EXECUTANTE = ' +   QuotedStr(cdsBuscaGuiaNOME_EXECUTANTE.AsString) ;

      str := str + ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      DecimalSeparator := ',';
    end; //// Fim TabSheet3


    //    cdsBuscaGuiaTIPO_GUIA.AsString := 'CORRIGIDO';
    //    cdsBuscaGuiaGRAU_RISCO.AsString := Edit7.Text;
    //   DMSaude.cdsGuiasTIPO_GUIA.AsString := 'CORRIGIDO';



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
            // ASO
      if(dbrTipo.ItemIndex = -1) then
      vAPTO := 9 ; // nada
      if(dbrTipo.ItemIndex = 0) then
      vAPTO := 0 ; // apto
      if(dbrTipo.ItemIndex = 1) then
      vAPTO := 1 ; // inapto
      if(dbrTipo.ItemIndex = 2) then
      vAPTO := 2 ; // apto com restrição

           //Complemento
      if(dbrTipo1.ItemIndex = -1) then
      vAPTO := 9 ; // nada
      if(dbrTipo1.ItemIndex = 0) then
      vAPTO := 0 ; // apto
      if(dbrTipo1.ItemIndex = 1) then
      vAPTO := 1 ; // inapto
      if(dbrTipo1.ItemIndex = 2) then
      vAPTO := 2 ; // apto com restrição


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


      if(DBComboBox3.Text <> '') then
      begin
        cdsBuscaGuiaNOME_EXECUTANTE.AsString := DBComboBox3.Text ;
      end;

      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET GRAU_RISCO = ' +  QuotedStr(Edit7.Text);

      str := str + ', TIPO           = ' + QuotedStr(vTIPO) ;
      str := str + ', APTO           = ' + IntToStr(vAPTO) ;

      if(JvDateEdit1.Date <> 0 )then
      str := str + ', DATA1          = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',JvDateEdit1.Date));
      str := str + ', CK1            = ' + QuotedStr(CK86) ;
      if(JvDateEdit2.Date <> 0 )then
      str := str + ', DATA2          = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',JvDateEdit2.Date));
      str := str + ', CK2            = ' + QuotedStr(CK87) ;
      if(JvDateEdit3.Date <> 0 )then
      str := str + ', DATA3          = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',JvDateEdit3.Date));
      str := str + ', CK3            = ' + QuotedStr(CK88) ;
      if(JvDateEdit4.Date <> 0 )then
      str := str + ', DATA4          = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',JvDateEdit4.Date));
      str := str + ', CK4            = ' + QuotedStr(CK89) ;
      if(JvDateEdit5.Date <> 0 )then
      str := str + ', DATA5          = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',JvDateEdit5.Date));
      str := str + ', CK5            = ' + QuotedStr(CK90) ;
      if(JvDateEdit6.Date <> 0 )then
      str := str + ', DATA6          = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',JvDateEdit6.Date));
      str := str + ', CK6            = ' + QuotedStr(CK91) ;
      if(JvDateEdit7.Date <> 0 )then
      str := str + ', DATA7          = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',JvDateEdit7.Date));
      str := str + ', CK7            = ' + QuotedStr(CK92) ;
      if(JvDateEdit8.Date <> 0 )then
      str := str + ', DATA8          = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',JvDateEdit8.Date));
      str := str + ', CK8            = ' + QuotedStr(CK93) ;
      if(JvDateEdit9.Date <> 0 )then
      str := str + ', DATA9          = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',JvDateEdit9.Date));
      str := str + ', CK9            = ' + QuotedStr(CK94) ;
      if(JvDateEdit10.Date <> 0 )then
      str := str + ', DATA10         = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',JvDateEdit10.Date));
      str := str + ', CK10           = ' + QuotedStr(CK95) ;
      if(JvDateEdit11.Date <> 0 )then
      str := str + ', DATA11         = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',JvDateEdit11.Date));
      str := str + ', CK11           = ' + QuotedStr(CK96) ;
      if(JvDateEdit12.Date <> 0 )then
      str := str + ', DATA12         = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',JvDateEdit12.Date));
      str := str + ', CK12           = ' + QuotedStr(CK97) ;
      if(JvDateEdit13.Date <> 0 )then
      str := str + ', DATA13         = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',JvDateEdit13.Date));

      str := str + ', CK13           = ' + QuotedStr(CK98) ;

      str := str + ', CKANEXO1       = ' + QuotedStr(CK99) ;
      str := str + ', CKANEXO2       = ' + QuotedStr(CK100) ;
      str := str + ', CKANEXO3       = ' + QuotedStr(CK101) ;
      str := str + ', CKANEXO4       = ' + QuotedStr(CK102) ;
      str := str + ', CKANEXO5       = ' + QuotedStr(CK103) ;
      str := str + ', CKANEXO6       = ' + QuotedStr(CK104) ;
      str := str + ', CKANEXO7       = ' + QuotedStr(CK105) ;
      str := str + ', CKANEXO8       = ' + QuotedStr(CK106) ;
      str := str + ', CKANEXO9       = ' + QuotedStr(CK107) ;
      str := str + ', CKANEXO10      = ' + QuotedStr(CK108) ;
      str := str + ', CKANEXO11      = ' + QuotedStr(CK109) ;
      str := str + ', CKANEXO12      = ' + QuotedStr(CK110) ;
      str := str + ', CKANEXO13      = ' + QuotedStr(CK111) ;
      str := str + ', CKANEXO14      = ' + QuotedStr(CK112) ;
      str := str + ', CKANEXO15      = ' + QuotedStr(CK113) ;

      str := str + ', EXAME13        = ' + QuotedStr(cdsBuscaGuiaEXAME13.AsString) ;

      if(DBComboBox3.Text <> '') then
      str := str + ',  NOME_EXECUTANTE = ' +   QuotedStr(cdsBuscaGuiaNOME_EXECUTANTE.AsString) ;

      str := str + ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
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
      cdsBuscaGuiaAPTO.AsInteger := 0 ; // apto
      if(dbrTipo.ItemIndex = 1) then
      cdsBuscaGuiaAPTO.AsInteger := 1 ; // inapto
      if(dbrTipo.ItemIndex = 2) then
      cdsBuscaGuiaAPTO.AsInteger := 2 ; // apto com restrição

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

   //   if DMSaude.cdsGuias.applyUpdates(0) <> 0 then
   //    showmessage('Não gravou!');

  if cdsBuscaGuia.State in [dsEdit] then
   cdsBuscaGuia.Post;

 // cdsBuscaGuia.ApplyUpdates(0);
  func   := cdsBuscaGuiaNUMERO_GUIA.AsString;
 // cdsBuscaGuidda.Close;
 // cdsBuscaGuidda.Params[0].AsString := func ;
 // cdsBuscaGuidda.Open;

  // não pode cdsBuscaGuia.Refresh;

//  if  (dsBuscaGuia.State in [dsBrowse]) then  // dsEdit
 // begin
 //   MessageDlg('Dados Alterados com Sucesso.', mtInformation, [mbOK, mbCancel], 0);
//  end;

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

 if Excluir = 'S' then
  btnExc.Enabled:=dsBuscaGuia.State in [dsBrowse]
 else
  btnExc.Enabled:=false;
 {
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
    btnExc.Visible := False;
    btnGrav.Visible := True;
    btnGrav.Enabled := True;
    btnCan.Visible := True;
    btnCan.Enabled := True;
  end;

  if dsBuscaGuia.State in [dsBrowse,dsInactive] then
  begin
    btnInc.Enabled := True;
    btnInc.Visible := True;
    btnExc.Visible := True;
    btnExc.Enabled := True;
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
var quant : Integer;

begin
  inherited;

  DBComboBox3.Text := '';
  DBComboBox4.Text := '';


  fDependente.btnSair.Enabled      := False;
  fDependente.btnIncluir.Enabled   := False;
  fDependente.btnGravar.Enabled    := False;
  fDependente.btnCancelar.Enabled  := False;
  fDependente.btnExcluir.Enabled   := False;

  fDependente.Panel2.Visible       := True;

 //// if(dsBuscaGuia.DataSet.Active) then
 //// begin

 //  BitBtn11.Click;

 // if not(cdsBuscaGuia.State in [dsBrowse]) then
 // begin

   { funcionario Inativo
   if(DMSaude.cdsDependenteSTATUS.AsInteger = 1) then
   begin
     btnInc.Enabled := False;
     btnCan.Enabled := False;
     exit;
    //  btnAsoSair.Click;
   end;
    }

   if(not cdsBuscaGuia.Active) then
    cdsBuscaGuia.Close;
    cdsBuscaGuia.Params[0].AsString := DMSaude.cdsDependenteRA.AsString;
    cdsBuscaGuia.Open;
    quant :=  cdsBuscaGuia.RecordCount;
    
 //   cdsBuscaGuia.Last;

   {
    if(not DMSaude.cdsGuias.Active) then
    DMSaude.cdsGuias.Close;
    DMSaude.cdsGuias.Params[0].AsString := DMSaude.cdsDependenteRA.AsString;
    DMSaude.cdsGuias.Open;
    DMSaude.cdsGuias.Last;
   }

 // end;

  DBComboBox3.Text := '';
  DBComboBox4.Text := '';

  if((DMSaude.cdsDependenteSTATUS.AsInteger = 0)or(DMSaude.cdsDependenteSTATUS.AsInteger = 1)) then
  begin
    btnInc.Enabled := True;
    if(quant <> 0) then
    begin
      carregaASO;
    if(btnInc.Enabled = False) then
    begin
      btnCan.Click;
    end;
  end;

  if(cdsBuscaGuiaNOME_FUNCIONARIO.Text <> '')then
  begin
    if(DBEdit2.Text <> cdsBuscaGuiaNOME_FUNCIONARIO.Text) then
    begin

    if MessageDlg('Nome no Cadastro Diferente da Ficha'+#13+#10+'Cadastro : ' + DBEdit2.Text +#13+#10+'Ficha       : '+ cdsBuscaGuiaNOME_FUNCIONARIO.Text  +#13+#10+'               Deseja Corrigir ?', mtWarning,[mbYes,mbNo],0) = mrYes then

     btnATUA.Click;
    end;
  end;


  if(cdsBuscaGuiaCARGO.Text <> '')then
  begin
    if(DBComboBox1.Text <> cdsBuscaGuiaCARGO.Text ) then
    begin
      btnATUA.Click;
    end;
  end;

  if(cdsBuscaGuiaRG.Text <> '')then
  begin
    if(DBEdit6.Text <> cdsBuscaGuiaRG.Text ) then
    begin
      btnATUA.Click;
    end;
  end;

  if(cdsBuscaGuiaCPF.Text <> '')then
  begin
    if(DBEdit13.Text <> cdsBuscaGuiaCPF.Text ) then
    begin
      btnATUA.Click;
    end;
  end;

  if(cdsBuscaGuiaFUNCAO.Text <> '')then
  begin
    if(DBComboBox2.Text <> cdsBuscaGuiaFUNCAO.Text ) then
    begin
      btnATUA.Click;
    end;
  end;

  if(cdsBuscaGuiaPIS.Text <> '')then
  begin
    if(DBEdit25.Text <> cdsBuscaGuiaPIS.Text ) then
    begin
      btnATUA.Click;
    end;
  end;

  if(cdsBuscaGuiaDATARETORNO.Text <> '')then
  begin
    if(DBEdit3.Text <> cdsBuscaGuiaDATARETORNO.Text ) then
    begin
      btnATUA.Click;
    end;
  end;

    JvDBGrid1.SetFocus;
  end;
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

   if not (DMSaude.cdsGuias.State in [dsInsert]) then
   begin
     carregaASO;
   end;
end;

procedure TfDependente.limparCampos;
var x: Integer;
begin
  // limpar checkbox e JvDateEdit1
for x := 0 to (ComponentCount) - 1 do
  begin
     //ShowMessage (IntToStr(Components[x].tag));
     //Verificação da propriedade pTag
     if (TComponent(Components[x]).Tag<>100) then
       begin
          if (Components[x] is TCheckBox) then
           (Components[x] as TCheckBox).Checked := False;

          if (Components[x] is TJvDateEdit) then
           (Components[x] as TJvDateEdit).Text:=EmptyStr;

       end;
  end;

   DBComboBox3.Text := '';
   DBComboBox4.Text := '';
   Edit7.Text       := '';
{
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
 }
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
  dsBuscaGuia.DataSet.Edit;
end;

procedure TfDependente.JvDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  dsBuscaGuia.DataSet.Edit;
  carregaASO;

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




procedure TfDependente.carregaASO;
begin
      //////


      if(cdsBuscaGuiaCKA14.AsString = 'S')then
      CheckBox40.Checked := true
      else CheckBox40.Checked := False;
      if(cdsBuscaGuiaCKA15.AsString = 'S')then
      CheckBox41.Checked := true
      else CheckBox41.Checked := False;
      if(cdsBuscaGuiaCKA16.AsString = 'S')then
      CheckBox42.Checked := true
      else CheckBox42.Checked := False;
      if(cdsBuscaGuiaCKA17.AsString = 'S')then
      CheckBox43.Checked := true
      else CheckBox43.Checked := False;
      if(cdsBuscaGuiaCKA18.AsString = 'S')then
      CheckBox44.Checked := true
      else CheckBox44.Checked := False;
      if(cdsBuscaGuiaCKA19.AsString = 'S')then
      CheckBox45.Checked := true
      else CheckBox45.Checked := False;
      if(cdsBuscaGuiaCKA20.AsString = 'S')then
      CheckBox46.Checked := true
      else CheckBox46.Checked := False;
      if(cdsBuscaGuiaCKA21.AsString = 'S')then
      CheckBox47.Checked := true
      else CheckBox47.Checked := False;

      if(cdsBuscaGuiaCKA22.AsString = 'S')then
      CheckBox48.Checked := true
      else CheckBox48.Checked := False;

      if(cdsBuscaGuiaCKA23.AsString = 'S')then
      CheckBox49.Checked := true
      else CheckBox49.Checked := False;
      if(cdsBuscaGuiaCKA24.AsString = 'S')then
      CheckBox50.Checked := true
      else CheckBox50.Checked := False;
      if(cdsBuscaGuiaCKA25.AsString = 'S')then
      CheckBox51.Checked := true
      else CheckBox51.Checked := False;
      if(cdsBuscaGuiaCKA26.AsString = 'S')then
      CheckBox52.Checked := true
      else CheckBox52.Checked := False;
      if(cdsBuscaGuiaCKA27.AsString = 'S')then
      CheckBox53.Checked := true
      else CheckBox53.Checked := False;
      if(cdsBuscaGuiaCKA28.AsString = 'S')then
      CheckBox54.Checked := true
      else CheckBox54.Checked := False;
      if(cdsBuscaGuiaCKA29.AsString = 'S')then
      CheckBox55.Checked := true
      else CheckBox55.Checked := False;
      if(cdsBuscaGuiaCKA30.AsString = 'S')then
      CheckBox56.Checked := true
      else CheckBox56.Checked := False;
      if(cdsBuscaGuiaCKA31.AsString = 'S')then
      CheckBox57.Checked := true
      else CheckBox57.Checked := False;
      if(cdsBuscaGuiaCKA32.AsString = 'S')then
      CheckBox58.Checked := true
      else CheckBox58.Checked := False;
      if(cdsBuscaGuiaCKA33.AsString = 'S')then
      CheckBox59.Checked := true
      else CheckBox59.Checked := False;
      if(cdsBuscaGuiaCKA34.AsString = 'S')then
      CheckBox60.Checked := true
      else CheckBox60.Checked := False;
      if(cdsBuscaGuiaCKA35.AsString = 'S')then
      CheckBox61.Checked := true
      else CheckBox61.Checked := False;


            /////
       ///complemento
      if(cdsBuscaGuiaCKQ.AsString = 'S' )then
      CheckBox28.Checked := True
      else CheckBox28.Checked := False;
      if(cdsBuscaGuiaCKH.AsString = 'S' )then
      CheckBox29.Checked := True
      else CheckBox29.Checked := False;
      if(cdsBuscaGuiaCKA.AsString = 'S' )then
      CheckBox30.Checked := True
      else CheckBox30.Checked := False;
      if(cdsBuscaGuiaFUMO.AsString = 'S' )then
      CheckBox31.Checked := True
      else CheckBox31.Checked := False;
      if(cdsBuscaGuiaCKOD.AsString = 'S' )then
      CheckBox32.Checked := True
      else CheckBox32.Checked := False;
      if(cdsBuscaGuiaCKOE.AsString = 'S' )then
      CheckBox33.Checked := True
      else CheckBox33.Checked := False;




       // audiometria
      if(cdsBuscaGuiaA.AsString = 'S' )then
      CheckBox34.Checked := True
      else CheckBox34.Checked := False;
      if(cdsBuscaGuiaI.AsString = 'S' )then
      CheckBox35.Checked := True
      else CheckBox35.Checked := False;
      if(cdsBuscaGuiaADA.AsString = 'S' )then
      CheckBox36.Checked := True
      else CheckBox36.Checked := False;
      if(cdsBuscaGuiaAIA.AsString = 'S' )then
      CheckBox37.Checked := True
      else CheckBox37.Checked := False;
      if(cdsBuscaGuiaPAIR.AsString = 'S' )then
      CheckBox38.Checked := True
      else CheckBox38.Checked := False;
      if(cdsBuscaGuiaDANO.AsString = 'S' )then
      CheckBox39.Checked := True
      else CheckBox39.Checked := False;
       //


      if(cdsBuscaGuiaAPTO.AsString = '9') then
      dbrTipo1.ItemIndex := -1;

      if(cdsBuscaGuiaAPTO.AsString <> '9') then
      dbrTipo1.ItemIndex := StrToInt(cdsBuscaGuiaAPTO.AsString);


       /// fim complemento



      /// inicio  ASO
      if(cdsBuscaGuiaAPTO.AsString = '9') then
      dbrTipo.ItemIndex := -1;

      if(cdsBuscaGuiaAPTO.AsString <> '9') then
      dbrTipo.ItemIndex := StrToInt(cdsBuscaGuiaAPTO.AsString);


      Edit7.Text        := cdsBuscaGuiaGRAU_RISCO.AsString ;


      DBComboBox3.Text  := cdsBuscaGuiaNOME_EXECUTANTE.AsString ;
      DBComboBox4.Text  := cdsBuscaGuiaNOME_EXECUTANTE.AsString ;

      if(cdsBuscaGuiaDATA1.AsDateTime <> 0 )then
      begin
        JvDateEdit1.Date  := cdsBuscaGuiaDATA1.AsDateTime ;
        CheckBox1.Checked := True;
      end;

      if(cdsBuscaGuiaDATA2.AsDateTime <> 0 )then
      begin
        JvDateEdit2.Date  := cdsBuscaGuiaDATA2.AsDateTime ;
        CheckBox2.Checked := True;
      end;

      if(cdsBuscaGuiaDATA3.AsDateTime <> 0 )then
      begin
        JvDateEdit3.Date  := cdsBuscaGuiaDATA3.AsDateTime ;
        CheckBox3.Checked := True;
      end;

      if(cdsBuscaGuiaDATA4.AsDateTime <> 0 )then
      begin
        JvDateEdit4.Date  := cdsBuscaGuiaDATA4.AsDateTime ;
        CheckBox4.Checked := True;
      end;
      if(cdsBuscaGuiaDATA5.AsDateTime <> 0 )then
      begin
        JvDateEdit5.Date  := cdsBuscaGuiaDATA5.AsDateTime ;
        CheckBox5.Checked := True;
      end;
      if(cdsBuscaGuiaDATA6.AsDateTime <> 0 )then
      begin
        JvDateEdit6.Date  := cdsBuscaGuiaDATA6.AsDateTime ;
        CheckBox6.Checked := True;
      end;

      if(cdsBuscaGuiaDATA7.AsDateTime <> 0 )then
      begin
        JvDateEdit7.Date  := cdsBuscaGuiaDATA7.AsDateTime ;
        CheckBox7.Checked := True;
      end;
      if(cdsBuscaGuiaDATA8.AsDateTime <> 0 )then
      begin
        JvDateEdit8.Date  := cdsBuscaGuiaDATA8.AsDateTime ;
        CheckBox8.Checked := True;
      end;
      if(cdsBuscaGuiaDATA9.AsDateTime <> 0 )then
      begin
        JvDateEdit9.Date  := cdsBuscaGuiaDATA9.AsDateTime ;
        CheckBox9.Checked := True;
      end;
      if(cdsBuscaGuiaDATA10.AsDateTime <> 0 )then
      begin
        JvDateEdit10.Date  := cdsBuscaGuiaDATA10.AsDateTime ;
        CheckBox10.Checked := True;
      end;
      if(cdsBuscaGuiaDATA11.AsDateTime <> 0 )then
      begin
        JvDateEdit11.Date  := cdsBuscaGuiaDATA11.AsDateTime ;
        CheckBox11.Checked := True;
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
      end;

       //anexos ASO

      if(cdsBuscaGuiaCKANEXO1.AsString  = 'S')then
      begin
        CheckBox13.Checked := True ;
      end;

      if(cdsBuscaGuiaCKANEXO2.AsString     = 'S')then
      begin
        CheckBox14.Checked := True ;
      end;
      if(cdsBuscaGuiaCKANEXO3.AsString     = 'S')then
      begin
        CheckBox15.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO4.AsString     = 'S')then
      begin
        CheckBox16.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO5.AsString     = 'S')then
      begin
        CheckBox17.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO6.AsString    = 'S')then
      begin
        CheckBox18.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO7.AsString     = 'S')then
      begin
        CheckBox19.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO8.AsString     = 'S')then
      begin
        CheckBox20.Checked := True ;
      end;
      if(cdsBuscaGuiaCKANEXO9.AsString     = 'S')then
      begin
        CheckBox21.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO10.AsString     = 'S')then
      begin
        CheckBox22.Checked := True ;
      end;
      if(cdsBuscaGuiaCKANEXO11.AsString     = 'S')then
      begin
        CheckBox23.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO12.AsString     = 'S')then
      begin
        CheckBox24.Checked := True;
      end;
      if(cdsBuscaGuiaCKANEXO13.AsString     = 'S')then
      begin
        CheckBox25.Checked := True ;
      end;
      if(cdsBuscaGuiaCKANEXO14.AsString     = 'S')then
      begin
        CheckBox26.Checked := True ;
      end;
      if(cdsBuscaGuiaCKANEXO15.AsString     = 'S')then
      begin
        CheckBox27.Checked := True;
      end;

    //  if((cdsBuscaGuiaCKA.AsString <> '')or (cdsBuscaGuiaCKA.AsString <> 'N'))then
   //   radAlcool.ItemIndex := StrToInt(cdsBuscaGuiaALCOOL.AsString);

    {
 //  corrigir aqui quando incluir um novo
   if (cdsBuscaGuia.State in [dsEdit]) then
  // if (cdsBuscaGuia.State in [dsInsert]) then
   begin
     btnCan.Click;
   end;

   }   //Fim do  ASO

//  if btnInc.Enabled = false
//  then Exit;

 // para não mudar para Edição

 // dsBuscaGuia.DataSet.Edit;


end;

procedure TfDependente.JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  carregaASO;
end;

procedure TfDependente.JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 carregaASO;
end;

procedure TfDependente.btnD1Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA14 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit97.Text := '';
  cdsBuscaGuiaDATA14.Text := '';

end;

procedure TfDependente.btnD2Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA15 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit98.Text := '';
  cdsBuscaGuiaDATA15.Text := '';

end;

procedure TfDependente.btnD3Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA16 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit99.Text := '';
  cdsBuscaGuiaDATA16.Text := '';

end;

procedure TfDependente.btnD4Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA17 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit100.Text := '';
  cdsBuscaGuiaDATA17.Text := '';

end;

procedure TfDependente.btnD5Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA18 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit101.Text := '';
  cdsBuscaGuiaDATA18.Text := '';

end;

procedure TfDependente.btnD6Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA19 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit102.Text := '';
  cdsBuscaGuiaDATA19.Text := '';

end;

procedure TfDependente.btnD7Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA20 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit103.Text := '';
  cdsBuscaGuiaDATA20.Text := '';

end;

procedure TfDependente.btnD8Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA21 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit104.Text := '';
  cdsBuscaGuiaDATA21.Text := '';

end;

procedure TfDependente.btnD9Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA22 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit105.Text := '';
  cdsBuscaGuiaDATA22.Text := '';

end;

procedure TfDependente.btnD10Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA23 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit106.Text := '';
  cdsBuscaGuiaDATA23.Text := '';

end;

procedure TfDependente.btnD11Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA24 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit107.Text := '';
  cdsBuscaGuiaDATA24.Text := '';

end;

procedure TfDependente.btnD12Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA25 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit108.Text := '';
  cdsBuscaGuiaDATA25.Text := '';
end;

procedure TfDependente.btnD13Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA26 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit109.Text := '';
  cdsBuscaGuiaDATA26.Text := '';

end;

procedure TfDependente.btnD14Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA27 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit110.Text := '';
  cdsBuscaGuiaDATA27.Text := '';

end;

procedure TfDependente.btnD15Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA28 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit111.Text := '';
  cdsBuscaGuiaDATA28.Text := '';

end;

procedure TfDependente.btnD16Click(Sender: TObject);

var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA29 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit112.Text := '';
  cdsBuscaGuiaDATA29.Text := '';

end;

procedure TfDependente.btnD17Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA30 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit113.Text := '';
  cdsBuscaGuiaDATA30.Text := '';

end;

procedure TfDependente.btnD18Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA31 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit114.Text := '';
  cdsBuscaGuiaDATA31.Text := '';
end;

procedure TfDependente.btnD19Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA32 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit115.Text := '';
  cdsBuscaGuiaDATA32.Text := '';

end;

procedure TfDependente.btnD20Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA33 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit116.Text := '';
  cdsBuscaGuiaDATA33.Text := '';

end;

procedure TfDependente.btnD21Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA34 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit117.Text := '';
  cdsBuscaGuiaDATA34.Text := '';

end;

procedure TfDependente.btnD22Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
// inherited;
  if(dsBuscaGuia.DataSet.State in [dsBrowse]) then
  dsBuscaGuia.DataSet.Edit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  str := 'UPDATE GUIAS SET DATA35 =  null ' +
  ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DBEdit118.Text := '';
  cdsBuscaGuiaDATA35.Text := '';

end;

procedure TfDependente.btndJ1Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
 // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET DATA1 =  null ' +
      ' , CK1 = null ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      CheckBox1.Checked := False;
      JvDateEdit1.Text := '';

end;

procedure TfDependente.btndJ2Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
 // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET DATA2 =  null ' +
      ' , CK2 = null ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      CheckBox2.Checked := False;
      JvDateEdit2.Text := '';

end;

procedure TfDependente.btndJ3Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
 // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET DATA3 =  null ' +
      ' , CK3 = null ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      CheckBox3.Checked := False;
      JvDateEdit3.Text := '';  inherited;

end;

procedure TfDependente.btndJ4Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
 // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET DATA4 =  null ' +
      ' , CK4 = null ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      CheckBox4.Checked := False;
      JvDateEdit4.Text := '';  inherited;

end;

procedure TfDependente.btndJ5Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
 // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET DATA5 =  null ' +
      ' , CK5 = null ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      CheckBox5.Checked := False;
      JvDateEdit5.Text := '';

end;

procedure TfDependente.btndJ6Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
 // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET DATA6 =  null ' +
      ' , CK6 = null ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      CheckBox6.Checked := False;
      JvDateEdit6.Text := '';

end;

procedure TfDependente.btndJ7Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
 // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET DATA7 =  null ' +
      ' , CK7 = null ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      CheckBox7.Checked := False;
      JvDateEdit7.Text := '';


end;

procedure TfDependente.btndJ8Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
 // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET DATA8 =  null ' +
      ' , CK8 = null ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      CheckBox8.Checked := False;
      JvDateEdit8.Text := '';

end;

procedure TfDependente.btndJ9Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
 // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET DATA9 =  null ' +
      ' , CK9 = null ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      CheckBox9.Checked := False;
      JvDateEdit9.Text := '';

end;

procedure TfDependente.btndJ10Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
 // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET DATA10 =  null ' +
      ' , CK10 = null ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      CheckBox10.Checked := False;
      JvDateEdit10.Text := '';


end;

procedure TfDependente.btndJ11Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
 // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET DATA11 =  null ' +
      ' , CK11 = null ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      CheckBox11.Checked := False;
      JvDateEdit11.Text := '';


end;

procedure TfDependente.btndJ12Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
 // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET DATA12 =  null ' +
      ' , CK12 = null ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      CheckBox12.Checked := False;
      JvDateEdit12.Text := ''; 

end;

procedure TfDependente.btndJ13Click(Sender: TObject);
var      TD: TTransactionDesc;
         str : string;
begin
 // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      str := 'UPDATE GUIAS SET DATA13 =  null ' +
      ' , CK13 = null ' +
      ' , EXAME33 = null ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(str);
      dm.sqlsisAdimin.Commit(TD);
      CheckBoxOu1.Checked := False;
      JvDateEdit13.Text := '';

end;

procedure TfDependente.JvDBGrid1CellClick(Column: TColumn);
begin
  inherited;
  carregaASO;
end;

procedure TfDependente.CheckBox28Click(Sender: TObject);
begin
  inherited;
 // if(dsBuscaGuia.DataSet.Insert)then
  dsBuscaGuia.DataSet.Edit;
end;

procedure TfDependente.CheckBox34Click(Sender: TObject);
begin
  inherited;
  dsBuscaGuia.DataSet.Edit;
end;

procedure TfDependente.CheckBox1Click(Sender: TObject);
begin
  inherited;
  dsBuscaGuia.DataSet.Edit;
end;

procedure TfDependente.CheckBox40Click(Sender: TObject);
begin
  inherited;
  dsBuscaGuia.DataSet.Edit;
end;

procedure TfDependente.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  cdsBuscaGuia.Close;
end;

procedure TfDependente.btnAPClick(Sender: TObject);
var      TD: TTransactionDesc;
         strAPTO : string;
begin
  // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      strAPTO := 'UPDATE GUIAS SET APTO =  9 ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(strAPTO);
      dm.sqlsisAdimin.Commit(TD);
      dbrTipo.ItemIndex := -1;

end;

procedure TfDependente.btnAP1Click(Sender: TObject);
var      TD: TTransactionDesc;
         strAPTO : string;
begin
 // inherited;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      strAPTO := 'UPDATE GUIAS SET APTO =  null ' +
      ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
      dm.sqlsisAdimin.ExecuteDirect(strAPTO);
      dm.sqlsisAdimin.Commit(TD);
      dbrTipo1.ItemIndex := -1;
end;

procedure TfDependente.DBComboBox4Click(Sender: TObject);
begin
 // inherited;
  dsBuscaGuia.DataSet.Edit;
end;

procedure TfDependente.DBComboBox3Click(Sender: TObject);
begin
 // inherited;
  dsBuscaGuia.DataSet.Edit;
end;

procedure TfDependente.btnExcClick(Sender: TObject);
var      TD: TTransactionDesc;
         strEXCLUI : string;
begin
 // inherited;

      if Excluir = 'N' then Exit;
      if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        TD.TransactionID := 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        dm.sqlsisAdimin.StartTransaction(TD);
        strEXCLUI := 'UPDATE GUIAS SET NUMERO_GUIA =  null ' +
        ', NUMERO_GUIA = ' + QuotedStr(fPlanoSaude.UserControlSaude.CurrentUser.UserName)  +
        ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
        dm.sqlsisAdimin.ExecuteDirect(strEXCLUI);
        dm.sqlsisAdimin.Commit(TD);
        cdsBuscaGuia.Refresh;
      end;


end;

procedure TfDependente.btnATUAClick(Sender: TObject);
var      TD: TTransactionDesc;
         strATUA : string;
         dataNASC : TDateTime;
begin
 // inherited;

      if(DBEdit3.Text <> '  /  /    ' )then
      dataNASC := StrToDateTime(DBEdit3.Text);

      if Excluir = 'N' then Exit;
      begin
        TD.TransactionID := 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        dm.sqlsisAdimin.StartTransaction(TD);
        strATUA := 'UPDATE GUIAS SET NOME_FUNCIONARIO = ' + QuotedStr(DBEdit2.Text) +

         ', RG = ' + QuotedStr(DBEdit6.Text) +
         ', CPF = ' + QuotedStr(DBEdit13.Text) +
         ', CARGO = ' + QuotedStr(DBComboBox1.Text) +
         ', FUNCAO = ' + QuotedStr(DBComboBox2.Text) +
         ', PIS = ' + QuotedStr(DBEdit25.Text) +
         ', DATARETORNO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dataNASC))+

        ' WHERE ID_GUIAS  = ' + IntToStr(cdsBuscaGuiaID_GUIAS.AsInteger) ;
        dm.sqlsisAdimin.ExecuteDirect(strATUA);
        dm.sqlsisAdimin.Commit(TD);
        cdsBuscaGuia.Refresh;
      end;
      MessageDlg('Ficha e Cadastro  : Dados Iguais', mtInformation, [mbOK], 0);

end;

end.







