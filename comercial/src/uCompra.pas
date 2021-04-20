unit uCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, Mask, DBCtrls, DBClient, Provider, SqlExpr, Grids, DBGrids,
  rpcompobase, rpvclreport, UCHist_Base, UCHistDataset, JvExDBGrids,
  JvDBGrid, JvExStdCtrls, JvEdit, JvDBSearchEdit, JvCombobox,
  JvDBSearchComboBox, JvExMask, JvToolEdit, JvDBControls;

type
  TfCompra = class(TfPai)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
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
    sds_MovimentoOBS: TStringField;
    sds_MovimentoPLACA: TStringField;
    sds_MovimentoMARCA_MODELO: TStringField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    sds_MovimentoCONTROLE: TStringField;
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
    cds_MovimentoOBS: TStringField;
    cds_MovimentoPLACA: TStringField;
    cds_MovimentoMARCA_MODELO: TStringField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_MovimentoCONTROLE: TStringField;
    DtSrc1: TDataSource;
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
    s_8: TSQLDataSet;
    s_8CODMOVIMENTO: TIntegerField;
    s_8CODSERVICO: TIntegerField;
    s_8DESCRICAO: TStringField;
    s_8QUANTIDADE: TFloatField;
    s_8PRECO: TFloatField;
    s_8CODDETALHE_SERV: TIntegerField;
    d_8: TDataSetProvider;
    c_8_serv: TClientDataSet;
    c_8_servCODMOVIMENTO: TIntegerField;
    c_8_servCODSERVICO: TIntegerField;
    c_8_servDESCRICAO: TStringField;
    c_8_servQUANTIDADE: TFloatField;
    c_8_servPRECO: TFloatField;
    c_8_servCODDETALHE_SERV: TIntegerField;
    ds_serv: TDataSource;
    dtProduto: TDataSource;
    cds_prod: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    DateField2: TDateField;
    StringField18: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    cds_prodICMS: TFloatField;
    cds_prodCODALMOXARIFADO: TIntegerField;
    cds_prodIPI: TFloatField;
    cds_prodCLASSIFIC_FISCAL: TStringField;
    cds_prodCST: TStringField;
    cds_prodBASE_ICMS: TFloatField;
    cds_prodPRODUTO: TStringField;
    cds_prodPRECOMEDIO: TBCDField;
    cds_prodCOD_COMISSAO: TIntegerField;
    cds_prodMARGEM_LUCRO: TFloatField;
    cds_prodCOD_BARRA: TStringField;
    cds_prodVALOR_PRAZO: TFloatField;
    cds_prodTIPO: TStringField;
    cds_prodCONTA_DESPESA: TStringField;
    cds_prodCONTA_RECEITA: TStringField;
    cds_prodCONTA_ESTOQUE: TStringField;
    cds_prodRATEIO: TStringField;
    cds_prodCODPRO: TStringField;
    cds_prodQTDE_PCT: TFloatField;
    cds_prodPESO_QTDE: TFloatField;
    cds_prodDATACADASTRO: TSQLTimeStampField;
    cds_prodMARGEM: TFloatField;
    cds_prodPRO_COD: TStringField;
    cds_prodDATAGRAV: TDateField;
    cds_prodCODFORN: TStringField;
    dsp_prod: TDataSetProvider;
    sds_prod: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    DateField1: TDateField;
    StringField12: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    sds_prodICMS: TFloatField;
    sds_prodCODALMOXARIFADO: TIntegerField;
    sds_prodIPI: TFloatField;
    sds_prodCLASSIFIC_FISCAL: TStringField;
    sds_prodCST: TStringField;
    sds_prodBASE_ICMS: TFloatField;
    sds_prodPRODUTO: TStringField;
    sds_prodPRECOMEDIO: TBCDField;
    sds_prodCOD_COMISSAO: TIntegerField;
    sds_prodMARGEM_LUCRO: TFloatField;
    sds_prodCOD_BARRA: TStringField;
    sds_prodVALOR_PRAZO: TFloatField;
    sds_prodTIPO: TStringField;
    sds_prodCONTA_DESPESA: TStringField;
    sds_prodCONTA_RECEITA: TStringField;
    sds_prodCONTA_ESTOQUE: TStringField;
    sds_prodRATEIO: TStringField;
    sds_prodCODPRO: TStringField;
    sds_prodQTDE_PCT: TFloatField;
    sds_prodPESO_QTDE: TFloatField;
    sds_prodDATACADASTRO: TSQLTimeStampField;
    sds_prodMARGEM: TFloatField;
    sds_prodPRO_COD: TStringField;
    sds_prodDATAGRAV: TDateField;
    sds_prodCODFORN: TStringField;
    sds_cm: TSQLDataSet;
    sds_cmCOD_COMISSAO: TIntegerField;
    sds_cmCODIGO: TStringField;
    sds_cmDESCRICAO: TStringField;
    sds_cmINDICE: TStringField;
    sds_cmLB: TStringField;
    sds_cmCM: TStringField;
    dsp_cm: TDataSetProvider;
    cds_cm: TClientDataSet;
    cds_cmCOD_COMISSAO: TIntegerField;
    cds_cmCODIGO: TStringField;
    cds_cmDESCRICAO: TStringField;
    cds_cmINDICE: TStringField;
    cds_cmLB: TStringField;
    cds_cmCM: TStringField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ds_ccusto: TDataSource;
    GroupBox1: TGroupBox;
    dbeCliente: TDBEdit;
    btnClienteProcura: TBitBtn;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    DBEdit4: TDBEdit;
    ExcluiProduto1: TMenuItem;
    IncluirProduto1: TMenuItem;
    Finalizar1: TMenuItem;
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetDTAFAB: TDateField;
    sds_Mov_DetDTAVCTO: TDateField;
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detDTAFAB: TDateField;
    cds_Mov_detDTAVCTO: TDateField;
    sdslote: TSQLDataSet;
    sdsloteCODLOTE: TIntegerField;
    sdsloteLOTE: TStringField;
    sdsloteCODPRODUTO: TIntegerField;
    sdsloteDATAFABRICACAO: TDateField;
    sdsloteDATAVENCIMENTO: TDateField;
    sdsloteESTOQUE: TFloatField;
    sdslotePRODUTO: TStringField;
    sdsloteCODPRO: TStringField;
    dsplotes: TDataSetProvider;
    cdslotes: TClientDataSet;
    cdslotesCODLOTE: TIntegerField;
    cdslotesLOTE: TStringField;
    cdslotesCODPRODUTO: TIntegerField;
    cdslotesDATAFABRICACAO: TDateField;
    cdslotesDATAVENCIMENTO: TDateField;
    cdslotesESTOQUE: TFloatField;
    cdslotesPRODUTO: TStringField;
    cdslotesCODPRO: TStringField;
    sds_Mov_DetRATEIO: TStringField;
    cds_Mov_detRATEIO: TStringField;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    d_2: TDataSetProvider;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    BitBtn2: TBitBtn;
    VCLReport1: TVCLReport;
    sdslista: TSQLDataSet;
    dsplista: TDataSetProvider;
    cdslista: TClientDataSet;
    sdslistaUNIDADE: TStringField;
    sdslistaPRECOLISTA: TFloatField;
    sdslistaCODIGO: TStringField;
    sdslistaCODPRODUTO: TIntegerField;
    sdslistaCODFORNECEDOR: TIntegerField;
    sdslistaPRODUTO: TStringField;
    cdslistaUNIDADE: TStringField;
    cdslistaPRECOLISTA: TFloatField;
    cdslistaCODIGO: TStringField;
    cdslistaCODPRODUTO: TIntegerField;
    cdslistaCODFORNECEDOR: TIntegerField;
    cdslistaPRODUTO: TStringField;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DataSource3: TDataSource;
    sds_Veiculocli: TSQLDataSet;
    sds_VeiculocliCOD_VEICULO: TIntegerField;
    sds_VeiculocliCOD_CLIENTE: TIntegerField;
    sds_VeiculocliPLACA: TStringField;
    sds_VeiculocliMARCA_MODELO: TStringField;
    sds_VeiculocliTIPO: TStringField;
    sds_VeiculocliCOMBUSTIVEL: TStringField;
    sds_VeiculocliANO_FAB: TStringField;
    sds_VeiculocliANO_MOD: TStringField;
    sds_VeiculocliCOR: TStringField;
    dsp_Veiculocli: TDataSetProvider;
    cds_Veiculocli: TClientDataSet;
    cds_VeiculocliCOD_VEICULO: TIntegerField;
    cds_VeiculocliCOD_CLIENTE: TIntegerField;
    cds_VeiculocliPLACA: TStringField;
    cds_VeiculocliMARCA_MODELO: TStringField;
    cds_VeiculocliTIPO: TStringField;
    cds_VeiculocliCOMBUSTIVEL: TStringField;
    cds_VeiculocliANO_FAB: TStringField;
    cds_VeiculocliANO_MOD: TStringField;
    cds_VeiculocliCOR: TStringField;
    BitBtn4: TBitBtn;
    sds_Mov_DetPESO_QTDE: TFloatField;
    cds_Mov_detPESO_QTDE: TFloatField;
    JvDBSearchEdit4: TJvDBSearchComboBox;
    JvDBSearchEdit1: TJvDBSearchEdit;
    cds: TClientDataSet;
    cdsCODPRODUTO: TIntegerField;
    cdsVALORUNITARIOATUAL: TFloatField;
    cdsESTOQUEREPOSICAO: TFloatField;
    cdsPRODUTO: TStringField;
    cdsCONTA_DESPESA: TStringField;
    cdsCONTA_RECEITA: TStringField;
    cdsCONTA_ESTOQUE: TStringField;
    cdsVALOR_PRAZO: TFloatField;
    cdsCODPRO: TStringField;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    dsProcedimento: TDataSource;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cdsp: TClientDataSet;
    cdspCODPRODUTO: TIntegerField;
    cdspVALORUNITARIOATUAL: TFloatField;
    cdspVALOR_PRAZO: TFloatField;
    cdspESTOQUEREPOSICAO: TFloatField;
    cdspPRODUTO: TStringField;
    cdspCONTA_DESPESA: TStringField;
    cdspCODPRO: TStringField;
    cdspCONTA_RECEITA: TStringField;
    cdspCONTA_ESTOQUE: TStringField;
    Label11: TLabel;
    Label12: TLabel;
    JvDBSearchEdit2: TJvDBSearchEdit;
    JvDBSearchComboBox1: TJvDBSearchComboBox;
    chk: TCheckBox;
    fgrupo: TBitBtn;
    DataSource4: TDataSource;
    cdsClienteBusca: TClientDataSet;
    cdsClienteBuscaCODCLIENTE: TIntegerField;
    cdsClienteBuscaNOMECLIENTE: TStringField;
    cdsClienteBuscaRA: TStringField;
    DataSetProvider2: TDataSetProvider;
    SQLDataSet2: TSQLDataSet;
    btnLancar_socio: TBitBtn;
    LanarSocio1: TMenuItem;
    BuscarSocio1: TMenuItem;
    sds_Mov_DetRA: TStringField;
    sds_Mov_DetNOMECLIENTE: TStringField;
    cds_Mov_detRA: TStringField;
    cds_Mov_detNOMECLIENTE: TStringField;
    sds_Mov_DetHISTORICO: TStringField;
    cds_Mov_detHISTORICO: TStringField;
    DataSource5: TDataSource;
    sds_Mov_DetCODCLIENTE: TIntegerField;
    sds_Mov_DetDATAINCLUSAO: TDateField;
    sds_Mov_DetDATAPROCEDIMENTO: TDateField;
    cds_Mov_detCODCLIENTE: TIntegerField;
    cds_Mov_detDATAINCLUSAO: TDateField;
    cds_Mov_detDATAPROCEDIMENTO: TDateField;
    sds_Mov_DetOUTRO_CREDITO: TFloatField;
    cds_Mov_detOUTRO_CREDITO: TFloatField;
    Label16: TLabel;
    Label17: TLabel;
    CheckBox1: TCheckBox;
    GroupBox4: TGroupBox;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    dbeProduto: TDBEdit;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    DBEdit9: TDBEdit;
    Label7: TLabel;
    btnNovo: TBitBtn;
    BitBtn5: TBitBtn;
    DBGrid1: TJvDBGrid;
    DBEdit2: TDBEdit;
    ComboBox1: TComboBox;
    codcliente: TDBEdit;
    BitBtn6: TBitBtn;
    BuscaCodDespesas1: TMenuItem;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    DSPV: TDataSetProvider;
    dsCDSV: TClientDataSet;
    dsCDSVNOMECLIENTE: TStringField;
    dsCDSVRA: TStringField;
    dsCDSVDATACADASTRO: TDateField;
    dsCDSVEMVIAGEM: TStringField;
    sqlV: TSQLDataSet;
    sqlVNOMECLIENTE: TStringField;
    sqlVRA: TStringField;
    sqlVDATACADASTRO: TDateField;
    sqlVEMVIAGEM: TStringField;
    SQLc: TSQLDataSet;
    SQLcNOMECLIENTE: TStringField;
    SQLcRA: TStringField;
    SQLcDATACADASTRO: TDateField;
    SQLcTEM_IE: TStringField;
    DSPc: TDataSetProvider;
    dsCDSc: TClientDataSet;
    dsCDScNOMECLIENTE: TStringField;
    dsCDScRA: TStringField;
    dsCDScDATACADASTRO: TDateField;
    dsCDScTEM_IE: TStringField;
    JvDBDateEdit1: TJvDBDateEdit;
    procedure dbeClienteExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cds_MovimentoNewRecord(DataSet: TDataSet);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure cds_Mov_detNewRecord(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure dbeProdutoExit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbeClienteKeyPress(Sender: TObject; var Key: Char);
    procedure dbeProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure DtSrc1DataChange(Sender: TObject; Field: TField);
    procedure cds_Mov_detReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_MovimentoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure cds_Mov_detBeforePost(DataSet: TDataSet);
    procedure dbLoteChange(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure fgrupoClick(Sender: TObject);
    procedure btnLancar_socioClick(Sender: TObject);
    procedure JvDBSearchEdit4Exit(Sender: TObject);
    procedure JvDBSearchEdit1Exit(Sender: TObject);
    procedure chkClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure JvDBSearchComboBox1Exit(Sender: TObject);
    procedure JvDBDateEdit1Exit(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    campocentrocusto, usarateio, usaprecolista, CODIGOPRODUTO, tipoCompra, CompradorPadraoNome : String;
    J, ccustoCompras, CompradorPadrao: integer;
    procedure precolista;
  end;

var
  fCompra: TfCompra;
  valorUnitario, qtde: Double;
  est_compra : integer;
  modo: string;

implementation

uses  UDm, uFiltroMov_compra, ufprocura_prod,
  uCompraFinalizar, uProcurar , sCtrlResize, UProcuraGrupoT, UDmSaude,
  uFiltro_forn_plano, uDetalhe, uFiltro_forn_planoP;


{$R *.dfm}

procedure TfCompra.dbeClienteExit(Sender: TObject);
begin
  inherited;
  if (dtsrc.State in [dsInsert]) then
  begin
    if (dbeCliente.Text = '') then
    begin
      exit;
    end;
    if dm.scds_forn_proc.Active then
    dm.scds_forn_proc.Close;
    dm.scds_forn_proc.Params[0].Clear;
    dm.scds_forn_proc.Params[1].Clear;
    dm.scds_forn_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text);
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    dm.scds_forn_proc.Open;
    if dm.scds_forn_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnClienteProcura.Click;
      exit;
    end;
    cds_MovimentoCODFORNECEDOR.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
    cds_MovimentoNOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dbEdit3.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dm.scds_forn_proc.Close;
    if (campocentrocusto = 'SIM') then
      ComboBox1.SetFocus
    else
      dbEdit2.SetFocus;
  end
  else
  if dbeCliente.Field.OldValue<>dbeCliente.Field.NewValue then
  begin
    if dm.scds_forn_proc.Active then
      dm.scds_forn_proc.Close;
    dm.scds_forn_proc.Params[0].Clear;
    dm.scds_forn_proc.Params[1].Clear;
    dm.scds_forn_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text);
    dm.scds_forn_proc.Open;
    if dm.scds_forn_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnClienteProcura.Click;
      exit;
    end;
    cds_MovimentoCODFORNECEDOR.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
    cds_MovimentoNOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dbEdit3.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    if (campocentrocusto = 'SIM') then
      ComboBox1.SetFocus
    else
      DbEdit2.SetFocus;
  end;

  dm.scds_forn_proc.Close;

end;

procedure TfCompra.FormCreate(Sender: TObject);
begin
 // inherited;
  sCtrlResize.CtrlResize(TForm(fCompra));
 { if (dm.moduloUsado = 'CITRUS') then
  begin
    CheckBox1.Visible := True;
    Label8.Caption := 'Refugo';
    // Unidade
    {Label5.Left := 375;
    DBEdit8.Left := 375;}
    // Qtde
    {Label6.Left := 313;
    DBEdit9.Left := 313;   }
    //DBEdit9.TabOrder := 10;
    // Tonelada
    //Label4.Caption := 'kg';
    //Label4.Left := 127;
    //DbEdit5.Left := 127;
    //DbEdit5.TabOrder := 4;
   // GroupBox6.Caption := 'FRUTAS';
    //dbLote.Visible := True;
   // GroupBox4.Caption := 'LOTE';
   // GroupBox1.Caption := 'PRODUTOR';
 //end;

  {------Pesquisando na tab Parametro qual form de Procura Produtos ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'TERMINALVENDAS';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    procprod := dm.cds_parametroDADOS.AsString;
  end
  else
    procprod := 'PROC_PROD_SIMPLES';


  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;
  {------Pesquisando na tab Parametro se usa centro de Receita ---------}
  if dm.cds_parametroCONFIGURADO.AsString = 'S' then
  begin
    ComboBox1.Enabled := True;
   // NOVO conta_desp := dm.cds_parametroDADOS.AsString;
    campocentrocusto := 'SIM';
  end
  else begin
    ComboBox1.Enabled := False;
    campocentrocusto := 'NAO';
    Try
      if (dm.cds_parametroD1.asString <> '') then
        ccustoCompras := StrToInT(dm.cds_parametroD1.asString);
    except
      ccustoCompras := 0;
    end;
  end;
  dm.cds_parametro.Close;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTROLE';
  dm.cds_parametro.Open;
  if (dm.cds_parametro.IsEmpty) then
  //  dbEdit1.Enabled := False
  else if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
  //  dbEdit1.Enabled := True
  else
  //  dbEdit1.Enabled := False;

  {------Pesquisando na tab Parametro se usa centro de Receita ---------}
  if dm.cds_parametroCONFIGURADO.AsString = 'N' then
  begin
    DBEDit1.TabStop := False;
  end;
  if dm.cds_parametroCONFIGURADO.AsString = 'S' then
  begin
    DBEDit1.TabStop := True;
  end;
  dm.cds_parametro.Close;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'LISTAPRECO';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
      if dm.cds_parametroCONFIGURADO.AsString = 'S' then
         usaprecolista := 'S';
  end;

  if cds_ccusto.Active then
    cds_ccusto.Close;
  // NOVO cds_ccusto.Params[0].AsString := conta_desp;
  cds_ccusto.Open;
  // populo a combobox
  cds_ccusto.First;
  while not cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(cds_ccustoNOME.AsString);
    cds_ccusto.Next;
  end;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CADASTROVEICULO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'SIM' then
  begin
  // NOVO  GroupBox7.Visible := True;
  end;

  {------Pesquisando na tab Parametro Comprador Padrão ---------}
  if Dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'COMPRADORPADRAO';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
  begin
    compradorPadrao := strToint(dm.cds_parametroDADOS.AsString);
    CompradorPadraoNome := dm.cds_parametroD1.AsString;
  end else
  begin
    compradorPadrao := 1;
    CompradorPadraoNome := '..'
  end;

end;

procedure TfCompra.btnIncluirClick(Sender: TObject);
begin
  inherited;
  J := 1;
  modo := 'incluir';
  codmovdet := 1999999;
  tipoCompra := 'COMPRA';
  if cds_Movimento.Active then
    cds_Movimento.Close;
  if cds_Mov_det.Active then
    cds_Mov_det.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;
  inherited;
  if (tipoCompra = 'COMPRA') then
  begin
    cds_MovimentoCODNATUREZA.AsInteger := 4;
    cds_MovimentoDESCNATUREZA.AsString := 'Compra';
  end;
  if (tipoCompra = 'DEVOLUCAO') then
  begin
    cds_MovimentoCODNATUREZA.AsInteger := 9;
    cds_MovimentoDESCNATUREZA.AsString := 'Devolucao Compras';
  end;

  cds_MovimentoCODUSUARIO.AsInteger := 1;
  cds_MovimentoNOMEUSUARIO.AsString := CompradorPadraoNome;

  if cds_Mov_det.Active then
    cds_Mov_det.Close;

  if c_8_serv.Active then
    c_8_serv.Close;

  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;
  dbeCliente.Text := '';
  dbeCliente.SetFocus;

  if DtSrc1.DataSet.State in [dsInactive] then
  begin
    DtSrc1.DataSet.Open;
    DtSrc1.DataSet.Append;
  end;
  if DtSrc1.DataSet.State in [dsBrowse] then
      DtSrc1.DataSet.Append;


  btnLancar_socio.Click;
  btnClienteProcura.Enabled := true;
  BitBtn6.Enabled := true;
  dbeCliente.SetFocus;

  Label8.Caption := '....';
end;

procedure TfCompra.btnGravarClick(Sender: TObject);
begin
   modo := 'gravar';
   if(ComboBox1.Text = '') then
   begin
     MessageDlg('Escolha um Centro de Custo', mtWarning, [mbOK], 0);
   end;
   
   if cds_Movimento.State in [dsInsert] then
   begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_MovimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
   end;
  IF (DtSrc.State in [dsInsert, dsEdit]) then
  begin
    if (cds_ccusto.Locate('NOME',ComboBox1.Text, [loCaseInsensitive])) then
      cds_MovimentoCODALMOXARIFADO.AsInteger := StrToInt(cds_ccustoCODIGO.AsString)
    else
      cds_MovimentoCODALMOXARIFADO.AsInteger:= ccustoCompras;
 // se ja tiver finalizado não altera
 if dm.scds_compra_proc.Active then
     dm.scds_compra_proc.Close;
  dm.scds_compra_proc.Params[0].AsInteger := fCompra.cds_MovimentoCODMOVIMENTO.AsInteger;
  dm.scds_compra_proc.Open;



  if(not dm.scds_compra_proc.IsEmpty) then
  begin
    MessageDlg('Lançamento Finalizada, não é possivel executar a alteração.', mtWarning, [mbOk], 0);
    exit;
  end;
 


  end;
  inherited;  // Preciso ver se gravou, do contrário, cancela o processo e para aqui
  {cds_Movimento.ApplyUpdates(0);
  if cds_Movimento.ChangeCount > 0 then
  begin
  end;}
  //else begin
  {  if cds_Movimento.State in [dsInsert, dsEdit] then
    begin
      MessageDlg('Erro para gravar o registro.', mtWarning,
         [mbOk], 0);
      exit;
    end;}
  //end;
  //********************************************************************************
  // aqui corrijo o codigo do movimento na tabela mov_detalhe
  if (cds_Mov_detCODDETALHE.AsInteger >= 1999999) then
  begin
    cds_Mov_det.First;
    While not cds_Mov_det.Eof do
    begin
      cds_Mov_det.Edit;
      if (cds_Mov_detLOTE.asString = '') then
        cds_Mov_detLOTE.Clear;
      cds_Mov_detCODMOVIMENTO.AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cds_Mov_detCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
      cds_Mov_det.Post;
      cds_Mov_det.Next;
      codmovdet := 0;
    end;
  end;
  cds_Mov_det.ApplyUpdates(0);
  if (usarateio = 'SIM') then
  begin
 //   btnRateio.Click;
    usarateio := 'NAO';
  end;

  // Coloquei este cancel aqui pq , no dtsrc1 coloquei um código
  // pra mudar o dtsrt para edit quando mudo o dtsrc1
  DtSrc.DataSet.Cancel;

  Label8.Caption := IntToStr(cds_Mov_det.RecordCount);
end;

procedure TfCompra.cds_MovimentoNewRecord(DataSet: TDataSet);
begin
  inherited;
  cds_MovimentoCODMOVIMENTO.asInteger := 1999999;
  cds_MovimentoDATAMOVIMENTO.Value := Date;
  cds_MovimentoDATA_SISTEMA.AsDateTime := Now;
  cds_MovimentoSTATUS.Value := 0;
  cds_MovimentoCODUSUARIO.AsInteger := usulog;
  cds_MovimentoCODVENDEDOR.Value := compradorPadrao;
  cds_MovimentoNOMEUSUARIO.Value := compradorPadraoNome;
  cds_MovimentoCODCLIENTE.AsInteger := 0;
  cds_MovimentoCODALMOXARIFADO.AsInteger := ccustoCompras;
end;

procedure TfCompra.cds_Mov_detCalcFields(DataSet: TDataSet);
var valor : double;
begin
  inherited;
  //  cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
  if (cds_Mov_detPESO_QTDE.Value >0) then
     qtde := cds_Mov_detPESO_QTDE.Value;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    if (qtde > 0) then
      valor := (cds_Mov_detQTDE_ALT.AsFloat - cds_Mov_detICMS.AsFloat)/qtde
    else
      valor := cds_Mov_detQUANTIDADE.AsFloat;
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * valor;
  end
  else begin
    if cds_Mov_detQTDE_ALT.Value > 0 then
    begin
      cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
      //valor := cds_Mov_detValorTotal.Value * (cds_Mov_detQTDE_ALT.Value/100);
      //cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value - valor;
    end
    else
      cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
  end;
end;

procedure TfCompra.cds_Mov_detNewRecord(DataSet: TDataSet);
begin
  inherited;
  if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  if (codmovdet < 1999999) then
  begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      codmovdet := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
  end;
  cds_mov_detCODDETALHE.AsInteger := codmovdet;
  cds_Mov_detCODMOVIMENTO.AsInteger:=cds_MovimentoCODMOVIMENTO.AsInteger;
end;

procedure TfCompra.btnExcluirClick(Sender: TObject);
begin
  inherited;
    if DtSrc1.DataSet.Active then
     DtSrc1.DataSet.Close;
end;

procedure TfCompra.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DtSrc1.DataSet.Cancel;
  JvDBSearchEdit1.Text := '';
  JvDBSearchEdit4.Text := '';
{  DtSrc1.DataSet.Close;
  ds_serv.DataSet.Cancel;
  ds_serv.DataSet.Close;
  cds_Mov_det.Params[0].Clear;
  cds_Mov_det.Params[1].Clear;
  DtSrc.DataSet.Close;
  if cds_prod.Active then
    cds_prod.Close;
  chk.Checked := False;
  if(chk.Checked = False) then
  if(cdsClienteBusca.Active)then
  cdsClienteBusca.Close;
  JvDBSearchEdit2.Text := '';
  JvDBSearchComboBox1.Text := '';
  JvDBSearchEdit1.Text := '';
  JvDBSearchEdit4.Text := '';
  }
end;

procedure TfCompra.btnProcurarClick(Sender: TObject);
begin
  inherited;
    ffiltromov_compra := TfFiltroMov_compra.Create(Application);
    try
      if (not cds_ccusto.Active) then
        cds_ccusto.Open;
      cds_ccusto.First;
      while not cds_ccusto.Eof do
      begin
        ffiltromov_compra.ComboBox1.Items.Add(cds_ccustoNOME.AsString);
        cds_ccusto.Next;
      end;
      cds_ccusto.close;
      {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
      if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'NATUREZACOMPRA';
      dm.cds_parametro.Open;
      fFiltroMov_compra.Edit3.Text := dm.cds_parametroDADOS.AsString;
      fFiltroMov_compra.Edit4.Text := dm.cds_parametroD1.AsString;
      dm.cds_parametro.Close;
      if (tipoCompra = 'DEVOLUCAO') then
      begin
        ffiltromov_compra.Edit3.Text := '9';
        ffiltromov_compra.Edit4.Text := 'Devolução';
        //ffiltromov_compra.Label9.Caption := 'Devolução Compras';
        ffiltromov_compra.Label10.Caption := 'Devolução Compras';
        ffiltromov_compra.MMJPanel1.Background.EndColor := clOlive;
        ffiltromov_compra.MMJPanel2.Background.EndColor := clOlive;
      end;
      fFiltroMov_compra.ShowModal;

      if (not cds_ccusto.Active) then
        cds_ccusto.Open;
      cds_ccusto.Locate('CODIGO',cds_MovimentoCODALMOXARIFADO.AsInteger, [loCaseInsensitive]);
      ComboBox1.Text := cds_ccustoNOME.AsString;
    finally
      fFiltroMov_compra.Close;
    end;
end;

procedure TfCompra.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;
 if Alterar = 'S' then
   BitBtn1.Enabled:=DtSrc.State in [dsInsert,dsEdit,dsBrowse]
 else
  BitBtn1.Enabled:=False;
end;

procedure TfCompra.dbeProdutoExit(Sender: TObject);
begin
  inherited;
  varonde := 'compra';
  dbeProduto.Text := JvDBSearchEdit1.Text;
  if (dbeProduto.Text = '') then
  begin
    exit;
  end;

  if (cds_mov_det.State in [dsInsert, dsEdit]) then
  begin
  {
    if (usaprecolista = 'S') then
    begin
        varonde := 'Lista';
        CODIGOPRODUTO := dbeProduto.Text;
        precolista;
        exit;
    end;

    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := dbeProduto.Text;
    dm.scds_produto_proc.Open;
  }
    if cdsp.Active then
       cdsp.Close;
     cdsp.Params[0].AsString := dbeProduto.Text;
     cdsp.Open;

   {
    if dm.scds_produto_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnProdutoProcura.Click;
      exit;
    end;
    }
   { if (dm.scds_produto_procRATEIO.AsString = 'S') then
    begin
      usarateio := 'SIM';
      conta_pl := dm.scds_produto_procCONTA_DESPESA.AsString;
    end
    else
      usarateio := 'NAO';
    }
    cds_Mov_detCODPRODUTO.AsInteger :=  cdspCODPRODUTO.AsInteger; //dm.scds_produto_procCODPRODUTO.AsInteger;
    cds_Mov_detPRODUTO.Value := cdspPRODUTO.Value; //dm.scds_produto_procPRODUTO.Value;
    //cds_Mov_detCOD_COMISSAO.AsInteger := cdspP //dm.scds_produto_procCOD_COMISSAO.AsInteger;
    //cds_Mov_detQTDE_PCT.AsFloat := 1 ; //dm.scds_produto_procQTDE_PCT.AsFloat;
    //cds_Mov_detQTDE_ALT.AsFloat := dm.scds_produto_procPESO_QTDE.AsFloat;
    //qtde := dm.scds_produto_procPESO_QTDE.AsFloat;
   // cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
    cds_Mov_detQUANTIDADE.AsFloat := 1;
   // if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
  //     cds_Mov_detPRECO.AsFloat :=
   //    dm.scds_produto_procVALORUNITARIOATUAL.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
   // else
       cds_Mov_detPRECO.AsFloat := cdspVALORUNITARIOATUAL.AsFloat;// dm.scds_produto_procVALORUNITARIOATUAL.AsFloat;
    valorUnitario := cdspVALORUNITARIOATUAL.AsFloat;  //dm.scds_produto_procVALORUNITARIOATUAL.AsFloat;
    cds_Mov_detCODALMOXARIFADO.AsInteger := 51 ; //dm.scds_produto_procCODALMOXARIFADO.AsInteger;
    cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;

    cds_Mov_detCONTROLE.AsInteger :=  cdsClienteBuscaCODCLIENTE.AsInteger; ///// StrToInt(Edit2.Text);

    if(cdsClienteBuscaCODCLIENTE.AsInteger <> 0)then
    cds_Mov_detCODCLIENTE.AsInteger := cdsClienteBuscaCODCLIENTE.AsInteger;
    if(cds_Mov_detCODCLIENTE.AsInteger = 0)then
    cds_Mov_detCODCLIENTE.AsInteger := 0;

   ///// cds_Mov_detCODCLIENTE.AsInteger :=  cdsClienteBuscaCODCLIENTE.AsInteger;
   if(cdsClienteBuscaCODCLIENTE.AsInteger = 0)then
   begin
    cds_Mov_detNOMECLIENTE.AsString := '.';
    cds_Mov_detRA.AsString :=  '.';
   end;
   if(cdsClienteBuscaCODCLIENTE.AsInteger <> 0)then
   begin
    cds_Mov_detNOMECLIENTE.AsString := cdsClienteBuscaNOMECLIENTE.AsString;
    cds_Mov_detRA.AsString :=  cdsClienteBuscaRA.AsString;
   end;

   // cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
  //  if (dm.moduloUsado <> 'CITRUS') then
  //  begin
  //    cds_Mov_detQTDE_ALT.AsFloat := dm.scds_produto_procIPI.AsFloat;
  //  end;
//    if (dm.scds_produto_procLOTES.AsString = 'S') then
 //   begin
      {if (dm.moduloUsado = 'CITRUS') then
      begin
        if (dbLote.Text = '') then
        begin
          MessageDlg('Insira o número do CFO.', mtWarning, [mbOK], 0);
          dbLote.SetFocus;
          Exit;
        end;
        cds_Mov_detLOTE.AsString := cds_MovimentoCONTROLE.AsString;
        cds_Mov_detDTAFAB.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
        cds_Mov_detDTAVCTO.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
      end
      else begin}
     {   if (DBEdit1.Text = '') then
        begin
          MessageDlg('Insira o número do Lote no campo CONTROLE.', mtWarning, [mbOK], 0);
          dbEdit1.SetFocus;
          Exit;
        end;
     }
     //   cds_Mov_detLOTE.AsString := cds_MovimentoCONTROLE.AsString;
     //   cds_Mov_detDTAFAB.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
     //   cds_Mov_detDTAVCTO.AsDateTime := cds_MovimentoDATAMOVIMENTO.AsDateTime;
      //end;
  //  end;
  //  dm.scds_produto_proc.Close;
    cdsp.Close;
  end;

end;

procedure TfCompra.btnNovoClick(Sender: TObject);

begin
  inherited;
  if (J = 10) then
  begin
    btnGravar.Click;
    J := 0;
  end
  else
    J := J + 1;
  if DtSrc1.State in [dsInsert, dsEdit] then
  begin
   if cds_Movimento.State in [dsBrowse, dsInactive] then
    cds_Movimento.Edit;
    DtSrc1.DataSet.Post;
    if ds_serv.State in [dsInsert, dsEdit] then
    begin
      if cds_Movimento.State in [dsBrowse, dsInactive] then
        cds_Movimento.Edit;
      c_8_servPRECO.AsFloat := cds_Mov_detPRECO.AsFloat;
      ds_serv.DataSet.Post;
    end;
    if (usarateio = 'SIM') then
    begin
      usarateio := 'NAO';
      btnGravar.Click;
     // btnRateio.Click;
      cds_Movimento.Edit;
    end;
    DtSrc1.DataSet.Append;
    JvDBSearchEdit1.SetFocus;
  end;
  if DtSrc1.State in [dsBrowse] then
  begin
   if cds_Movimento.State in [dsBrowse, dsInactive] then
    cds_Movimento.Edit;
    DtSrc1.DataSet.Append;
    JvDBSearchEdit1.SetFocus;
  end;

  if(chk.Checked = False)then
  begin
    btnLancar_socio.Click;
    btnClienteProcura.Enabled := true;
    BitBtn6.Enabled := true;
    dbeCliente.SetFocus;
    JvDBSearchEdit1.SetFocus;
  end;
  Label13.Caption := '...';
end;

procedure TfCompra.BitBtn5Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.edit;

  if  MessageDlg('Confirma a exclusão do item ''' + cds_Mov_detPRODUTO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    DtSrc1.DataSet.Delete;

    label13.Caption := '...';

end;

procedure TfCompra.BitBtn1Click(Sender: TObject);
begin
  inherited;
 if DtSrc.DataSet.State in [dsInsert, dsEdit] then
    btnGravar.Click;
 if DtSrc.DataSet.State in [dsInsert, dsEdit, dsBrowse] then
   fCompraFinalizar.ShowModal
 else
   Exit;


end;

procedure TfCompra.btnClienteProcuraClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
  fProcurar.btnIncluir.Visible := True;
  try
    varForm1 := 'compra';
    cod_forn := 0;
    nome_forn := '';
   fProcurar.ShowModal;
   if dtSrc.State=dsBrowse then
     cds_Movimento.Edit;
   cds_MovimentoCODFORNECEDOR.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
   cds_MovimentoNOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
   finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
   end;
   if (campocentrocusto = 'SIM') then
     ComboBox1.SetFocus
   else
     DBEdit2.SetFocus;
  

end;

procedure TfCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (cds_Mov_det.Active) then
     cds_Mov_det.Close;
  if (cds_Movimento.Active) then
     cds_Movimento.Close;
 { if (cdslotes.Active) then
     cdslotes.Close;
  fLotes.Free;
 }
  inherited;

end;

procedure TfCompra.FormShow(Sender: TObject);
begin
  inherited;
  //fLotes := TfLotes.Create(Application);
{ if (tipoCompra = 'DEVOLUCAO') then
  begin
    MMJPanel1.Background.EndColor := clOlive;
    MMJPanel2.Background.StartColor := clOlive;
    Label15.Caption := 'Devolução Compras';
  end
  else
  begin
    MMJPanel1.Background.EndColor := clTeal;
    MMJPanel2.Background.StartColor := clTeal;
    Label15.Caption := 'Compras';
  end;
  if (not cds.Active) then
    cds.Open;
  }
  JvDBSearchEdit1.Text := '';
  JvDBSearchEdit2.Text := '';
  JvDBSearchComboBox1.Text := '';
  JvDBSearchEdit4.Text := '';
  Label13.Caption := '...';
end;

procedure TfCompra.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if (cds_Mov_detPRECO.AsFloat = 0) then
    cds_Mov_detPRECO.AsFloat := cds_Mov_detValorTotal.asfloat/cds_Mov_detQUANTIDADE.AsFloat;
end;

procedure TfCompra.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
    cds_mov_det.IndexFieldNames := Column.FieldName;
end;

procedure TfCompra.BitBtn2Click(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert, dsEdit]) then
  begin
    MessageDlg('Grave as alterações antes de imprimir.', mtWarning, [mbOK], 0);
    exit;
  end;
  if (RadioButton1.Checked = True) then
    VCLReport1.FileName := str_relatorio + 'produto_etiquetaCompra1.rep'
  else
    VCLReport1.FileName := str_relatorio + 'produto_etiquetaCompra.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('CODMOV').Value := cds_MovimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TfCompra.precolista;
begin
  { if (cdslista.Active) then
     cdslista.Close;
   cdslista.Params[0].AsString := cds_MovimentoCODFORNECEDOR.AsString;
   cdslista.Params[1].AsString := CODIGOPRODUTO;
   cdslista.Open;
   if (not cdslista.IsEmpty) then
   begin
     cds_Mov_detCODPRODUTO.AsInteger := cdslistaCODPRODUTO.AsInteger;
     cds_Mov_detCODPRO.AsString := cdslistaCODIGO.AsString;
     cds_Mov_detPRODUTO.Value := cdslistaPRODUTO.Value;
     cds_Mov_detUN.AsString := cdslistaUNIDADE.AsString;
     cds_Mov_detQUANTIDADE.AsFloat := 1;
     cds_Mov_detPRECO.AsFloat := cdslistaPRECOLISTA.AsFloat;
     valorUnitario := cdslistaPRECOLISTA.AsFloat;
   end
   else
   begin
      if dm.scds_produto_proc.Active then
        dm.scds_produto_proc.Close;
      dm.scds_produto_proc.Params[0].AsInteger := 0;
      dm.scds_produto_proc.Params[1].AsString := dbeProduto.Text;
      dm.scds_produto_proc.Open;
      if dm.scds_produto_proc.IsEmpty then
      begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
       // NOVO btnProdutoProcura.Click;
        exit;
      end;
      cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      cds_Mov_detPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
      cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
      cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
      cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
      cds_Mov_detQUANTIDADE.AsFloat := 1;
      if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
         cds_Mov_detPRECO.AsFloat :=  dm.scds_produto_procVALORUNITARIOATUAL.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
      else
         cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALORUNITARIOATUAL.AsFloat;
      valorUnitario := dm.scds_produto_procVALORUNITARIOATUAL.AsFloat;
      cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
      cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
      cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
      dm.scds_produto_proc.Close;
   end;
   }
end;

procedure TfCompra.dbeClienteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key = #13) then
  begin
    if (DtSrc.DataSet.State in [dsInsert]) then
    begin
      if (dbeCliente.Text = '') then
      begin
        btnClienteProcura.Click;
        if (campocentrocusto = 'SIM') then
          ComboBox1.SetFocus
        else
          DBEdit2.SetFocus;
      end;
    end;
  end;
  if (key = #13) then
  begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfCompra.dbeProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key = #13) then
  begin
    if (DtSrc1.DataSet.State in [dsInsert]) then
    if (dbeProduto.Text = '') then
    begin
     // NOVO btnProdutoProcura.Click;
    end;
  end;
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfCompra.DtSrc1DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (DtSrc1.State in [dsEdit]) then
    if (DtSrc.State in [dsBrowse, dsInactive]) then
      cds_Movimento.Edit;
end;

procedure TfCompra.cds_Mov_detReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfCompra.cds_MovimentoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);

end;

procedure TfCompra.DBEdit9Exit(Sender: TObject);
begin
  inherited;
  if (cds_mov_det.State in [dsEdit, dsInsert]) then
  if (dm.moduloUsado = 'CITRUS') then
  begin
    if (cds_Mov_detQTDE_ALT.AsFloat = 0) then
      cds_Mov_detQTDE_ALT.AsFloat := cds_Mov_detQUANTIDADE.AsFloat * qtde;
  end;

end;

procedure TfCompra.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    if (cds_Mov_detQUANTIDADE.AsFloat = 0) then
    if (qtde > 0) then
    begin
      cds_Mov_detQUANTIDADE.AsFloat := (cds_Mov_detQTDE_ALT.AsFloat - cds_Mov_detICMS.AsFloat)/qtde;
    end;
  end;
end;

procedure TfCompra.cds_Mov_detBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    cds_Mov_detCOD_COMISSAO.AsInteger := cds_MovimentoCODFORNECEDOR.AsInteger;
  end;
end;

procedure TfCompra.dbLoteChange(Sender: TObject);
begin
  inherited;
  if  (cdslotes.Active) then
  if (cds_mov_det.State in [dsInsert, dsEdit]) then
    dbeProduto.Text := cdslotesCODPRO.AsString;
end;

procedure TfCompra.MaskEdit1Exit(Sender: TObject);
begin
  inherited;
  if (cds_Movimento.State in [dsBrowse]) then
    cds_Movimento.Edit;

  if (dtsrc.State in [dsBrowse, dsInactive]) then
    exit;
  // Traz o Véiculo



  if (cds_Veiculocli.IsEmpty) then
  begin
    cod_cli := 1; //cds_MovimentoCODCLIENTE.AsInteger;

    //dbeCliente.SetFocus;
  end
  else begin

    cds_MovimentoCOD_VEICULO.AsInteger := cds_VeiculocliCOD_VEICULO.AsInteger;
  {  if (sdsVeiculoCli.Active) then
      sdsVeiculoCli.Close;
    sdsVeiculoCli.Params[0].AsInteger := cds_VeiculocliCOD_VEICULO.asinteger;
    sdsVeiculoCli.Open;
    if (not sdsVeiculoCli.IsEmpty) then
    begin
      //dbeCliente.Text := IntToStr(sdsVeiculoCli.Fields[0].asInteger);
      //DBEdit3.Text := sdsVeiculoCli.Fields[1].AsString;
      //cds_MovimentoCODCLIENTE.AsInteger := sdsVeiculoCli.Fields[0].asInteger;
      //cds_MovimentoNOMECLIENTE.AsString := sdsVeiculoCli.Fields[1].AsString;
      //cds_MovimentoOBS.AsString := sdsVeiculoCli.Fields[2].AsString;
      //prazo := sdsVeiculoCli.Fields[3].AsFloat;
      //DBComboBox1.SetFocus;
    end; }
  end;
  dbeCliente.SetFocus;
end;

procedure TfCompra.DBEdit11Exit(Sender: TObject);
begin
  inherited;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    if (qtde > 0) then
    begin
      cds_Mov_detQUANTIDADE.AsFloat := (cds_Mov_detQTDE_ALT.AsFloat - cds_Mov_detICMS.AsFloat)/qtde;
    end;
  end;
end;

procedure TfCompra.BitBtn4Click(Sender: TObject);
begin
  inherited;
  VCLReport1.FileName := str_relatorio + 'lista_compra.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PCOMPRA').Value := cds_MovimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TfCompra.JvDBGrid1TitleClick(Column: TColumn);
begin
  inherited;
    cds_mov_det.IndexFieldNames := Column.FieldName;
end;

procedure TfCompra.fgrupoClick(Sender: TObject);
var    grupo : string;
begin
  grupo := 'ASH';
  fProcuraGrupoT := TfProcuraGrupoT.Create(Application);
  if ( grupo = 'ASH') then  begin
  fProcuraGrupoT.Color := clSkyBlue;
  end;
  if DMSaude.procgrupoT.Active then
    DMSaude.procgrupoT.Close;
     DMSaude.procgrupoT.Params[0].AsString := grupo;
     DMSaude.procgrupoT.Open;
   try
     fProcuraGrupoT.ShowModal;
   // Edit1.Text := DMSaude.procgrupoTRA.AsString;
   // Edit2.Text := IntToStr(cdsClienteBuscaCODCLIENTE.asInteger);
   JvDBSearchEdit2.Text := DMSaude.procgrupoTRA.AsString;
   codcliente.Text :=  DMSaude.procgrupoTCODCLIENTE.AsString;//  IntToStr(cdsClienteBuscaCODCLIENTE.asInteger);
   JvDBSearchComboBox1.Text := DMSaude.procgrupoTNOMECLIENTE.Text;
   finally
    fProcuraGrupoT.Free;
  end;
  JvDBDateEdit1.SetFocus; 
end;

procedure TfCompra.btnLancar_socioClick(Sender: TObject);
begin
 // inherited;
  chk.Checked := True;
  if (cdsClienteBusca.Active) then
  begin
   cdsClienteBusca.Close;
  end;
  cdsClienteBusca.Open;
 // JvDBSearchEdit3.Text := '';
 fgrupo.Enabled := True;
end;

procedure TfCompra.JvDBSearchEdit4Exit(Sender: TObject);
begin
 // inherited;
 dbeProduto.Text := JvDBSearchEdit1.Text;
 cds_Mov_detHISTORICO.Text :=  JvDBSearchEdit4.Text;
end;

procedure TfCompra.JvDBSearchEdit1Exit(Sender: TObject);
begin
 // inherited;
 if(cds_Mov_detHISTORICO.Text <> '') then
 cds_Mov_detHISTORICO.Text :=  JvDBSearchEdit4.Text;

end;

procedure TfCompra.chkClick(Sender: TObject);
begin
 // inherited;
  if(chk.Checked = False) then
  begin
    JvDBSearchEdit1.Text := '';
    JvDBSearchEdit4.Text := '';
  end;

end;

procedure TfCompra.DBGrid1DblClick(Sender: TObject);
begin
//  inherited;
  fDetalhe := TfDetalhe.Create(Application);
  try
  //  fDetalhe.detcodMovimento := cds_Mov_detCODDETALHE.AsInteger;
    fDetalhe.ShowModal;
  finally
    fDetalhe.Free;
  end;
end;

procedure TfCompra.BitBtn6Click(Sender: TObject);
begin
 // inherited;
  fFiltro_forn_planoP:=TfFiltro_forn_planoP.Create(Application);
  try
    fFiltro_forn_planoP.ShowModal;
    JvDBSearchEdit4.Text := varconta_nome;
    JvDBSearchEdit1.Text := varconta_cod;
   // usa_rateio := com_rateio;
  //  dm.cds_4_pagarCONTACREDITO.AsInteger := codigo_conta;
  //  conta_rateio := varconta;
 //   Dm.cds_4_pagarHISTORICO.Text :=  varconta_nome;
   JvDBSearchEdit4.SetFocus;
  finally
   fFiltro_forn_planoP.free;
  end;
end;

procedure TfCompra.btnSairClick(Sender: TObject);
begin
  inherited;
  if(cdsClienteBusca.Active)then
  cdsClienteBusca.Close;
  Label8.Caption := '....';
end;

procedure TfCompra.JvDBSearchComboBox1Exit(Sender: TObject);
var data : tdatetime;
begin

  Label13.Caption := '';
  Data := Date;
  if(JvDBSearchEdit2.Text = '')then
  exit;
  if dsCDSV.Active then
      dsCDSV.Close;
   dsCDSV.Params[0].AsString := trim(JvDBSearchEdit2.Text);
   dsCDSV.Open;

   if ( (dsCDSVEMVIAGEM.Value = 'S')) then
   begin
     MessageDlg('Associado em Viagem ', mtWarning, [mbOK], 0);
     Label13.Caption := 'Associado em Viagem'  ;
     dsCDSV.Close;
   end;

end;

procedure TfCompra.JvDBDateEdit1Exit(Sender: TObject);
var datarec  : tdatetime;
    dat  : string ;
    cad  : TDate;
begin

 if(JvDBDateEdit1.Date = 0 ) then
    begin
      DBEdit8.SetFocus;
      exit;
    end
  else
  dat := DateToStr(JvDBDateEdit1.Date) ; // formatdatetime('dd/mm/yyyy', StrToDate(DBEdit14.Text)) ;

  Datarec := JvDBDateEdit1.Date ;
  if(JvDBSearchEdit2.Text = '')then
  exit;
  if dsCDSc.Active then
     dsCDSc.Close;

   dsCDSc.Params[0].AsDate :=  Datarec ;
   dsCDSc.Params[1].AsString := trim(JvDBSearchEdit2.Text);

   dsCDSc.Open;

   cad := dsCDScDATACADASTRO.value;


   if ((dsCDScDATACADASTRO.Value + 180 ) >= (datarec)) then
   begin
     MessageDlg('Lançamento : "Associado em Carência" ', mtWarning, [mbOK], 0);
     Label13.Caption := 'Lançamento Recibo : "Associado em Carência" '  ;
     dsCDSC.Close;
   end;


end;

procedure TfCompra.ComboBox1Exit(Sender: TObject);
begin
 // inherited;
 if(ComboBox1.Text = '') then

 MessageDlg('Escolha um Centro de Custo', mtWarning, [mbOK], 0);
 if(ComboBox1.Text = '') then
 ComboBox1.SetFocus;

end;

end.
