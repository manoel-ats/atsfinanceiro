unit uCrTituloPagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, SqlExpr, Provider, DBCtrls, Grids, DBGrids, dxCore, dxButton,
  Mask, DBLocal, DBLocalS, DBClient, DBXpress, UCHistDataset, UCHist_Base,
  RXCtrls, JvExControls, JvLabel, JvExStdCtrls, JvEdit, JvDBSearchEdit,
  JvCombobox, JvDBSearchComboBox, JvExMask, JvToolEdit, JvDBControls ;

type
  TfcrTituloPagto = class(TfPai)
    s_forn: TSQLDataSet;
    d_forn: TDataSetProvider;
    cds_forn: TClientDataSet;
    cds_fornCODFORNECEDOR: TIntegerField;
    cds_fornNOMEFORNECEDOR: TStringField;
    scds_forn: TSQLClientDataSet;
    scds_fornCODFORNECEDOR: TIntegerField;
    scds_fornNOMEFORNECEDOR: TStringField;
    sds_desp: TSQLDataSet;
    dsp_desp: TDataSetProvider;
    cds_desp: TClientDataSet;
    cds_despCODIGO: TIntegerField;
    cds_despNOME: TStringField;
    sds: TSQLDataSet;
    ds_contas: TDataSource;
    ds_ccusto: TDataSource;
    d_3_caixa_banco: TDataSource;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn12: TBitBtn;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    CheckBox1: TCheckBox;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label14: TLabel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    DBGrid1: TDBGrid;
    Label16: TLabel;
    Label17: TLabel;
    edtcodred: TEdit;
    edtconta: TEdit;
    dbeCliente: TEdit;
    DBEdit4: TEdit;
    s_4: TSQLDataSet;
    d_4: TDataSetProvider;
    cds_4_pagar: TClientDataSet;
    DataSource2: TDataSource;
    s_4CODPAGAMENTO: TIntegerField;
    s_4TITULO: TStringField;
    s_4EMISSAO: TDateField;
    s_4CODFORNECEDOR: TIntegerField;
    s_4DATAVENCIMENTO: TDateField;
    s_4DATAPAGAMENTO: TDateField;
    s_4CAIXA: TSmallintField;
    s_4CONTADEBITO: TIntegerField;
    s_4CONTACREDITO: TIntegerField;
    s_4STATUS: TStringField;
    s_4FORMAPAGAMENTO: TStringField;
    s_4DATABAIXA: TDateField;
    s_4HISTORICO: TStringField;
    s_4CODCOMPRA: TIntegerField;
    s_4CODALMOXARIFADO: TSmallintField;
    s_4CODCOMPRADOR: TSmallintField;
    s_4CODUSUARIO: TSmallintField;
    s_4N_DOCUMENTO: TStringField;
    s_4DATASISTEMA: TSQLTimeStampField;
    s_4VALORRECEBIDO: TFloatField;
    s_4JUROS: TFloatField;
    s_4DESCONTO: TFloatField;
    s_4PERDA: TFloatField;
    s_4TROCA: TFloatField;
    s_4FUNRURAL: TFloatField;
    s_4VALOR_PRIM_VIA: TFloatField;
    s_4VALOR_RESTO: TFloatField;
    s_4VALORTITULO: TFloatField;
    s_4OUTRO_CREDITO: TFloatField;
    s_4OUTRO_DEBITO: TFloatField;
    s_4PARCELAS: TIntegerField;
    s_4VIA: TStringField;
    cds_4_pagarCODPAGAMENTO: TIntegerField;
    cds_4_pagarTITULO: TStringField;
    cds_4_pagarEMISSAO: TDateField;
    cds_4_pagarCODFORNECEDOR: TIntegerField;
    cds_4_pagarDATAVENCIMENTO: TDateField;
    cds_4_pagarDATAPAGAMENTO: TDateField;
    cds_4_pagarCAIXA: TSmallintField;
    cds_4_pagarCONTADEBITO: TIntegerField;
    cds_4_pagarCONTACREDITO: TIntegerField;
    cds_4_pagarSTATUS: TStringField;
    cds_4_pagarFORMAPAGAMENTO: TStringField;
    cds_4_pagarDATABAIXA: TDateField;
    cds_4_pagarHISTORICO: TStringField;
    cds_4_pagarCODCOMPRA: TIntegerField;
    cds_4_pagarCODALMOXARIFADO: TSmallintField;
    cds_4_pagarCODCOMPRADOR: TSmallintField;
    cds_4_pagarCODUSUARIO: TSmallintField;
    cds_4_pagarN_DOCUMENTO: TStringField;
    cds_4_pagarDATASISTEMA: TSQLTimeStampField;
    cds_4_pagarVALORRECEBIDO: TFloatField;
    cds_4_pagarJUROS: TFloatField;
    cds_4_pagarDESCONTO: TFloatField;
    cds_4_pagarPERDA: TFloatField;
    cds_4_pagarTROCA: TFloatField;
    cds_4_pagarFUNRURAL: TFloatField;
    cds_4_pagarVALOR_PRIM_VIA: TFloatField;
    cds_4_pagarVALOR_RESTO: TFloatField;
    cds_4_pagarVALORTITULO: TFloatField;
    cds_4_pagarOUTRO_CREDITO: TFloatField;
    cds_4_pagarOUTRO_DEBITO: TFloatField;
    cds_4_pagarPARCELAS: TIntegerField;
    cds_4_pagarVIA: TStringField;
    sds_for: TSQLDataSet;
    sds_forCODFORNECEDOR: TIntegerField;
    sds_forNOMEFORNECEDOR: TStringField;
    sdsCODIGO: TIntegerField;
    sdsCODREDUZIDO: TStringField;
    sdsNOME: TStringField;
    sdsCONTA: TStringField;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit5: TDBEdit;
    BuscaCodDespesas1: TMenuItem;
    BuscaFornecedor1: TMenuItem;
    ComboBox1: TComboBox;
    DBEdit6: TDBEdit;
    Label20: TLabel;
    DBEdit7: TDBEdit;
    Label21: TLabel;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    HistoricoReceber: TUCControlHistorico;
    Hist_DataSetDespesa: TUCHist_DataSet;
    BitBtn3: TBitBtn;
    RxLabel1: TRxLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    JvLabel1: TJvLabel;
    DBEdit13: TDBEdit;
    Label22: TLabel;
    lbl1: TLabel;
    dbedtEMISSAO: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    editCodCliente: TEdit;
    edCliente: TJvDBSearchEdit;
    btnLimpa: TBitBtn;
    DataSource3: TDataSource;
    cdsClienteBusca: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    JvDBSearchEdit1: TJvDBSearchEdit;
    JvDBSearchEdit2: TJvDBSearchComboBox;
    chk: TCheckBox;
    codcliente: TDBEdit;
    sqlP: TSQLDataSet;
    sqlPCODCLIENTE: TIntegerField;
    sqlPNOMECLIENTE: TStringField;
    sqlPRA: TStringField;
    btnLancar_socio: TBitBtn;
    LanarSocio1: TMenuItem;
    Label25: TLabel;
    DBEdit14: TDBEdit;
    s_4CODCLIENTE: TIntegerField;
    cds_4_pagarCODCLIENTE: TIntegerField;
    s_4RA: TStringField;
    s_4NOMECLIENTE: TStringField;
    cds_4_pagarRA: TStringField;
    cds_4_pagarNOMECLIENTE: TStringField;
    fgrupo: TBitBtn;
    JvDBSearchEdit3: TJvDBSearchEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    BuscarSocio1: TMenuItem;
    dsCDSV: TClientDataSet;
    dsCDSVNOMECLIENTE: TStringField;
    dsCDSVRA: TStringField;
    dsCDSVDATACADASTRO: TDateField;
    dsCDSVEMVIAGEM: TStringField;
    DSPV: TDataSetProvider;
    sqlV: TSQLDataSet;
    sqlVNOMECLIENTE: TStringField;
    sqlVRA: TStringField;
    sqlVDATACADASTRO: TDateField;
    sqlVEMVIAGEM: TStringField;
    Label26: TLabel;
    SQLc: TSQLDataSet;
    DSPc: TDataSetProvider;
    dsCDSc: TClientDataSet;
    data_recibo: TJvDateEdit;
    SQLcNOMECLIENTE: TStringField;
    SQLcRA: TStringField;
    SQLcDATACADASTRO: TDateField;
    SQLcTEM_IE: TStringField;
    dsCDScNOMECLIENTE: TStringField;
    dsCDScRA: TStringField;
    dsCDScDATACADASTRO: TDateField;
    dsCDScTEM_IE: TStringField;
    BitBl: TBitBtn;
    JvDBDateEdit1: TJvDBDateEdit;
    SQLDataSet1CODCLIENTE: TIntegerField;
    SQLDataSet1NOMECLIENTE: TStringField;
    SQLDataSet1RA: TStringField;
    cdsClienteBuscaCODCLIENTE: TIntegerField;
    cdsClienteBuscaNOMECLIENTE: TStringField;
    cdsClienteBuscaRA: TStringField;
    sqlSoma: TSQLDataSet;
    dspSoma: TDataSetProvider;
    cdsSoma: TClientDataSet;
    sqlSomaSOMA_VALOR_RESTO: TFloatField;
    sqlSomaVALOR_RESTO: TFloatField;
    sqlSomaVALORTITULO: TFloatField;
    cdsSomaSOMA_VALOR_RESTO: TFloatField;
    cdsSomaVALOR_RESTO: TFloatField;
    cdsSomaVALORTITULO: TFloatField;
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cds_4_pagarFORMAPAGAMENTOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cds_4_pagarSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBEdit9Exit(Sender: TObject);
    procedure dbeClienteExit(Sender: TObject);
    procedure edtcodredExit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure editCodClienteChange(Sender: TObject);
    procedure edClienteExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure JvDBSearchEdit2Exit(Sender: TObject);
    procedure btnLancar_socioClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure fgrupoClick(Sender: TObject);
    procedure JvDBSearchEdit3Exit(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BitBlClick(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure JvDBDateEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DespesaMes : String;
    titul ,dataentr ,dataemi, dataven, centr ,cont ,form ,codre,codf, nomf, caix: String ;
    valo, ndoc, datpg, datcon , neve, hist : String;
  end;

var
  fcrTituloPagto: TfcrTituloPagto;
  conta_rateio, usa_rateio: String;
  ccusto: Integer;

implementation

uses UDm, uRateioPag, uCheques_bol, ufcpproc, uProcurar,
  uFiltro_forn_plano, ufplanocontas, ufCrAltera, uUtils, uFinanceiro,
  UCDataInfo, sCtrlResize, uAtsAdmin, ufCpAltera, UProcuraGrupoT, UDmSaude;

{$R *.dfm}

procedure TfcrTituloPagto.dxButton1Click(Sender: TObject);
var str_sql2: string;
begin
  inherited;
  // Verifica se a conta de despesa lançada usa rateio
  // Se sim, abre o form de rateio.
  if DtSrc.State in [dsInsert] then
  begin
    btnGravar.Click;
    exit;
  end
  else
  begin
    if usa_rateio<> 'S' then
    begin
    if dm.c_1_planoc.Active then
      dm.c_1_planoc.Close;
    str_sql2 := 'Select * from PLANO ';
    str_sql2 := str_sql2 + 'WHERE CODREDUZIDO = ';
    str_sql2 := str_sql2 + '''' + edtcodred.Text + '''';
    dm.c_1_planoc.CommandText := str_sql2;
    dm.c_1_planoc.Open;
    if dm.c_1_planocRATEIO.AsString = 'S' then
      usa_rateio := 'S';
    end;
  if usa_rateio = 'S' then
  begin
    codigo := dm.cds_4_pagarCODPAGAMENTO.AsInteger;
    conta_pl := conta_rateio;
    valor_rateio := dm.cds_4_pagarVALORTITULO.AsFloat;
    tipo := 'PAGAMENTO';
    fRateioPag.ShowModal;
  end;
 end;
end;

procedure TfcrTituloPagto.dxButton2Click(Sender: TObject);
begin
  inherited;
  Cod_orig := dm.cds_4_pagarCODPAGAMENTO.AsInteger;
  tipo_origem := 'PAGAMENTO';
  cod_cli_forn := StrToInt(dbeCliente.Text);
  c_f := 'F'; // F=Fornecedor
  data_lanc := DM.cds_4_pagarEMISSAO.Value;
  data_lancado := DateToStr(DM.cds_4_pagarEMISSAO.Value);
  if DtSrc.State in [dsInsert, dsEdit] then
    btnGravar.Click;
  fCheques_bol.ShowModal;
end;

procedure TfcrTituloPagto.FormCreate(Sender: TObject);
begin
 // inherited;
  sCtrlResize.CtrlResize(TForm(fcrTituloPagto));
  DespesaMes := 'N';
  DBLookupComboBox1.Height := 28;
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
end;

procedure TfcrTituloPagto.FormDestroy(Sender: TObject);
begin
  inherited;
  dm.cds_7_contas.Close;
  dm.cds_ccusto.Close;
  dm.cds_1_contas.Close;
end;

procedure TfcrTituloPagto.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfcrTituloPagto.btnIncluirClick(Sender: TObject);
begin
  if(chk.Checked = True) then
  begin
    if(cdsClienteBusca.Active)then
      cdsClienteBusca.Close;
    cdsClienteBusca.Open;
  end;
  DespesaMes := 'N';
  if dm.cds_4_pagar.Active then
    dm.cds_4_pagar.close;
  dm.cds_4_pagar.Params[0].Clear;
  edtcodred.Clear;
  edtconta.Clear;
  DBEdit4.Clear;
  dbeCliente.Clear;

  inherited;
  dm.cds_4_pagarVIA.AsString := '1';
  dm.cds_4_pagarFORMAPAGAMENTO.AsString := '1-DINHEIRO';
  dm.cds_4_pagarSTATUS.AsString := '5-';
  dm.cds_4_pagarEMISSAO.AsDateTime := Now;
  dm.cds_4_pagarDATAVENCIMENTO.AsDateTime := Now;
  dm.cds_4_pagarPARCELAS.AsInteger := 1;
  {
  if(chk.Checked = True) then
    JvDBSearchEdit2.SetFocus
  else DBEdit1.SetFocus;
  }
  DBEdit1.SetFocus;
  IF (cds_4_pagar.Active) THEN
    cds_4_pagar.Close;

  if(chk.Checked = True) then
  begin
    DBEdit1.Text := titul ;
    dbedtEMISSAO.Text := dataentr ;
    DBEdit2.Text  := dataemi ;
    DBEdit3.Text  := dataven ;
    edtcodred.Text := codre ;
    edtconta.Text := cont ;
    dbeCliente.Text := codf;
    DBEdit4.Text := nomf;
    ComboBox1.Text:= form ;

   // DBEdit8.Text := valo;
    DBEdit5.Text := ndoc ;
   // DBEdit6.Text := datpg ;
    DBEdit7.Text :=   datcon ;  // incluido dia 15/08/13

    dm.cds_4_pagarDATACONSOLIDA.Text :=  datcon ;

    DBEdit13.Text:= neve;
    DBMemo1.Text := hist;


    if(caix = 'Caixa interno')then
    dm.cds_4_pagarCAIXA.AsInteger := 33;
    if(caix = 'ASH - Banco do Brasil')then
    dm.cds_4_pagarCAIXA.AsInteger := 108;
    if(caix = '*ASH - Sicredi')then
    dm.cds_4_pagarCAIXA.AsInteger := 729;
    if(caix = '.PCMSO - Sicredi')then
    dm.cds_4_pagarCAIXA.AsInteger := 729;

    dm.cds_4_pagarSTATUS.AsString := '5-';
   // DBLookupComboBox3.Text := caix;
     if(centr = 'ASH') then
    dm.cds_4_pagarCODALMOXARIFADO.AsInteger := 51 ;
     if(centr = 'PCMSO') then
    dm.cds_4_pagarCODALMOXARIFADO.AsInteger := 52 ;
    if(DBEdit4.Text <> '')then
    edtcodred.SetFocus;
  end;
end;

procedure TfcrTituloPagto.btnGravarClick(Sender: TObject);
var
  varsqlx, str_sql, str_sqla, inclusao, vlr_tit, vlr_rec , historico: string;
  vlr_deb, vlr_cre, vlr_saldo: double;
  varCrTituloPagto : TUtils;
  TD: TTransactionDesc;
  diferenca : Double ;
  sql_texto : string;
begin
  varCrTituloPagto := TUtils.Create;
  //dm.cds_4_pagarPERDA.AsFloat := 0;
  dm.cds_4_pagarFORMAPAGAMENTO.AsString := varCrTituloPagto.pegaForma(ComboBox1.Text);
  if dm.cds_4_pagarVALORRECEBIDO.AsFloat > 0 then
  begin
    if DBLookupComboBox3.Text = '' then
    begin
      MessageDlg('Informe o Caixa ou Banco para a Entrada.', mtWarning, [mbOK], 0);
      exit;
    end;
    dm.cds_4_pagarDATABAIXA.AsDateTime := dm.cds_4_pagarDATAPAGAMENTO.AsDateTime;
    if (ComboBox1.Text <> '') then
    begin
      dm.cds_4_pagarFORMAPAGAMENTO.AsString := varCrTituloPagto.pegaForma(ComboBox1.Text);
    end
    else begin
      MessageDlg('Informe a Forma de Pagamento.', mtWarning, [mbOK], 0);
      exit;
    end;
  end
  else begin // Populo a FORMAPAGAMENTO se estiver vazia pois a Procedure usa ela
    if (ComboBox1.Text <> '') then
    begin
      dm.cds_4_pagarFORMAPAGAMENTO.AsString := varCrTituloPagto.pegaForma(ComboBox1.Text);
    end
    else begin
      dm.cds_4_pagarFORMAPAGAMENTO.AsString := '1';
    end;
  end;
  if DtSrc.DataSet.State in [dsInsert] then
  begin
    inclusao := 'SIM';
    if dm.cds_4_pagarCONTACREDITO.IsNull then
      dm.cds_4_pagarCONTACREDITO.AsInteger := codigo_conta;
  end;
  if (inclusao = 'SIM') then
  begin
    dm.cds_4_pagarVALOR_PRIM_VIA.AsFloat := dm.cds_4_pagarVALORTITULO.AsFloat;
    dm.cds_4_pagarVALOR_RESTO.AsFloat := dm.cds_4_pagarVALORTITULO.AsFloat; // - dm.cds_4_pagarVALORRECEBIDO.AsFloat;
    //Abre a c_genid para pegar o número do CODPAGAMENTO
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_PAGAMENTO, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    codigo := dm.c_6_genid.Fields[0].AsInteger;
    dm.cds_4_pagarCODPAGAMENTO.AsInteger := dm.c_6_genid.fields[0].AsInteger;
    dm.c_6_genid.Close;
    if (dm.cds_4_pagarTITULO.IsNull) then
      dm.cds_4_pagarTITULO.AsString := formatdatetime('yyyy',dm.cds_4_pagarEMISSAO.AsDateTime) +
      '-' + IntToStr(dm.cds_4_pagarCODPAGAMENTO.AsInteger);
    vlr_tit := format('%12.2f',[dm.cds_4_pagarVALORTITULO.AsFloat]);
    vlr_rec := format('%12.2f',[dm.cds_4_pagarVALORRECEBIDO.AsFloat]);
    dm.cds_4_pagarVALOR_PRIM_VIA.AsFloat := dm.cds_4_pagarVALORTITULO.AsFloat;
    dm.cds_4_pagarVALOR_RESTO.AsFloat := dm.cds_4_pagarVALORTITULO.AsFloat;
    if ( vlr_tit = vlr_rec ) then
      dm.cds_4_pagarSTATUS.AsString := '5-';
    if(cdsClienteBuscaCODCLIENTE.AsInteger <> 0)then
    dm.cds_4_pagarCODCLIENTE.AsInteger := cdsClienteBuscaCODCLIENTE.AsInteger;
    if(cdsClienteBuscaCODCLIENTE.AsInteger = 0)then
    dm.cds_4_pagarCODCLIENTE.AsInteger := 0;
  end;
  inherited;
  if (inclusao = 'SIM') then
  begin
    // Verifica se a conta de despesa lançada usa rateio
    // Se sim, abre o form de rateio.
    if usa_rateio = 'S' then
    begin
      codigo := dm.cds_4_pagarCODPAGAMENTO.AsInteger;
      conta_pl := conta_rateio;
      valor_rateio := dm.cds_4_pagarVALORTITULO.AsFloat;
      tipo := 'PAGAMENTO';
      fRateioPag.ShowModal;
    end;
    str_sqla := ('execute procedure LANCA_CONT_COMPRA_PAG (' +
      '''' + dm.cds_4_pagarTITULO.AsString + ''',' + '''' + formatDateTime('mm/dd/yyyy',dm.cds_4_pagarEMISSAO.AsDateTime) + ''',' + IntTostr(dm.cds_4_pagarCODFORNECEDOR.AsInteger) + ')');
   // str_sql := ('execute procedure GERA_PARCELAS_PAG (' +
   //   '''' + dm.cds_4_pagarTITULO.AsString + ''',' + '''' + formatDateTime('mm/dd/yyyy',dm.cds_4_pagarEMISSAO.AsDateTime) + ''',' + IntTostr(dm.cds_4_pagarCODFORNECEDOR.AsInteger) + ')');

    str_sql := 'EXECUTE PROCEDURE GERA_PARCELAS_PAG (';
    str_sql := str_sql + IntToStr(dm.cds_4_pagarCODPAGAMENTO.AsInteger) + ')';


    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;

    if (CheckBox1.Checked) then
    begin
      try
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        // Executo o lancamento na contabilidade depois, pois, se houver
        // parcelas lanca cada uma como uma despesa mensal
        dm.sqlsisAdimin.ExecuteDirect(str_sqla);
        dm.sqlsisAdimin.Commit(TD);
        { Rotina para mudar a data emissão qdo o título é marcado q a conta é mensal }
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect('UPDATE PAGAMENTO p SET p.EMISSAO = ' +
           'UDF_INCMONTH(p.EMISSAO, (cast(p.VIA as smallint)-1)) where p.EMISSAO = '+
           QuotedStr(formatDateTime('mm/dd/yyyy',dm.cds_4_pagarEMISSAO.AsDateTime)) +
           ' and p.CODFORNECEDOR = ' + IntTostr(dm.cds_4_pagarCODFORNECEDOR.AsInteger) +
           ' and p.TITULO = ' + QuotedStr(dm.cds_4_pagarTITULO.AsString));
        dm.sqlsisAdimin.Commit(TD);

      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para gravar o lançamento.', mtError, [mbOK], 0);
      end;
    end
    else
    begin
      dm.sqlsisAdimin.ExecuteDirect(str_sqla);
      // Executo o lancamento na contabilidade antes, pois, se houver
      // parcelas isso não interfere no lancamento contábil.
      dm.sqlsisAdimin.ExecuteDirect(str_sql);

        //log user control
      dm.sqlsisAdimin.StartTransaction(TD);
        // manoel 03/06
        historico := 'INSERT INTO UCTABHISTORY ( APPLICATIONID, USERID, EVENTDATE ,EVENTTIME ' +
        ' ,FORM ,FORMCAPTION ,EVENT ,OBS ,TNAME'+
        ') VALUES (' +
        QuotedStr(DM.varAplicacaoID) + ',' +
        IntToStr(Dm.varUSERID) + ',' +
        QuotedStr(FormatDateTime('dd/mm/yyyy', now )) + ','+
        QuotedStr(FormatDateTime('hh:mm:ss', now )) + ','+
        QuotedStr(fcrTituloPagto.Name) + ',' +
        QuotedStr(fcrTituloPagto.Caption) + ','+
        QuotedStr('Inserido') + ','+
        QuotedStr('CODPAGAMENTO||' + IntToStr(dm.cds_4_pagarCODPAGAMENTO.AsInteger ) +
        'VALORTITULO||' +  FloatToStr(dm.cds_4_pagarVALORTITULO.AsFloat)) +
        ','  +
        QuotedStr('dm.cds_4_pagar') + ')';
     dm.sqlsisAdimin.ExecuteDirect(historico);
     dm.sqlsisAdimin.Commit(TD);
    end;
  end
  else begin
    if (DespesaMes = 'S') then
    begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    if (CheckBox1.Checked) then
    begin
      try
        { Rotina para mudar a data emissão qdo o título é marcado q a conta é mensal }
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect('UPDATE PAGAMENTO p SET p.EMISSAO = ' +
           'UDF_INCMONTH(p.EMISSAO, (cast(p.VIA as smallint)-1)) where p.EMISSAO = '+
           QuotedStr(formatDateTime('mm/dd/yyyy',dm.cds_4_pagarEMISSAO.AsDateTime)) +
           ' and p.CODFORNECEDOR = ' + IntTostr(dm.cds_4_pagarCODFORNECEDOR.AsInteger) +
           ' and p.TITULO = ' + QuotedStr(dm.cds_4_pagarTITULO.AsString));
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para gravar o lançamento.', mtError, [mbOK], 0);
      end;
    end;
    end;
  end;
    DecimalSeparator := '.';
      if dm.cds_parametro.Active then
      dm.cds_parametro.close;
    dm.cds_parametro.Params[0].AsString := 'SALDOCONTABIL';
    dm.cds_parametro.open;
    IF (dm.cds_parametro.IsEmpty) then
    begin
      varsqlx :=  'Insert into PARAMETRO (PARAMETRO,CONFIGURADO,DADOS,D1,D2) ' ;
      varsqlx := varsqlx + 'values (''SALDOCONTABIL'',''S'',''SALDOCONTABIL'',''0'',''0'')';
      dm.sqlsisAdimin.executedirect(varsqlx);
      if dm.cds_parametro.Active then
        dm.cds_parametro.close;
      dm.cds_parametro.Params[0].AsString := 'SALDOCONTABIL';
      dm.cds_parametro.open;
      vlr_deb := 0;
      vlr_cre := 0;
    end else begin
      vlr_deb := StrToFloat(dm.cds_parametroD1.AsString);
      vlr_cre := StrToFloat(dm.cds_parametroD2.AsString);
    end;
    vlr_deb := ( vlr_deb + dm.cds_4_pagarVALORTITULO.AsFloat);
    vlr_cre := ( vlr_cre + dm.cds_4_pagarVALORTITULO.AsFloat);
    vlr_saldo := (vlr_deb - vlr_cre);
    dm.cds_parametro.edit;
    dm.cds_parametroD1.AsString := FloatToStr( vlr_deb);
    dm.cds_parametroD2.AsString := FloatToStr( vlr_cre);
    DecimalSeparator := ',';
    dm.cds_parametro.ApplyUpdates(0);
    dm.cds_parametro.Close;
    {Testa se é uso para LOTEAMENTO }
    if dm.cds_parametro.Active then
      dm.cds_parametro.close;
    dm.cds_parametro.Params[0].AsString := 'USOSISTEMA';
    dm.cds_parametro.open;
    if (dm.cds_parametroDADOS.AsString = 'LOTEAMENTO') then
    begin
      //BUSCA O LOTEAMENTO
      if dm.cds_rateio.Active then
        dm.cds_rateio.Close;
      dm.cds_rateio.Params[0].AsInteger := codigo;
      dm.cds_rateio.Params[1].AsString := tipo;
      dm.cds_rateio.Params[2].AsString := conta_pl;
      dm.cds_rateio.Open;
      if dm.cds_rateio.IsEmpty then
      begin
        MessageDlg('Informe o Rateio da Despesa !', mtWarning, [mbOK], 0);
      end;
      //Executa procedure para inserir custos nos lotes
      str_sql := 'EXECUTE PROCEDURE INSERE_CUSTO_PRODUTO (';
      str_sql := str_sql + IntToStr(dm.cds_rateioCODCCUSTO.asInteger);
      str_sql := str_sql + ')';
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
    end;
    if (cds_4_pagar.Active) then
       cds_4_pagar.Close;
    cds_4_pagar.Params[0].AsInteger := dm.cds_4_pagarCODFORNECEDOR.AsInteger;
    cds_4_pagar.Params[1].AsString := dm.cds_4_pagarTITULO.AsString;
    cds_4_pagar.Open;

    if(chk.Checked = True) then
    begin
      titul      := dm.cds_4_pagarTITULO.AsString;
      dataentr   := dm.cds_4_pagarDATAINCLUSAO.AsString;
      dataemi    := dm.cds_4_pagarEMISSAO.AsString;
      dataven    := dm.cds_4_pagarDATAVENCIMENTO.AsString;
      centr      := DBLookupComboBox1.Text;
      codre      := edtcodred.Text;
      cont       := edtconta.Text;
      codf       := dbeCliente.Text;
      nomf       := DBEdit4.Text;
      form       := ComboBox1.Text;
      caix       := DBLookupComboBox3.Text;
      valo       := DBEdit8.Text;
      ndoc       := DBEdit5.Text;
      datpg      := DBEdit6.Text;
      datcon     := dm.cds_4_pagarDATACONSOLIDA.AsString; //  DBEdit7.Text;   15/08/13
      neve       := DBEdit13.Text;
      hist       := DBMemo1.Text;

    end;

    if (cdsSoma.Active) then
       cdsSoma.Close;
    cdsSoma.Params[0].AsInteger := dm.cds_4_pagarCODFORNECEDOR.AsInteger;
    cdsSoma.Params[1].AsString := dm.cds_4_pagarTITULO.AsString;
    cdsSoma.Open;


  if(cdsSomaSOMA_VALOR_RESTO.Value <> cds_4_pagarVALORTITULO.Value)then
  begin
    diferenca := ( cdsSomaSOMA_VALOR_RESTO.Value  - cds_4_pagarVALORTITULO.Value) ;
    DecimalSeparator := '.';
    sql_texto := 'UPDATE pagamento set valor_resto = ';
    sql_texto := sql_texto +  FloatToStr((cdsSomaVALOR_RESTO.Value - diferenca));
    sql_texto := sql_texto + ' where CODPAGAMENTO = ';
    sql_texto := sql_texto + IntToStr(cds_4_pagarCODPAGAMENTO.Value);
    sql_texto := sql_texto + ' and via = ' + QuotedStr('1');
    dm.sqlsisAdimin.ExecuteDirect(sql_texto);
    DecimalSeparator := ',';

    if (cds_4_pagar.Active) then
       cds_4_pagar.Close;
    cds_4_pagar.Params[0].AsInteger := dm.cds_4_pagarCODFORNECEDOR.AsInteger;
    cds_4_pagar.Params[1].AsString := dm.cds_4_pagarTITULO.AsString;
    cds_4_pagar.Open;
    

  end;


 end;

procedure TfcrTituloPagto.btnProcurarClick(Sender: TObject);
var utilCrTitPag: TUtils;
begin
  inherited;
 fCpProc:=TfCpProc.Create(Application);
 try
   DespesaMes := 'S';
   fCpProc.btnIncluir.Enabled := False;
   //fcpproc.btnSair.Caption := 'Ver';
   fCpProc.bitBtn9.Enabled := True;
   fCpProc.Edit2.Text := 'X';   
   fcpproc.ShowModal;
   if (not dm.cds_4_pagar.IsEmpty) then
   begin
     if (sds.Active) then
       sds.Close;
     sds.Params[0].AsInteger := dm.cds_4_pagarCONTACREDITO.AsInteger;
     sds.Open;
     edtcodred.Text := sds.Fields[1].AsString;
     edtconta.Text := sds.Fields[2].AsString;
     conta_rateio := sds.Fields[3].AsString;
        if (sds_for.Active) then
       sds_for.Close;
     sds_for.Params[0].AsInteger := dm.cds_4_pagarCODFORNECEDOR.AsInteger;
     sds_for.Open;
     dbeCliente.Text := sds_for.Fields[0].AsString;
     DBEdit4.Text := sds_for.Fields[1].AsString;
     sds.Close;
     sds_for.Close;

     if(codcliente.Text <> 'q')then
     begin
       if (sqlP.Active) then
         sqlP.Close;
       sqlP.Params[0].AsInteger := dm.cds_4_pagarCODCLIENTE.AsInteger;
       sqlP.Open;
       if(dm.cds_4_pagarCODCLIENTE.AsInteger = 0)then
       begin
       JvDBSearchEdit2.Text := '';
       JvDBSearchEdit1.Text := '';
       end;
       JvDBSearchEdit2.Text := sqlP.Fields[1].AsString;
       JvDBSearchEdit1.Text := sqlP.Fields[2].AsString;

     end;
     //aqui mostro parcelas no dbgrig...
     if (cds_4_pagar.Active) then
       cds_4_pagar.Close;
     cds_4_pagar.Params[0].AsInteger := dm.cds_4_pagarCODFORNECEDOR.AsInteger;
     cds_4_pagar.Params[1].AsString := dm.cds_4_pagarTITULO.AsString;
     cds_4_pagar.Open;
     // para mostrar valores na COMBO
     if (dm.cds_ccusto.Active) then
       dm.cds_ccusto.Close;
     dm.cds_ccusto.Params[0].AsString := conta_desp;
     dm.cds_ccusto.Open;
     utilCrTitPag := TUtils.Create;
     ComboBox1.ItemIndex := utilCrTitPag.retornaForma(cds_4_pagarFORMAPAGAMENTO.AsString);
   end;
 finally
   fCpProc.Free;
   fcrTituloPagto.SetFocus;
 end;
end;

procedure TfcrTituloPagto.BitBtn12Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
  begin
    tipo_for := 'CONTASDESPESAS';
    fFiltro_forn_plano.BitBtn6.Click;
    //fFiltro_forn_plano.BitBtn1.Click;
    fFiltro_forn_plano.ShowModal;
    edtcodred.Text := varconta_cod;
    edtconta.Text := varconta_nome;
    usa_rateio := com_rateio;
    dm.cds_4_pagarCONTACREDITO.AsInteger := codigo_conta;
    conta_rateio := varconta;
    Dm.cds_4_pagarHISTORICO.Text :=  varconta_nome;
    dbeCliente.SetFocus;
  end;
  varconta_cod := '';
  varconta_nome := '';
end;

procedure TfcrTituloPagto.BitBtn1Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  try
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
    fProcurar.btnIncluir.Visible := True;
    if (dm.moduloUsado = 'SAUDE') then    //manoel 15/01 Acertar para abrir o form Correto
      fProcurar.btnIncluir.Visible := False;
    fProcurar.ShowModal;
    dm.cds_4_pagarCODFORNECEDOR.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
    dm.cds_4_pagarNOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dbeCliente.Text := IntToStr(dm.scds_forn_procCODFORNECEDOR.AsInteger);
    DBEdit4.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
  finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
    JvDBSearchEdit1.SetFocus;
  end;
end;

procedure TfcrTituloPagto.cds_4_pagarFORMAPAGAMENTOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '1' then
    begin
     Text:='1-CHEQUE';
     exit;
    end;
  if Sender.AsString = '2' then
    begin
     Text:='2-DINHEIRO';
     exit;
    end;
  if Sender.AsString = '3' then
    begin
     Text:='3-DEPÓSITO';
     exit;
    end;

  if Sender.AsString = '4' then
    begin
     Text:='4-PRÉ-DATADO';
     exit;
    end;
  if Sender.AsString = '5' then
    begin
     Text:='5-CARTÃO';
     exit;
    end;
  if Sender.AsString = '6' then
    begin
     Text:='6-CANCELADO';
     exit;
    end;
  if Sender.AsString = '7' then
    begin
     Text:='7-SUSPENSO';
     exit;
    end;
  if Sender.AsString = '8' then
    begin
     Text:='8-CARTÓRIO';
     exit;
    end;

end;

procedure TfcrTituloPagto.cds_4_pagarSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '5-' then
    begin
     Text:='PENDENTE';
     exit;
    end;
  if Sender.AsString = '6-' then
    begin
     Text:='PENDENTE CONTABILIZADO';
     exit;
    end;
  if Sender.AsString = '7-' then
    begin
     Text:='PAGO';
     exit;
    end;
  if Sender.AsString = '1-' then
    begin
     Text:='AGUARDANDO';
     exit;
    end;
  if Sender.AsString = '4-' then
    begin
     Text:='CARTÓRIO';
     exit;
    end;
  if Sender.AsString = '2-' then
    begin
     Text:='ANULADO';
     exit;
    end;
  if Sender.AsString = '3-' then
    begin
     Text:='CANCELADO';
     exit;
    end;
  if Sender.AsString = '8-' then
    begin
     Text:='SUSPENSO';
     exit;
    end;

end;

procedure TfcrTituloPagto.DBEdit9Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit9.Text <> '') then
  try
    if (StrToInt(DBEdit9.Text) > 1) then
    begin
      CheckBox1.Enabled := True;
      CheckBox1.SetFocus;
    end;
  except
  end;
end;

procedure TfcrTituloPagto.dbeClienteExit(Sender: TObject);
begin
  inherited;
  if dbeCliente.Text='' then exit;
  if dtsrc.State = dsInsert then
  begin
    if dm.scds_forn_proc.Active then
    dm.scds_forn_proc.Close;
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    dm.scds_forn_proc.Params[0].Clear;
    dm.scds_forn_proc.Params[1].Clear;
    dm.scds_forn_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text);
    dm.scds_forn_proc.Open;
    if dm.scds_forn_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      BitBtn1.Click;
      exit;
    end;
    dm.cds_4_pagarCODFORNECEDOR.AsInteger:=dm.scds_forn_procCODFORNECEDOR.AsInteger;
    dm.cds_4_pagarNOMEFORNECEDOR.AsString:=dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dbEdit4.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dm.scds_forn_proc.Close;
  end
  else
  if (dm.cds_4_pagarCODFORNECEDOR.OldValue <> dm.cds_4_pagarCODFORNECEDOR.NewValue) then
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
      BitBtn1.Click;
      exit;
    end;
    dm.cds_4_pagarCODFORNECEDOR.AsInteger:=dm.scds_forn_procCODFORNECEDOR.AsInteger;
    dm.cds_4_pagarNOMEFORNECEDOR.AsString:=dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dbEdit4.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    dm.scds_forn_proc.Close;
  end;

end;

procedure TfcrTituloPagto.edtcodredExit(Sender: TObject);
var strc: string;
begin
  inherited;
  if (edtcodred.Text = '') then exit;

  if (DM.c_1_planoc.Active) then
    DM.c_1_planoc.Close;
  strc := 'Select * from PLANO ';
  strc := strc + 'WHERE ';
  strc := strc + 'CODREDUZIDO = ';
  strc := strc + '''' + edtcodred.Text + '''';
  DM.c_1_planoc.CommandText := strc;
  DM.c_1_planoc.Open;
  if DM.c_1_planoc.IsEmpty then begin
    MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
    [mbOk], 0);
    BitBtn12.Click;
    exit;
  end
  else begin
    conta_rateio := DM.c_1_planocCONTA.AsString;
    edtconta.Text := dm.c_1_planocNOME.AsString;
    codigo_conta := dm.c_1_planocCODIGO.AsInteger;
    dm.cds_4_pagarCONTACREDITO.AsInteger := dm.c_1_planocCODIGO.AsInteger;
    usa_rateio := dm.c_1_planocRATEIO.AsString;
    Dm.cds_4_pagarHISTORICO.Text :=  edtconta.Text;
  end;
  dm.c_1_planoc.Close;
end;

procedure TfcrTituloPagto.btnExcluirClick(Sender: TObject);
var
  deleta : String;
  TD: TTransactionDesc;
begin
  deleta := 'Delete from PAGAMENTO WHERE TITULO = ';
  deleta := deleta + '''' + DM.cds_4_pagarCODPAGAMENTO.AsString + '''';
  deleta := deleta + ' and CODFORNECEDOR = ';
  deleta := deleta +  IntToStr(DM.cds_4_pagarCODFORNECEDOR.AsInteger);
  // Comentei estas linhas pois, a data de emissão não é igual qdo é
  // marcado despesa mensal.
  // deleta := deleta + ' and EMISSAO = ';
  // deleta := deleta + '''' + formatdatetime('mm/dd/yy',DM.cds_4_pagarEMISSAO.AsDateTime) + '''';
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dm.sqlsisAdimin.ExecuteDirect(deleta);
    dm.sqlsisAdimin.Commit(TD);
    if (cds_4_pagar.Active) then
      cds_4_pagar.Close;
    if (dm.cds_4_pagar.Active) then
      dm.cds_4_pagar.Close;
    dbeCliente.Text := '';
    DBEdit4.Text := '';
    MessageDlg('Registro excluído com sucesso.', mtError, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para excluir, exclusão não efetuada.', mtError, [mbOK], 0);
  end;

end;

procedure TfcrTituloPagto.DBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
  //DBMemo1.SetFocus;
end;

procedure TfcrTituloPagto.SpeedButton2Click(Sender: TObject);
var sqlcr: string;
begin
  inherited;
  {fCrAltera := TfCrAltera.Create(Application);
  fCrAltera.uso := 'PAGAR';
  try
    if (not fCrAltera.cdscp.Active) then
      fCrAltera.cdscp.Close;
    fCrAltera.DtSrc.DataSet := fCrAltera.cdscp;
    fCrAltera.DBGrid1.Columns[3].FieldName := 'DATAPAGAMENTO';
    fCrAltera.DBEdit3.DataField := 'DATAPAGAMENTO';
    fCrAltera.cdscp.Params[0].AsString := cds_4_pagarTITULO.AsString;
    fCrAltera.cdscp.Params[1].AsInteger := cds_4_pagarCODFORNECEDOR.AsInteger;
    fCrAltera.cdscp.Params[2].AsDateTime := cds_4_pagarEMISSAO.AsDateTime;
    fCrAltera.cdscp.Open;
    fCrAltera.Label1.Caption := cds_4_pagarTITULO.AsString;
    fCrAltera.Label2.Caption := cds_4_pagarTITULO.AsString;
    fCrAltera.ShowModal;
    cds_4_pagar.Refresh;
  finally
    fCrAltera.Free;
  end;
  }
  fcpAltera := TfcpAltera.Create(Application);
  try
    if (not fCpAltera.cds.Active) then
      fCpAltera.cds.Close;
    fCpAltera.cds.Params[0].AsString := cds_4_pagarTITULO.AsString;
    fCpAltera.cds.Params[1].AsInteger := cds_4_pagarCODFORNECEDOR.AsInteger;
    fCpAltera.cds.Params[2].AsDateTime := cds_4_pagarEMISSAO.AsDateTime;
    fCpAltera.cds.Open;
    fCpAltera.Label1.Caption := cds_4_pagarTITULO.AsString;
    fCpAltera.Label2.Caption := cds_4_pagarTITULO.AsString;
    fcpAltera.ShowModal;
    cds_4_pagar.Close;
    cds_4_pagar.Open;
  finally
    fcpAltera.Free;
  end;

end;

procedure TfcrTituloPagto.CheckBox1Click(Sender: TObject);
begin
  inherited;
  // Esta variável é mudada qdo é feito uma procura dai ela fica como Y
  // Qdo é apertado incluir ela fica como N
  if (DespesaMes = 'Y') then
    DespesaMes := 'S';
end;

procedure TfcrTituloPagto.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if (dm.cds_4_pagarVALORRECEBIDO.AsFloat > 0) then
  begin
    dm.cds_4_pagarDATAPAGAMENTO.AsDateTime := dm.cds_4_pagarEMISSAO.AsDateTime;
    dm.cds_4_pagarDATACONSOLIDA.AsDateTime := dm.cds_4_pagarEMISSAO.AsDateTime;
  end;
end;

procedure TfcrTituloPagto.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dbEdit7.Text := '';
  dm.cds_4_pagarDATACONSOLIDA.Clear;
end;

procedure TfcrTituloPagto.BitBtn4Click(Sender: TObject);
begin
  inherited;
  dbEdit6.Text := '';
  dm.cds_4_pagarDATAPAGAMENTO.Clear;
end;

procedure TfcrTituloPagto.DBEdit2Exit(Sender: TObject);
begin
  inherited;
{ alterado dia 12/08/2010
  if (dm.moduloUsado = 'SAUDE') then
  dm.cds_4_pagarDATACONSOLIDA.AsDateTime := DM.cds_4_pagarEMISSAO.AsDateTime;
}
end;

procedure TfcrTituloPagto.FormShow(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
   edtcodred.Text := '';
   edtconta.Text := '';
   dbeCliente.Text := '';
   DBEdit4.Text := '';
  // inherited;
   //Lista Cestro de Custos
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;
  conta_desp := dm.cds_parametroDADOS.AsString;
  {------Pesquisando na tab Parametro se usa centro de Receita ---------}
  if dm.cds_parametroCONFIGURADO.AsString = 'S' then
  begin
    DBLookupComboBox1.Enabled := True;
    DBLookupComboBox1.Height := 28;
  end;

  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_ccusto.Open;
  dm.cds_parametro.Close;
  // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;
  combobox1.Items.Clear;
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    combobox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;
    JvDBSearchEdit1.Text := '';
    JvDBSearchEdit2.Text := '';
    JvDBSearchEdit3.Text := '';
end;

procedure TfcrTituloPagto.editCodClienteChange(Sender: TObject);
begin
  //inherited;
  cdsClienteBusca.Locate('RA',editCodCliente.Text,[loCaseInsensitive]);
end;

procedure TfcrTituloPagto.edClienteExit(Sender: TObject);
begin
  //inherited;
   editCodCliente.Text := IntToStr(cdsClienteBuscaRA.asInteger);
end;

procedure TfcrTituloPagto.btnCancelarClick(Sender: TObject);
begin
  inherited;
  chk.Checked := False;
  if(chk.Checked = False) then
  if(cdsClienteBusca.Active)then
  cdsClienteBusca.Close;
  JvDBSearchEdit1.Text := '';
  JvDBSearchEdit2.Text := '';
end;

procedure TfcrTituloPagto.JvDBSearchEdit2Exit(Sender: TObject);
var data : tdatetime;
begin
 // inherited;
  Label26.Caption := '';
  Data := Date;
  if(JvDBSearchEdit2.Text = '')then
  exit;
  if dsCDSV.Active then
      dsCDSV.Close;
   dsCDSV.Params[0].AsString := trim(JvDBSearchEdit1.Text);
   dsCDSV.Open;

   if ( (dsCDSVEMVIAGEM.Value = 'S')) then
   begin
     MessageDlg('Associado em Viagem ', mtWarning, [mbOK], 0);
     Label26.Caption := 'Associado em Viagem'  ;
     dsCDSV.Close;
   end;

//begin
 // inherited;
 // DBEdit1.SetFocus;


end;

procedure TfcrTituloPagto.btnLancar_socioClick(Sender: TObject);
begin
//  inherited;
  chk.Checked := True;
  if (cdsClienteBusca.Active) then
  begin
   cdsClienteBusca.Close;
  end;
  cdsClienteBusca.Open;
  JvDBSearchEdit3.Text := '';
end;

procedure TfcrTituloPagto.DBEdit14Exit(Sender: TObject);
var datarec  : tdatetime;
    dat  : string ;
    cad  : TDate;
begin
 {
  if(DBEdit14.Text = '  /  /    ') then
    begin
      DBEdit8.SetFocus;
      exit;
    end
  else
  dat := formatdatetime('dd/mm/yyyy', StrToDate(DBEdit14.Text)) ;

  data_recibo.Text := dat;

  Datarec := data_recibo.Date ;

  if(JvDBSearchEdit2.Text = '')then
  exit;
  if dsCDSc.Active then
     dsCDSc.Close;

  dsCDSc.Params[0].AsDate :=  Datarec ;
  dsCDSc.Params[1].AsString := trim(JvDBSearchEdit1.Text);

  dsCDSc.Open;

  cad := dsCDScDATACADASTRO.value;


  if ((dsCDScDATACADASTRO.Value + 180 ) >= (datarec)) then
  begin
    MessageDlg('Lançamento Recibo : "Associado em Carência" ', mtWarning, [mbOK], 0);
    Label26.Caption := 'Lançamento Recibo : "Associado em Carência" '  ;
    dsCDSC.Close;
  end;
 }
end;

procedure TfcrTituloPagto.DBEdit4Exit(Sender: TObject);
begin
//  inherited;
   JvDBSearchEdit1.SetFocus;
end;

procedure TfcrTituloPagto.fgrupoClick(Sender: TObject);
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
    Edit1.Text := DMSaude.procgrupoTRA.AsString;
    Edit2.Text := IntToStr(cdsClienteBuscaCODCLIENTE.asInteger);
   finally
    fProcuraGrupoT.Free;
  end;

end;

procedure TfcrTituloPagto.JvDBSearchEdit3Exit(Sender: TObject);
begin
 // inherited;
  Edit1.Text := IntToStr(cdsClienteBuscaRA.asInteger);
  Edit2.Text := IntToStr(cdsClienteBuscaCODCLIENTE.asInteger);
end;

procedure TfcrTituloPagto.Edit2Change(Sender: TObject);
begin
 // inherited;
  cdsClienteBusca.Locate('RA',Edit1.Text,[loCaseInsensitive]);
end;

procedure TfcrTituloPagto.BitBlClick(Sender: TObject);
begin
 // inherited;
  JvDBDateEdit1.Date := 0;
  JvDBDateEdit1.SetFocus;
end;

procedure TfcrTituloPagto.JvDBDateEdit1Exit(Sender: TObject);
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

  data_recibo.Text := dat;

  Datarec := JvDBDateEdit1.Date ;
  if(JvDBSearchEdit2.Text = '')then
  exit;
  if dsCDSc.Active then
    dsCDSc.Close;

  dsCDSc.Params[0].AsDate :=  Datarec ;
  dsCDSc.Params[1].AsString := trim(JvDBSearchEdit1.Text);

  dsCDSc.Open;

  cad := dsCDScDATACADASTRO.value;


  if ((dsCDScDATACADASTRO.Value + 180 ) >= (datarec)) then
  begin
    MessageDlg('Lançamento Recibo : "Associado em Carência" ', mtWarning, [mbOK], 0);
    Label26.Caption := 'Lançamento Recibo : "Associado em Carência" '  ;
    dsCDSC.Close;
  end;


end;

end.
