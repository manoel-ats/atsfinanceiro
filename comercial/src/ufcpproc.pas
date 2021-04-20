unit ufcpproc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, Menus, DB, DBLocal, DBLocalS,
  DBClient, Grids, DBGrids, DBCtrls, ExtCtrls, MMJPanel, Mask, StdCtrls,
  Buttons, rpcompobase, rpvclreport, JvAppStorage, JvAppXMLStorage,
  JvComponentBase, JvFormPlacement, JvExStdCtrls, JvCombobox, JvExMask,
  JvToolEdit, JvBaseEdits, ImgList, JvExExtCtrls, JvRadioGroup ,DBXpress,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit ,DateUtils,rplabelitem,
  JvDBGridExport;

type
  TfCpProc = class(TForm)
    MMJPanel1: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    Panel2: TPanel;
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    Panel4: TPanel;
    MMJPanel2: TMMJPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    BitBtn10: TBitBtn;
    BitBtn15: TBitBtn;
    s_1: TSQLDataSet;
    s_1CODRECEBIMENTO: TIntegerField;
    s_1TITULO: TStringField;
    s_1EMISSAO: TDateField;
    s_1CODCLIENTE: TIntegerField;
    s_1DATAVENCIMENTO: TDateField;
    s_1DATARECEBIMENTO: TDateField;
    s_1CAIXA: TSmallintField;
    s_1CONTADEBITO: TIntegerField;
    s_1CONTACREDITO: TIntegerField;
    s_1STATUS: TStringField;
    s_1VIA: TStringField;
    s_1FORMARECEBIMENTO: TStringField;
    s_1DATABAIXA: TDateField;
    s_1HISTORICO: TStringField;
    s_1CODVENDA: TIntegerField;
    s_1CODALMOXARIFADO: TSmallintField;
    s_1CODVENDEDOR: TSmallintField;
    s_1CODUSUARIO: TSmallintField;
    s_1N_DOCUMENTO: TStringField;
    s_1DATASISTEMA: TSQLTimeStampField;
    s_1VALORRECEBIDO: TFloatField;
    s_1JUROS: TFloatField;
    s_1DESCONTO: TFloatField;
    s_1PERDA: TFloatField;
    s_1TROCA: TFloatField;
    s_1FUNRURAL: TFloatField;
    s_1VALOR_PRIM_VIA: TFloatField;
    s_1VALOR_RESTO: TFloatField;
    s_1VALORTITULO: TFloatField;
    s_1OUTRO_CREDITO: TFloatField;
    s_1OUTRO_DEBITO: TFloatField;
    s_1PARCELAS: TSmallintField;
    s_1NOMECLIENTE: TStringField;
    s_1VALORREC: TFloatField;
    d_1: TDataSetProvider;
    scdsCr_proc2: TClientDataSet;
    scdsCr_proc2CODRECEBIMENTO: TIntegerField;
    scdsCr_proc2TITULO: TStringField;
    scdsCr_proc2EMISSAO: TDateField;
    scdsCr_proc2CODCLIENTE: TIntegerField;
    scdsCr_proc2DATAVENCIMENTO: TDateField;
    scdsCr_proc2DATARECEBIMENTO: TDateField;
    scdsCr_proc2CAIXA: TSmallintField;
    scdsCr_proc2CONTADEBITO: TIntegerField;
    scdsCr_proc2CONTACREDITO: TIntegerField;
    scdsCr_proc2STATUS: TStringField;
    scdsCr_proc2VIA: TStringField;
    scdsCr_proc2FORMARECEBIMENTO: TStringField;
    scdsCr_proc2DATABAIXA: TDateField;
    scdsCr_proc2HISTORICO: TStringField;
    scdsCr_proc2CODVENDA: TIntegerField;
    scdsCr_proc2CODALMOXARIFADO: TSmallintField;
    scdsCr_proc2CODVENDEDOR: TSmallintField;
    scdsCr_proc2CODUSUARIO: TSmallintField;
    scdsCr_proc2N_DOCUMENTO: TStringField;
    scdsCr_proc2DATASISTEMA: TSQLTimeStampField;
    scdsCr_proc2VALORRECEBIDO: TFloatField;
    scdsCr_proc2JUROS: TFloatField;
    scdsCr_proc2DESCONTO: TFloatField;
    scdsCr_proc2PERDA: TFloatField;
    scdsCr_proc2TROCA: TFloatField;
    scdsCr_proc2FUNRURAL: TFloatField;
    scdsCr_proc2VALOR_PRIM_VIA: TFloatField;
    scdsCr_proc2VALOR_RESTO: TFloatField;
    scdsCr_proc2VALORTITULO: TFloatField;
    scdsCr_proc2OUTRO_CREDITO: TFloatField;
    scdsCr_proc2OUTRO_DEBITO: TFloatField;
    scdsCr_proc2PARCELAS: TSmallintField;
    scdsCr_proc2NOMECLIENTE: TStringField;
    scdsCr_proc2VALORREC: TFloatField;
    DataSource1: TDataSource;
    ds_Cr: TDataSource;
    PopupMenu1: TPopupMenu;
    Executarconsulta1: TMenuItem;
    Receber1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    scdsCr_proc: TClientDataSet;
    f: TStringField;
    scdsCr_procEMISSAO: TDateField;
    scdsCr_procDATAVENCIMENTO: TDateField;
    scdsCr_procSTATUS: TStringField;
    scdsCr_procN_DOCUMENTO: TStringField;
    scdsCr_procVALORRECEBIDO: TFloatField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    scdsCr_procVALOR_RESTO: TFloatField;
    scdsCr_procVALORTITULO: TFloatField;
    scdsCr_procVIA: TStringField;
    scdsCr_procNOMEFORNECEDOR: TStringField;
    scdsCr_procVALORREC: TFloatField;
    scdsCr_procCODPAGAMENTO: TIntegerField;
    repContasReceber: TVCLReport;
    scdsCr_procTotTitulo: TAggregateField;
    scdsCr_procTotPendente: TAggregateField;
    scdsCr_procTotPago: TAggregateField;
    scdsCr_procCODFORNECEDOR: TIntegerField;
    scdsCr_procDATAPAGAMENTO: TDateField;
    sds_total: TSQLDataSet;
    dspTotal: TDataSetProvider;
    cds_total: TClientDataSet;
    JvCalcEdit1: TJvCalcEdit;
    JvCalcEdit3: TJvCalcEdit;
    JvCalcEdit2: TJvCalcEdit;
    ImageList1: TImageList;
    SQLDataSet1CODPAGAMENTO: TIntegerField;
    SQLDataSet1DUP_REC_NF: TStringField;
    SQLDataSet1DP: TSmallintField;
    scdsCr_procDUP_REC_NF: TStringField;
    scdsCr_procDP: TSmallintField;
    SQLDataSet1StringField: TStringField;
    SQLDataSet1DateField: TDateField;
    SQLDataSet1DateField2: TDateField;
    SQLDataSet1StringField2: TStringField;
    SQLDataSet1StringField3: TStringField;
    SQLDataSet1StringField4: TStringField;
    SQLDataSet1FloatField: TFloatField;
    SQLDataSet1FloatField2: TFloatField;
    SQLDataSet1FloatField3: TFloatField;
    SQLDataSet1FloatField4: TFloatField;
    SQLDataSet1FloatField5: TFloatField;
    SQLDataSet1StringField5: TStringField;
    SQLDataSet1CODFORNECEDOR: TIntegerField;
    SQLDataSet1DATAPAGAMENTO: TDateField;
    BitBtn9: TBitBtn;
    confirma1: TMenuItem;
    Panel3: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label23: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit1: TEdit;
    cbStatus: TComboBox;
    BitBtn4: TBitBtn;
    edTitulo: TEdit;
    edCodCliente: TEdit;
    edCliente: TEdit;
    BitBtn8: TBitBtn;
    edCodCCusto: TComboBox;
    edVendedor: TEdit;
    edcodVendedor: TEdit;
    BitBtn12: TBitBtn;
    BitBtn11: TBitBtn;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    BitBtn6: TBitBtn;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    BitBtn7: TBitBtn;
    BitBtn1: TBitBtn;
    cbConta: TJvComboBox;
    cbForma: TComboBox;
    edValor: TEdit;
    BitBtn3: TBitBtn;
    edNumeroDocumento: TEdit;
    cbTipoFornecedor: TJvComboBox;
    sdsTipoForn: TSQLDataSet;
    sdsTipoFornCODDADOS: TIntegerField;
    sdsTipoFornDESCRICAO: TStringField;
    sdsTipoFornUSO: TStringField;
    sdsTipoFornCODIGOS: TStringField;
    sdsTipoFornOUTROS: TStringField;
    dspTipoForn: TDataSetProvider;
    cdsTipoForn: TClientDataSet;
    cdsTipoFornCODDADOS: TIntegerField;
    cdsTipoFornDESCRICAO: TStringField;
    cdsTipoFornUSO: TStringField;
    cdsTipoFornCODIGOS: TStringField;
    cdsTipoFornOUTROS: TStringField;
    rbTipoConta: TJvRadioGroup;
    BitBtn5: TBitBtn;
    CheckBox1: TCheckBox;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    DBGrid1: TDBGrid;
    CheckBox2: TCheckBox;
    BtnCh: TBitBtn;
    SQLDataSet1DATACONSOLIDA: TDateField;
    scdsCr_procDATACONSOLIDA: TDateField;
    JvDateEdit2: TJvDatePickerEdit;
    numero: TEdit;
    BitBtn16: TBitBtn;
    BitBtn18: TBitBtn;
    SQLDataSet1CAIXA: TSmallintField;
    scdsCr_procCAIXA: TSmallintField;
    conta: TEdit;
    SQLDataSet1FORMAPAGAMENTO: TStringField;
    scdsCr_procFORMAPAGAMENTO: TStringField;
    edForma: TEdit;
    grp1: TGroupBox;
    lbl1: TLabel;
    BitBtn17: TBitBtn;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    DataSetProvider2: TDataSetProvider;
    cds1: TClientDataSet;
    cds1TotTitulo: TAggregateField;
    cds1TotPendente: TAggregateField;
    cds1TotPago: TAggregateField;
    DataSource2: TDataSource;
    SQLDataSet2: TSQLDataSet;
    StringField1: TStringField;
    SmallintField1: TSmallintField;
    StringField2: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    StringField6: TStringField;
    IntegerField2: TIntegerField;
    DateField3: TDateField;
    DateField4: TDateField;
    SmallintField2: TSmallintField;
    StringField7: TStringField;
    Label16: TLabel;
    ComboBox1: TComboBox;
    marcarTodosClick1: TMenuItem;
    DesmarcarSeleo1: TMenuItem;
    Label18: TLabel;
    Label21: TLabel;
    lbl3: TLabel;
    Label22: TLabel;
    cds1DUP_REC_NF: TStringField;
    cds1DP: TSmallintField;
    cds1TITULO: TStringField;
    cds1EMISSAO: TDateField;
    cds1DATAVENCIMENTO: TDateField;
    cds1STATUS: TStringField;
    cds1VIA: TStringField;
    cds1N_DOCUMENTO: TStringField;
    cds1VALORRECEBIDO: TFloatField;
    cds1VALOR_RESTO: TFloatField;
    cds1VALORTITULO: TFloatField;
    cds1VALORREC: TFloatField;
    cds1VALOR_PRIM_VIA: TFloatField;
    cds1NOMEFORNECEDOR: TStringField;
    cds1CODFORNECEDOR: TIntegerField;
    cds1DATAPAGAMENTO: TDateField;
    cds1DATACONSOLIDA: TDateField;
    cds1CAIXA: TSmallintField;
    cds1FORMAPAGAMENTO: TStringField;
    btnPagar: TBitBtn;
    SQLDataSet3: TSQLDataSet;
    StringField8: TStringField;
    SmallintField3: TSmallintField;
    StringField9: TStringField;
    DateField5: TDateField;
    DateField6: TDateField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    StringField13: TStringField;
    IntegerField1: TIntegerField;
    DateField7: TDateField;
    DateField8: TDateField;
    SmallintField4: TSmallintField;
    StringField14: TStringField;
    DataSetProvider3: TDataSetProvider;
    cds2: TClientDataSet;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    AggregateField3: TAggregateField;
    SQLDataSet3CODPAGAMENTO: TIntegerField;
    cds2DUP_REC_NF: TStringField;
    cds2DP: TSmallintField;
    cds2TITULO: TStringField;
    cds2EMISSAO: TDateField;
    cds2DATAVENCIMENTO: TDateField;
    cds2STATUS: TStringField;
    cds2VIA: TStringField;
    cds2N_DOCUMENTO: TStringField;
    cds2VALORRECEBIDO: TFloatField;
    cds2VALOR_RESTO: TFloatField;
    cds2VALORTITULO: TFloatField;
    cds2VALORREC: TFloatField;
    cds2VALOR_PRIM_VIA: TFloatField;
    cds2NOMEFORNECEDOR: TStringField;
    cds2CODFORNECEDOR: TIntegerField;
    cds2DATAPAGAMENTO: TDateField;
    cds2DATACONSOLIDA: TDateField;
    cds2CAIXA: TSmallintField;
    cds2FORMAPAGAMENTO: TStringField;
    cds2CODPAGAMENTO: TIntegerField;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    SQLDataSet1DATASISTEMA: TSQLTimeStampField;
    scdsCr_procDATASISTEMA: TSQLTimeStampField;
    JvFormStorage1: TJvFormStorage;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    dataAu: TMaskEdit;
    btnAu: TBitBtn;
    sdsAu: TSQLDataSet;
    cdsAu: TClientDataSet;
    dspAu: TDataSetProvider;
    sdsAuTITULO: TStringField;
    sdsAuEMISSAO: TDateField;
    sdsAuDATACONSOLIDA: TDateField;
    sdsAuCAIXA: TSmallintField;
    sdsAuFORMAPAGAMENTO: TStringField;
    sdsAuDATAVENCIMENTO: TDateField;
    sdsAuCODFORNECEDOR: TIntegerField;
    sdsAuVALORTITULO: TFloatField;
    sdsAuVALOR_RESTO: TFloatField;
    sdsAuVALOR_PRIM_VIA: TFloatField;
    sdsAuSTATUS: TStringField;
    sdsAuDATAPAGAMENTO: TDateField;
    sdsAuDATAINCLUSAO: TDateField;
    sdsAuVALORRECEBIDO: TFloatField;
    sdsAuNOMEFORNECEDOR: TStringField;
    sdsAuVALORREC: TFloatField;
    sdsAuNOME: TStringField;
    cdsAuTITULO: TStringField;
    cdsAuEMISSAO: TDateField;
    cdsAuDATACONSOLIDA: TDateField;
    cdsAuCAIXA: TSmallintField;
    cdsAuFORMAPAGAMENTO: TStringField;
    cdsAuDATAVENCIMENTO: TDateField;
    cdsAuCODFORNECEDOR: TIntegerField;
    cdsAuVALORTITULO: TFloatField;
    cdsAuVALOR_RESTO: TFloatField;
    cdsAuVALOR_PRIM_VIA: TFloatField;
    cdsAuSTATUS: TStringField;
    cdsAuDATAPAGAMENTO: TDateField;
    cdsAuDATAINCLUSAO: TDateField;
    cdsAuVALORRECEBIDO: TFloatField;
    cdsAuNOMEFORNECEDOR: TStringField;
    cdsAuVALORREC: TFloatField;
    cdsAuNOME: TStringField;
    btnC: TBitBtn;
    medt1: TJvDateEdit;
    medt2: TJvDateEdit;
    meDta1: TJvDateEdit;
    meDta2: TJvDateEdit;
    meDta5: TJvDateEdit;
    meDta6: TJvDateEdit;
    meDta3: TJvDateEdit;
    meDta4: TJvDateEdit;
    MaskEdit1: TJvDateEdit;
    MaskEdit2: TJvDateEdit;
    Label24: TLabel;
    Edit2: TEdit;
    ckans: TCheckBox;
    scdsCr_procX: TClientDataSet;
    StringField15: TStringField;
    DateField9: TDateField;
    DateField10: TDateField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    StringField19: TStringField;
    IntegerField4: TIntegerField;
    DateField11: TDateField;
    StringField20: TStringField;
    SmallintField5: TSmallintField;
    DateField12: TDateField;
    SmallintField6: TSmallintField;
    StringField21: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    AggregateField4: TAggregateField;
    AggregateField5: TAggregateField;
    AggregateField6: TAggregateField;
    scdsCr_procXCODPAGAMENTO: TIntegerField;
    sqcCaixa: TSQLDataSet;
    dpsCaixa: TDataSetProvider;
    cdsCaixa: TClientDataSet;
    sqcCaixaCODIGO: TIntegerField;
    sqcCaixaCONTA: TStringField;
    sqcCaixaCONTAPAI: TStringField;
    sqcCaixaNOME: TStringField;
    sqcCaixaCONSOLIDA: TStringField;
    sqcCaixaDESCRICAO: TStringField;
    sqcCaixaRATEIO: TStringField;
    sqcCaixaCODREDUZIDO: TStringField;
    cdsCaixaCODIGO: TIntegerField;
    cdsCaixaCONTA: TStringField;
    cdsCaixaCONTAPAI: TStringField;
    cdsCaixaNOME: TStringField;
    cdsCaixaCONSOLIDA: TStringField;
    cdsCaixaDESCRICAO: TStringField;
    cdsCaixaRATEIO: TStringField;
    cdsCaixaCODREDUZIDO: TStringField;
    SQLDataSet1HISTORICO: TStringField;
    scdsCr_procHISTORICO: TStringField;
    BitBtn21: TBitBtn;
    JvDBGridExcelExport1: TJvDBGridExcelExport;
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure edCodClienteExit(Sender: TObject);
    procedure cbStatusKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure meDta1xKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BtnChClick(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure marcarTodosClick1Click(Sender: TObject);
    procedure DesmarcarSeleo1Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2ColEnter(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure btnPagarClick(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure btnAuClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
  private
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
    procedure ChkDBGridDrawColumnCell2(DBGrid: TDBGrid;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColEnter2(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridColExit2(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridCellClick2(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
    procedure ChkDBGridKeyPress2(DBGrid: TDBGrid; var Key: Char);
    { Private declarations }
  public
    bt : integer;
    remover : string ;
    { Public declarations }
  end;

var
  fCpProc: TfCpProc;
  SqlTexto, SqlTextoX, sqlTexto1,sqlTexto3,str_sql, sqlw: String;

implementation

uses UDm, ufcrtitulo, uProcurar, ufDlgLogin, UUtils, sCtrlResize, uCh,
  MaskUtils, uAud;

{$R *.dfm}

Procedure FormResize(Sender: TObject); var R : TRect; DC : HDc; Canv : TCanvas;
begin
  R := Rect( 0, 0, Screen.Width, Screen.Height );
  DC := GetWindowDC( GetDeskTopWindow );
  Canv := TCanvas.Create;
  Canv.Handle := DC;
  Canv.CopyRect(R,Canv,R);
  ReleaseDC( GetDeskTopWindow, DC );
end;

procedure TfCpProc.BitBtn11Click(Sender: TObject);
begin
    // edCodVendedor.Text:='';
    // edVendedor.Text:='';
    MaskEdit1.Clear;
    MaskEdit2.Clear;
    ComboBox1.Text := '';
end;

procedure TfCpProc.BitBtn9Click(Sender: TObject);
begin
   if dm.cds_4_pagar.Active then
      dm.cds_4_pagar.Close;
   dm.cds_4_pagar.Params[0].AsInteger := fCpProc.scdsCr_procCODPAGAMENTO.AsInteger;
   dm.cds_4_pagar.Open;
   dm.cds_4_pagar.Edit;
   close;
end;

procedure TfCpProc.BitBtn4Click(Sender: TObject);
begin
   cbStatus.Text := '';
end;

procedure TfCpProc.btnIncluirClick(Sender: TObject);
  var vlr, vlrrec, vlrdesc, vlrjuros, vlrfunrural, vlrperda: double;
  i, j , fornecedorSelecionado: integer;
begin
 try
   fornecedorSelecionado := 0;
   i := 1;
   vlr := 0;
   vlrrec := 0;
   vlrdesc := 0;
   vlrjuros := 0;
   vlrfunrural := 0;
   vlrperda := 0;
   // Se houve selecao de titulos entao gravo.
   if (scdsCr_proc.ChangeCount > 0) then
   begin
     //teste := scdsCr_proc.CommandText;
     //scdsCr_proc.ApplyUpdates(-1);
   end
   else begin
     MessageDlg('Marque o título a ser baixado!', mtWarning, [mbOK], 0);
     exit;
   end;
   if (dm.cds_4_pagar.Active) then
     dm.cds_4_pagar.Close;
   dm.cds_4_pagar.Params[0].AsInteger := scdsCr_procCODPAGAMENTO.AsInteger;
   dm.cds_4_pagar.Open;
   dm.cds_4_pagar.Edit;
   scdsCr_proc.DisableControls;
   scdsCr_proc.First;
   While not scdsCr_proc.Eof do
   begin
     if (scdsCr_procDUP_REC_NF.AsString = 'S') then
     begin
       if (fornecedorSelecionado = 0) then
         fornecedorSelecionado := scdsCr_procCODFORNECEDOR.AsInteger;
       if (fornecedorSelecionado <> scdsCr_procCODFORNECEDOR.AsInteger) then
       begin
         MessageDlg('Fornecedores diferentes selecionados.' + #10#13 +
           ' Operação disponível somente para o mesmo Fornecedor!', mtWarning, [mbOK], 0);
         scdsCr_proc.EnableControls;
         exit;
       end;
       setlength(nrec, i);
       nrec[i - 1] := scdsCr_procCODPAGAMENTO.AsInteger;
       if (fcptitulo.cds.active) then
         fcptitulo.cds.close;
       fcptitulo.cds.Params[0].AsInteger := scdsCr_procCODPAGAMENTO.AsInteger;
       fcptitulo.cds.Open;
       //if (fcrtitulo.cdsSUM.AsFloat = scdsCr_procVALORREC.AsFloat) then
       //begin
          vlr := vlr + fcptitulo.cdsSUM.AsFloat;
          vlrfunrural := vlrfunrural + fcptitulo.cdsSUM_1.AsFloat;
          vlrjuros := vlrjuros + fcptitulo.cdsSUM_2.AsFloat;
          vlrperda := vlrperda +  fcptitulo.cdsSUM_3.AsFloat;
          vlrdesc := vlrdesc +  fcptitulo.cdsSUM_4.AsFloat;
          if (fcptitulo.cdsSUM_5.AsFloat > 0) then
            vlrrec := vlrrec +  fcptitulo.cdsSUM_5.AsFloat;
       //end;
       i := i + 1;
     end;
     scdsCr_proc.Next;
   end;
  scdsCr_proc.EnableControls;
  if (dm.cds_4_pagar.State in [dsBrowse, dsInactive]) then
    dm.cds_4_pagar.Edit;
  // adicionei esse If em 05/10/06  "Edson"
  if (dm.cds_4_pagarSTATUS.AsString <> '1-') then
  dm.cds_4_pagarVALOR_RESTO.AsFloat := vlr;
  dm.cds_4_pagarFUNRURAL.AsFloat := vlrfunrural;
  dm.cds_4_pagarJUROS.AsFloat := vlrjuros;
  dm.cds_4_pagarPERDA.AsFloat := vlrperda;
  dm.cds_4_pagarDESCONTO.AsFloat := vlrdesc;
  if (fcptitulo.cdsSUM_5.AsFloat > 0) then
    dm.cds_4_pagarVALORRECEBIDO.AsFloat := vlrrec;
  dm.cds_4_pagarTITULO.AsString := 'Diversos';
  dm.cds_4_pagarCODCOMPRA.AsInteger := 0;
  fcptitulo.cds.close;
  if (dm.cds_4_pagarSTATUS.AsString = '7-') then
  begin
    fcpTitulo.btnCancela_Baixa.Enabled := True;
    fcpTitulo.BitBtn2.Enabled := False;
  end;
  fCpTitulo.ShowModal;
  finally
   fCpProc.DBGrid1.SetFocus;
   scdsCr_proc.Close;
   scdscr_Proc.Open;
  end;

end;

procedure TfCpProc.btnProcurarClick(Sender: TObject);
 Var
 DataStr, sql2,sqlTexto2 : String;
 varCpProc : TUtils;
  Dia, Mes, Ano : Word;
begin
  JvCalcEdit1.Value := 0;
  JvCalcEdit2.Value := 0;
  JvCalcEdit3.Value := 0;
  DBGrid2.Visible := False;
  DBGrid1.Visible := True;
  btnIncluir.Enabled := True;
  btnPagar.Visible := False;

// if (ckans.Checked = False) then
// begin

   sqlTexto1 := '';
  sqlTexto := '';
  if scdsCr_proc.Active then
    scdsCr_proc.Close;

  sqlTexto1 := 'select rec.dp, rec.dup_rec_nf, rec.CODPAGAMENTO, rec.TITULO, rec.EMISSAO,rec.DATACONSOLIDA ,rec.CAIXA , rec.FORMAPAGAMENTO,'
   + ' rec.DATAVENCIMENTO ,rec.OUTRO_CREDITO,rec.CODFORNECEDOR, rec.VALORTITULO, rec.VALOR_RESTO, rec.VALOR_PRIM_VIA,rec.CONTACREDITO,rec.DATASISTEMA, '
   + ' CASE rec.STATUS WHEN ' + '''5-''' + ' THEN ' + '''PENDENTE''' + ' when ' + '''6-'''
   + ' then ' + '''PENDENTE CONTAB.''' +  ' when ' + '''7-''' + ' then ' + '''PAGO'''
   + ' when ' + '''8-''' + ' then ' + '''SUSPENSO'''
   + ' END AS STATUS, rec.DATAPAGAMENTO,rec.DATAINCLUSAO, '
   + ' sum(rec.VALORRECEBIDO + CASE when FUNRURAL > 0 then FUNRURAL else 0 end + CASE when JUROS > 0 then JUROS else 0 end) as VALORRECEBIDO, rec.VIA, rec.N_DOCUMENTO '
   + ' , cli.NOMEFORNECEDOR, ' +
   {
   'SUM(CASE when rec.VALOR_RESTO > 0 then rec.VALOR_RESTO else 0 end - CASE when rec.VALORRECEBIDO  > 0 then rec.VALORRECEBIDO else 0 end ' +
   ' - CASE when rec.DESCONTO > 0 then rec.DESCONTO else 0 end - CASE when rec.PERDA > 0 then rec.PERDA else 0 end) as VALORREC' +
   }
   ' SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC ' +
   ' ,plano.NOME, rec.HISTORICO from PAGAMENTO rec ' +
   ' inner join FORNECEDOR cli on cli.CODFORNECEDOR=rec.CODFORNECEDOR ';
   case rbTipoConta.ItemIndex of
     0 : sqlTexto1 := sqlTexto1 + ' inner join PLANO plano on plano.CODIGO = rec.CAIXA ';
     1 : sqlTexto1 := sqlTexto1 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ' +
       ' inner join compra comp on comp.codCompra = rec.CODCompra ';
     2 : sqlTexto1 := sqlTexto1 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ';
   end;
      scdsCr_proc.CommandText := sqlTexto1;
//  end;
 {
 if (ckans.Checked = True) then
 begin
   sqlTexto1 := '';
  sqlTexto := '';
  if scdsCr_procX.Active then
    scdsCr_procX.Close;

  sqlTexto1 := 'select rec.dp, rec.dup_rec_nf, rec.TITULO, rec.EMISSAO,rec.DATACONSOLIDA ,rec.CAIXA , rec.FORMAPAGAMENTO,'
   + ' rec.DATAVENCIMENTO ,rec.OUTRO_CREDITO,rec.CODFORNECEDOR,sum(rec.VALORTITULO) as VALORTITULO,sum(rec.VALOR_RESTO) as VALOR_RESTO, sum(rec.VALOR_PRIM_VIA) as VALOR_PRIM_VIA,rec.CONTACREDITO, '
   + ' CASE rec.STATUS WHEN ' + '''5-''' + ' THEN ' + '''PENDENTE''' + ' when ' + '''6-'''
   + ' then ' + '''PENDENTE CONTAB.''' +  ' when ' + '''7-''' + ' then ' + '''PAGO'''
   + ' when ' + '''8-''' + ' then ' + '''SUSPENSO'''
   + ' END AS STATUS, rec.DATAPAGAMENTO,rec.DATAINCLUSAO, '
   + ' sum(rec.VALORRECEBIDO + CASE when FUNRURAL > 0 then FUNRURAL else 0 end + CASE when JUROS > 0 then JUROS else 0 end) as VALORRECEBIDO, rec.VIA, rec.N_DOCUMENTO '
   + ' , cli.NOMEFORNECEDOR, ' +
   ' SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC ' +
   ' ,plano.NOME, rec.HISTORICO from PAGAMENTO rec ' +
   ' inner join FORNECEDOR cli on cli.CODFORNECEDOR=rec.CODFORNECEDOR ';
   case rbTipoConta.ItemIndex of
     0 : sqlTexto1 := sqlTexto1 + ' inner join PLANO plano on plano.CODIGO = rec.CAIXA ';
     1 : sqlTexto1 := sqlTexto1 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ' +
       ' inner join compra comp on comp.codCompra = rec.CODCompra ';
     2 : sqlTexto1 := sqlTexto1 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ';
   end;
      scdsCr_procX.CommandText := sqlTexto1;
  end;

  }

   if (cbConta.Text <> '') then
   begin
     if (not DM.c_1_planoc.Active) then
     begin
       if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
       dm.cds_parametro.Params[0].Clear;
       dm.cds_parametro.Params[0].AsString := 'CONTASDESPESAS';
       dm.cds_parametro.Open;
       DM.c_1_planoc.CommandText := 'Select * from PLANO WHERE ' +
         'plnctaroot(conta) = ''' + dm.cds_parametroDADOS.AsString + '''' +
         ' and CONSOLIDA = ''S''' + ' order by NOME';
       DM.c_1_planoc.Open;
       dm.cds_parametro.Close;
     end;
     dm.c_1_planoc.Locate('NOME', cbConta.text, [loCaseInsensitive]);
       sqlTexto := ' Where rec.CONTACREDITO = ' + IntToStr(Dm.c_1_planocCODIGO.AsInteger);
   end;


  //==============================================================================
 {
  if (meDta1.Date > 41547) then
  begin
  //==============================================================================
  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta1.Text<>datastr) then
  StrToDate(medta1.Text);
  if (medta2.Text<>datastr) then
  StrToDate(medta2.Text);
  if (medta1.Text<>datastr) then
  if (medta2.Text<>datastr) then
  begin
    if (sqlTexto <> '') then
      sqlTexto := SqlTexto + ' and rec.DATACOMPRA between '
    else
      sqlTexto := ' Where rec.DATACOMPRA between ';

    sqlTexto := SqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
      ' and ' +
      '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  meDta1.SetFocus;
  end;
  end;
  end
  else begin
  //==============================================================================
  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta1.Text<>datastr) then
  StrToDate(medta1.Text);
  if (medta2.Text<>datastr) then
  StrToDate(medta2.Text);
  if (medta1.Text<>datastr) then
  if (medta2.Text<>datastr) then
  begin
    if (sqlTexto <> '') then
      sqlTexto := SqlTexto + ' and rec.EMISSAO between '
    else
      sqlTexto := ' Where rec.EMISSAO between ';

    sqlTexto := SqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
      ' and ' +
      '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  meDta1.SetFocus;
  end;
  end;

  end;

}

  datastr:='  /  /    ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta1.Text<>datastr) then
  StrToDate(medta1.Text);
  if (medta2.Text<>datastr) then
  StrToDate(medta2.Text);
  if (medta1.Text<>datastr) then
  if (medta2.Text<>datastr) then
  begin
    if (sqlTexto <> '') then
      sqlTexto := SqlTexto + ' and rec.EMISSAO between '
    else
      sqlTexto := ' Where rec.EMISSAO between ';

    sqlTexto := SqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
      ' and ' +
      '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  meDta1.SetFocus;
  end;
  end;

  //==============================================================================

  //==============================================================================
 // datastr:='  /  /  ';  //  antes
  datastr:='  /  /    ';
  //------------------------------------------------------------------------------
  //Verifica se a data do sistema foi preenchido
  //------------------------------------------------------------------------------
  try
  if (MaskEdit1.Text<>datastr) then
  StrToDate(MaskEdit1.Text);
  if (MaskEdit2.Text<>datastr) then
  StrToDate(MaskEdit2.Text);
  if (MaskEdit1.Text<>datastr) then
  if (MaskEdit2.Text<>datastr) then
  begin
    if (sqlTexto <> '') then
      sqlTexto := SqlTexto + ' and cast(rec.DATASISTEMA as date )between '
    else
      sqlTexto := ' Where cast(rec.DATASISTEMA as date )  between ';

    sqlTexto := SqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(MaskEdit1.Text)) + '''' +
      ' and ' +
      '''' + formatdatetime('mm/dd/yy', StrToDate(MaskEdit2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  MaskEdit1.SetFocus;
  end;
  end;
  //==============================================================================

  datastr:='  /  /    ';
  //------------------------------------------------------------------------------
  //Verifica se a data de vencimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta3.Text<>datastr) then
  StrToDate(medta3.Text);
  if (medta4.Text<>datastr) then
  StrToDate(medta4.Text);
  if (medta3.Text<>datastr) then
  if (medta4.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.DATAVENCIMENTO between '
    else
      sqlTexto := sqlTexto + ' and rec.DATAVENCIMENTO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta3.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta4.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa3.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de Recebimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta5.Text<>datastr) then
  StrToDate(medta5.Text);
  if (medta6.Text<>datastr) then
  StrToDate(medta6.Text);
  if (medta5.Text<>datastr) then
  if (medta6.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.DATAPAGAMENTO between '
    else
      sqlTexto := sqlTexto + ' and rec.DATAPAGAMENTO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta5.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta6.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa5.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de Incluido foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medt1.Text<>datastr) then
  StrToDate(medt1.Text);
  if (medt2.Text<>datastr) then
  StrToDate(medt2.Text);
  if (medt1.Text<>datastr) then
  if (medt2.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.DATAINCLUSAO between '
    else
      sqlTexto := sqlTexto + ' and rec.DATAINCLUSAO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medt1.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medt2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa5.SetFocus;
  end;
  end;



  //==============================================================================
  //------------------------------------------------------------------------------
  //Status
  //------------------------------------------------------------------------------
  if (cbStatus.Text <> '') then
  begin
    case (cbStatus.ItemIndex) of
      0:  //Vencido
      begin
        if sqlTexto = '' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
        sqlTexto := sqlTexto + ' AND (rec.DATAVENCIMENTO >= CURRENT_DATE)';
      end;
      1:  // Pago
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
        sqlTexto := sqlTexto + ' AND (rec.DATAVENCIMENTO < CURRENT_DATE)';
      end;
      2:  // A Pagar ()
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
      end;
      3:  // Pago
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '7-' + ''')';
      end;
      4:  // Suspenso
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '8-' + ''')';
      end;
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Forma
  //------------------------------------------------------------------------------
  if (cbForma.Text <> '') then
  begin
    varCpProc := TUtils.create;
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.FORMAPAGAMENTO = '
    else
      SqlTexto := SqlTexto + ' AND (rec.FORMAPAGAMENTO = ';
    SqlTexto := SqlTexto + QuotedStr(varCpProc.pegaForma(cbForma.Text))  + ')';
  end;
  //==============================================================================



   //------------------------------------------------------------------------------
  //Numero Documento
  //------------------------------------------------------------------------------

  if(CheckBox1.Checked = true )then

  if (edNumeroDocumento.Text <> '') then
  begin
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.N_DOCUMENTO  = '
    else
      SqlTexto := SqlTexto + ' AND (rec.N_DOCUMENTO  = ';
    SqlTexto := SqlTexto + QuotedStr(edNumeroDocumento.Text) + ')';
  end
  else begin
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE ((rec.N_DOCUMENTO IS NULL) OR (rec.N_DOCUMENTO = ' + QuotedStr('') + '))  '
    else
      SqlTexto := SqlTexto + ' AND ((rec.N_DOCUMENTO IS NULL) OR (rec.N_DOCUMENTO = ' + QuotedStr('') + '))';
  end;

  //==============================================================================


  //com numero documento

  if(CheckBox2.Checked = true )then
  begin
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.N_DOCUMENTO  = '
    else
      SqlTexto := SqlTexto + ' AND (rec.N_DOCUMENTO  <> ';
    SqlTexto := SqlTexto + QuotedStr(edNumeroDocumento.Text) + ')';
  end ;

  //==============================================================================

  // Caixa  Antes era Tipo Fornecedor
  //------------------------------------------------------------------------------
   cdsCaixa.Close;
  if (not cdsCaixa.Active) then
     cdsCaixa.Params[0].AsString := cbTipoFornecedor.Text ;
     cdsCaixa.Open;
  cdsCaixa.Locate('DESCRICAO', cbTipoFornecedor.Text,[loCaseInsensitive]);
  if (cbTipoFornecedor.Text <> '') then
  begin
    if (sqlTexto = '') then
      sqlTexto := sqlTexto + ' WHERE plano.CODIGO = '
    else
      sqlTexto := sqlTexto + ' AND plano.CODIGO = ';
      sqlTexto := sqlTexto + IntToStr(cdsCaixaCODIGO.AsInteger);
  end;
  //==============================================================================


   remover := ' AND plano.CODIGO = ' + IntToStr(cdsCaixaCODIGO.AsInteger);
   if(remover = ' AND plano.CODIGO = 0') then
   begin
     remover := '';
   end;
 {
  //Tipo Fornecedor
  //------------------------------------------------------------------------------
  if (not cdsTipoForn.Active) then
     cdsTipoForn.Open;
  cdsTipoForn.Locate('DESCRICAO', cbTipoFornecedor.Text,[loCaseInsensitive]);
  if (cbTipoFornecedor.Text <> '') then
  begin
    if (sqlTexto = '') then
      sqlTexto := sqlTexto + ' WHERE cli.REGIAO = '
    else
      sqlTexto := sqlTexto + ' AND cli.REGIAO = ';
      sqlTexto := sqlTexto + IntToStr(cdsTipoFornCODDADOS.AsInteger);
  end;
  //==============================================================================

  }

  //------------------------------------------------------------------------------
  //Fornecedor
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.CODFORNECEDOR = '
    else
      sqlTexto := sqlTexto + ' and rec.CODFORNECEDOR = ';
      sqlTexto := sqlTexto + edCodCliente.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Centro de Custo
  //------------------------------------------------------------------------------

{  // if(bt = 1) then
 if((medt1.Date < 41547) or (meDta1.Date < 41547) or (meDta5.Date < 41547) or (meDta3.Date < 41547)) then

   begin


  if (not dm.cds_ccusto.Active) then
     dm.cds_ccusto.Open;
  dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
  if edCodCCusto.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE CODALMOXARIFADO = '
    else
      sqlTexto := sqlTexto + ' AND REC.CODCCUSTO = ';
      sqlTexto := sqlTexto + IntToStr(dm.cds_ccustoCODIGO.AsInteger);
  end;
  end else

  begin
}
  if (not dm.cds_ccusto.Active) then
     dm.cds_ccusto.Open;
  dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
  if edCodCCusto.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE CODALMOXARIFADO = '
    else
      sqlTexto := sqlTexto + ' AND CODALMOXARIFADO = ';
      sqlTexto := sqlTexto + IntToStr(dm.cds_ccustoCODIGO.AsInteger);
  end;
 // end;



  //==============================================================================




  //------------------------------------------------------------------------------
  //Vendedor
  //------------------------------------------------------------------------------
  if edCodVendedor.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where CODCOMPRADOR = '
    else
      sqlTexto := sqlTexto + ' and CODCOMPRADOR = ';
      sqlTexto := sqlTexto + edCodVendedor.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Título
  //------------------------------------------------------------------------------
  if edTitulo.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where TITULO ='
    else
      sqlTexto := sqlTexto + ' and TITULO LIKE';
      sqlTexto := sqlTexto + '''' + edTitulo.Text + '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Valor
  //------------------------------------------------------------------------------

  if edValor.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where VALORTITULO = '
    else
      sqlTexto := sqlTexto + ' and VALORTITULO = ';
      sqlTexto := sqlTexto +   edValor.Text;

  end;

  if (Edit2.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where contacredito is not null = '
    else
      sqlTexto := sqlTexto + ' and contacredito is not null ';
  end;




  //==============================================================================

  //------------------------------------------------------------------------------
  //Somente títulos com valores > 0
  //------------------------------------------------------------------------------
    {11/12/07 - Carlos }
    {if sqlTexto='' then
      sqlTexto := sqlTexto + ' where VALORTITULO > 0 '
    else
      sqlTexto := sqlTexto + ' and VALORTITULO > 0 ';}
  //==============================================================================

//  if (ckans.Checked = False) then
 //begin

  sql2 := ' group by rec.DATAVENCIMENTO, cli.NOMEFORNECEDOR, rec.CODFORNECEDOR,rec.CAIXA , rec.formapagamento ,'
            + ' rec.EMISSAO, rec.CODPAGAMENTO,rec.OUTRO_CREDITO , '
            + ' rec.TITULO,  rec.VALOR_RESTO, rec.VALORTITULO, '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + ' rec.VIA, rec.N_DOCUMENTO, rec.VALOR_PRIM_VIA, rec.dp, rec.dup_rec_nf ' +
            ' ,plano.NOME ,rec.CONTACREDITO, rec.HISTORICO ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO ,rec.DATASISTEMA ';
 // end;
{
 if (ckans.Checked = True) then
 begin

  sql2 := ' group by rec.DATAVENCIMENTO, cli.NOMEFORNECEDOR, rec.CODFORNECEDOR,rec.CAIXA , rec.formapagamento ,'
            + ' rec.EMISSAO, rec.OUTRO_CREDITO , '
            + ' rec.TITULO, '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + ' rec.VIA, rec.N_DOCUMENTO, rec.dp, rec.dup_rec_nf ' +
            ' ,plano.NOME ,rec.CONTACREDITO, rec.HISTORICO ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO  ';
  end;

 }

  //sqlW := sqlTexto + ' and contadebito = 0';

             //novo 15/08/14

 if (ckans.Checked = True) then
 begin
sqlTexto := sqlTexto + ' and rec.CONTACREDITO in ( (340)' + ',' + '(262)'+ ','
+'(163)'+ ','
+'(263)'+ ','
+'(300627)'+ ','
+'(770)'+ ','
+'(324)'+ ','
+'(383)'+ ','
+'(537)'+ ','
+'(538)'+ ','
+'(539)'+ ','
+'(341)'+ ','
+'(803)'+ ','
+'(541)'+ ','
+'(542)'+ ','
+'(543)'+ ','
+'(544)'+ ','
+'(548)'+ ','
+'(342)'+ ','
+'(549)'+ ','
+'(550)'+ ','
+'(551)'+ ','
+'(552)'+ ','
+'(553)'+ ','
+'(554)'+ ','
+'(555)'+ ','
+'(707)'+ ','
+'(557)'+ ','
+'(343)'+ ','
+'(558)'+ ','
+'(559)'+ ','
+'(563)'+ ','
+'(564)'+ ','
+'(565)'+ ','
+'(566)'+ ','
+'(567)'+ ','
+'(669)'+ ','
+'(670)'+ ','
+'(344)'+ ','
+'(671)'+ ','
+'(672)'+ ','
+'(673)'+ ','
+'(674)'+ ','
+'(693)'+ ','
+'(677)'+ ','
+'(678)'+ ','
+'(679)'+ ','
+'(703)'+ ','
+'(704)'+ ','
+'(345)'+ ','
+'(698)'+ ','
+'(700)'+ ','
+'(709)'+ ','
+'(718)'+ ','
+'(721)'+ ','
+'(722)'+ ','
+'(732)'+ ','
+'(346)'+ ','
+'(742)'+ ','
+'(743)'+ ','
+'(744)'+ ','
+'(747)'+ ','
+'(750)'+ ','
+'(751)'+ ','
+'(753)'+ ','
+'(759)'+ ','
+'(347)'+ ','
+'(755)'+ ','
+'(761)'+ ','
+'(762)'+ ','
+'(779)'+ ','
+'(788)'+ ','
+'(798)'+ ','
+'(804)'+ ','
+'(805)'+ ','
+'(348)'+ ','
+'(812)'+ ','
+'(813)'+ ','
+'(780)'+ ','
+'(797)'+ ','
+'(349)'+ ','
+'(817)'+ ','
+'(831)'+ ','
+'(350)'+ ','
+'(100201)'+ ','
+'(837)'+ ','
+'(270)'+ ','
+'(351)'+ ','
+'(271)'+ ','
+'(792)'+ ','
+'(876)'+ ','
+'(877)'+ ','
+'(878)'+ ','
+'(856)'+ ','
+'(857)'+ ','
+'(879)'+ ','
+'(352)'+ ','
+'(880)'+ ','
+'(882)'+ ','
+'(353)'+ ','
+'(354)'+ ','
+'(355)'+ ','
+'(822)'+ ','
+'(823)'+ ','
+'(852)'+ ','
+'(356)'+ ','
+'(357)'+ ','
+'(358)'+ ','
+'(359)'+ ','
+'(360)'+ ','
+'(293)'+ ','
+'(777)'+ ','
+'(778)'+ ','
+'(361)'+ ','
+'(362)'+ ','
+'(363)'+ ','
+'(364)'+ ','
+'(365)'+ ','
+'(366)'+ ','
+'(367)'+ ','
+'(368)'+ ','
+'(369)'+ ','
+'(370)'+ ','
+'(371)'+ ','
+'(372)'+ ','
+'(373)'+ ','
+'(374)'+ ','
+'(375)'+ ','
+'(376)'+ ','
+'(377)'+ ','
+'(378)'+ ','
+'(335)'+ ','
+'(443)'+ ','
+'(444)'+ ','
+'(445)'+ ','
+'(446)'+ ','
+'(447)'+ ','
+'(448)'+ ','
+'(449)'+ ','
+'(450)'+ ','
+'(451)'+ ','
+'(336)'+ ','
+'(452)'+ ','
+'(274)'+ ','
+'(453)'+ ','
+'(454)'+ ','
+'(272)'+ ','
+'(273)'+ ','
+'(455)'+ ','
+'(456)'+ ','
+'(457)'+ ','
+'(458)'+ ','
+'(459)'+ ','
+'(532)'+ ','
+'(460)'+ ','
+'(337)'+ ','
+'(474)'+ ','
+'(477)'+ ','
+'(481)'+ ','
+'(482)'+ ','
+'(483)'+ ','
+'(486)'+ ','
+'(487)'+ ','
+'(488)'+ ','
+'(503)'+ ','
+'(508)'+ ','
+'(338)'+ ','
+'(509)'+ ','
+'(514)'+ ','
+'(515)'+ ','
+'(518)'+ ','
+'(519)'+ ','
+'(521)'+ ','
+'(523)'+ ','
+'(339)'+ ','
+'(524)'+ ','
+'(438)'+ ','
+'(528)'+ ','
+'(530)'+ ','
+'(533)'+ ','
+'(534)'+ ','
+'(535)'+ ','
+'(536)'+ ','
+'(442)'+ ','
+'(531)'+ ','
+'(174)'+ ','
+'(246)'+ ','
+'(175)'+ ','
+'(168)'+ ','
+'(169)'+ ','
+'(171)'+ ','
+'(808)'+ ','
+'(872)'+ ','
+'(568)'+ ','
+'(569)'+ ','
+'(570)'+ ','
+'(571)'+ ','
+'(572)'+ ','
+'(573)'+ ','
+'(574)'+ ','
+'(575)'+ ','
+'(576)'+ ','
+'(577)'+ ','
+'(578)'+ ','
+'(579)'+ ','
+'(580)'+ ','
+'(581)'+ ','
+'(582)'+ ','
+'(583)'+ ','
+'(584)'+ ','
+'(585)'+ ','
+'(586)'+ ','
+'(587)'+ ','
+'(588)'+ ','
+'(589)'+ ','
+'(590)'+ ','
+'(591)'+ ','
+'(592)'+ ','
+'(593)'+ ','
+'(594)'+ ','
+'(595)'+ ','
+'(643)'+ ','
+'(646)'+ ','
+'(647)'+ ','
+'(648)'+ ','
+'(662)'+ ','
+'(828)'+ ','
+'(858)'+ ','
+'(596)'+ ','
+'(597)'+ ','
+'(598)'+ ','
+'(599)'+ ','
+'(601)'+ ','
+'(602)'+ ','
+'(603)'+ ','
+'(604)'+ ','
+'(605)'+ ','
+'(606)'+ ','
+'(607)'+ ','
+'(608)'+ ','
+'(609)'+ ','
+'(610)'+ ','
+'(611)'+ ','
+'(612)'+ ','
+'(613)'+ ','
+'(614)'+ ','
+'(615)'+ ','
+'(616)'+ ','
+'(617)'+ ','
+'(618)'+ ','
+'(650)'+ ','
+'(653)'+ ','
+'(654)'+ ','
+'(655)'+ ','
+'(642)'+ ','
+'(644)'+ ','
+'(645)'+ ','
+'(649)'+ ','
+'(656)'+ ','
+'(660)'+ ','
+'(661)'+ ','
+'(663)'+ ','
+'(664)'+ ','
+'(666)'+ ','
+'(683)'+ ','
+'(684)'+ ','
+'(685)'+ ','
+'(687)'+ ','
+'(688)'+ ','
+'(692)'+ ','
+'(694)'+ ','
+'(697)'+ ','
+'(701)'+ ','
+'(702)'+ ','
+'(705)'+ ','
+'(706)'+ ','
+'(711)'+ ','
+'(712)'+ ','
+'(713)'+ ','
+'(714)'+ ','
+'(715)'+ ','
+'(716)'+ ','
+'(717)'+ ','
+'(723)'+ ','
+'(724)'+ ','
+'(725)'+ ','
+'(734)'+ ','
+'(735)'+ ','
+'(736)'+ ','
+'(737)'+ ','
+'(738)'+ ','
+'(739)'+ ','
+'(740)'+ ','
+'(748)'+ ','
+'(754)'+ ','
+'(756)'+ ','
+'(757)'+ ','
+'(758)'+ ','
+'(766)'+ ','
+'(771)'+ ','
+'(774)'+ ','
+'(775)'+ ','
+'(781)'+ ','
+'(785)'+ ','
+'(786)'+ ','
+'(794)'+ ','
+'(795)'+ ','
+'(796)'+ ','
+'(799)'+ ','
+'(800)'+ ','
+'(816)'+ ','
+'(818)'+ ','
+'(819)'+ ','
+'(824)'+ ','
+'(826)'+ ','
+'(827)'+ ','
+'(842)'+ ','
+'(844)'+ ','
+'(864)'+ ','
+'(871)'+ ','
+'(873)'+ ','
+'(881)'+ ','
+'(620)'+ ','
+'(621)'+ ','
+'(622)'+ ','
+'(623)'+ ','
+'(624)'+ ','
+'(625)'+ ','
+'(626)'+ ','
+'(627)'+ ','
+'(628)'+ ','
+'(651)'+ ','
+'(652)'+ ','
+'(667)'+ ','
+'(629)'+ ','
+'(630)'+ ','
+'(631)'+ ','
+'(632)'+ ','
+'(633)'+ ','
+'(634)'+ ','
+'(635)'+ ','
+'(636)'+ ','
+'(637)'+ ','
+'(638)'+ ','
+'(639)'+ ','
+'(640)'+ ','
+'(641)'+ ','
+'(787)'+ ','
+'(815)'+ ','
+'(833)'+ ','
+'(832)'+ ','
+'(884)'+ ','
+'(301)'+ ','
+'(333)'+ ','
+'(301343)'+ ','
+'(301483)'+ ','
+'(300)'+ ','
+'(301)'+ ','
+'(30627)'+ ','
+'(30738)'+ ','
+'(30751)'+ ','
+'(691)'+ ','
+'(726)'+ ','
+'(745)'+ ','
+'(763)'+ ','
+'(696)'+ ','
+'(746)'+ ','
+'(305)'+ ','
+'(263)'
+')';

end;
//sqlTexto := sqlTexto + ' and (rec.CONTACREDITO =' + QuotedStr('571') + ') or (rec.CONTACREDITO =' + QuotedStr('572') +')'
                            ;
{
sqlTexto := sqlTexto + 'and rec.CONTACREDITO in (' + QuotedStr('572')+ ','
                                                   + QuotedStr('573')

+')';

}

  scdsCr_proc.CommandText := sqlTexto1 + sqlTexto + sql2;
 // scdsCr_proc.CommandText := '';

 // scdsCr_proc.CommandText :='SELECT * from valoresN';

  scdsCr_proc.Open;

  sqlTexto2 := 'SELECT SUM(TOTALTITULO), SUM(TOTALPAGO), SUM(TOTALPENDENTE)' +
    ' FROM PAG_TOTAIS(';
  if cbStatus.Text<>'' then
  begin
    if copy(cbStatus.Text,0,2) <> '11' then
    begin
      if ((copy(cbStatus.Text,0,2) = '1-') or (copy(cbStatus.Text,0,2) = '2-')) then
        sqlTexto2 := sqlTexto2 + '''' + '5-' + ''')'
      else
        sqlTexto2 := sqlTexto2 + '''' + copy(cbStatus.Text,0,2) + ''')';
    end
    else
      sqlTexto2 := sqlTexto2 + QuotedStr('00') + ')';
  end
  else
    sqlTexto2 := sqlTexto2 + QuotedStr('00') + ')';

  Try
    if (cds_total.Active) then
      cds_total.Close;


    sqltexto := StringReplace( SqlTexto ,  remover , '', [rfReplaceAll]); // StringReplace( SqlTexto , remover) ;


    cds_total.CommandText := sqlTexto2 + ' REC ' + SqlTexto;
    cds_total.Open;
    if (not scdsCr_proc.IsEmpty) then
    begin
      if (scdsCr_procTotTitulo.Value <> 0.001) then
        JvCalcEdit1.Text := scdsCr_procTotTitulo.Value
      //   JvCalcEdit1.Text :=  cds_total.Fields[0].Value
      else
        JvCalcEdit1.Text := '0';

      if (scdsCr_procTotPendente.Value > 0.001) then
        JvCalcEdit2.Text := scdsCr_procTotPendente.Value
       // JvCalcEdit2.Text := cds_total.Fields[1].Value;
      else
        JvCalcEdit2.Text := '0';

      if (scdsCr_procTotPago.Value <> 0.001) then
        JvCalcEdit3.Text := scdsCr_procTotPago.Value
     //   JvCalcEdit3.Text := cds_total.Fields[2].Value ;
      else
        JvCalcEdit3.Text := '0';
    end;
  Except
    ShowMessage ('Não existe dados para essa consulta');
  end;
  Label22.Caption := IntToStr(scdsCr_proc.RecordCount);
  DBGrid1.SetFocus;
end;

procedure TfCpProc.FormCreate(Sender: TObject);
var conta_local, str_sql2: String;
 varCpProc : TUtils;
  i, j : integer;
begin
  // Popula Status
  j := varCpProc.Forma.Count;
  for i := 0 to j - 1 do
  begin
    cbForma.Items.Add(varCpProc.Forma.Strings[i]);
  end;

  j := varCpProc.StatusPag.Count;
  for i := 0 to j - 1 do
  begin
    cbStatus.Items.Add(varCpProc.StatusPag.Strings[i]);
  end;

    //Vejo quais são as contas de Receitas para listar no lookupcombobox.
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    conta_local := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;

    // populo a combobox Centro de Custo
    if dm.cds_ccusto.Active then
      dm.cds_ccusto.Close;
    dm.cds_ccusto.Params[0].AsString := conta_local;
    dm.cds_ccusto.Open;
    DM.cds_ccusto.First;
    while not DM.cds_ccusto.Eof do
    begin
      edCodCCusto.Items.Add(dm.cds_ccustoNOME.AsString);
      DM.cds_ccusto.Next;
    end;

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].Clear;
  dm.cds_parametro.Params[0].AsString := 'CONTASDESPESAS';
  dm.cds_parametro.Open;

  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  str_sql2 := 'Select * from PLANO ';
  str_sql2 := str_sql2 + 'WHERE ';
  str_sql2 := str_sql2 + 'plnctaroot(conta) = ''' + dm.cds_parametroDADOS.AsString + '''';
  str_sql2 := str_sql2 + ' and CONSOLIDA = ''S'' ';
  str_sql2 := str_sql2 + ' order by NOME';
  DM.c_1_planoc.CommandText := str_sql2;
  DM.c_1_planoc.Open;
  cbConta.Items.clear;
  while not (DM.c_1_planoc.eof) do
  begin
    cbConta.Items.add(dm.c_1_planocNOME.AsString);
    dm.c_1_planoc.Next;
  end;
  dm.cds_parametro.Close;

  if (dm.moduloUsado = 'SAUDE') then
  begin
 //   DBGrid1.Columns[1].Visible := False;
    DBGrid1.Columns[2].Visible := False;
  end;

    // populo a combobox Caixa
    if dm.cdsConta.Active then
      dm.cdsConta.Close;
    dm.cdsConta.Open;
    DM.cdsConta.First;
    while not DM.cdsConta.Eof do
    begin
      cbTipoFornecedor.Items.Add(dm.cdsContaNOME.AsString);
      DM.cdsConta.Next;
    end;


 {
  if (not sdsTipoForn.Active) then
    sdsTipoForn.open;
  while not (sdsTipoForn.eof) do
  begin
    cbTipoFornecedor.Items.add(sdsTipoFornDESCRICAO.AsString);
    sdsTipoForn.Next;
  end;
  sdsTipoForn.Close;

  }

 // rbTipoConta.ItemIndex := 0;
end;

procedure TfCpProc.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfCpProc.DBGrid1TitleClick(Column: TColumn);
begin
     scdsCr_proc.IndexFieldNames := Column.FieldName;
end;

procedure TfCpProc.btnImprimirClick(Sender: TObject);
  var  sqlGrupo: String;
       data1,data2,conta,tipo,situacao ,centro :TRpLabel;
begin

//if (ckans.Checked = False) then
// begin
 sqlGrupo  := ' group by rec.DATAVENCIMENTO, cli.NOMEFORNECEDOR, rec.CODFORNECEDOR,rec.CAIXA , rec.formapagamento ,'
            + ' rec.EMISSAO, rec.CODPAGAMENTO,rec.OUTRO_CREDITO , '
            + ' rec.TITULO,  rec.VALOR_RESTO, rec.VALORTITULO, '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + ' rec.VIA, rec.N_DOCUMENTO, rec.VALOR_PRIM_VIA, rec.dp, rec.dup_rec_nf' +
            ' ,plano.NOME ,rec.CONTACREDITO, rec.HISTORICO ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO ,rec.DATASISTEMA ';
//end;
{
if (ckans.Checked = True) then
 begin
 sqlGrupo  := ' group by rec.DATAVENCIMENTO, cli.NOMEFORNECEDOR, rec.CODFORNECEDOR,rec.CAIXA , rec.formapagamento ,'
            + ' rec.EMISSAO, rec.OUTRO_CREDITO , '
            + ' rec.TITULO,   '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + ' rec.VIA, rec.N_DOCUMENTO, rec.dp, rec.dup_rec_nf' +
            ' ,plano.NOME ,rec.CONTACREDITO, rec.HISTORICO ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO ';
 end;
}

  repContasReceber.FileName := str_relatorio + 'rel_cpFiltro.rep';
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  if (remover <> '') then

  sqlTexto := sqlTexto + remover ;

  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlTexto1 + sqlTexto + sqlGrupo;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  conta:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel15'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel17'));
  situacao := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel18'));
  centro  := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel19'));

  // Situacao
  if((cbStatus.Text <> '')or(cbStatus.Text = '') ) then
  begin
    situacao.Text := cbStatus.Text;
  end;
  if(cbStatus.Text = '1-A Vencer')  then
  situacao.Text := ': Situação = A Vencer';
  if(cbStatus.Text = '2-Vencido')  then
  situacao.Text := ': Situação = Vencido';
  if(cbStatus.Text = '5-A Pagar')  then
  situacao.Text := ': Situação = A Pagar';
  if(cbStatus.Text = '7-Pago')  then
  situacao.Text := ': Situação = PAGO';
  if(cbStatus.Text = '8-Suspenso')  then
  situacao.Text := ': Situação = Suspenso';
  if(cbStatus.Text = '11-Todos')  then
  situacao.Text := ': Situação = Todos';
  if(cbStatus.Text = '14-Cancelado')  then
  situacao.Text := ': Situação = Cancelado';     

   // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;

  // Conta
  if((cbConta.Text <> '')or(cbConta.Text = '') ) then
  begin
    conta.Text := cbConta.Text;
  end;

  //Entrada
  if (medt1.text <> '  /  /  ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
    ComboBox1.Text := 'Data de Entrada';
  end;

  //Emissão
  if (meDta1.text <> '  /  /  ')then
  begin
    data1.Text := meDta1.Text;
    data2.Text := meDta2.Text;
    ComboBox1.Text := 'Data de Emissão';
  end;

  //Pagamento
  if (meDta5.text <> '  /  /  ') then
  begin
    data1.Text := meDta5.Text;
    data2.Text := meDta6.Text;
    ComboBox1.Text := 'Data de Pagamento';
  end;

   //Vencimento
  if (meDta3.text <> '  /  /  ') then
  begin
    data1.Text := meDta3.Text;
    data2.Text := meDta4.Text;
    ComboBox1.Text := 'Data de Vencimento';
  end;

  // Tipo de data
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '')) then
  begin
    tipo.Text := ComboBox1.Text;
  end;

  repContasReceber.Execute;
  data1.Text := '';
  data2.Text := '';
  conta.Text := '';
  tipo.Text := '';
  centro.Text := '';
end;

procedure TfCpProc.BitBtn8Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.create(self,dm.scds_forn_proc);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  fProcurar.BtnProcurar.Click;
  try
    fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
    if fProcurar.ShowModal=mrOk then
    begin
     edCodCliente.Text:=IntToStr(dm.scds_forn_procCODFORNECEDOR.asInteger);
     edCliente.Text:=dm.scds_forn_procNOMEFORNECEDOR.asString;
    end;
  Finally
    dm.scds_forn_proc.close;
    fProcurar.Free;
  end;  
end;

procedure TfCpProc.BitBtn1Click(Sender: TObject);
begin
  edCodCliente.Text:='';
     edCliente.Text:='';
end;

procedure TfCpProc.BitBtn12Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
   if fProcurar.ShowModal=mrOk then
    begin
     edCodVendedor.Text:=IntToStr(dm.scds_usuario_procCODUSUARIO.asInteger);
     edVendedor.Text:=dm.scds_usuario_procNOMEUSUARIO.asString;
    end;
   finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
   end;
end;

procedure TfCpProc.edCodClienteExit(Sender: TObject);
begin
   if edCodCliente.Text = '' then exit;
   if dm.scds_forn_proc.Active then
      dm.scds_forn_proc.Close;
   dm.scds_forn_proc.Params[0].Clear;
   dm.scds_forn_proc.Params[1].Clear;
   dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;   
   dm.scds_forn_proc.Params[2].AsInteger := StrToInt(edCodCliente.Text);
   dm.scds_forn_proc.Open;
     edCliente.Text := dm.scds_forn_procNOMEFORNECEDOR.asString;
   dm.scds_forn_proc.Close;
end;

procedure TfCpProc.cbStatusKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   //key:= #0;
   //SelectNext((Sender as TwinControl),True,True);
   btnProcurar.Click;
 end;

end;

procedure TfCpProc.BitBtn6Click(Sender: TObject);
begin
  medta5.Clear;
  medta6.Clear;
  ComboBox1.Text := '';
end;

procedure TfCpProc.BitBtn7Click(Sender: TObject);
begin
  medta3.Clear;
  medta4.Clear;
  ComboBox1.Text := '';
end;

procedure TfCpProc.BitBtn2Click(Sender: TObject);
begin
  medta1.Clear;
  medta2.Clear;
  ComboBox1.Text := '';  
end;

procedure TfCpProc.ChkDBGridCellClick(Column: TColumn);
var
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF')
      and Field.CanModify and not Column.ReadOnly then
  with Field.Dataset do
  begin
    if State = dsBrowse then
      Edit;
    if (scdsCr_procDUP_REC_NF.AsString <> 'S') then
    begin
      //dbGrid1.SelectedRows.CurrentRowSelected := True;
      //dbgrid1.Refresh;
      scdsCr_procDUP_REC_NF.AsString := 'S';
      scdsCr_procDP.AsInteger := 0;
      scdsCr_proc.Post;
    end
    else begin
      scdsCr_procDUP_REC_NF.AsString := '';
      scdsCr_procDP.Clear;;
    end;
  end;
end;

procedure TfCpProc.ChkDBGridColEnter(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
    DBGrid.Options := DBGrid.Options - [dgEditing];
end;

procedure TfCpProc.ChkDBGridColExit(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
    DBGrid.Options := DBGrid.Options + [dgEditing];
end;

procedure TfCpProc.ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
  begin
    // Fill the cell with the background color
    DBGrid.Canvas.FillRect(Rect);
    // Determine the position of the graphic inside the cell
    case Column.Alignment of
      taRightJustify:
        X := Rect.Right - 2 - 16;
      taCenter:
        X := (Rect.Right - Rect.Left - 16) div 2 + Rect.Left;
      else // taLeftJustify:
        X := Rect.Left + 2;
    end;
    Y := (Rect.Bottom - Rect.Top - 16) div 2 + Rect.Top;
    // Determine the image to be used
    // if Field.AsBoolean then Index := 1 else Index := 0;
    if scdsCr_procDUP_REC_NF.AsString <> 'S' then Index := 1 else Index := 0;
    // Draw the graphic
    ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
  end else // Default drawing
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfCpProc.ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
    if (Key = ' ') and Field.CanModify and
        not DBGrid.Columns[DBGrid.SelectedIndex].ReadOnly then
      with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
        //Field.AsBoolean := not Field.AsBoolean;
      if (scdsCr_procDUP_REC_NF.AsString <> 'S') then
      begin
        scdsCr_procDUP_REC_NF.AsString := 'S';
        scdsCr_procDP.AsInteger := 0;
        scdsCr_proc.Post;
      end
      else begin
        scdsCr_procDUP_REC_NF.AsString := '';
        scdsCr_procDP.Clear;;
      end;
  end;
end;

procedure TfCpProc.DBGrid1CellClick(Column: TColumn);
begin
  ChkDBGridCellClick(Column);
end;

procedure TfCpProc.DBGrid1ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfCpProc.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = scdsCr_procSTATUS then
   if ((scdsCr_procSTATUS.AsString = '5-')) then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = scdsCr_procSTATUS then
   if (scdsCr_procSTATUS.AsString = '7-') then
   begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = scdsCr_procSTATUS then
   if (scdsCr_procSTATUS.AsString = '8-') then
   begin
     DBGrid1.Canvas.Font.Color := clYellow;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
    DataCol, Column, State);

end;

procedure TfCpProc.meDta1xKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfCpProc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfCpProc.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [','] then Key := '.';
end;

procedure TfCpProc.BitBtn3Click(Sender: TObject);
begin
  edValor.Text := '';
end;

procedure TfCpProc.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fCpProc));
  edCodCCusto.ItemIndex := 1;
end;

procedure TfCpProc.BitBtn5Click(Sender: TObject);
  var
  sqlTexto2, sqlGrupo: String;
begin
  sqlTexto2 := 'and rec.outro_credito <> 0 ';

  sqlGrupo := ' group by cli.NOMEFORNECEDOR, rec.CODFORNECEDOR ,rec.OUTRO_CREDITO, '
  + ' rec.DATAVENCIMENTO, rec.EMISSAO, rec.CODPAGAMENTO, '
  + ' rec.TITULO,  rec.VALOR_RESTO, rec.VALORTITULO, '
  + ' rec.STATUS, rec.DATAPAGAMENTO, rec.VALORRECEBIDO , '
  + ' rec.VIA, rec.N_DOCUMENTO, rec.VALOR_PRIM_VIA, rec.dp, rec.dup_rec_nf' +
  ' ,plano.NOME ,rec.CONTACREDITO , rec.HISTORICO ';
  repContasReceber.FileName := str_relatorio + 'rel_cpFiltro1.rep';
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(meDta5.Text));
  repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(meDta6.Text));
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlTexto1 + (sqlTexto + sqlTexto2) + sqlGrupo;
  repContasReceber.Execute;

end;

procedure TfCpProc.BitBtn13Click(Sender: TObject);
  var
  sqlGrupoSIP , sqlgrupo , sqlTexto2  : String;
  Dia, Mes, Ano : Word;
begin
  BitBtn4.Click;
  bt := 1 ;
  btnProcurar.Click;

  DecodeDate(medt1.Date, Ano, Mes, Dia);
  DecodeDate(meDta1.Date, Ano, Mes, Dia);
  DecodeDate(meDta5.Date, Ano, Mes, Dia);
  DecodeDate(meDta3.Date, Ano, Mes, Dia);

  if((medt1.Date < 41547) or (meDta1.Date < 41547) or (meDta5.Date < 41547) or (meDta3.Date < 41547)) then
  begin
    sqlTexto2 := 'and ((pl.contapai = ' + QuotedStr('4.1.1.09') + ') or (pl.contapai = '+ QuotedStr('4.1.1.10') +') or (pl.contapai = '+ QuotedStr('4.1.1.11')+ ') or (pl.contapai = '+ QuotedStr('4.1.1.12')+ ') or (pl.contapai = '+ QuotedStr('4.1.1.13')+ '))';
    sqlGrupo := ' group by   cli.NOMEFORNECEDOR,  pl.nome ' ;
    sqlGrupoSIP := ' Select cli.NOMEFORNECEDOR, SUM(rec.VALORTITULO) AS VALORTITULO ,'
    + ' SUM(rec.outro_credito) as QTD_DE_PROCEDIMENTO, pl.nome from PAGAMENTO rec'
    + ' inner join FORNECEDOR cli on cli.CODFORNECEDOR=rec.CODFORNECEDOR '
    + ' inner join PLANO pl on pl.codigo = rec.contacredito ' ;
  end;

  // 41547 = 30/09/13

  if ((medt1.Date > 41547) or (meDta1.Date > 41547) or (meDta5.Date > 41547) or (meDta3.Date > 41547)) then
  begin
    sqlTexto2 := '';
    sqlTexto := StringReplace(sqlTexto,'CODALMOXARIFADO', 'REC.CODCCUSTO', [rfReplaceAll]);

    sqlGrupo := ' group by   cli.NOMEFORNECEDOR ,prod.produto';
    sqlGrupoSIP := ' select cli.nomefornecedor, SUM(movd.PRECO) AS VALORTITULO ,SUM(movd.outro_credito) as QTD_DE_PROCEDIMENTO ,'
    + ' prod.produto as nome from compra rec '
    + ' inner join fornecedor cli on rec.codfornecedor = cli.codfornecedor'
  //  + ' inner join compra com on rec.codcompra = com.codcompra'
    + ' inner join movimentodetalhe movd on movd.codmovimento = rec.codmovimento '
    + ' inner join produtos prod on prod.codproduto = movd.codproduto' ;
  end;

  if(medt1.Text = '  /  /    ') then
  begin
    MessageDlg('Preecha a data de Entrada '+#13+#10+'Somente a data de Entrada', mtWarning, [mbOK], 0);
    exit;
  end;
  // Entrada
  if(medt1.Text <> '  /  /    ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sipEn.rep';
    repContasReceber.Title := repContasReceber.FileName;
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(medt1.Text));
    repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(medt2.Text));
  end;
  {
  //Emissão
  if(meDta1.Text <> '  /  /    ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sipEm.rep';
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(meDta1.Text));
    repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(meDta2.Text));
  end;
  //Pagamento
  if(meDta5.Text <> '  /  /    ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sipPa.rep';
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(meDta5.Text));
    repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(meDta6.Text));
  end;
  //Vencimento
  if(meDta3.Text <> '  /  /    ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sipVe.rep';
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(meDta3.Text));
    repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(meDta4.Text));
  end;
  }
   repContasReceber.Report.DataInfo.Items[0].SQL:= sqlGrupoSIP + (sqlTexto + sqlTexto2) + sqlGrupo ;


  repContasReceber.Execute;
end;

procedure TfCpProc.BitBtn14Click(Sender: TObject);
  var
  sqlGrupoSIP , sqlgrupo ,sqlTexto2 : String;
  data1,data2 : TRpLabel;
  Dia, Mes, Ano : Word;
begin
  BitBtn4.Click;
  btnProcurar.Click;

  DecodeDate(medt1.Date, Ano, Mes, Dia);
  DecodeDate(meDta1.Date, Ano, Mes, Dia);
  DecodeDate(meDta5.Date, Ano, Mes, Dia);
  DecodeDate(meDta3.Date, Ano, Mes, Dia);

  if((medt1.Date < 41547) or (meDta1.Date < 41547) or (meDta5.Date < 41547) or (meDta3.Date < 41547)) then
  begin
    sqlTexto2 := 'and ((pl.contapai = ' + QuotedStr('4.1.1.09') + ') or (pl.contapai = '+ QuotedStr('4.1.1.10') +') or (pl.contapai = '+ QuotedStr('4.1.1.11')+ ') or (pl.contapai = '+ QuotedStr('4.1.1.12')+ ')or (pl.contapai = '+ QuotedStr('4.1.1.13')+ '))';
    sqlGrupo := ' group by  pla.conta, pl.contapai, pl.nome, pla.nome' ;
    sqlGrupoSIP := ' select  SUM(rec.VALORTITULO) AS VALORTITULO , SUM(rec.outro_credito) as QTD_DE_PROCEDIMENTO, '
    +' pl.nome , pl.contapai,  pla.nome from PAGAMENTO rec'
    +' inner join FORNECEDOR cli on cli.CODFORNECEDOR = rec.CODFORNECEDOR '
    +' inner join PLANO pl on pl.codigo = rec.contacredito '
    +' left outer join PLANO pla on pla.conta = pl.contapai ';
  end;
  {
  if(medt1.Date > 41547) then
  begin
    sqlGrupo := ' group by cli.nomefornecedor, prod.produto ,pl.nome';
    sqlGrupoSIP := 'select cli.nomefornecedor, sum(rec.VALORTITULO) AS VALORTITULO ,'
    +' sum(movd.outro_credito) as QTD_DE_PROCEDIMENTO , prod.produto as nome ,pl.nome as contapai ,pl.nome as nome_1  '
    +' from pagamento rec '
    +' inner join fornecedor cli on rec.codfornecedor = cli.codfornecedor '
    +' inner join compra com on rec.codcompra = com.codcompra '
    +' inner join movimentodetalhe movd on movd.codmovimento = com.codmovimento '
    +' inner join produtos prod on prod.codproduto = movd.codproduto '
    +' inner join plano pl on pl.conta = prod.conta_estoque ' ;

  end;
  }
  if ((medt1.Date > 41547) or (meDta1.Date > 41547) or (meDta5.Date > 41547) or (meDta3.Date > 41547)) then
  begin
    sqlTexto2 := '';
    sqlGrupo :=  ' group by pl.contapai, pl.nome,  prod.produto' ; // ' group by cli.nomefornecedor, prod.produto ,pl.nome';
    sqlTexto := StringReplace(sqlTexto,'CODALMOXARIFADO', 'REC.CODCCUSTO', [rfReplaceAll]);
    sqlGrupoSIP := 'select  sum(movd.PRECO) AS VALORTITULO ,'
    +' sum(movd.outro_credito) as QTD_DE_PROCEDIMENTO , prod.produto as nome ,pl.nome as contapai ,pl.nome as nome_1  '
    +' from COMPRA rec '
    +' inner join fornecedor cli on rec.codfornecedor = cli.codfornecedor '
    +' inner join compra com on rec.codcompra = com.codcompra '
    + ' inner join movimentodetalhe movd on movd.codmovimento = rec.codmovimento '
    + ' inner join produtos prod on prod.codproduto = movd.codproduto' 
    + ' inner join plano pl on pl.conta = prod.conta_estoque ' ;

  end;

  if(medt1.Text = '  /  /    ') then
  begin
    MessageDlg('Preecha a data de Entrada '+#13+#10+'Somente a data de Entrada', mtWarning, [mbOK], 0);
    exit;
  end;

  //Entrada
  if(medt1.Text <> '  /  /    ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sip1En.rep';
    repContasReceber.Title := repContasReceber.FileName;
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  //  repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(medt1.Text));
  //  repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(medt2.Text));
  end;
 {
  //Emissão
  if(meDta1.Text <> '  /  /    ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sip1Em.rep';
    repContasReceber.Title := repContasReceber.FileName;
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  //  repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(meDta1.Text));
  // repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(meDta2.Text));
  end;
  //Pagamento
  if(meDta5.Text <> '  /  /    ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sip1Pa.rep';
    repContasReceber.Title := repContasReceber.FileName;
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  //  repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(meDta5.Text));
  //  repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(meDta6.Text));
  end;
  //Vencimento
  if(meDta3.Text <> '  /  /    ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sip1Ve.rep';
    repContasReceber.Title := repContasReceber.FileName;
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  //  repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(meDta3.Text));
  //  repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(meDta4.Text));
  end;

  }

  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlGrupoSIP + (sqlTexto + sqlTexto2 )+ sqlGrupo ;
                     ////////////////////// para o Relatorio


  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel6'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel7'));

  //Entrada
  if(medt1.Text <> '  /  /    ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
  end;

  //Emissão
  if(meDta1.Text <> '  /  /    ') then
  begin
    data1.Text := meDta1.Text;
    data2.Text := meDta2.Text;
  end;

  //Pagamento
  if(meDta5.Text <> '  /  /    ') then
  begin
    data1.Text := meDta5.Text;
    data2.Text := meDta6.Text;
  end;

  //Vencimento
  if(meDta3.Text <> '  /  /    ') then
  begin
    data1.Text := meDta3.Text;
    data2.Text := meDta4.Text;
  end;     

  repContasReceber.Execute;

end;

procedure TfCpProc.BtnChClick(Sender: TObject);
  var vlr, vlrrec, vlrdesc, vlrjuros, vlrfunrural, vlrperda: double;
  i, j , fornecedorSelecionado , pagto , num : integer;
   str_sql , num1: String;
  TD: TTransactionDesc;
begin
 try
   if (numero.Text = '') then
   begin
     MessageDlg('Digite um numero para o Documento !', mtWarning, [mbOK], 0);
     numero.SetFocus;
   exit;
   end;
   fornecedorSelecionado := 0;
   i := 1;
   vlr := 0;
   vlrrec := 0;
   vlrdesc := 0;
   vlrjuros := 0;
   vlrfunrural := 0;
   vlrperda := 0;
   // Se houve selecao de titulos entao gravo.
   if (scdsCr_proc.ChangeCount > 0) then
   begin
     //teste := scdsCr_proc.CommandText;
     //scdsCr_proc.ApplyUpdates(-1);
   end
   else begin
     MessageDlg('Marque o título a ser Alterado!', mtWarning, [mbOK], 0);
     exit;
   end;
   if (dm.cds_4_pagar.Active) then
     dm.cds_4_pagar.Close;
   dm.cds_4_pagar.Params[0].AsInteger := scdsCr_procCODPAGAMENTO.AsInteger;
   dm.cds_4_pagar.Open;
   dm.cds_4_pagar.Edit;
   scdsCr_proc.DisableControls;
   scdsCr_proc.First;
   While not scdsCr_proc.Eof do
   begin
     if (scdsCr_procDUP_REC_NF.AsString = 'S') then
     begin
       if (fornecedorSelecionado = 0) then
         fornecedorSelecionado := scdsCr_procCODFORNECEDOR.AsInteger;
       if (fornecedorSelecionado <> scdsCr_procCODFORNECEDOR.AsInteger) then
       begin
         MessageDlg('Fornecedores diferentes selecionados.' + #10#13 +
           ' Operação disponível somente para o mesmo Fornecedor!', mtWarning, [mbOK], 0);
         scdsCr_proc.EnableControls;
         exit;
       end;
       setlength(nrec, i);
       nrec[i] := scdsCr_procCODPAGAMENTO.AsInteger;
    {   if (fcptitulo.cds.active) then
         fcptitulo.cds.close;
       fcptitulo.cds.Params[0].AsInteger := scdsCr_procCODPAGAMENTO.AsInteger;
       fcptitulo.cds.Open;
       //if (fcrtitulo.cdsSUM.AsFloat = scdsCr_procVALORREC.AsFloat) then
       //begin
          vlr := vlr + fcptitulo.cdsSUM.AsFloat;
          vlrfunrural := vlrfunrural + fcptitulo.cdsSUM_1.AsFloat;
          vlrjuros := vlrjuros + fcptitulo.cdsSUM_2.AsFloat;
          vlrperda := vlrperda +  fcptitulo.cdsSUM_3.AsFloat;
          vlrdesc := vlrdesc +  fcptitulo.cdsSUM_4.AsFloat;
          if (fcptitulo.cdsSUM_5.AsFloat > 0) then
            vlrrec := vlrrec +  fcptitulo.cdsSUM_5.AsFloat;
       //end;
     }
       i := i ;
     end;


    //FormatDateTime('ddmmyyyy',Date);

   // if (JvDateEdit2.Text <> '') then
    if (scdsCr_procDUP_REC_NF.AsString = 'S' ) then
    begin
      str_sql := 'UPDATE PAGAMENTO SET N_DOCUMENTO = ' + QuotedStr(numero.Text) ;
      str_sql := str_sql + ', CAIXA = ' + QuotedStr(conta.Text) ;
      str_sql := str_sql + ', FORMAPAGAMENTO = ' + QuotedStr(edForma.Text) ;
      str_sql := str_sql + ', DATACONSOLIDA = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) ;

      str_sql := str_sql + ' WHERE CODPAGAMENTO = ';
      num1 := IntToStr(scdsCr_procCODPAGAMENTO.AsInteger);
      str_sql := str_sql +  num1 ;
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para efetuar a inclusão Numero , Conta ou Forma.', mtError, [mbOK], 0);
        exit;
      end;
    end;

     scdsCr_proc.Next;
   end;

  finally
   scdsCr_proc.EnableControls;
   fCpProc.DBGrid1.SetFocus;
   scdsCr_proc.Close;
   scdscr_Proc.Open;
  end;

  MessageDlg('Numero Documento e Data Consolida , Incluida com Sucesso', mtConfirmation, [mbOK], 0);

 end;

procedure TfCpProc.BitBtn16Click(Sender: TObject);
 Var
 DataStr, sql2, sql3,sqlTexto2 , sqlTexto5: String;
 varCpProc : TUtils;
begin
  DBGrid1.Visible := False;
  DBGrid2.Visible := True;
  btnIncluir.Visible := False;
  btnPagar.Visible := True;
  sqlTexto3 := '';
  sqlTexto := '';
  if cds1.Active then
    cds1.Close;
  if cds2.Active then
    cds2.Close;
  sqlTexto3 := 'select  rec.dp, rec.dup_rec_nf,  rec.TITULO, rec.EMISSAO,rec.DATACONSOLIDA ,rec.CAIXA , rec.FORMAPAGAMENTO ,'
   + ' rec.DATAVENCIMENTO ,rec.CODFORNECEDOR, sum(rec.VALORTITULO) as VALORTITULO ,sum(rec.VALOR_RESTO) as VALOR_RESTO , sum(rec.VALOR_PRIM_VIA) as VALOR_PRIM_VIA , '
   + ' CASE rec.STATUS WHEN ' + '''5-''' + ' THEN ' + '''PENDENTE''' + ' when ' + '''6-'''
   + ' then ' + '''PENDENTE CONTAB.''' +  ' when ' + '''7-''' + ' then ' + '''PAGO'''
   + ' when ' + '''8-''' + ' then ' + '''SUSPENSO'''
   + ' END AS STATUS, rec.DATAPAGAMENTO,rec.DATAINCLUSAO, '
   + ' sum(rec.VALORRECEBIDO + CASE when FUNRURAL > 0 then FUNRURAL else 0 end + CASE when JUROS > 0 then JUROS else 0 end) as VALORRECEBIDO, rec.VIA, rec.N_DOCUMENTO '
   + ' , cli.NOMEFORNECEDOR, ' +
   ' SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC ' +
   ' ,plano.NOME from PAGAMENTO rec ' +
   ' inner join FORNECEDOR cli on cli.CODFORNECEDOR=rec.CODFORNECEDOR ';
   case rbTipoConta.ItemIndex of
     0 : sqlTexto3 := sqlTexto3 + ' inner join PLANO plano on plano.CODIGO = rec.CAIXA ';
     1 : sqlTexto3 := sqlTexto3 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ' +
       ' inner join compra comp on comp.codCompra = rec.CODCompra ';
     2 : sqlTexto3 := sqlTexto3 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ';
   end;
  sqlTexto5 := 'select  rec.dp, rec.dup_rec_nf,  rec.TITULO, rec.EMISSAO,rec.DATACONSOLIDA ,rec.CAIXA , rec.FORMAPAGAMENTO ,rec.CODPAGAMENTO,'
   + ' rec.DATAVENCIMENTO ,rec.CODFORNECEDOR, sum(rec.VALORTITULO) as VALORTITULO ,sum(rec.VALOR_RESTO) as VALOR_RESTO , sum(rec.VALOR_PRIM_VIA) as VALOR_PRIM_VIA , '
   + ' CASE rec.STATUS WHEN ' + '''5-''' + ' THEN ' + '''PENDENTE''' + ' when ' + '''6-'''
   + ' then ' + '''PENDENTE CONTAB.''' +  ' when ' + '''7-''' + ' then ' + '''PAGO'''
   + ' when ' + '''8-''' + ' then ' + '''SUSPENSO'''
   + ' END AS STATUS, rec.DATAPAGAMENTO,rec.DATAINCLUSAO, '
   + ' sum(rec.VALORRECEBIDO + CASE when FUNRURAL > 0 then FUNRURAL else 0 end + CASE when JUROS > 0 then JUROS else 0 end) as VALORRECEBIDO, rec.VIA, rec.N_DOCUMENTO '
   + ' , cli.NOMEFORNECEDOR, ' +
   ' SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC ' +
   ' ,plano.NOME from PAGAMENTO rec ' +
   ' inner join FORNECEDOR cli on cli.CODFORNECEDOR=rec.CODFORNECEDOR ';
   case rbTipoConta.ItemIndex of
     0 : sqlTexto5 := sqlTexto5 + ' inner join PLANO plano on plano.CODIGO = rec.CAIXA ';
     1 : sqlTexto5 := sqlTexto5 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ' +
       ' inner join compra comp on comp.codCompra = rec.CODCompra ';
     2 : sqlTexto5 := sqlTexto5 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ';
   end;
   cds1.CommandText := sqlTexto3;
   cds2.CommandText := sqlTexto5;

   if (cbConta.Text <> '') then
   begin
     if (not DM.c_1_planoc.Active) then
     begin
       if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
       dm.cds_parametro.Params[0].Clear;
       dm.cds_parametro.Params[0].AsString := 'CONTASDESPESAS';
       dm.cds_parametro.Open;
       DM.c_1_planoc.CommandText := 'Select * from PLANO WHERE ' +
         'plnctaroot(conta) = ''' + dm.cds_parametroDADOS.AsString + '''' +
         ' and CONSOLIDA = ''S''' + ' order by NOME';
       DM.c_1_planoc.Open;
       dm.cds_parametro.Close;
     end;
     dm.c_1_planoc.Locate('NOME', cbConta.text, [loCaseInsensitive]);
       sqlTexto := ' Where rec.CONTACREDITO = ' + IntToStr(Dm.c_1_planocCODIGO.AsInteger);
   end;


  //==============================================================================
  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta1.Text<>datastr) then
  StrToDate(medta1.Text);
  if (medta2.Text<>datastr) then
  StrToDate(medta2.Text);
  if (medta1.Text<>datastr) then
  if (medta2.Text<>datastr) then
  begin
    if (sqlTexto <> '') then
      sqlTexto := SqlTexto + ' and rec.EMISSAO between '
    else
      sqlTexto := ' Where rec.EMISSAO between ';

    sqlTexto := SqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
      ' and ' +
      '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  meDta1.SetFocus;
  end;
  end;

  //==============================================================================

  //==============================================================================
  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data do sistema foi preenchido
  //------------------------------------------------------------------------------
  try
  if (MaskEdit1.Text<>datastr) then
  StrToDate(MaskEdit1.Text);
  if (MaskEdit2.Text<>datastr) then
  StrToDate(MaskEdit2.Text);
  if (MaskEdit1.Text<>datastr) then
  if (MaskEdit2.Text<>datastr) then
  begin
    if (sqlTexto <> '') then
      sqlTexto := SqlTexto + ' and cast(rec.DATASISTEMA as date )between '
    else
      sqlTexto := ' Where cast(rec.DATASISTEMA as date )  between ';

    sqlTexto := SqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(MaskEdit1.Text)) + '''' +
      ' and ' +
      '''' + formatdatetime('mm/dd/yy', StrToDate(MaskEdit2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  MaskEdit1.SetFocus;
  end;
  end;
  //==============================================================================


  //------------------------------------------------------------------------------
  //Verifica se a data de vencimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta3.Text<>datastr) then
  StrToDate(medta3.Text);
  if (medta4.Text<>datastr) then
  StrToDate(medta4.Text);
  if (medta3.Text<>datastr) then
  if (medta4.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.DATAVENCIMENTO between '
    else
      sqlTexto := sqlTexto + ' and rec.DATAVENCIMENTO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta3.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta4.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa3.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de Recebimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta5.Text<>datastr) then
  StrToDate(medta5.Text);
  if (medta6.Text<>datastr) then
  StrToDate(medta6.Text);
  if (medta5.Text<>datastr) then
  if (medta6.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.DATAPAGAMENTO between '
    else
      sqlTexto := sqlTexto + ' and rec.DATAPAGAMENTO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta5.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta6.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa5.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de Incluido foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medt1.Text<>datastr) then
  StrToDate(medt1.Text);
  if (medt2.Text<>datastr) then
  StrToDate(medt2.Text);
  if (medt1.Text<>datastr) then
  if (medt2.Text<>datastr) then
  begin
    if sqlTexto = '' then
      sqlTexto := sqlTexto + ' where rec.DATAINCLUSAO between '
    else
      sqlTexto := sqlTexto + ' and rec.DATAINCLUSAO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medt1.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medt2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa5.SetFocus;
  end;
  end;



  //==============================================================================
  //------------------------------------------------------------------------------
  //Status
  //------------------------------------------------------------------------------
  if (cbStatus.Text <> '') then
  begin
    case (cbStatus.ItemIndex) of
      0:  //Vencido
      begin
        if sqlTexto = '' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
        sqlTexto := sqlTexto + ' AND (rec.DATAVENCIMENTO >= CURRENT_DATE)';
      end;
      1:  // Pago
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
        sqlTexto := sqlTexto + ' AND (rec.DATAVENCIMENTO < CURRENT_DATE)';
      end;
      2:  // A Pagar ()
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
      end;
      3:  // Pago
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '7-' + ''')';
      end;
      4:  // Suspenso
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '8-' + ''')';
      end;
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Forma
  //------------------------------------------------------------------------------
  if (cbForma.Text <> '') then
  begin
    varCpProc := TUtils.create;
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.FORMAPAGAMENTO = '
    else
      SqlTexto := SqlTexto + ' AND (rec.FORMAPAGAMENTO = ';
    SqlTexto := SqlTexto + QuotedStr(varCpProc.pegaForma(cbForma.Text))  + ')';
  end;
  //==============================================================================



   //------------------------------------------------------------------------------
  //Numero Documento
  //------------------------------------------------------------------------------

  if(CheckBox1.Checked = true )then

  if (edNumeroDocumento.Text <> '') then
  begin
    if SqlTexto = '' then
      SqlTexto := SqlTexto + ' WHERE (rec.N_DOCUMENTO  = '
    else
      SqlTexto := SqlTexto + ' AND (rec.N_DOCUMENTO  = ';
    SqlTexto := SqlTexto + QuotedStr(edNumeroDocumento.Text) + ')';
  end
  else begin
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE ((rec.N_DOCUMENTO IS NULL) OR (rec.N_DOCUMENTO = ' + QuotedStr('') + '))  '
    else
      SqlTexto := SqlTexto + ' AND ((rec.N_DOCUMENTO IS NULL) OR (rec.N_DOCUMENTO = ' + QuotedStr('') + '))';
  end;

  //==============================================================================


  //com numero documento

  if(CheckBox2.Checked = true )then
  begin
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.N_DOCUMENTO  = '
    else
      SqlTexto := SqlTexto + ' AND (rec.N_DOCUMENTO  <> ';
    SqlTexto := SqlTexto + QuotedStr(edNumeroDocumento.Text) + ')';
  end ;

  //==============================================================================


  //Tipo Fornecedor
  //------------------------------------------------------------------------------
  if (not cdsTipoForn.Active) then
     cdsTipoForn.Open;
  cdsTipoForn.Locate('DESCRICAO', cbTipoFornecedor.Text,[loCaseInsensitive]);
  if (cbTipoFornecedor.Text <> '') then
  begin
    if (sqlTexto = '') then
      sqlTexto := sqlTexto + ' WHERE cli.REGIAO = '
    else
      sqlTexto := sqlTexto + ' AND cli.REGIAO = ';
      sqlTexto := sqlTexto + IntToStr(cdsTipoFornCODDADOS.AsInteger);
  end;
  //==============================================================================

  //------------------------------------------------------------------------------
  //Fornecedor
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.CODFORNECEDOR = '
    else
      sqlTexto := sqlTexto + ' and rec.CODFORNECEDOR = ';
      sqlTexto := sqlTexto + edCodCliente.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Centro de Custo
  //------------------------------------------------------------------------------
  if (not dm.cds_ccusto.Active) then
     dm.cds_ccusto.Open;
  dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
  if edCodCCusto.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE CODALMOXARIFADO = '
    else
      sqlTexto := sqlTexto + ' AND CODALMOXARIFADO = ';
      sqlTexto := sqlTexto + IntToStr(dm.cds_ccustoCODIGO.AsInteger);
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Vendedor
  //------------------------------------------------------------------------------
  if edCodVendedor.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where CODCOMPRADOR = '
    else
      sqlTexto := sqlTexto + ' and CODCOMPRADOR = ';
      sqlTexto := sqlTexto + edCodVendedor.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Título
  //------------------------------------------------------------------------------
  if edTitulo.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where TITULO ='
    else
      sqlTexto := sqlTexto + ' and TITULO LIKE';
      sqlTexto := sqlTexto + '''' + edTitulo.Text + '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Valor
  //------------------------------------------------------------------------------

  if edValor.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where VALORTITULO = '
    else
      sqlTexto := sqlTexto + ' and VALORTITULO = ';
      sqlTexto := sqlTexto +   edValor.Text;

  end;

  ///////////////////////////////////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  //==============================================================================
  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta1.Text<>datastr) then
  StrToDate(medta1.Text);
  if (medta2.Text<>datastr) then
  StrToDate(medta2.Text);
  if (medta1.Text<>datastr) then
  if (medta2.Text<>datastr) then
  begin
    if (sqlTextoX <> '') then
      sqlTextoX := SqlTexto + ' and rec.EMISSAO between '
    else
      sqlTextoX := ' where rec.EMISSAO between ';

    sqlTextoX := SqlTextoX + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
      ' and ' +
      '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  meDta1.SetFocus;
  end;
  end;
  //==============================================================================

  //==============================================================================
  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data do sistema foi preenchido
  //------------------------------------------------------------------------------
  try
  if (MaskEdit1.Text<>datastr) then
  StrToDate(MaskEdit1.Text);
  if (MaskEdit2.Text<>datastr) then
  StrToDate(MaskEdit2.Text);
  if (MaskEdit1.Text<>datastr) then
  if (MaskEdit2.Text<>datastr) then
  begin
    if (sqlTextoX <> '') then
      sqlTextoX := SqlTexto + ' and cast(rec.DATASISTEMA as date )between '
    else
      sqlTextoX := ' where cast(rec.DATASISTEMA as date )  between ';

    sqlTextoX := SqlTextoX + '''' + formatdatetime('mm/dd/yy', StrToDate(MaskEdit1.Text)) + '''' +
      ' and ' +
      '''' + formatdatetime('mm/dd/yy', StrToDate(MaskEdit2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  MaskEdit1.SetFocus;
  end;
  end;
  //==============================================================================


  //------------------------------------------------------------------------------
  //Verifica se a data de vencimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta3.Text<>datastr) then
  StrToDate(medta3.Text);
  if (medta4.Text<>datastr) then
  StrToDate(medta4.Text);
  if (medta3.Text<>datastr) then
  if (medta4.Text<>datastr) then
  begin
    if sqlTextoX='' then
      sqlTextoX := sqlTextoX + 'where rec.DATAVENCIMENTO between '
    else
      sqlTextoX := sqlTextoX + ' and rec.DATAVENCIMENTO between ';
      sqlTextoX := sqlTextoX + '''' + formatdatetime('mm/dd/yy', StrToDate(medta3.Text)) + '''';
      sqlTextoX := sqlTextoX + ' and ';
      sqlTextoX := sqlTextoX + '''' + formatdatetime('mm/dd/yy', StrToDate(medta4.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa3.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de Recebimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta5.Text<>datastr) then
  StrToDate(medta5.Text);
  if (medta6.Text<>datastr) then
  StrToDate(medta6.Text);
  if (medta5.Text<>datastr) then
  if (medta6.Text<>datastr) then
  begin
    if sqlTextoX='' then
      sqlTextoX := sqlTextoX + ' where rec.DATAPAGAMENTO between '
    else
      sqlTextoX := sqlTextoX + ' and rec.DATAPAGAMENTO between ';
      sqlTextoX := sqlTextoX + '''' + formatdatetime('mm/dd/yy', StrToDate(medta5.Text)) + '''';
      sqlTextoX := sqlTextoX + ' and ';
      sqlTextoX := sqlTextoX + '''' + formatdatetime('mm/dd/yy', StrToDate(medta6.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa5.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de Incluido foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medt1.Text<>datastr) then
  StrToDate(medt1.Text);
  if (medt2.Text<>datastr) then
  StrToDate(medt2.Text);
  if (medt1.Text<>datastr) then
  if (medt2.Text<>datastr) then
  begin
    if sqlTextoX = '' then
      sqlTextoX := sqlTextoX + ' where rec.DATAINCLUSAO between '
    else
      sqlTextoX := sqlTextoX + ' and rec.DATAINCLUSAO between ';
      sqlTextoX := sqlTextoX + '''' + formatdatetime('mm/dd/yy', StrToDate(medt1.Text)) + '''';
      sqlTextoX := sqlTextoX + ' and ';
      sqlTextoX := sqlTextoX + '''' + formatdatetime('mm/dd/yy', StrToDate(medt2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa5.SetFocus;
  end;
  end;



  //==============================================================================
  //------------------------------------------------------------------------------
  //Status
  //------------------------------------------------------------------------------
  if (cbStatus.Text <> '') then
  begin
    case (cbStatus.ItemIndex) of
      0:  //Vencido
      begin
        if sqlTextoX = '' then
          sqlTextoX := sqlTextoX + ' where (rec.STATUS = '
        else
          sqlTextoX := sqlTextoX + ' AND (rec.STATUS = ';
        sqlTextoX := sqlTextoX + '''' + '5-' + ''')';
        sqlTextoX := sqlTextoX + ' AND (rec.DATAVENCIMENTO >= CURRENT_DATE)';
      end;
      1:  // Pago
      begin
        if sqlTextoX ='' then
          sqlTextoX := sqlTextoX + ' where (rec.STATUS = '
        else
          sqlTextoX := sqlTextoX + ' AND (rec.STATUS = ';
        sqlTextoX := sqlTextoX + '''' + '5-' + ''')';
        sqlTextoX := sqlTextoX + ' AND (rec.DATAVENCIMENTO < CURRENT_DATE)';
      end;
      2:  // A Pagar ()
      begin
        if sqlTextoX ='' then
          sqlTextoX := sqlTextoX + ' where (rec.STATUS = '
        else
          sqlTextoX := sqlTextoX + ' AND (rec.STATUS = ';
        sqlTextoX := sqlTextoX + '''' + '5-' + ''')';
      end;
      3:  // Pago
      begin
        if sqlTextoX ='' then
          sqlTextoX := sqlTextoX + ' where (rec.STATUS = '
        else
          sqlTextoX := sqlTextoX + ' AND (rec.STATUS = ';
        sqlTextoX := sqlTextoX + '''' + '7-' + ''')';
      end;
      4:  // Suspenso
      begin
        if sqlTextoX ='' then
          sqlTextoX := sqlTextoX + ' where (rec.STATUS = '
        else
          sqlTextoX := sqlTextoX + ' AND (rec.STATUS = ';
        sqlTextoX := sqlTextoX + '''' + '8-' + ''')';
      end;
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Forma
  //------------------------------------------------------------------------------
  if (cbForma.Text <> '') then
  begin
    varCpProc := TUtils.create;
    if SqlTextoX ='' then
      SqlTextoX := SqlTextoX + ' where(rec.FORMAPAGAMENTO = '
    else
      SqlTextoX := SqlTextoX + ' AND (rec.FORMAPAGAMENTO = ';
    SqlTextoX := SqlTextoX + QuotedStr(varCpProc.pegaForma(cbForma.Text))  + ')';
  end;
  //==============================================================================



   //------------------------------------------------------------------------------
  //Numero Documento
  //------------------------------------------------------------------------------

  if(CheckBox1.Checked = true )then

  if (edNumeroDocumento.Text <> '') then
  begin
    if SqlTextoX = '' then
      SqlTextoX := SqlTextoX + ' where (rec.N_DOCUMENTO  = '
    else
      SqlTextoX := SqlTextoX + ' AND (rec.N_DOCUMENTO  = ';
    SqlTextoX := SqlTextoX + QuotedStr(edNumeroDocumento.Text) + ')';
  end
  else begin
    if SqlTextoX ='' then
      SqlTextoX := SqlTextoX + ' where ((rec.N_DOCUMENTO IS NULL) OR (rec.N_DOCUMENTO = ' + QuotedStr('') + '))  '
    else
      SqlTextoX := SqlTextoX + ' AND ((rec.N_DOCUMENTO IS NULL) OR (rec.N_DOCUMENTO = ' + QuotedStr('') + '))';
  end;

  //==============================================================================


  //com numero documento

  if(CheckBox2.Checked = true )then
  begin
    if SqlTextoX ='' then
      SqlTextoX := SqlTextoX + ' where(rec.N_DOCUMENTO  = '
    else
      SqlTextoX := SqlTextoX + ' AND (rec.N_DOCUMENTO  <> ';
    SqlTextoX := SqlTextoX + QuotedStr(edNumeroDocumento.Text) + ')';
  end ;

  //==============================================================================


  //Tipo Fornecedor
  //------------------------------------------------------------------------------
  if (not cdsTipoForn.Active) then
     cdsTipoForn.Open;
  cdsTipoForn.Locate('DESCRICAO', cbTipoFornecedor.Text,[loCaseInsensitive]);
  if (cbTipoFornecedor.Text <> '') then
  begin
    if (sqlTextoX = '') then
      sqlTextoX := sqlTextoX + ' where cli.REGIAO = '
    else
      sqlTextoX := sqlTextoX + ' AND cli.REGIAO = ';
      sqlTextoX := sqlTextoX + IntToStr(cdsTipoFornCODDADOS.AsInteger);
  end;
  //==============================================================================

  //------------------------------------------------------------------------------
  //Fornecedor
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if sqlTextoX ='' then
      sqlTextoX := sqlTextoX + ' where rec.CODFORNECEDOR = '
    else
      sqlTextoX := sqlTextoX + ' and rec.CODFORNECEDOR = ';
      sqlTextoX := sqlTextoX + edCodCliente.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Centro de Custo
  //------------------------------------------------------------------------------
  if (not dm.cds_ccusto.Active) then
     dm.cds_ccusto.Open;
  dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
  if edCodCCusto.Text<>'' then
  begin
    if sqlTextoX ='' then
      sqlTextoX := sqlTextoX + ' where CODALMOXARIFADO = '
    else
      sqlTextoX := sqlTextoX + ' AND CODALMOXARIFADO = ';
      sqlTextoX := sqlTextoX + IntToStr(dm.cds_ccustoCODIGO.AsInteger);
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Vendedor
  //------------------------------------------------------------------------------
  if edCodVendedor.Text<>'' then
  begin
    if sqlTextoX ='' then
      sqlTextoX := sqlTextoX + ' where CODCOMPRADOR = '
    else
      sqlTextoX := sqlTextoX + ' and CODCOMPRADOR = ';
      sqlTextoX := sqlTextoX + edCodVendedor.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Título
  //------------------------------------------------------------------------------
  if edTitulo.Text<>'' then
  begin
    if sqlTextoX ='' then
      sqlTextoX := sqlTextoX + ' where TITULO ='
    else
      sqlTextoX := sqlTextoX + ' and TITULO LIKE';
      sqlTextoX := sqlTextoX + '''' + edTitulo.Text + '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Valor
  //------------------------------------------------------------------------------

  if edValor.Text<>'' then
  begin
    if sqlTextoX ='' then
      sqlTextoX := sqlTextoX + ' where VALORTITULO = '
    else
      sqlTextoX := sqlTextoX + ' and VALORTITULO = ';
      sqlTextoX := sqlTextoX +   edValor.Text;

  end;

  ///////////////////////////////////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

  // So valores Positivos 08/08/2012
  //==============================================================================
  //   sqlTexto := sqlTexto + 'and rec.VALORTITULO > 0 ';
  //------------------------------------------------------------------------------

  //Somente títulos com valores > 0
  //------------------------------------------------------------------------------
    {11/12/07 - Carlos }
    {if sqlTexto='' then
      sqlTexto := sqlTexto + ' where VALORTITULO > 0 '
    else
      sqlTexto := sqlTexto + ' and VALORTITULO > 0 ';}
  //==============================================================================

  sql2 := ' group by cli.NOMEFORNECEDOR,rec.DATAVENCIMENTO,  rec.CODFORNECEDOR,rec.CAIXA , rec.formapagamento ,'
            + ' rec.EMISSAO, '
            + ' rec.TITULO,  '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + '  rec.VIA, rec.N_DOCUMENTO, rec.dp, rec.dup_rec_nf' +
            ' ,plano.NOME ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO ';

  sql3 := ' group by cli.NOMEFORNECEDOR,rec.DATAVENCIMENTO,  rec.CODFORNECEDOR,rec.CAIXA , rec.formapagamento ,'
            + ' rec.EMISSAO, '
            + ' rec.TITULO,  '
            + ' rec.STATUS, rec.DATAPAGAMENTO,rec.CODPAGAMENTO, '
            + '  rec.VIA, rec.N_DOCUMENTO, rec.dp, rec.dup_rec_nf' +
            ' ,plano.NOME ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO ';


  cds1.CommandText := sqlTexto3 + sqlTextoX + sql2;
  cds2.CommandText := sqlTexto5 + sqlTexto + sql3;

                               // inicio teste lista Positivo depois negativo na sequencia
  cds1.CommandText := '';

  if (medta3.Text = '  /  /  ') then
  medta3.Text :='01/01/2005';
  if (medta4.Text = '  /  /  ') then
  medta4.Text :='01/01/2019';
  if (edNumeroDocumento.Text = '') then
  edNumeroDocumento.Text := 't';
  if (edCodCliente.Text = '') then
  edCodCliente.Text := '9999999' ;
  if (edTitulo.Text = '') then
  edTitulo.Text := 't';

    str_sql :='SELECT * from PAGTOX(' +
              QuotedStr(formatdatetime('mm/dd/yy', StrToDateTime(meDta3.Text)))+ ','+
              QuotedStr(formatdatetime('mm/dd/yy', StrToDateTime(meDta4.Text)))+ ','+
              QuotedStr(edNumeroDocumento.Text) + ',' +
              QuotedStr(edCodCliente.Text) + ','+
              QuotedStr(edTitulo.Text) +
              ')';
  cds1.CommandText:= str_sql;
                                    /// fim  teste lista Positivo depois negativo na sequencia
  medta3.Text :='  /  /  ';
  medta4.Text :='  /  /  ';
  edNumeroDocumento.Text := '';
  edCodCliente.Text := '' ;
  edTitulo.Text := '';

  cds1.Open;
  cds2.Open;
  sqlTexto2 := 'SELECT SUM(TOTALTITULO), SUM(TOTALPAGO), SUM(TOTALPENDENTE)' +
    ' FROM PAG_TOTAIS(';
  if cbStatus.Text<>'' then
  begin
    if copy(cbStatus.Text,0,2) <> '11' then
    begin
      if ((copy(cbStatus.Text,0,2) = '1-') or (copy(cbStatus.Text,0,2) = '2-')) then
        sqlTexto2 := sqlTexto2 + '''' + '5-' + ''')'
      else
        sqlTexto2 := sqlTexto2 + '''' + copy(cbStatus.Text,0,2) + ''')';
    end
    else
      sqlTexto2 := sqlTexto2 + QuotedStr('00') + ')';
  end
  else
    sqlTexto2 := sqlTexto2 + QuotedStr('00') + ')';

  Try
    if (cds_total.Active) then
      cds_total.Close;

    cds_total.CommandText := sqlTexto2 + ' REC ' + SqlTexto;
    cds_total.Open;
    if (not cds1.IsEmpty) then
    begin
      if (cds1TotTitulo.Value <> 0.001) then
        JvCalcEdit1.Text := cds1TotTitulo.Value
      //   JvCalcEdit1.Text :=  cds_total.Fields[0].Value
      else
        JvCalcEdit1.Text := '0';

      if (cds1TotPendente.Value > 0.001) then
        JvCalcEdit2.Text := cds1TotPendente.Value
       // JvCalcEdit2.Text := cds_total.Fields[1].Value;
      else
        JvCalcEdit2.Text := '0';

      if (cds1TotPago.Value <> 0.001) then
        JvCalcEdit3.Text := cds1TotPago.Value
     //   JvCalcEdit3.Text := cds_total.Fields[2].Value ;
      else
        JvCalcEdit3.Text := '0';
    end;
  Except
    ShowMessage ('Não existe dados para essa consulta');
  end;
  DBGrid2.SetFocus;

{ Var
 DataStr, sql2,sqlTexto2 , sqlpg : String;
 varCpProc : TUtils;
begin
  sqlTexto1 := '';
  sqlTexto := '';
  if scdsCr_proc.Active then
    scdsCr_proc.Close;
  sqlTexto1 := 'select rec.dp, rec.dup_rec_nf, rec.CODPAGAMENTO, rec.TITULO, rec.EMISSAO,rec.DATACONSOLIDA, '
   + ' rec.DATAVENCIMENTO ,rec.OUTRO_CREDITO,rec.CODFORNECEDOR, rec.VALORTITULO, rec.VALOR_RESTO, rec.VALOR_PRIM_VIA,rec.CONTACREDITO, '
   + ' CASE rec.STATUS WHEN ' + '''5-''' + ' THEN ' + '''PENDENTE'''
   + ' when ' + '''8-''' + ' then ' + '''DESCONTO'''
   + ' END AS STATUS, rec.DATAPAGAMENTO, '
   //+ '  rec.DATAPAGAMENTO, '
   + 'sum( CASE when rec.VALORRECEBIDO  > 0 then rec.VALORRECEBIDO else 0 end + CASE when FUNRURAL > 0 then FUNRURAL else 0 end + CASE when JUROS > 0 then JUROS else 0 end) as VALORRECEBIDO, rec.VIA, rec.N_DOCUMENTO '
   + ' , cli.NOMEFORNECEDOR, ' +
   'SUM(CASE when rec.VALOR_RESTO > 0 then rec.VALOR_RESTO else 0 end - CASE when rec.VALORRECEBIDO  > 0 then rec.VALORRECEBIDO else 0 end ' +
   ' - CASE when rec.DESCONTO > 0 then rec.DESCONTO else 0 end - CASE when rec.PERDA > 0 then rec.PERDA else 0 end) as VALORREC' +
   ' ,plano.NOME, rec.HISTORICO from PAGAMENTO rec ' +
   ' inner join FORNECEDOR cli on cli.CODFORNECEDOR=rec.CODFORNECEDOR ';
   case rbTipoConta.ItemIndex of
     0 : sqlTexto1 := sqlTexto1 + ' inner join PLANO plano on plano.CODIGO = rec.CAIXA ';
     1 : sqlTexto1 := sqlTexto1 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ' +
       ' inner join compra comp on comp.codCompra = rec.CODCompra ';
     2 : sqlTexto1 := sqlTexto1 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ';
   end;
   scdsCr_proc.CommandText := sqlTexto1;

   if (cbConta.Text <> '') then
   begin
     if (not DM.c_1_planoc.Active) then
     begin
       if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
       dm.cds_parametro.Params[0].Clear;
       dm.cds_parametro.Params[0].AsString := 'CONTASDESPESAS';
       dm.cds_parametro.Open;
       DM.c_1_planoc.CommandText := 'Select * from PLANO WHERE ' +
         'plnctaroot(conta) = ''' + dm.cds_parametroDADOS.AsString + '''' +
         ' and CONSOLIDA = ''S''' + ' order by NOME';
       DM.c_1_planoc.Open;
       dm.cds_parametro.Close;
     end;
     dm.c_1_planoc.Locate('NOME', cbConta.text, [loCaseInsensitive]);
       sqlTexto := ' Where rec.CONTACREDITO = ' + IntToStr(Dm.c_1_planocCODIGO.AsInteger);
   end;

  //==============================================================================
  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta1.Text<>datastr) then
  StrToDate(medta1.Text);
  if (medta2.Text<>datastr) then
  StrToDate(medta2.Text);
  if (medta1.Text<>datastr) then
  if (medta2.Text<>datastr) then
  begin
    if (sqlTexto <> '') then
      sqlTexto := SqlTexto + ' and rec.EMISSAO between '
    else
      sqlTexto := ' Where rec.EMISSAO between ';

    sqlTexto := SqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
      ' and ' +
      '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  meDta1.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de vencimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta3.Text<>datastr) then
  StrToDate(medta3.Text);
  if (medta4.Text<>datastr) then
  StrToDate(medta4.Text);
  if (medta3.Text<>datastr) then
  if (medta4.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.DATAVENCIMENTO between '
    else
      sqlTexto := sqlTexto + ' and rec.DATAVENCIMENTO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta3.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta4.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa3.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de Recebimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta5.Text<>datastr) then
  StrToDate(medta5.Text);
  if (medta6.Text<>datastr) then
  StrToDate(medta6.Text);
  if (medta5.Text<>datastr) then
  if (medta6.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.DATAPAGAMENTO between '
    else
      sqlTexto := sqlTexto + ' and rec.DATAPAGAMENTO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta5.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta6.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa5.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Status
  //------------------------------------------------------------------------------
  if (cbStatus.Text <> '') then
  begin
    case (cbStatus.ItemIndex) of
  }
 //18/11
     { 0:  //Vencido
      begin
        if sqlTexto = '' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
        sqlTexto := sqlTexto + ' AND (rec.DATAVENCIMENTO >= CURRENT_DATE)';
      end;
      1:  // Pago
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
        sqlTexto := sqlTexto + ' AND (rec.DATAVENCIMENTO < CURRENT_DATE)';
      end; }
    //  2:  // A Pagar ()
 {18/11     begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
      end;
 }
     { 3:  // Pago
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '7-' + ''')';
      end; }
    //  4:  // Suspenso
 {18/11     begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '8-' + ''')';
      end;
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Forma
  //------------------------------------------------------------------------------
  if (cbForma.Text <> '') then
  begin
    varCpProc := TUtils.create;
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.FORMAPAGAMENTO = '
    else
      SqlTexto := SqlTexto + ' AND (rec.FORMAPAGAMENTO = ';
    SqlTexto := SqlTexto + QuotedStr(varCpProc.pegaForma(cbForma.Text))  + ')';
  end;
  //==============================================================================



   //------------------------------------------------------------------------------
  //Numero Documento
  //------------------------------------------------------------------------------

  if(CheckBox1.Checked = true )then

  if (edNumeroDocumento.Text <> '') then
  begin
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.N_DOCUMENTO  = '
    else
      SqlTexto := SqlTexto + ' AND (rec.N_DOCUMENTO  = ';
    SqlTexto := SqlTexto + QuotedStr(edNumeroDocumento.Text) + ')';
  end
  else begin
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE ((rec.N_DOCUMENTO IS NULL) OR (rec.N_DOCUMENTO = ' + QuotedStr('') + '))  '
    else
      SqlTexto := SqlTexto + ' AND ((rec.N_DOCUMENTO IS NULL) OR (rec.N_DOCUMENTO = ' + QuotedStr('') + '))';
  end;

  //==============================================================================


  //com numero documento

  if(CheckBox2.Checked = true )then
  begin
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.N_DOCUMENTO  = '
    else
      SqlTexto := SqlTexto + ' AND (rec.N_DOCUMENTO  <> ';
    SqlTexto := SqlTexto + QuotedStr(edNumeroDocumento.Text) + ')';
  end ;

  //==============================================================================


  //Tipo Fornecedor
  //------------------------------------------------------------------------------
  if (not cdsTipoForn.Active) then
     cdsTipoForn.Open;
  cdsTipoForn.Locate('DESCRICAO', cbTipoFornecedor.Text,[loCaseInsensitive]);
  if (cbTipoFornecedor.Text <> '') then
  begin
    if (sqlTexto = '') then
      sqlTexto := sqlTexto + ' WHERE cli.REGIAO = '
    else
      sqlTexto := sqlTexto + ' AND cli.REGIAO = ';
      sqlTexto := sqlTexto + IntToStr(cdsTipoFornCODDADOS.AsInteger);
  end;
  //==============================================================================

  //------------------------------------------------------------------------------
  //Fornecedor
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.CODFORNECEDOR = '
    else
      sqlTexto := sqlTexto + ' and rec.CODFORNECEDOR = ';
      sqlTexto := sqlTexto + edCodCliente.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Centro de Custo
  //------------------------------------------------------------------------------
  if (not dm.cds_ccusto.Active) then
     dm.cds_ccusto.Open;
  dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
  if edCodCCusto.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE CODALMOXARIFADO = '
    else
      sqlTexto := sqlTexto + ' AND CODALMOXARIFADO = ';
      sqlTexto := sqlTexto + IntToStr(dm.cds_ccustoCODIGO.AsInteger);
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Vendedor
  //------------------------------------------------------------------------------
  if edCodVendedor.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where CODCOMPRADOR = '
    else
      sqlTexto := sqlTexto + ' and CODCOMPRADOR = ';
      sqlTexto := sqlTexto + edCodVendedor.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Título
  //------------------------------------------------------------------------------
  if edTitulo.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where TITULO = '
    else
      sqlTexto := sqlTexto + ' and TITULO = ';
      sqlTexto := sqlTexto + '''' + edTitulo.Text + '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Valor
  //------------------------------------------------------------------------------

  if edValor.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where VALORTITULO = '
    else
      sqlTexto := sqlTexto + ' and VALORTITULO = ';
      sqlTexto := sqlTexto +   edValor.Text;

  end;

  //==============================================================================

  //------------------------------------------------------------------------------
  //Somente títulos com valores > 0
  //------------------------------------------------------------------------------
    {11/12/07 - Carlos }
    {if sqlTexto='' then
      sqlTexto := sqlTexto + ' where VALORTITULO > 0 '
    else
      sqlTexto := sqlTexto + ' and VALORTITULO > 0 ';}
  //==============================================================================
  {18/11
  sql2 := ' group by rec.DATAVENCIMENTO, cli.NOMEFORNECEDOR, rec.CODFORNECEDOR, '
            + ' rec.EMISSAO, rec.CODPAGAMENTO,rec.OUTRO_CREDITO , '
            + ' rec.TITULO,  rec.VALOR_RESTO, rec.VALORTITULO, '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + ' rec.VIA, rec.N_DOCUMENTO, rec.VALOR_PRIM_VIA, rec.dp, rec.dup_rec_nf' +
            ' ,plano.NOME ,rec.CONTACREDITO, rec.HISTORICO ,rec.DATACONSOLIDA';



  sqlpg := ' and rec.STATUS <> ' + '''7-''' ;
  scdsCr_proc.CommandText := sqlTexto1 + (sqlTexto + sqlpg) + sql2;

 //sqlpg := ' and  ((rec.STATUS = 5- )' or '(rec.STATUS = 8- ))' ;

// scdsCr_proc.CommandText := sqlTexto1 + sqlTexto + sql2;
  scdsCr_proc.Open;

  {sqlTexto2 := 'SELECT SUM(TOTALTITULO), SUM(TOTALPAGO), SUM(TOTALPENDENTE)' +
    ' FROM PAG_TOTAIS(';
  if cbStatus.Text<>'' then
  begin
    if copy(cbStatus.Text,0,2) <> '11' then
    begin
      if ((copy(cbStatus.Text,0,2) = '1-') or (copy(cbStatus.Text,0,2) = '2-')) then
        sqlTexto2 := sqlTexto2 + '''' + '5-' + ''')'
      else
        sqlTexto2 := sqlTexto2 + '''' + copy(cbStatus.Text,0,2) + ''')';
    end
    else
      sqlTexto2 := sqlTexto2 + QuotedStr('00') + ')';
  end
  else
    sqlTexto2 := sqlTexto2 + QuotedStr('00') + ')';
    }
 {18/111
  Try
    {if (cds_total.Active) then
      cds_total.Close;

    cds_total.CommandText := sqlTexto2 + ' REC ' + SqlTexto;
    {cds_total.Open;}
{18/11    if (not scdsCr_proc.IsEmpty) then
    begin
      if (scdsCr_procTotTitulo.Value > 0.001) then
        JvCalcEdit1.Text := scdsCr_procTotTitulo.Value
      else
        JvCalcEdit1.Text := '0';

      if (scdsCr_procTotPendente.Value > 0.001) then
        JvCalcEdit2.Text := scdsCr_procTotPendente.Value
      else
        JvCalcEdit2.Text := '0';

      if (scdsCr_procTotPago.Value > 0.001) then
        JvCalcEdit3.Text := scdsCr_procTotPago.Value
      else
        JvCalcEdit3.Text := '0';
    end;
  Except
    ShowMessage ('Não existe dados para essa consulta');
  end;
  DBGrid1.SetFocus;
  }
end;

procedure TfCpProc.BitBtn18Click(Sender: TObject);
  var
   sqlGrupo: String;
   data1,data2,conta,tipo,situacao , centro :TRpLabel;
begin
//  repContasReceber.Report.Params.ParamByName('PVENDA').Value := dm.cds_vendaCODVENDA.AsInteger;

 sqlGrupo  := ' group by cli.NOMEFORNECEDOR,rec.DATAVENCIMENTO,  rec.CODFORNECEDOR,rec.CAIXA , rec.formapagamento ,'
            + ' rec.EMISSAO,  '
            + ' rec.TITULO,  '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + ' rec.VIA, rec.N_DOCUMENTO, rec.dp, rec.dup_rec_nf' +
            ' ,plano.NOME ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO  ';

  repContasReceber.FileName := str_relatorio + 'rel_cpFiltroSintetico.rep';
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlTexto3 + sqlTexto + sqlGrupo;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel6'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  conta:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel16'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel17'));
  situacao := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  centro  := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel19'));

   // Situacao
  if((cbStatus.Text <> '')or(cbStatus.Text = '') ) then
  begin
    situacao.Text := cbStatus.Text;
  end;
  if(cbStatus.Text = '1-A Vencer')  then
  situacao.Text := ': Situação = A Vencer';
  if(cbStatus.Text = '2-Vencido')  then
  situacao.Text := ': Situação = Vencido';
  if(cbStatus.Text = '5-A Pagar')  then
  situacao.Text := ': Situação = A Pagar';
  if(cbStatus.Text = '7-Pago')  then
  situacao.Text := ': Situação = PAGO';
  if(cbStatus.Text = '8-Suspenso')  then
  situacao.Text := ': Situação = Suspenso';
  if(cbStatus.Text = '11-Todos')  then
  situacao.Text := ': Situação = Todos';
  if(cbStatus.Text = '14-Cancelado')  then
  situacao.Text := ': Situação = Cancelado';

   // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;


  // Conta
  if((cbConta.Text <> '')or(cbConta.Text = '') ) then
  begin
    conta.Text := cbConta.Text;
  end;

  //Entrada
  if (medt1.text <> '  /  /  ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
    ComboBox1.Text := 'Data de Entrada';
  end;

  //Emissão
  if (meDta1.text <> '  /  /  ')then
  begin
    data1.Text := meDta1.Text;
    data2.Text := meDta2.Text;
    ComboBox1.Text := 'Data de Emissão';
  end;

  //Pagamento
  if (meDta5.text <> '  /  /  ') then
  begin
    data1.Text := meDta5.Text;
    data2.Text := meDta6.Text;
    ComboBox1.Text := 'Data de Pagamento';
  end;

   //Vencimento
  if (meDta3.text <> '  /  /  ') then
  begin
    data1.Text := meDta3.Text;
    data2.Text := meDta4.Text;
    ComboBox1.Text := 'Data de Vencimento';
  end;

  // Tipo de data
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '')) then
  begin
    tipo.Text := ComboBox1.Text;
  end;

  repContasReceber.Execute;
  data1.Text := '';
  data2.Text := '';
  conta.Text := '';
  tipo.Text := '';
  centro.Text := '';
{
begin
    repContasReceber.Filename := str_relatorio + 'rel_FiltroP.rep';
    repContasReceber.Title := repContasReceber.Filename;
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    if (edCodCliente.Text = '') then
      repContasReceber.Report.Params.ParamByName('CODFORNECEDOR').Value := 9999999
    else
    repContasReceber.Report.Params.ParamByName('CODFORNECEDOR').Value := edCodCliente.Text;
    repContasReceber.Report.Params.ParamByName('DATAINI').Value := formatdatetime('dd/mm/yy', StrToDate(meDta3.Text));
    repContasReceber.Report.Params.ParamByName('DATAFIN').Value := formatdatetime('dd/mm/yy', StrToDate(meDta4.Text));
    repContasReceber.Execute;
  }
end;

procedure TfCpProc.BitBtn17Click(Sender: TObject);
begin
    medt1.Clear;
    medt2.Clear;
        ComboBox1.Text := '';
end;

procedure TfCpProc.DBGrid2TitleClick(Column: TColumn);
begin
   cds1.IndexFieldNames := Column.FieldName;
end;

procedure TfCpProc.marcarTodosClick1Click(Sender: TObject);
begin
  if (scdsCr_proc.Active) then
  begin
      scdsCr_proc.First;
      scdsCr_proc.DisableControls;
      while not scdsCr_proc.Eof do
      begin
        if scdsCr_proc.State = dsBrowse then
           scdsCr_proc.Edit;
        scdsCr_procDUP_REC_NF.AsString := 'S';
        scdsCr_procDP.AsInteger := 0;
        scdsCr_proc.Post;
        scdsCr_proc.Next;
      end;
      scdsCr_proc.First;
      scdsCr_proc.EnableControls;
  end;
end;

procedure TfCpProc.DesmarcarSeleo1Click(Sender: TObject);
begin
  if (scdsCr_proc.Active) then
  begin
      scdsCr_proc.First;
      scdsCr_proc.DisableControls;
      while not scdsCr_proc.Eof do
      begin
        if scdsCr_proc.State = dsBrowse then
           scdsCr_proc.Edit;
        scdsCr_procDUP_REC_NF.AsString := '';
        scdsCr_procDP.Clear;
        scdsCr_proc.Post;
        scdsCr_proc.Next;
      end;
      scdsCr_proc.First;
      scdsCr_proc.EnableControls;
  end;
end;

procedure TfCpProc.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = cds1STATUS then
   if ((cds1STATUS.AsString = '5-')) then
   begin
     DBGrid2.Canvas.Font.Color := clRed;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = cds1STATUS then
   if (cds1STATUS.AsString = '7-') then
   begin
     DBGrid2.Canvas.Font.Color := clBlue;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = cds1STATUS then
   if (cds1STATUS.AsString = '8-') then
   begin
     DBGrid2.Canvas.Font.Color := clYellow;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  ChkDBGridDrawColumnCell2(Sender as TDBGrid, Rect,
    DataCol, Column, State);
end;

procedure TfCpProc.DBGrid2CellClick(Column: TColumn);
begin
  ChkDBGridCellClick2(Column);
end;

procedure TfCpProc.DBGrid2ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter2(Sender as TDBGrid);
end;

procedure TfCpProc.ChkDBGridDrawColumnCell2(DBGrid: TDBGrid;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'cds1DUP_REC_NF') then
  begin
    // Fill the cell with the background color
    DBGrid2.Canvas.FillRect(Rect);
    // Determine the position of the graphic inside the cell
    case Column.Alignment of
      taRightJustify:
        X := Rect.Right - 2 - 16;
      taCenter:
        X := (Rect.Right - Rect.Left - 16) div 2 + Rect.Left;
      else // taLeftJustify:
        X := Rect.Left + 2;
    end;
    Y := (Rect.Bottom - Rect.Top - 16) div 2 + Rect.Top;
    // Determine the image to be used
    // if Field.AsBoolean then Index := 1 else Index := 0;
    if cds1DUP_REC_NF.AsString <> 'S' then Index := 1 else Index := 0;
    // Draw the graphic
    ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
  end else // Default drawing
    DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfCpProc.ChkDBGridKeyPress2(DBGrid: TDBGrid; var Key: Char);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cds1DUP_REC_NF') then
    if (Key = ' ') and Field.CanModify and
        not DBGrid.Columns[DBGrid.SelectedIndex].ReadOnly then
      with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
        //Field.AsBoolean := not Field.AsBoolean;
      if (cds1DUP_REC_NF.AsString <> 'S') then
      begin
        cds1DUP_REC_NF.AsString := 'S';
        cds1DP.AsInteger := 0;
        cds1.Post;
      end
      else begin
        cds1DUP_REC_NF.AsString := '';
        cds1DP.Clear;
      end;
  end;
end;

procedure TfCpProc.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
 ChkDBGridKeyPress2(Sender as TDBGrid, Key);
end;

procedure TfCpProc.ChkDBGridCellClick2(Column: TColumn);
var
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'cds1DUP_REC_NF')
      and Field.CanModify and not Column.ReadOnly then
  with Field.Dataset do
  begin
    if State = dsBrowse then
      Edit;
    if (cds1DUP_REC_NF.AsString <> 'S') then
    begin
      cds1DUP_REC_NF.AsString := 'S';
      cds1DP.AsInteger := 0;
      cds1.Post;
    end
    else begin
      cds1DUP_REC_NF.AsString := '';
      cds1DP.Clear;;
    end;
  end;
end;

procedure TfCpProc.ChkDBGridColEnter2(DBGrid: TDBGrid);
var  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cds1DUP_REC_NF') then
    DBGrid.Options := DBGrid.Options - [dgEditing];

end;

procedure TfCpProc.ChkDBGridColExit2(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cds1DUP_REC_NF') then
    DBGrid.Options := DBGrid.Options + [dgEditing];
end;

procedure TfCpProc.DBGrid2ColExit(Sender: TObject);
begin
  ChkDBGridColExit2(Sender as TDBGrid);
end;

procedure TfCpProc.DBGrid1ColExit(Sender: TObject);
begin
  ChkDBGridColExit(Sender as TDBGrid);
end;

procedure TfCpProc.btnPagarClick(Sender: TObject);
  var vlr, vlrrec, vlrdesc, vlrjuros, vlrfunrural, vlrperda: double;
  i, j , fornecedorSelecionado: integer;
begin
 try
    fornecedorSelecionado := 0;
   i := 1;
   vlr := 0;
   vlrrec := 0;
   vlrdesc := 0;
   vlrjuros := 0;
   vlrfunrural := 0;
   vlrperda := 0;
   // Se houve selecao de titulos entao gravo.
  if (cds1.ChangeCount > 0) then
   begin
     //teste := scdsCr_proc.CommandText;
     //scdsCr_proc.ApplyUpdates(-1);
   end
   else begin
     MessageDlg('Marque o título a ser baixado!', mtWarning, [mbOK], 0);
     exit;
   end;

   if (dm.cds_4_pagar.Active) then
     dm.cds_4_pagar.Close;
   dm.cds_4_pagar.Params[0].AsInteger := cds2CODPAGAMENTO.AsInteger;
   dm.cds_4_pagar.Open;
   dm.cds_4_pagar.Edit;
   cds2.DisableControls;
   cds2.First;
   While not cds2.Eof do
   begin
     if (cds1DUP_REC_NF.AsString = 'S') then
     begin
       if (fornecedorSelecionado = 0) then
         fornecedorSelecionado := cds2CODFORNECEDOR.AsInteger;
       if (fornecedorSelecionado <> cds2CODFORNECEDOR.AsInteger) then
       begin
         MessageDlg('Fornecedores diferentes selecionados.' + #10#13 +
           ' Operação disponível somente para o mesmo Fornecedor!', mtWarning, [mbOK], 0);
         scdsCr_proc.EnableControls;
         exit;
       end;
       setlength(nrec, i);
       nrec[i - 1] := cds2CODPAGAMENTO.AsInteger;
       if (fcptitulo.cds.active) then
         fcptitulo.cds.close;
       fcptitulo.cds.Params[0].AsInteger := cds2CODPAGAMENTO.AsInteger;
       fcptitulo.cds.Open;
       //if (fcrtitulo.cdsSUM.AsFloat = scdsCr_procVALORREC.AsFloat) then
       //begin
          vlr := vlr + fcptitulo.cdsSUM.AsFloat;
          vlrfunrural := vlrfunrural + fcptitulo.cdsSUM_1.AsFloat;
          vlrjuros := vlrjuros + fcptitulo.cdsSUM_2.AsFloat;
          vlrperda := vlrperda +  fcptitulo.cdsSUM_3.AsFloat;
          vlrdesc := vlrdesc +  fcptitulo.cdsSUM_4.AsFloat;
          if (fcptitulo.cdsSUM_5.AsFloat > 0) then
            vlrrec := vlrrec +  fcptitulo.cdsSUM_5.AsFloat;
       //end;
       i := i + 1;
     end;
     cds2.Next;
   end;
  cds2.EnableControls;
  if (dm.cds_4_pagar.State in [dsBrowse, dsInactive]) then
    dm.cds_4_pagar.Edit;
  // adicionei esse If em 05/10/06  "Edson"
  if (dm.cds_4_pagarSTATUS.AsString <> '1-') then
  dm.cds_4_pagarVALOR_RESTO.AsFloat := vlr;
  dm.cds_4_pagarFUNRURAL.AsFloat := vlrfunrural;
  dm.cds_4_pagarJUROS.AsFloat := vlrjuros;
  dm.cds_4_pagarPERDA.AsFloat := vlrperda;
  dm.cds_4_pagarDESCONTO.AsFloat := vlrdesc;
  if (fcptitulo.cdsSUM_5.AsFloat > 0) then
    dm.cds_4_pagarVALORRECEBIDO.AsFloat := vlrrec;
  dm.cds_4_pagarTITULO.AsString := 'Diversos';
  dm.cds_4_pagarCODCOMPRA.AsInteger := 0;
  fcptitulo.cds.close;
  if (dm.cds_4_pagarSTATUS.AsString = '7-') then
  begin
    fcpTitulo.btnCancela_Baixa.Enabled := True;
    fcpTitulo.BitBtn2.Enabled := False;
  end;
  fCpTitulo.ShowModal;
  finally
   fCpProc.DBGrid2.SetFocus;
   cds2.Close;
   cds2.Open;
  end;
end;

procedure TfCpProc.BitBtn19Click(Sender: TObject);
 Var
 DataStr, sql2,sqlTexto2: String;
 varCpProc : TUtils;
begin
  DBGrid1.Visible := False;
  DBGrid2.Visible := True;
  btnIncluir.Enabled := False;
  sqlTexto3 := '';
  sqlTexto := '';
  if cds1.Active then
    cds1.Close;
  sqlTexto3 := 'select  rec.dp, rec.dup_rec_nf,  rec.TITULO, rec.EMISSAO,rec.DATACONSOLIDA ,rec.CAIXA , rec.FORMAPAGAMENTO,'
   + ' rec.DATAVENCIMENTO ,rec.CODFORNECEDOR, sum(rec.VALORTITULO) as VALORTITULO ,sum(rec.VALOR_RESTO) as VALOR_RESTO , sum(rec.VALOR_PRIM_VIA) as VALOR_PRIM_VIA , '
   + ' CASE rec.STATUS WHEN ' + '''5-''' + ' THEN ' + '''PENDENTE''' + ' when ' + '''6-'''
   + ' then ' + '''PENDENTE CONTAB.''' +  ' when ' + '''7-''' + ' then ' + '''PAGO'''
   + ' when ' + '''8-''' + ' then ' + '''SUSPENSO'''
   + ' END AS STATUS, rec.DATAPAGAMENTO,rec.DATAINCLUSAO, '
   + ' sum(rec.VALORRECEBIDO + CASE when FUNRURAL > 0 then FUNRURAL else 0 end + CASE when JUROS > 0 then JUROS else 0 end) as VALORRECEBIDO, rec.VIA, rec.N_DOCUMENTO '
   + ' , cli.NOMEFORNECEDOR, ' +

      {
   'SUM(CASE when rec.VALOR_RESTO > 0 then rec.VALOR_RESTO else 0 end - CASE when rec.VALORRECEBIDO  > 0 then rec.VALORRECEBIDO else 0 end ' +
   ' - CASE when rec.DESCONTO > 0 then rec.DESCONTO else 0 end - CASE when rec.PERDA > 0 then rec.PERDA else 0 end) as VALORREC' +
   }
   ' SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC ' +
   ' ,plano.NOME from PAGAMENTO rec ' +
   ' inner join FORNECEDOR cli on cli.CODFORNECEDOR=rec.CODFORNECEDOR ';
   case rbTipoConta.ItemIndex of
     0 : sqlTexto3 := sqlTexto3 + ' inner join PLANO plano on plano.CODIGO = rec.CAIXA ';
     1 : sqlTexto3 := sqlTexto3 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ' +
       ' inner join compra comp on comp.codCompra = rec.CODCompra ';
     2 : sqlTexto3 := sqlTexto3 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ';
   end;
   cds1.CommandText := sqlTexto3;

   if (cbConta.Text <> '') then
   begin
     if (not DM.c_1_planoc.Active) then
     begin
       if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
       dm.cds_parametro.Params[0].Clear;
       dm.cds_parametro.Params[0].AsString := 'CONTASDESPESAS';
       dm.cds_parametro.Open;
       DM.c_1_planoc.CommandText := 'Select * from PLANO WHERE ' +
         'plnctaroot(conta) = ''' + dm.cds_parametroDADOS.AsString + '''' +
         ' and CONSOLIDA = ''S''' + ' order by NOME';
       DM.c_1_planoc.Open;
       dm.cds_parametro.Close;
     end;
     dm.c_1_planoc.Locate('NOME', cbConta.text, [loCaseInsensitive]);
       sqlTexto := ' Where rec.CONTACREDITO = ' + IntToStr(Dm.c_1_planocCODIGO.AsInteger);
   end;

  //==============================================================================
 // datastr:='  /  /  ';
  datastr:='  /  /    ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta1.Text<>datastr) then
  StrToDate(medta1.Text);
  if (medta2.Text<>datastr) then
  StrToDate(medta2.Text);
  if (medta1.Text<>datastr) then
  if (medta2.Text<>datastr) then
  begin
    if (sqlTexto <> '') then
      sqlTexto := SqlTexto + ' and rec.EMISSAO between '
    else
      sqlTexto := ' Where rec.EMISSAO between ';

    sqlTexto := SqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
      ' and ' +
      '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  meDta1.SetFocus;
  end;
  end;
  //==============================================================================

  //==============================================================================
 // datastr:='  /  /  ';
  datastr:='  /  /    ';
  //------------------------------------------------------------------------------
  //Verifica se a data do sistema foi preenchido
  //------------------------------------------------------------------------------
  try
  if (MaskEdit1.Text<>datastr) then
  StrToDate(MaskEdit1.Text);
  if (MaskEdit2.Text<>datastr) then
  StrToDate(MaskEdit2.Text);
  if (MaskEdit1.Text<>datastr) then
  if (MaskEdit2.Text<>datastr) then
  begin
    if (sqlTexto <> '') then
      sqlTexto := SqlTexto + ' and cast(rec.DATASISTEMA as date )between '
    else
      sqlTexto := ' Where cast(rec.DATASISTEMA as date )  between ';

    sqlTexto := SqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(MaskEdit1.Text)) + '''' +
      ' and ' +
      '''' + formatdatetime('mm/dd/yy', StrToDate(MaskEdit2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  MaskEdit1.SetFocus;
  end;
  end;
  //==============================================================================


  //------------------------------------------------------------------------------
  //Verifica se a data de vencimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta3.Text<>datastr) then
  StrToDate(medta3.Text);
  if (medta4.Text<>datastr) then
  StrToDate(medta4.Text);
  if (medta3.Text<>datastr) then
  if (medta4.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.DATAVENCIMENTO between '
    else
      sqlTexto := sqlTexto + ' and rec.DATAVENCIMENTO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta3.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta4.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa3.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de Recebimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta5.Text<>datastr) then
  StrToDate(medta5.Text);
  if (medta6.Text<>datastr) then
  StrToDate(medta6.Text);
  if (medta5.Text<>datastr) then
  if (medta6.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.DATAPAGAMENTO between '
    else
      sqlTexto := sqlTexto + ' and rec.DATAPAGAMENTO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta5.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta6.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa5.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de Incluido foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medt1.Text<>datastr) then
  StrToDate(medt1.Text);
  if (medt2.Text<>datastr) then
  StrToDate(medt2.Text);
  if (medt1.Text<>datastr) then
  if (medt2.Text<>datastr) then
  begin
    if sqlTexto = '' then
      sqlTexto := sqlTexto + ' where rec.DATAINCLUSAO between '
    else
      sqlTexto := sqlTexto + ' and rec.DATAINCLUSAO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medt1.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medt2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa5.SetFocus;
  end;
  end;

  //==============================================================================
  //------------------------------------------------------------------------------
  //Status
  //------------------------------------------------------------------------------
  if (cbStatus.Text <> '') then
  begin
    case (cbStatus.ItemIndex) of
      0:  //Vencido
      begin
        if sqlTexto = '' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
        sqlTexto := sqlTexto + ' AND (rec.DATAVENCIMENTO >= CURRENT_DATE)';
      end;
      1:  // Pago
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
        sqlTexto := sqlTexto + ' AND (rec.DATAVENCIMENTO < CURRENT_DATE)';
      end;
      2:  // A Pagar ()
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
      end;
      3:  // Pago
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '7-' + ''')';
      end;
      4:  // Suspenso
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '8-' + ''')';
      end;
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Forma
  //------------------------------------------------------------------------------
  if (cbForma.Text <> '') then
  begin
    varCpProc := TUtils.create;
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.FORMAPAGAMENTO = '
    else
      SqlTexto := SqlTexto + ' AND (rec.FORMAPAGAMENTO = ';
    SqlTexto := SqlTexto + QuotedStr(varCpProc.pegaForma(cbForma.Text))  + ')';
  end;
  //==============================================================================

   //------------------------------------------------------------------------------
  //Numero Documento
  //------------------------------------------------------------------------------

  if(CheckBox1.Checked = true )then

  if (edNumeroDocumento.Text <> '') then
  begin
    if SqlTexto = '' then
      SqlTexto := SqlTexto + ' WHERE (rec.N_DOCUMENTO  = '
    else
      SqlTexto := SqlTexto + ' AND (rec.N_DOCUMENTO  = ';
    SqlTexto := SqlTexto + QuotedStr(edNumeroDocumento.Text) + ')';
  end
  else begin
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE ((rec.N_DOCUMENTO IS NULL) OR (rec.N_DOCUMENTO = ' + QuotedStr('') + '))  '
    else
      SqlTexto := SqlTexto + ' AND ((rec.N_DOCUMENTO IS NULL) OR (rec.N_DOCUMENTO = ' + QuotedStr('') + '))';
  end;

  //==============================================================================

  //com numero documento

  if(CheckBox2.Checked = true )then
  begin
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.N_DOCUMENTO  = '
    else
      SqlTexto := SqlTexto + ' AND (rec.N_DOCUMENTO  <> ';
    SqlTexto := SqlTexto + QuotedStr(edNumeroDocumento.Text) + ')';
  end ;

  //==============================================================================
                                                   
  //Tipo Fornecedor
  //------------------------------------------------------------------------------
  if (not cdsTipoForn.Active) then
     cdsTipoForn.Open;
  cdsTipoForn.Locate('DESCRICAO', cbTipoFornecedor.Text,[loCaseInsensitive]);
  if (cbTipoFornecedor.Text <> '') then
  begin
    if (sqlTexto = '') then
      sqlTexto := sqlTexto + ' WHERE cli.REGIAO = '
    else
      sqlTexto := sqlTexto + ' AND cli.REGIAO = ';
      sqlTexto := sqlTexto + IntToStr(cdsTipoFornCODDADOS.AsInteger);
  end;
  //==============================================================================

  //------------------------------------------------------------------------------
  //Fornecedor
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.CODFORNECEDOR = '
    else
      sqlTexto := sqlTexto + ' and rec.CODFORNECEDOR = ';
      sqlTexto := sqlTexto + edCodCliente.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Centro de Custo
  //------------------------------------------------------------------------------
  if (not dm.cds_ccusto.Active) then
     dm.cds_ccusto.Open;
  dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
  if edCodCCusto.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE CODALMOXARIFADO = '
    else
      sqlTexto := sqlTexto + ' AND CODALMOXARIFADO = ';
      sqlTexto := sqlTexto + IntToStr(dm.cds_ccustoCODIGO.AsInteger);
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Vendedor
  //------------------------------------------------------------------------------
  if edCodVendedor.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where CODCOMPRADOR = '
    else
      sqlTexto := sqlTexto + ' and CODCOMPRADOR = ';
      sqlTexto := sqlTexto + edCodVendedor.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Título
  //------------------------------------------------------------------------------
  if edTitulo.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where TITULO ='
    else
      sqlTexto := sqlTexto + ' and TITULO LIKE';
      sqlTexto := sqlTexto + '''' + edTitulo.Text + '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Valor
  //------------------------------------------------------------------------------

  if edValor.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where VALORTITULO = '
    else
      sqlTexto := sqlTexto + ' and VALORTITULO = ';
      sqlTexto := sqlTexto +   edValor.Text;

  end;

  //==============================================================================

  //------------------------------------------------------------------------------
  //Somente títulos com valores > 0
  //------------------------------------------------------------------------------
    {11/12/07 - Carlos }
    {if sqlTexto='' then
      sqlTexto := sqlTexto + ' where VALORTITULO > 0 '
    else
      sqlTexto := sqlTexto + ' and VALORTITULO > 0 ';}
  //==============================================================================

  sql2 := ' group by cli.NOMEFORNECEDOR,rec.DATAVENCIMENTO,  rec.CODFORNECEDOR,rec.CAIXA , rec.formapagamento ,'
            + ' rec.EMISSAO, '
            + ' rec.TITULO,  '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + '  rec.VIA, rec.N_DOCUMENTO, rec.dp, rec.dup_rec_nf' +
            ' ,plano.NOME ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO ';

  cds1.CommandText := sqlTexto3 + sqlTexto + sql2;

  cds1.Open;

  sqlTexto2 := 'SELECT SUM(TOTALTITULO), SUM(TOTALPAGO), SUM(TOTALPENDENTE)' +
    ' FROM PAG_TOTAIS(';
  if cbStatus.Text<>'' then
  begin
    if copy(cbStatus.Text,0,2) <> '11' then
    begin
      if ((copy(cbStatus.Text,0,2) = '1-') or (copy(cbStatus.Text,0,2) = '2-')) then
        sqlTexto2 := sqlTexto2 + '''' + '5-' + ''')'
      else
        sqlTexto2 := sqlTexto2 + '''' + copy(cbStatus.Text,0,2) + ''')';
    end
    else
      sqlTexto2 := sqlTexto2 + QuotedStr('00') + ')';
  end
  else
    sqlTexto2 := sqlTexto2 + QuotedStr('00') + ')';

  Try
    if (cds_total.Active) then
      cds_total.Close;

    cds_total.CommandText := sqlTexto2 + ' REC ' + SqlTexto;
    cds_total.Open;
    if (not cds1.IsEmpty) then
    begin
      if (cds1TotTitulo.Value <> 0.001) then
        JvCalcEdit1.Text := cds1TotTitulo.Value
      //   JvCalcEdit1.Text :=  cds_total.Fields[0].Value
      else
        JvCalcEdit1.Text := '0';

      if (cds1TotPendente.Value > 0.001) then
        JvCalcEdit2.Text := cds1TotPendente.Value
       // JvCalcEdit2.Text := cds_total.Fields[1].Value;
      else
        JvCalcEdit2.Text := '0';

      if (cds1TotPago.Value <> 0.001) then
        JvCalcEdit3.Text := cds1TotPago.Value
     //   JvCalcEdit3.Text := cds_total.Fields[2].Value ;
      else
        JvCalcEdit3.Text := '0';
    end;
  Except
    ShowMessage ('Não existe dados para essa consulta');
  end;
  DBGrid2.SetFocus;

end;

procedure TfCpProc.BitBtn20Click(Sender: TObject);
  var
   sqlGrupo: String;
   data1,data2,conta,tipo,situacao , centro :TRpLabel;
begin
//  repContasReceber.Report.Params.ParamByName('PVENDA').Value := dm.cds_vendaCODVENDA.AsInteger;

 sqlGrupo  := ' group by cli.NOMEFORNECEDOR,rec.DATAVENCIMENTO,  rec.CODFORNECEDOR,rec.CAIXA , rec.formapagamento ,'
            + ' rec.EMISSAO,  '
            + ' rec.TITULO,  '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + ' rec.VIA, rec.N_DOCUMENTO, rec.dp, rec.dup_rec_nf' +
            ' ,plano.NOME ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO  ';

  repContasReceber.FileName := str_relatorio + 'rel_cpFiltroSintetico.rep';
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlTexto3 + sqlTexto + sqlGrupo;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel6'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  conta:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel16'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel17'));
  situacao := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  centro  := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel19'));

   // Situacao
  if((cbStatus.Text <> '')or(cbStatus.Text = '') ) then
  begin
    situacao.Text := cbStatus.Text;
  end;
  if(cbStatus.Text = '1-A Vencer')  then
  situacao.Text := ': Situação = A Vencer';
  if(cbStatus.Text = '2-Vencido')  then
  situacao.Text := ': Situação = Vencido';
  if(cbStatus.Text = '5-A Pagar')  then
  situacao.Text := ': Situação = A Pagar';
  if(cbStatus.Text = '7-Pago')  then
  situacao.Text := ': Situação = PAGO';
  if(cbStatus.Text = '8-Suspenso')  then
  situacao.Text := ': Situação = Suspenso';
  if(cbStatus.Text = '11-Todos')  then
  situacao.Text := ': Situação = Todos';
  if(cbStatus.Text = '14-Cancelado')  then
  situacao.Text := ': Situação = Cancelado';

   // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;


  // Conta
  if((cbConta.Text <> '')or(cbConta.Text = '') ) then
  begin
    conta.Text := cbConta.Text;
  end;

  //Entrada
  if (medt1.text <> '  /  /  ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
    ComboBox1.Text := 'Data de Entrada';
  end;

  //Emissão
  if (meDta1.text <> '  /  /  ')then
  begin
    data1.Text := meDta1.Text;
    data2.Text := meDta2.Text;
    ComboBox1.Text := 'Data de Emissão';
  end;

  //Pagamento
  if (meDta5.text <> '  /  /  ') then
  begin
    data1.Text := meDta5.Text;
    data2.Text := meDta6.Text;
    ComboBox1.Text := 'Data de Pagamento';
  end;

   //Vencimento
  if (meDta3.text <> '  /  /  ') then
  begin
    data1.Text := meDta3.Text;
    data2.Text := meDta4.Text;
    ComboBox1.Text := 'Data de Vencimento';
  end;

  // Tipo de data
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '')) then
  begin
    tipo.Text := ComboBox1.Text;
  end;

  repContasReceber.Execute;
  data1.Text := '';
  data2.Text := '';
  conta.Text := '';
  tipo.Text := '';
  centro.Text := '';

end;

procedure TfCpProc.btnAuClick(Sender: TObject);
var sqlau , codalmox : String;
   data1,data2,data3,conta,tipo,centro :TRpLabel;
begin
  if (edCodCCusto.Text = 'ASH') then
  codalmox := '51';
  if (edCodCCusto.Text = 'PCMSO') then
  codalmox := '52';
  if (cdsAu.Active) then
  cdsAu.Close;
  sqlau := 'SELECT * FROM AUDITORIA '+ '(';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(dataAu.Text)))+ ',' ;
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt1.Text))) + ',';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt2.Text))) + ',';
  sqlau := sqlau + QuotedStr(codalmox) + ')';
  cdsAu.CommandText := sqlau ;
  cdsAu.Open;
  repContasReceber.FileName := str_relatorio + 'rel_aud.rep';
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlau;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel6'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  data3:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel17'));
  centro  := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel19'));

   // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;
  //Data Auditoria
  if (dataAu.text <> '  /  /  ') then
  begin
    data3.Text := dataAu.Text;
  end;

  //Entrada
  if (medt1.text <> '  /  /  ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
    ComboBox1.Text := 'Data de Entrada';
  end;
  // Tipo de data
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '')) then
  begin
    tipo.Text := ComboBox1.Text;
  end;

  repContasReceber.Execute;

end;

procedure TfCpProc.btnCClick(Sender: TObject);
begin
  fAud := TfAud.Create(Application);
  try
    fAud.ShowModal;
  finally
    fAud.Free;
  end;
end;

procedure TfCpProc.BitBtn21Click(Sender: TObject);
var nom , arquivo : string ;
begin
  nom := DateToStr(today) ; //'JvDateEdit2.Text';
  arquivo := 'C:\home\a_' + nom +'.xls' ;


  JvDBGridExcelExport1.FileName := 'C:\home\arquivo_auditor\arquivo_auditor.xls';
 JvDBGridExcelExport1.ExportGrid;
end;

end.




