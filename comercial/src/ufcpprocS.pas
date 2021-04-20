unit ufcpprocS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, Menus, DB, DBLocal, DBLocalS,
  DBClient, Grids, DBGrids, DBCtrls, ExtCtrls, MMJPanel, Mask, StdCtrls,
  Buttons, rpcompobase, rpvclreport, JvAppStorage, JvAppXMLStorage,
  JvComponentBase, JvFormPlacement, JvExStdCtrls, JvCombobox, JvExMask,
  JvToolEdit, JvBaseEdits, ImgList, JvExExtCtrls, JvRadioGroup ,DBXpress,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvEdit, JvDBSearchEdit,
  DateUtils,rplabelitem;

type
  TfcpprocS = class(TForm)
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
    JvFormStorage1: TJvFormStorage;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
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
    meDta1: TMaskEdit;
    meDta2: TMaskEdit;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    meDta5: TMaskEdit;
    meDta6: TMaskEdit;
    BitBtn6: TBitBtn;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    meDta3: TMaskEdit;
    meDta4: TMaskEdit;
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
    medt1: TMaskEdit;
    medt2: TMaskEdit;
    BitBtn17: TBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    DataSetProvider2: TDataSetProvider;
    cds1: TClientDataSet;
    StringField8: TStringField;
    DateField5: TDateField;
    DateField6: TDateField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    StringField12: TStringField;
    IntegerField4: TIntegerField;
    DateField7: TDateField;
    StringField13: TStringField;
    SmallintField3: TSmallintField;
    DateField8: TDateField;
    SmallintField4: TSmallintField;
    StringField14: TStringField;
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
    SQLDataSet1DATASISTEMA: TSQLTimeStampField;
    scdsCr_procDATASISTEMA: TSQLTimeStampField;
    Label16: TLabel;
    SQLDataSet1RA: TStringField;
    SQLDataSet1NOMECLIENTE: TStringField;
    scdsCr_procRA: TStringField;
    scdsCr_procNOMECLIENTE: TStringField;
    fgrupo: TBitBtn;
    Edit2: TEdit;
    JvDBSearchEdit1: TJvDBSearchEdit;
    DataSource3: TDataSource;
    cdsClienteBusca: TClientDataSet;
    cdsClienteBuscaCODCLIENTE: TIntegerField;
    cdsClienteBuscaNOMECLIENTE: TStringField;
    cdsClienteBuscaRAZAOSOCIAL: TStringField;
    cdsClienteBuscaRA: TStringField;
    DataSetProvider3: TDataSetProvider;
    SQLDataSet3: TSQLDataSet;
    Edit3: TEdit;
    Label18: TLabel;
    Label21: TLabel;
    BitBtn19: TBitBtn;
    SQLDataSet1OUTRO_CREDITO: TFloatField;
    scdsCr_procOUTRO_CREDITO: TFloatField;
    SQLDataSet1NOME: TStringField;
    scdsCr_procNOME: TStringField;
    ComboBox1: TComboBox;
    BitBtn20: TBitBtn;
    Label22: TLabel;
    BitBtn21: TBitBtn;
    BitBtnimp: TBitBtn;
    SQLDataSet4: TSQLDataSet;
    DataSetProvider4: TDataSetProvider;
    cdsSomaRelatorio: TClientDataSet;
    DataSource4: TDataSource;
    cdsProc: TClientDataSet;
    dsProc: TDataSource;
    dspProc: TDataSetProvider;
    sqlProc: TSQLDataSet;
    SQLDataSet5: TSQLDataSet;
    DataSetProvider5: TDataSetProvider;
    cds_total1: TClientDataSet;
    cds_total1SUM: TFloatField;
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
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure meDta1KeyPress(Sender: TObject; var Key: Char);
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
    procedure fgrupoClick(Sender: TObject);
    procedure JvDBSearchEdit1Exit(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBSearchEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtnimpClick(Sender: TObject);
  private
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcpprocS: TfcpprocS;
  SqlTexto, sqlTexto1,sqlTexto3 ,SqlTextoP ,SqlTextoS , SqlTextoSRel ,sqlgby  : String;

implementation

uses UDm, ufcrtitulo, uProcurar, ufDlgLogin, UUtils, sCtrlResize, uCh,
  MaskUtils, UProcuraGrupo, UDmSaude, UProcuraGrupoT;

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

procedure TfcpprocS.BitBtn11Click(Sender: TObject);
begin
    // edCodVendedor.Text:='';
    // edVendedor.Text:='';
    MaskEdit1.Clear;
    MaskEdit2.Clear;
end;

procedure TfcpprocS.BitBtn9Click(Sender: TObject);
begin
   if dm.cds_4_pagar.Active then
      dm.cds_4_pagar.Close;
   dm.cds_4_pagar.Params[0].AsInteger := fcpprocS.scdsCr_procCODPAGAMENTO.AsInteger;
   dm.cds_4_pagar.Open;
   dm.cds_4_pagar.Edit;
   close;
end;

procedure TfcpprocS.BitBtn4Click(Sender: TObject);
begin
   cbStatus.Text := '';
end;

procedure TfcpprocS.btnIncluirClick(Sender: TObject);
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
   fcpprocS.DBGrid1.SetFocus;
   scdsCr_proc.Close;
   scdscr_Proc.Open;
  end;

end;

procedure TfcpprocS.btnProcurarClick(Sender: TObject);
 Var
 DataStr, sql2,sqlTexto2 : String;
 varcpprocS : TUtils;
begin
  JvCalcEdit1.Value := 0;
  JvCalcEdit2.Value := 0;
  JvCalcEdit3.Value := 0;
  DBGrid2.Visible := False;
  DBGrid1.Visible := True;
  btnIncluir.Enabled := True;
  sqlTexto1 := '';
  sqlTexto := '';

  if(cdsSomaRelatorio.Active) then
  cdsSomaRelatorio.Close;
  SqlTextoSRel := 'select  sum(rec.VALORTITULO), sum(rec.VALOR_RESTO), sum(rec.VALOR_PRIM_VIA),sum(outro_credito),'
  + ' sum(rec.VALORRECEBIDO + CASE when FUNRURAL > 0 then FUNRURAL else 0 end + CASE when JUROS > 0 then JUROS else 0 end) as VALORRECEBIDO, '
  + ' SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC '
  + ' from PAGAMENTO rec '
  + ' inner join FORNECEDOR forn on forn.CODFORNECEDOR = rec.CODFORNECEDOR  inner join clientes cli on cli.codcliente = rec.codcliente inner join plano pl on pl.codigo = rec.contacredito ';

  //+ ' Where rec.CONTACREDITO = 611 and rec.DATAINCLUSAO between '01/01/13' and '08/31/13' and rec.CODFORNECEDOR = 36 AND CODALMOXARIFADO = 51
  //+ ' and plnctaroot(pl.conta) = '4' and pl.CONSOLIDA = 'S' and pl.RATEIO = 'S'
// group by  rec.CONTACREDITO

  if scdsCr_proc.Active then
    scdsCr_proc.Close;
  sqlTexto1 := 'select rec.dp, rec.dup_rec_nf, rec.CODPAGAMENTO, rec.TITULO, rec.EMISSAO,rec.DATACONSOLIDA ,rec.CAIXA , rec.FORMAPAGAMENTO,'
   + ' rec.DATAVENCIMENTO ,rec.OUTRO_CREDITO,rec.CODFORNECEDOR, rec.VALORTITULO, rec.VALOR_RESTO, rec.VALOR_PRIM_VIA,rec.CONTACREDITO,rec.DATASISTEMA, '
   + ' CASE rec.STATUS WHEN ' + '''5-''' + ' THEN ' + '''PENDENTE''' + ' when ' + '''6-'''
   + ' then ' + '''PENDENTE CONTAB.''' +  ' when ' + '''7-''' + ' then ' + '''PAGO'''
   + ' when ' + '''8-''' + ' then ' + '''SUSPENSO'''
   + ' END AS STATUS, rec.DATAPAGAMENTO,rec.DATAINCLUSAO, '
   + ' sum(rec.VALORRECEBIDO + CASE when FUNRURAL > 0 then FUNRURAL else 0 end + CASE when JUROS > 0 then JUROS else 0 end) as VALORRECEBIDO, rec.VIA, rec.N_DOCUMENTO '
   + ' , forn.NOMEFORNECEDOR, ' +
   {
   'SUM(CASE when rec.VALOR_RESTO > 0 then rec.VALOR_RESTO else 0 end - CASE when rec.VALORRECEBIDO  > 0 then rec.VALORRECEBIDO else 0 end ' +
   ' - CASE when rec.DESCONTO > 0 then rec.DESCONTO else 0 end - CASE when rec.PERDA > 0 then rec.PERDA else 0 end) as VALORREC' +
   }
   ' SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC ' +
   ' ,plano.NOME, rec.HISTORICO ,cli.ra  ,rec.codcliente , cli.nomecliente from PAGAMENTO rec ' +
   ' inner join FORNECEDOR forn on forn.CODFORNECEDOR = rec.CODFORNECEDOR ' +
   ' inner join clientes cli on cli.codcliente = rec.codcliente' +
   ' inner join plano pl on pl.codigo = rec.contacredito'   ;
  {
   case rbTipoConta.ItemIndex of
     0 : sqlTexto1 := sqlTexto1 + ' inner join PLANO plano on plano.CODIGO = rec.CAIXA ';
     1 : sqlTexto1 := sqlTexto1 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ' +
       ' inner join compra comp on comp.codCompra = rec.CODCompra ';
     2 : sqlTexto1 := sqlTexto1 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ';
   end;
   }
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
         ' and CONSOLIDA = ''S''' + 'and RATEIO = ' + QuotedStr('S')+ ' order by NOME';
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
    varcpprocS := TUtils.create;
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.FORMAPAGAMENTO = '
    else
      SqlTexto := SqlTexto + ' AND (rec.FORMAPAGAMENTO = ';
    SqlTexto := SqlTexto + QuotedStr(varcpprocS.pegaForma(cbForma.Text))  + ')';
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
  //cliente
  //------------------------------------------------------------------------------
  if Edit3.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.CODCLIENTE = '
    else
      sqlTexto := sqlTexto + ' and rec.CODCLIENTE = ';
      sqlTexto := sqlTexto + Edit3.Text;
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

  sql2 := ' group by  rec.CODFORNECEDOR,rec.DATAVENCIMENTO, forn.NOMEFORNECEDOR,rec.CAIXA , rec.formapagamento ,'
            + ' rec.EMISSAO, rec.CODPAGAMENTO,rec.OUTRO_CREDITO , '
            + ' rec.TITULO,  rec.VALOR_RESTO, rec.VALORTITULO, '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + ' rec.VIA, rec.N_DOCUMENTO, rec.VALOR_PRIM_VIA, rec.dp, rec.dup_rec_nf' +
            ' ,plano.NOME ,rec.CONTACREDITO, rec.HISTORICO ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO ' +
            ' ,rec.DATASISTEMA ,cli.ra , rec.codcliente , cli.nomecliente ,pl.NOME';

      SqlTextoP := ' and plnctaroot(pl.conta) = '
      + QuotedStr('4')+ ' and pl.CONSOLIDA = ' + QuotedStr('S') + ' and pl.RATEIO = ' + QuotedStr('S') ;

  sqlgby := ' group by REC.CONTACREDITO' ;

  cdsSomaRelatorio.CommandText := SqlTextoSRel + SqlTexto + sqlTextoP + sqlgby ;
  cdsSomaRelatorio.Open;

  scdsCr_proc.CommandText := sqlTexto1 + sqlTexto + sqlTextoP + sql2;

  scdsCr_proc.Open;

  if(DBGrid1.Visible = True)then
  Label22.Caption := IntToStr(scdsCr_proc.RecordCount);

  if(DBGrid2.Visible = True)then
  Label22.Caption := IntToStr(cdsProc.RecordCount);

  

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
  DBGrid1.SetFocus;
end;

procedure TfcpprocS.FormCreate(Sender: TObject);
var conta_local, str_sql2: String;
 varcpprocS : TUtils;
  i, j : integer;
begin
  // Popula Status
  j := varcpprocS.Forma.Count;
  for i := 0 to j - 1 do
  begin
    cbForma.Items.Add(varcpprocS.Forma.Strings[i]);
  end;

  j := varcpprocS.StatusPag.Count;
  for i := 0 to j - 1 do
  begin
    cbStatus.Items.Add(varcpprocS.StatusPag.Strings[i]);
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
  str_sql2 := str_sql2 + ' and CONSOLIDA = ''S''' + 'and RATEIO = ' + QuotedStr('S')+ ' order by NOME';
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

  if (not sdsTipoForn.Active) then
    sdsTipoForn.open;
  while not (sdsTipoForn.eof) do
  begin
    cbTipoFornecedor.Items.add(sdsTipoFornDESCRICAO.AsString);
    sdsTipoForn.Next;
  end;
  sdsTipoForn.Close;
end;

procedure TfcpprocS.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfcpprocS.DBGrid1TitleClick(Column: TColumn);
begin
     scdsCr_proc.IndexFieldNames := Column.FieldName;
end;

procedure TfcpprocS.btnImprimirClick(Sender: TObject);
var sqlGrupo: String;
    data1,data2,conta,tipo ,nomesocio:TRpLabel;
begin
  sqlGrupo  := ' group by rec.CODFORNECEDOR,rec.DATAVENCIMENTO, forn.NOMEFORNECEDOR, rec.CAIXA , rec.formapagamento ,'
            + ' rec.EMISSAO, rec.CODPAGAMENTO,rec.OUTRO_CREDITO , '
            + ' rec.TITULO,  rec.VALOR_RESTO, rec.VALORTITULO, '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + ' rec.VIA, rec.N_DOCUMENTO, rec.VALOR_PRIM_VIA, rec.dp, rec.dup_rec_nf' +
            ' ,plano.NOME ,rec.CONTACREDITO, rec.HISTORICO ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO ,rec.codcliente,rec.DATASISTEMA,cli.RA , cli.NOMECLIENTE ';

  if(JvDBSearchEdit1.Text <> '') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_cpFiltroS.rep';
  end else
  repContasReceber.FileName := str_relatorio + 'rel_cpFiltroSN.rep';

  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlTexto1 + sqlTexto + sqlTextoP + sqlGrupo;
  repContasReceber.Report.DataInfo.Items[2].SQL:= SqlTextoSRel + sqlTexto + sqlTextoP + sqlgby ;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  conta:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel15'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel16'));

  //Nome Socio
  if(JvDBSearchEdit1.Text <> '') then
  begin
    nomesocio:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel5'));
    if((JvDBSearchEdit1.Text <> '')or(JvDBSearchEdit1.Text = '') ) then
    begin
      nomesocio.Text := JvDBSearchEdit1.Text;
    end;
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
  if(JvDBSearchEdit1.Text <> '')then
  begin
    nomesocio.Text := '';
  end;
end;

procedure TfcpprocS.BitBtn8Click(Sender: TObject);
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

procedure TfcpprocS.BitBtn1Click(Sender: TObject);
begin
  edCodCliente.Text:='';
     edCliente.Text:='';
end;

procedure TfcpprocS.BitBtn12Click(Sender: TObject);
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

procedure TfcpprocS.edCodClienteExit(Sender: TObject);
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

procedure TfcpprocS.cbStatusKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);

   if(DBGrid1.Visible = True)then
   btnProcurar.Click;

   if(DBGrid2.Visible = True)then
   BitBtn16.Click;   


 end;

end;

procedure TfcpprocS.BitBtn6Click(Sender: TObject);
begin
  medta5.Clear;
  medta6.Clear;
  ComboBox1.Text := '';
  btnProcurar.Click;
end;

procedure TfcpprocS.BitBtn7Click(Sender: TObject);
begin
  medta3.Clear;
  medta4.Clear;
  ComboBox1.Text := '';
  btnProcurar.Click;
end;

procedure TfcpprocS.BitBtn2Click(Sender: TObject);
begin
  medta1.Clear;
  medta2.Clear;
  ComboBox1.Text := '';
  btnProcurar.Click;
end;

procedure TfcpprocS.ChkDBGridCellClick(Column: TColumn);
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

procedure TfcpprocS.ChkDBGridColEnter(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
    DBGrid.Options := DBGrid.Options - [dgEditing];
end;

procedure TfcpprocS.ChkDBGridColExit(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
    DBGrid.Options := DBGrid.Options + [dgEditing];
end;

procedure TfcpprocS.ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
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

procedure TfcpprocS.ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
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

procedure TfcpprocS.DBGrid1CellClick(Column: TColumn);
begin
  ChkDBGridCellClick(Column);
end;

procedure TfcpprocS.DBGrid1ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfcpprocS.DBGrid1ColExit(Sender: TObject);
begin
 ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfcpprocS.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TfcpprocS.meDta1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfcpprocS.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
    ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfcpprocS.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [','] then Key := '.';
end;

procedure TfcpprocS.BitBtn3Click(Sender: TObject);
begin
  edValor.Text := '';
end;

procedure TfcpprocS.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fcpprocS));
      if (cdsClienteBusca.Active) then
    begin
      cdsClienteBusca.Close;
    end;
    cdsClienteBusca.Params[0].AsString := 'ASH';
    cdsClienteBusca.Open;
    JvDBSearchEdit1.Text := '';
    edCodCCusto.Text := 'ASH';
end;

procedure TfcpprocS.BitBtn5Click(Sender: TObject);
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

procedure TfcpprocS.BitBtn13Click(Sender: TObject);
  var
  sqlGrupoSIP , sqlgrupo , sqlTexto2 : String;
begin
  sqlTexto2 := 'and ((pl.contapai = ' + QuotedStr('4.1.1.09') + ') or (pl.contapai = '+ QuotedStr('4.1.1.10') +') or (pl.contapai = '+ QuotedStr('4.1.1.11')+ ') or (pl.contapai = '+ QuotedStr('4.1.1.12')+ '))';
  sqlGrupo := ' group by   cli.NOMEFORNECEDOR,  pl.nome ' ;
  sqlGrupoSIP := ' Select cli.NOMEFORNECEDOR, SUM(rec.VALORTITULO) AS VALORTITULO ,'
  + ' SUM(rec.outro_credito) as QTD_DE_PROCEDIMENTO, pl.nome from PAGAMENTO rec'
  + ' inner join FORNECEDOR cli on cli.CODFORNECEDOR=rec.CODFORNECEDOR '
  + ' inner join PLANO pl on pl.codigo = rec.contacredito ' ;

  // Entrada
  if(medt1.Text <> '  /  /  ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sipEn.rep';
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(medt1.Text));
    repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(medt2.Text));
  end;
  //Emissão
  if(meDta1.Text <> '  /  /  ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sipEm.rep';
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(meDta1.Text));
    repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(meDta2.Text));
  end;
  //Pagamento
  if(meDta5.Text <> '  /  /  ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sipPa.rep';
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(meDta5.Text));
    repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(meDta6.Text));
  end;
  //Vencimento
  if(meDta3.Text <> '  /  /  ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sipVe.rep';
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(meDta3.Text));
    repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(meDta4.Text));
  end;

   repContasReceber.Report.DataInfo.Items[0].SQL:= sqlGrupoSIP + (sqlTexto + sqlTexto2) + sqlGrupo ;
  repContasReceber.Execute;
end;

procedure TfcpprocS.BitBtn14Click(Sender: TObject);
  var
  sqlGrupoSIP , sqlgrupo ,sqlTexto2: String;
begin
  sqlTexto2 := 'and ((pl.contapai = ' + QuotedStr('4.1.1.09') + ') or (pl.contapai = '+ QuotedStr('4.1.1.10') +') or (pl.contapai = '+ QuotedStr('4.1.1.11')+ ') or (pl.contapai = '+ QuotedStr('4.1.1.12')+ '))';
  sqlGrupo := ' group by  pla.conta, pl.contapai, pl.nome, pla.nome' ;
  sqlGrupoSIP := ' select  SUM(rec.VALORTITULO) AS VALORTITULO , SUM(rec.outro_credito) as QTD_DE_PROCEDIMENTO, '
  +' pl.nome , pl.contapai,  pla.nome from PAGAMENTO rec'
  +' inner join FORNECEDOR cli on cli.CODFORNECEDOR=rec.CODFORNECEDOR '
  +' inner join PLANO pl on pl.codigo = rec.contacredito '
  +' left outer join PLANO pla on pla.conta = pl.contapai ';
  //Entrada
  if(medt1.Text <> '  /  /  ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sip1En.rep';
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(medt1.Text));
    repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(medt2.Text));
  end;
  //Emissão
  if(meDta1.Text <> '  /  /  ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sip1Em.rep';
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(meDta1.Text));
    repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(meDta2.Text));
  end;
  //Pagamento
  if(meDta5.Text <> '  /  /  ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sip1Pa.rep';
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(meDta5.Text));
    repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(meDta6.Text));
  end;
  //Vencimento
  if(meDta3.Text <> '  /  /  ') then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_sip1Ve.rep';
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(meDta3.Text));
    repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(meDta4.Text));
  end;



  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlGrupoSIP + (sqlTexto + sqlTexto2 )+ sqlGrupo ;
  repContasReceber.Execute;

end;

procedure TfcpprocS.BtnChClick(Sender: TObject);
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
   fcpprocS.DBGrid1.SetFocus;
   scdsCr_proc.Close;
   scdscr_Proc.Open;
  end;

  MessageDlg('Numero Documento e Data Consolida , Incluida com Sucesso', mtConfirmation, [mbOK], 0);

 end;

procedure TfcpprocS.BitBtn16Click(Sender: TObject);
 Var
 DataStr, sql2,sqlTexto , sqlTexto2: String;
 varcpprocS : TUtils;
begin
  DBGrid1.Visible := False;
  DBGrid2.Visible := True;

 if (cdsProc.Active) then
   cdsProc.Close;
  sqlTexto := 'select  pagamento.titulo, fornecedor.codfornecedor,  fornecedor.nomefornecedor,movimentodetalhe.valtotal,' +
    ' clientes.ra, clientes.nomecliente, movimentodetalhe.outro_credito, produtos.produto,   movimentodetalhe.preco, ' +
    ' movimentodetalhe.historico, movimentodetalhe.dataprocedimento, movimentodetalhe.datasistema,compra.datainclusao ,movimentodetalhe.codcliente ' +
    ' from movimentodetalhe' +

   ' inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto) ' +
   ' inner join plano on (produtos.conta_despesa = plano.conta)' +
   ' inner join compra on (movimentodetalhe.codmovimento = compra.codmovimento)' +
   ' inner join pagamento on (compra.codcompra = pagamento.codcompra)' +
   ' inner join fornecedor on (pagamento.codfornecedor = fornecedor.codfornecedor)' +
   ' inner join clientes on (movimentodetalhe.codcliente = clientes.codcliente)' ;

  sqlTexto :=  sqlTexto ;
 try
 if (medt1.Text<>datastr) then
  StrToDate(medt1.Text);
  if (medt2.Text<>datastr) then
  StrToDate(medt2.Text);
  if (medt1.Text<>datastr) then
  if (medt2.Text<>datastr) then
  begin
    if sqlTexto = '' then
      sqlTexto := sqlTexto + ' where compra.datainclusao between '
    else
      sqlTexto := sqlTexto + ' and compra.datainclusao between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medt1.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medt2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medt1.SetFocus;  

  end;
  end;

  //Fornecedor
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where fornecedor.CODFORNECEDOR = '
    else
      sqlTexto := sqlTexto + ' and fornecedor.CODFORNECEDOR = ';
      sqlTexto := sqlTexto + edCodCliente.Text;
  end;

   //cliente
  //------------------------------------------------------------------------------
  if Edit3.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where movimentodetalhe.codcliente = '
    else
      sqlTexto := sqlTexto + ' and movimentodetalhe.codcliente= ';
      sqlTexto := sqlTexto + Edit3.Text;
  end;


  //==============================================================================

 //  ' where movimentodetalhe.codcliente = 1472 ' +
 //  ' and compra.datainclusao between '10/02/13' and '10/02/13' ;

   cdsProc.CommandText := sqlTexto;
   cdsProc.Open;

  if(DBGrid1.Visible = True)then
  Label22.Caption := IntToStr(scdsCr_proc.RecordCount);

  if(DBGrid2.Visible = True)then
  Label22.Caption := IntToStr(cdsProc.RecordCount);

 if (DBGrid2.Visible= True)then
 begin
   if (cds_total1.Active) then
      cds_total1.Close;

  sqlTexto2 := 'select sum(movimentodetalhe.valtotal) ' +
    ' from movimentodetalhe ' +

   ' inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto) ' +
   ' inner join plano on (produtos.conta_despesa = plano.conta)' +
   ' inner join compra on (movimentodetalhe.codmovimento = compra.codmovimento)' +
   ' inner join pagamento on (compra.codcompra = pagamento.codcompra)' +
   ' inner join fornecedor on (pagamento.codfornecedor = fornecedor.codfornecedor)' +
   ' inner join clientes on (movimentodetalhe.codcliente = clientes.codcliente)' ;

  sqlTexto2 :=  sqlTexto2 ;
 try
 if (medt1.Text<>datastr) then
  StrToDate(medt1.Text);
  if (medt2.Text<>datastr) then
  StrToDate(medt2.Text);
  if (medt1.Text<>datastr) then
  if (medt2.Text<>datastr) then
  begin
    if sqlTexto2 = '' then
      sqlTexto2 := sqlTexto2 + ' where compra.datainclusao between '
    else
      sqlTexto2 := sqlTexto2 + ' and compra.datainclusao between ';
      sqlTexto2 := sqlTexto2 + '''' + formatdatetime('mm/dd/yy', StrToDate(medt1.Text)) + '''';
      sqlTexto2 := sqlTexto2 + ' and ';
      sqlTexto2 := sqlTexto2 + '''' + formatdatetime('mm/dd/yy', StrToDate(medt2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medt1.SetFocus;  

  end;
  end;

  //Fornecedor
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if sqlTexto2 = '' then
      sqlTexto2 := sqlTexto2 + ' where fornecedor.CODFORNECEDOR = '
    else
      sqlTexto2 := sqlTexto2 + ' and fornecedor.CODFORNECEDOR = ';
      sqlTexto2 := sqlTexto2 + edCodCliente.Text;
  end;

   //cliente
  //------------------------------------------------------------------------------
  if Edit3.Text <> '' then
  begin
    if sqlTexto2 = '' then
      sqlTexto2 := sqlTexto2 + ' where movimentodetalhe.codcliente = '
    else
      sqlTexto2 := sqlTexto2 + ' and movimentodetalhe.codcliente= ';
      sqlTexto2 := sqlTexto2 + Edit3.Text;
  end;


  //==============================================================================

 //  ' where movimentodetalhe.codcliente = 1472 ' +
 //  ' and compra.datainclusao between '10/02/13' and '10/02/13' ;

    cds_total1.CommandText := SqlTexto2;
    cds_total1.Open;


    JvCalcEdit1.Text := cds_total1SUM.AsString;

    Label14.Caption := 'Total' ;

    Label15.Visible := False;
    Label17.Visible := False;
    JvCalcEdit2.Visible := False;
    JvCalcEdit3.Visible := False;
  end;


  DBGrid2.SetFocus;

end;

procedure TfcpprocS.BitBtn18Click(Sender: TObject);
  var
   sqlGrupo: String;
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
  repContasReceber.Execute;
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

procedure TfcpprocS.BitBtn17Click(Sender: TObject);
begin
   medt1.Clear;
   medt2.Clear;
   ComboBox1.Text := '';
   btnProcurar.Click;
end;

procedure TfcpprocS.fgrupoClick(Sender: TObject);
var    grupo : string;
begin
  grupo := edCodCCusto.Text;
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
    Edit2.Text := DMSaude.procgrupoTRA.AsString;
    Edit3.Text := IntToStr(cdsClienteBuscaCODCLIENTE.asInteger);


   if(DBGrid1.Visible = True)then
   btnProcurar.Click;

   if(DBGrid2.Visible = True)then
   BitBtn16.Click;

       {


   if DMSaude.cdsCliente.Active then
    DMSaude.cdsCliente.Close;
     DMSaude.cdsCliente.Params[0].AsInteger := DMSaude.procgrupoCODCLIENTE.AsInteger;
     DMSaude.cdsCliente.Open;
    }
  finally
    fProcuraGrupoT.Free;
  end;
end;

procedure TfcpprocS.JvDBSearchEdit1Exit(Sender: TObject);
begin
  Edit2.Text := IntToStr(cdsClienteBuscaRA.asInteger);
  Edit3.Text := IntToStr(cdsClienteBuscaCODCLIENTE.asInteger);
  btnProcurar.Click;
end;

procedure TfcpprocS.Edit2Change(Sender: TObject);
begin
  cdsClienteBusca.Locate('RA',Edit2.Text,[loCaseInsensitive]);
end;

procedure TfcpprocS.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
   btnProcurar.Click;
 end;
end;

procedure TfcpprocS.JvDBSearchEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
    btnProcurar.Click;
 end;
end;

procedure TfcpprocS.BitBtn19Click(Sender: TObject);
begin
  Edit2.Text := '';
  JvDBSearchEdit1.Text := '';
  Edit3.Text := '';

  if(DBGrid1.Visible = True)then
  btnProcurar.Click;

  if(DBGrid2.Visible = True)then
  BitBtn16.Click;


  
end;

procedure TfcpprocS.BitBtn20Click(Sender: TObject);
begin
  cbConta.Text := '';
end;

procedure TfcpprocS.BitBtn21Click(Sender: TObject);
 Var
 DataStr, sql2,sqlTexto2: String;
 varcpprocS : TUtils;
begin
  JvCalcEdit1.Value := 0;
  JvCalcEdit2.Value := 0;
  JvCalcEdit3.Value := 0;
  DBGrid2.Visible := False;
  DBGrid1.Visible := True;
  btnIncluir.Enabled := True;
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
   + ' , forn.NOMEFORNECEDOR, ' +
   {
   'SUM(CASE when rec.VALOR_RESTO > 0 then rec.VALOR_RESTO else 0 end - CASE when rec.VALORRECEBIDO  > 0 then rec.VALORRECEBIDO else 0 end ' +
   ' - CASE when rec.DESCONTO > 0 then rec.DESCONTO else 0 end - CASE when rec.PERDA > 0 then rec.PERDA else 0 end) as VALORREC' +
   }
   ' SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA ) as VALORREC ' +
   ' ,plano.NOME, rec.HISTORICO ,cli.ra  ,rec.codcliente , cli.nomecliente from PAGAMENTO rec ' +
   ' inner join FORNECEDOR forn on forn.CODFORNECEDOR = rec.CODFORNECEDOR ' +
   ' inner join clientes cli on cli.codcliente = rec.codcliente' +
   ' inner join plano pl on pl.codigo = rec.contacredito'   ;
  {
   case rbTipoConta.ItemIndex of
     0 : sqlTexto1 := sqlTexto1 + ' inner join PLANO plano on plano.CODIGO = rec.CAIXA ';
     1 : sqlTexto1 := sqlTexto1 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ' +
       ' inner join compra comp on comp.codCompra = rec.CODCompra ';
     2 : sqlTexto1 := sqlTexto1 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ';
   end;
   }
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
         ' and CONSOLIDA = ''S''' + 'and RATEIO = ' + QuotedStr('S')+ ' order by NOME';
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
    varcpprocS := TUtils.create;
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.FORMAPAGAMENTO = '
    else
      SqlTexto := SqlTexto + ' AND (rec.FORMAPAGAMENTO = ';
    SqlTexto := SqlTexto + QuotedStr(varcpprocS.pegaForma(cbForma.Text))  + ')';
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
  //cliente
  //------------------------------------------------------------------------------
  if Edit3.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.CODCLIENTE = '
    else
      sqlTexto := sqlTexto + ' and rec.CODCLIENTE = ';
      sqlTexto := sqlTexto + Edit3.Text;
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

  sql2 := ' group by rec.DATAVENCIMENTO, forn.NOMEFORNECEDOR, rec.CODFORNECEDOR,rec.CAIXA , rec.formapagamento ,'
            + ' rec.EMISSAO, rec.CODPAGAMENTO,rec.OUTRO_CREDITO , '
            + ' rec.TITULO,  rec.VALOR_RESTO, rec.VALORTITULO, '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + ' rec.VIA, rec.N_DOCUMENTO, rec.VALOR_PRIM_VIA, rec.dp, rec.dup_rec_nf' +
            ' ,plano.NOME ,rec.CONTACREDITO, rec.HISTORICO ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO ' +
            ' ,rec.DATASISTEMA ,cli.ra , rec.codcliente , cli.nomecliente ,pl.NOME';

      SqlTextoP := ' and plnctaroot(pl.conta) = '
      + QuotedStr('4')+ ' and pl.CONSOLIDA = ' + QuotedStr('S') + ' and pl.RATEIO = ' + QuotedStr('S') ;

  sqlTextos := sqltexto ;
  sqlTexto := sqltexto + ' and cli.codcliente = 0 ' ;

  scdsCr_proc.CommandText := sqlTexto1 + sqlTexto + sqlTextoP + sql2;

  scdsCr_proc.Open;

  if(DBGrid1.Visible = True)then
  Label22.Caption := IntToStr(scdsCr_proc.RecordCount);

  if(DBGrid2.Visible = True)then
  Label22.Caption := IntToStr(cdsProc.RecordCount);



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

    cds_total.CommandText := sqlTexto2 + ' REC ' + SqlTextos;
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
  DBGrid1.SetFocus;
end;


procedure TfcpprocS.BitBtnimpClick(Sender: TObject);
var sqlGrupo: String;
    data1,data2,conta,tipo ,nomesocio:TRpLabel;
begin
  sqlGrupo  := ' group by rec.CODFORNECEDOR, rec.DATAVENCIMENTO, forn.NOMEFORNECEDOR, rec.CAIXA , rec.formapagamento ,'
            + ' rec.EMISSAO, rec.CODPAGAMENTO,rec.OUTRO_CREDITO , '
            + ' rec.TITULO,  rec.VALOR_RESTO, rec.VALORTITULO, '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + ' rec.VIA, rec.N_DOCUMENTO, rec.VALOR_PRIM_VIA, rec.dp, rec.dup_rec_nf' +
            ' ,plano.NOME ,rec.CONTACREDITO, rec.HISTORICO ,rec.DATACONSOLIDA ,rec.DATAINCLUSAO ,rec.codcliente,rec.DATASISTEMA,cli.RA , cli.NOMECLIENTE ';


  repContasReceber.FileName := str_relatorio + 'rel_cpFiltroZERO.rep';


  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlTexto1 + sqlTexto + sqlTextoP + sqlGrupo;


  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  conta:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel15'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel16'));

  //Nome Socio
  if(JvDBSearchEdit1.Text <> '') then
  begin
    nomesocio:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel5'));
    if((JvDBSearchEdit1.Text <> '')or(JvDBSearchEdit1.Text = '') ) then
    begin
      nomesocio.Text := JvDBSearchEdit1.Text;
    end;
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
  if(JvDBSearchEdit1.Text <> '')then
  begin
    nomesocio.Text := '';
  end;
end;


end.




