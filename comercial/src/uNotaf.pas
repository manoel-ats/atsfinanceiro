unit uNotaf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, JvExStdCtrls, JvGroupBox, ComCtrls,
  JvExComCtrls, JvComCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask,
  Buttons, ExtCtrls, MMJPanel, JvExMask, JvToolEdit, JvDBControls,
  JvCheckBox, DB, DBClient, JvMaskEdit, FMTBcd, SqlExpr;

type
  TfNotaf = class(TForm)
    JvPageControl1: TJvPageControl;
    TabNF: TTabSheet;
    JvGroupBox1: TJvGroupBox;
    cbNatureza: TDBComboBox;
    JvGroupBox2: TJvGroupBox;
    cbCFOP: TDBComboBox;
    JvGroupBox3: TJvGroupBox;
    MMJPanel2: TMMJPanel;
    rg: TRadioGroup;
    DBText1: TDBText;
    JvGroupBox4: TJvGroupBox;
    DBText2: TDBText;
    JvGroupBox5: TJvGroupBox;
    cbCLiente: TDBComboBox;
    BitBtn1: TBitBtn;
    JvGroupBox6: TJvGroupBox;
    DBEdit1: TDBEdit;
    JvGroupBox7: TJvGroupBox;
    DBEdit2: TDBEdit;
    JvGroupBox8: TJvGroupBox;
    DBEdit3: TDBEdit;
    JvGroupBox9: TJvGroupBox;
    DBEdit4: TDBEdit;
    JvGroupBox10: TJvGroupBox;
    JvGroupBox11: TJvGroupBox;
    JvGroupBox12: TJvGroupBox;
    DBEdit5: TDBEdit;
    JvGroupBox13: TJvGroupBox;
    DBEdit6: TDBEdit;
    JvGroupBox14: TJvGroupBox;
    DBEdit7: TDBEdit;
    JvGroupBox15: TJvGroupBox;
    DBEdit8: TDBEdit;
    JvGroupBox16: TJvGroupBox;
    JvGroupBox17: TJvGroupBox;
    DBEdit9: TDBEdit;
    JvGroupBox18: TJvGroupBox;
    DBEdit10: TDBEdit;
    JvGroupBox19: TJvGroupBox;
    DBEdit11: TDBEdit;
    JvGroupBox20: TJvGroupBox;
    DBEdit12: TDBEdit;
    JvGroupBox21: TJvGroupBox;
    DBEdit13: TDBEdit;
    JvGroupBox22: TJvGroupBox;
    DBEdit14: TDBEdit;
    JvGroupBox23: TJvGroupBox;
    DBEdit15: TDBEdit;
    JvGroupBox24: TJvGroupBox;
    DBEdit16: TDBEdit;
    JvGroupBox25: TJvGroupBox;
    DBEdit17: TDBEdit;
    JvGroupBox26: TJvGroupBox;
    DBEdit18: TDBEdit;
    JvGroupBox27: TJvGroupBox;
    DBEdit19: TDBEdit;
    JvGroupBox28: TJvGroupBox;
    JvGroupBox29: TJvGroupBox;
    cbTransportadora: TDBComboBox;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit54: TDBEdit;
    JvGroupBox30: TJvGroupBox;
    DBEdit20: TDBEdit;
    JvGroupBox31: TJvGroupBox;
    DBEdit21: TDBEdit;
    JvGroupBox32: TJvGroupBox;
    DBEdit22: TDBEdit;
    JvGroupBox33: TJvGroupBox;
    DBEdit23: TDBEdit;
    JvGroupBox34: TJvGroupBox;
    DBEdit24: TDBEdit;
    JvGroupBox35: TJvGroupBox;
    DBEdit25: TDBEdit;
    JvGroupBox36: TJvGroupBox;
    DBEdit26: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    JvGroupBox37: TJvGroupBox;
    DBEdit27: TDBEdit;
    JvGroupBox38: TJvGroupBox;
    DBEdit28: TDBEdit;
    JvGroupBox39: TJvGroupBox;
    DBEdit29: TDBEdit;
    JvGroupBox40: TJvGroupBox;
    DBEdit30: TDBEdit;
    JvGroupBox41: TJvGroupBox;
    DBEdit31: TDBEdit;
    JvGroupBox42: TJvGroupBox;
    DBEdit32: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit33: TDBEdit;
    BitBtn3: TBitBtn;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    BitBtn4: TBitBtn;
    cbFinanceiro: TJvCheckBox;
    cbEstoque: TJvCheckBox;
    dbeSerie: TDBEdit;
    dbeUsuario: TDBEdit;
    DataSource1: TDataSource;
    JvDBGrid1: TJvDBGrid;
    BitBtn5: TBitBtn;
    DBEdit34: TDBEdit;
    BitBtn6: TBitBtn;
    TabSheet1: TTabSheet;
    RadioGroup1: TRadioGroup;
    JvGroupBox43: TJvGroupBox;
    cbCLiente1: TDBComboBox;
    BitBtn7: TBitBtn;
    JvGroupBox44: TJvGroupBox;
    DBEdit35: TDBEdit;
    JvGroupBox45: TJvGroupBox;
    DBEdit36: TDBEdit;
    JvGroupBox46: TJvGroupBox;
    DBEdit37: TDBEdit;
    JvGroupBox47: TJvGroupBox;
    DBEdit38: TDBEdit;
    JvGroupBox48: TJvGroupBox;
    DBEdit39: TDBEdit;
    JvGroupBox49: TJvGroupBox;
    DBEdit40: TDBEdit;
    JvGroupBox50: TJvGroupBox;
    DBEdit41: TDBEdit;
    JvGroupBox51: TJvGroupBox;
    DBEdit42: TDBEdit;
    JvGroupBox52: TJvGroupBox;
    JvDBDateEdit3: TJvDBDateEdit;
    JvGroupBox53: TJvGroupBox;
    DBEdit43: TDBEdit;
    JvDBGrid2: TJvDBGrid;
    Label1: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit44: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    JvGroupBox54: TJvGroupBox;
    DBEdit47: TDBEdit;
    BitBtn8: TBitBtn;
    proc_transp: TSQLDataSet;
    proc_transpCODTRANSP: TIntegerField;
    proc_transpNOMETRANSP: TStringField;
    proc_transpPLACATRANSP: TStringField;
    proc_transpCNPJ_CPF: TStringField;
    proc_transpEND_TRANSP: TStringField;
    proc_transpCIDADE_TRANSP: TStringField;
    proc_transpUF_VEICULO_TRANSP: TStringField;
    proc_transpUF_TRANSP: TStringField;
    proc_transpFRETE: TStringField;
    proc_transpINSCRICAOESTADUAL: TStringField;
    proc_transpCORPONF1: TStringField;
    proc_transpCORPONF2: TStringField;
    proc_transpCORPONF3: TStringField;
    proc_transpCORPONF4: TStringField;
    proc_transpCORPONF5: TStringField;
    proc_transpCORPONF6: TStringField;
    proc_transpFONE: TStringField;
    proc_transpFONE2: TStringField;
    proc_transpFAX: TStringField;
    proc_transpCONTATO: TStringField;
    proc_transpBAIRRO: TStringField;
    proc_transpCEP: TStringField;
    listaCliente1: TSQLDataSet;
    listaCliente1CODCLIENTE: TIntegerField;
    listaCliente1NOMECLIENTE: TStringField;
    listaCliente1RAZAOSOCIAL: TStringField;
    listaCliente1CNPJ: TStringField;
    listaCliente1INSCESTADUAL: TStringField;
    listaCliente1LOGRADOURO: TStringField;
    listaCliente1BAIRRO: TStringField;
    listaCliente1COMPLEMENTO: TStringField;
    listaCliente1CIDADE: TStringField;
    listaCliente1UF: TStringField;
    listaCliente1CEP: TStringField;
    listaCliente1TELEFONE: TStringField;
    listaCliente1PRAZORECEBIMENTO: TSmallintField;
    listaCliente1COD_TRANPORTADORA: TIntegerField;
    sdsTotal: TSQLDataSet;
    Label26: TLabel;
    Label36: TLabel;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    BitBtn9: TBitBtn;
    localizaProduto: TSQLDataSet;
    localizaProdutoCODPRO: TStringField;
    localizaProdutoPRODUTO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbCLienteChange(Sender: TObject);
    procedure cbNaturezaChange(Sender: TObject);
    procedure cbCFOPChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure cbTransportadoraChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit11Change(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure cbCLiente1Change(Sender: TObject);
    procedure JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1ColExit(Sender: TObject);
    procedure JvDBGrid1EditChange(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Private declarations }
    procedure incluiEntrada;
    procedure incluiSAida;
    procedure incluiMovimento;
    procedure incluiVenda;
    procedure incluiNotaFiscal;
    procedure buscaserieNF;
    procedure CarregaParametros;
    procedure gravamovimento;
    procedure gravamov_detalhe;
    procedure gravavenda;
    procedure alteraVlrVenda;
  public
      vrr : double;
      codMovFin, codVendaFin, codCliFin : integer;
      parametroNF: string;
    procedure gravanotafiscal;
    procedure calculaicms(Estado: String);
    procedure somavalores;
    { Public declarations }
  end;

var
  fNotaf: TfNotaf;
  valorUnitario: Double;
  codmovdet, codserv, codmd, centro_receita, cod_nat, cod_vendedor_padrao,
  cod_cli, estoq : integer;
  natureza, contas_pendentes, nome_vendedor_padrao, valor_fatura, fatura_NF: string;
  // variaveis da venda finalizar
  prazo, valor: double;
  terminal, data_movimento, varcancela : string;
  codigo_cliente, codigo_moviemento : integer;
  diasAumenta : integer;
  DtaTemp : TDateTime;

implementation

uses UDm, UDMNF, sCtrlResize, uProcurar, uProcurar_nf, uClienteCadastro,
  ufprocura_prod, uftransp, uFiltroMovimento, unitExclusao, Math;

{$R *.dfm}

procedure TfNotaf.FormCreate(Sender: TObject);
begin
  codMovFin := 0;
  codVendaFin := 0;
  parametroNF := '';

  // Usado na DNZ
  if (not dm.parametro.Active) then
    dm.parametro.Open;
  if (dm.parametro.locate('PARAMETRO', 'NOTAFISCALDESATIVADO', [loCaseInsensitive])) then
    if (dm.parametroCONFIGURADO.AsString = 'S') then
    begin
      dbEdit33.ReadOnly := True;
      parametroNF := 'S';
    end;


  //sCtrlResize.CtrlResize(TForm(fNotaf));
  //Populo combobox com a Razão do Fornecedor
  if (not dmnf.listaCFOP.Active) then
    dmnf.listaCFOP.Open;
  dmnf.listaCFOP.First;
  cbCLiente.Clear;
  while not dmnf.listaCFOP.Eof do
  begin
     cbNatureza.Items.Add(dmnf.listaCFOPCFNOME.AsString);
     cbCFOP.Items.Add(dmnf.listaCFOPCFCOD.AsString);
     dmnf.listaCFOP.Next;
  end;
  dmnf.listaCFOP.Close;
  //Populo Dbgrid Coluna descrição do Produto
  if (not dmnf.listaProduto.Active) then
    dmnf.listaProduto.Open;
  dmnf.listaProduto.First;
  while not dmnf.listaProduto.Eof do
  begin
     JvDBGrid1.Columns[1].PickList.Add(dmnf.listaProdutoPRODUTO.AsString);
     JvDBGrid2.Columns[1].PickList.Add(dmnf.listaProdutoPRODUTO.AsString);
     dmnf.listaProduto.Next;
  end;
  dmnf.listaProduto.Close;
  //Populo combobox Transportadora
  if (not dmnf.listaTransp.Active) then
    dmnf.listaTransp.Open;
  dmnf.listaTransp.First;
  while not dmnf.listaTransp.Eof do
  begin
     cbTransportadora.Items.Add(dmnf.listaTranspNOMETRANSP.AsString);
     dmnf.listaTransp.Next;
  end;
  dmnf.listaTransp.Close;
end;

procedure TfNotaf.btnIncluirClick(Sender: TObject);
begin
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.open;
  // Entrada ou Saida
  //if (rg.ItemIndex = 0) then // Entrada
   //  incluiEntrada
  //else  // saida
  if ((dmnf.cds_nf.IsEmpty) and (codVendaFin > 0)) then
  begin
    if(sdsTotal.Active) then
      sdsTotal.close;
    sdsTotal.params[0].AsInteger := codMovFin;
    sdsTotal.open;
    incluiNotaFiscal;
    dmnf.cds_nfVALOR_PRODUTO.AsFloat := sdsTotal.Fields[0].AsFloat;
    dmnf.cds_nfVALOR_TOTAL_NOTA.AsFloat := dmnf.cds_nfVALOR_PRODUTO.AsFloat +
       dmnf.cds_vendaVALOR_ICMS.AsFloat + dmnf.cds_vendaVALOR_FRETE.AsFloat +
       dmnf.cds_vendaVALOR_SEGURO.AsFloat + dmnf.cds_vendaOUTRAS_DESP.AsFloat;
    dmnf.cds_nfVALOR_ICMS.AsFloat := dmnf.cds_vendaVALOR_ICMS.AsFloat;
    if (dmnf.cds_nfVALOR_ICMS.IsNull) then
      dmnf.cds_nfVALOR_ICMS.AsFloat := 0;
    dmnf.cds_nfREDUZICMS.AsFloat;
    dmnf.cds_nfVALOR_FRETE.AsFloat := dmnf.cds_vendaVALOR_FRETE.AsFloat;
    dmnf.cds_nfVALOR_SEGURO.AsFloat := dmnf.cds_vendaVALOR_SEGURO.AsFloat;
    dmnf.cds_nfOUTRAS_DESP.AsFloat := dmnf.cds_vendaOUTRAS_DESP.AsFloat;
    dmnf.cds_nfCODVENDA.AsInteger := codVendaFin;
    dmnf.cds_nfCODCLIENTE.AsInteger := codCliFin;
    dmnf.cds_nfFATURA.AsString := fatura_NF;
    if (listaCliente1.Active) then
      listaCliente1.Close;
    listaCliente1.Params.ParamByName('pCodCli').AsInteger := codCliFin;
    listaCliente1.Open;
    dmnf.cds_nfCODCLIENTE.AsInteger := codCliFin;
    dmnf.cds_nfNOMECLIENTE.AsString := listaCliente1RAZAOSOCIAL.AsString;
    dmnf.cds_nfRAZAOSOCIAL.AsString := listaCliente1RAZAOSOCIAL.AsString;
    DMNF.cds_nfCNPJCLI.AsString := listaCliente1CNPJ.AsString;
    DMNF.cds_nfINSCCLI.AsString := listaCliente1INSCESTADUAL.AsString;
    DMNF.cds_nfLOGRADOURO.AsString := listaCliente1LOGRADOURO.AsString;
    DMNF.cds_nfCIDADECLI.AsString := listaCliente1CIDADE.AsString;
    DMNF.cds_nfBAIRROCLI.AsString := listaCliente1BAIRRO.AsString;
    DMNF.cds_nfCEPCLI.AsString := listaCliente1CEP.AsString;
    DMNF.cds_nfFRETE.AsString := '2';
    DMNF.cds_nfUFCLI.AsString := listaCliente1UF.AsString;
    DMNF.cds_nfUF.AsString := listaCliente1UF.AsString;
    DMNF.cds_nfTELEFONE.AsString := listaCliente1TELEFONE.AsString;
  // Calcula o peso
  if (dmnf.sqs_tit.Active) then
    dmnf.sqs_tit.Close;

   dmnf.sqs_tit.CommandText := 'SELECT SUM(m.QUANTIDADE * prod.PESO_QTDE) FROM MOVIMENTODETALHE m' +
                           ' inner join produtos prod on prod.codproduto = m.codproduto ' +
                           ' WHERE m.CODMOVIMENTO = ' +
                           IntToStr(dmnf.cds_MovimentoCODMOVIMENTO.asInteger);
  dmnf.sqs_tit.Open;
  dmnf.cds_nfPESOBRUTO.AsFloat := dmnf.sqs_tit.Fields[0].AsFloat;
  dmnf.cds_nfPESOLIQUIDO.AsFloat := dmnf.sqs_tit.Fields[0].AsFloat;

  dmnf.sqs_tit.Close;


    prazo := listaCliente1PRAZORECEBIMENTO.AsFloat;
    if (listaCliente1COD_TRANPORTADORA.AsInteger > 0 ) then
    begin
        if (proc_transp.Active) then
          proc_transp.Close;
        proc_transp.Params[0].AsInteger := listaCliente1COD_TRANPORTADORA.AsInteger;
        proc_transp.Open;
        dmnf.cds_nfCODTRANSP.AsInteger := proc_transpCODTRANSP.AsInteger;
        dmnf.cds_nfNOMETRANSP.AsString := proc_transpNOMETRANSP.AsString;
        dmnf.cds_nfUF_TRANSP.AsString := proc_transpUF_TRANSP.AsString;
        dmnf.cds_nfFRETE.AsString := proc_transpFRETE.AsString;
        dmnf.cds_nfUF_VEICULO_TRANSP.AsString := proc_transpUF_VEICULO_TRANSP.AsString;
        dmnf.cds_nfCNPJ_CPF.AsString := proc_transpCNPJ_CPF.AsString;
        dmnf.cds_nfEND_TRANSP.AsString := proc_transpEND_TRANSP.AsString;
        dmnf.cds_nfCIDADE_TRANSP.AsString := proc_transpCIDADE_TRANSP.AsString;
        dmnf.cds_nfUF_TRANSP.AsString := proc_transpUF_TRANSP.AsString;
        dmnf.cds_nfINSCRICAOESTADUAL.AsString := proc_transpINSCRICAOESTADUAL.AsString;
        dmnf.cds_nfPLACATRANSP.AsString := proc_transpPLACATRANSP.AsString;
        dmnf.cds_nfCORPONF1.AsString  := proc_transpCORPONF1.AsString;
        dmnf.cds_nfCORPONF2.AsString  := proc_transpCORPONF2.AsString;
        dmnf.cds_nfCORPONF3.AsString  := proc_transpCORPONF3.AsString;
        dmnf.cds_nfCORPONF4.AsString  := proc_transpCORPONF4.AsString;
        proc_transp.Close;
    end;
    listaCliente1.Close;
    btnGravar.click;
    if (dmnf.cds_mov_det.Active) then
      dmnf.cds_mov_det.Close;
    dmnf.cds_Mov_det.Params[0].Clear;
    dmnf.cds_mov_det.Params[1].AsInteger := codMovFin;
    dmnf.cds_mov_det.Open;
  end
  else begin
    // Pego os parametros para Lanç. Entrada
    CarregaParametros;
    incluiSAida;
  end;
end;

procedure TfNotaf.BitBtn3Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dmnf.scds_serie_proc);
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'SERIE';
   if (fProcurar.ShowModal=mrOk) then
    begin
     dmnf.cds_vendaSERIE.AsString := dmnf.scds_serie_procSERIE.AsString;
     //dmnf.cds_vendaNOTAFISCAL.AsInteger := dmnf.scds_serie_procULTIMO_NUMERO.AsInteger;
     dmnf.cds_vendaNOTAFISCAL.AsInteger := dmnf.scds_serie_procULTIMO_NUMERO.AsInteger+1;
     dmnf.cds_nfNOTASERIE.AsInteger := dmnf.cds_vendaNOTAFISCAL.AsInteger;
    end;
   finally
    dmnf.scds_serie_proc.Close;
    fProcurar.Free;
   end;
    DBEdit2.SetFocus;
end;

procedure TfNotaf.incluiEntrada;
begin
  //Populo combobox com a Razão do Fornecedor
  if (not dmnf.listaFornecedor.Active) then
    dmnf.listaFornecedor.Open;
  dmnf.listaFornecedor.First;
  cbCLiente.Clear;
  while not dmnf.listaFornecedor.Eof do
  begin
     cbCLiente.Items.Add(dmnf.listaFornecedorRAZAOSOCIAL.AsString);
     dmnf.listaFornecedor.Next;
  end;
  dmnf.listaFornecedor.Close;
  //*********************************
end;

procedure TfNotaf.incluiSAida;
begin
  //Populo combobox com a Razão do Fornecedor
  if (not dmnf.listaCliente.Active) then
    dmnf.listaCliente.Open;
  dmnf.listaCliente.First;
  cbCLiente.Clear;
  while not dmnf.listaCliente.Eof do
  begin
     cbCLiente.Items.Add(dmnf.listaClienteRAZAOSOCIAL.AsString);
     cbCLiente1.Items.Add(dmnf.listaClienteRAZAOSOCIAL.AsString);
     dmnf.listaCliente.Next;
  end;
  dmnf.listaCliente.Close;
  //Populo DBGrid com Produtos
  incluiMovimento;
  incluiVenda;
  incluiNotaFiscal;
  if (RadioGroup1.ItemIndex = 0) then
    cbCLiente1.SetFocus;
end;

procedure TfNotaf.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fNotaf));
  JvPageControl1.ActivePage := TabNF;
  TabSheet1.TabVisible := False;

  if (codMovFin > 0) then
  begin
    dmnf.cds_Movimento.Close;
    dmnf.cds_Movimento.Params[0].AsInteger := codMovFin;
    dmnf.cds_Movimento.Open;

    if (dmnf.cds_MovimentoCODNATUREZA.AsInteger = 12) then
    begin
      cbFinanceiro.Checked := False;
      cbEstoque.Checked := False;
    end;
    dmnf.cds_Mov_det.Close;
    dmnf.cds_Mov_det.Params[0].Clear;
    dmnf.cds_Mov_det.Params[1].AsInteger := codMovFin;
    dmnf.cds_Mov_det.Open;

    //mostra venda
    if (dmnf.cds_venda.Active) then
      dmnf.cds_venda.Close;
    dmnf.cds_venda.Params[0].Clear;
    dmnf.cds_venda.Params[1].AsInteger := codMovFin;
    dmnf.cds_venda.Open;
    if (not dmnf.cds_venda.IsEmpty) then
      codVendaFin := dmnf.cds_vendaCODVENDA.AsInteger;
    //Mostra NF
    if (dmnf.cds_nf.Active) then
      dmnf.cds_nf.Close;
    dmnf.cds_nf.Params[0].Clear;
    dmnf.cds_nf.Params[1].AsInteger := codVendaFin;
    dmnf.cds_nf.Open;
    if (dmnf.cds_nfSTATUS.AsString = 'S') then
      RadioGroup1.ItemIndex := 0
    else
      RadioGroup1.ItemIndex := 1;

    if (not  dm.cds_empresa.Active) then
      dm.cds_empresa.open;
    if ((dmnf.cds_nf.IsEmpty) and (codVendaFin > 0)) then
      btnIncluir.Click;
  end;
end;

procedure TfNotaf.incluiMovimento;
begin
  if DMNF.DtSrc.DataSet.State in [dsInactive] then
    DMNF.DtSrc.DataSet.Open;
  DMNF.DtSrc.DataSet.Append;
  DMNF.cds_MovimentoCODNATUREZA.AsInteger := cod_nat;
  DMNF.cds_MovimentoDESCNATUREZA.AsString := natureza;
  DMNF.cds_MovimentoCODUSUARIO.AsInteger := cod_vendedor_padrao;
  DMNF.cds_MovimentoNOMEUSUARIO.AsString := nome_vendedor_padrao;
  DMNF.cds_MovimentoCOD_VEICULO.AsInteger := 0;
  if DMNF.cds_Mov_det.Active then
    DMNF.cds_Mov_det.Close;
  DMNF.cds_Mov_det.Params[0].Clear;
  DMNF.cds_Mov_det.Params[1].Clear;
  if DMNF.DtSrc1.DataSet.State in [dsInactive] then
  begin
    DMNF.DtSrc1.DataSet.Open;
    DMNF.DtSrc1.DataSet.Append;
  end;
  if DMNF.DtSrc1.DataSet.State in [dsBrowse] then
      DMNF.DtSrc1.DataSet.Append;
end;

procedure TfNotaf.incluiNotaFiscal;
begin
  if (not dmnf.cds_nf.Active) then
     dmnf.cds_nf.Open;
  dmnf.cds_nf.Append;
  DMNF.cds_nfNOTASERIE.AsString := IntToStr(DMNF.cds_vendaNOTAFISCAL.AsInteger);
end;

procedure TfNotaf.incluiVenda;
begin
  if DMNF.DtSrcVenda.DataSet.State in [dsInactive] then
  begin
    DMNF.DtSrcVenda.DataSet.Open;
    DMNF.DtSrcVenda.DataSet.Append;
  end;
  if DMNF.DtSrcVenda.DataSet.State in [dsBrowse] then
    DMNF.DtSrcVenda.DataSet.Append;

  DMNF.cds_vendaDATASISTEMA.AsDateTime := Now;
  DMNF.cds_vendaDESCONTO.AsFloat := 0;
  DMNF.cds_vendaMULTA_JUROS.AsFloat := 0;
  DMNF.cds_vendaENTRADA.AsFloat := 0;
  DMNF.cds_vendaVALOR_PAGAR.AsFloat := 0;
  DMNF.cds_vendaAPAGAR.AsFloat := 0;
  DMNF.cds_vendaN_PARCELA.AsInteger := 1;
  DMNF.cds_vendaBANCO.AsInteger := 0;
  DMNF.cds_vendaDATAVENDA.AsDateTime := now;
  DMNF.cds_vendaDATAVENCIMENTO.AsDateTime := now;
  DMNF.cds_vendaSTATUS.AsInteger:=0;

  dbeSerie.Text := '';
  if (not Dm.parametro.Active) then
    dm.parametro.Open;
  if (RadioGroup1.ItemIndex = 1) then
  begin
    if (dm.parametro.Locate('PARAMETRO', 'SERIENF', [loCaseInsensitive])) then
       dbeSerie.Text := dm.parametroDADOS.AsString;
  end;
  if (RadioGroup1.ItemIndex = 0) then
  begin
    if (dm.parametro.Locate('PARAMETRO', 'SERIENFSERV', [loCaseInsensitive])) then
      dbeSerie.Text := dm.parametroDADOS.AsString;
  end;
  if (dbeSerie.Text = '') then
  begin
    dm.parametro.Locate('PARAMETRO', 'SERIEPADRAO', [loCaseInsensitive]);
    dbeSerie.Text := dm.parametroDADOS.AsString;
  end;
  DMNF.cds_vendaSERIE.AsString := dbeSerie.Text;
  { 006 ------Pesquisando na tab Parametro o Vendedor padrão ---- 09-05-2005 -----}
  dbeUsuario.Text := IntToStr(cod_vendedor_padrao);
  //dbEdit68.Text := nome_vendedor_padrao;
  { ---- ********************************************************************* ----}
   buscaserieNF;

end;

procedure TfNotaf.buscaserieNF;
begin
  {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SERIEPADRAO';
  dm.cds_parametro.Open;
  dbeSerie.Text := dm.cds_parametroDADOS.AsString;

  if DMNF.DtSrc.State in [dsInsert,dsEdit] then
  begin
    if (dbeSerie.Text = '') then exit;
    if (dbeSerie.Field.OldValue <> dbeSerie.Field.NewValue) then
    begin
      if DMNF.scds_serie_proc.Active then
        DMNF.scds_serie_proc.Close;
      DMNF.scds_serie_proc.Params[0].AsString := dbeSerie.Text;
      DMNF.scds_serie_proc.Open;
      if DMNF.scds_serie_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        //btnSerie.Click;
        exit;
      end;
      DMNF.cds_vendaSERIE.AsString := DMNF.scds_serie_procSERIE.AsString;
      DMNF.cds_vendaNOTAFISCAL.AsInteger := DMNF.scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
  end;
end;

procedure TfNotaf.CarregaParametros;
begin
  centro_receita := 0;
  procprod := 'PROC_PROD_SIMPLES';
  if (not dm.parametro.Active) then
    dm.parametro.Open;

  {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
    if (dm.parametro.Locate('PARAMETRO','CENTRO RECEITA PADRAO', [loCaseInsensitive])) then
    begin
      Try
        centro_receita := strToint(dm.parametroDADOS.AsString);
      except
        centro_receita := 0;
      end;
    end;
  {------Pesquisando na tab Parametro Vendedor Padrão ---------}
  if (dm.parametro.Locate('PARAMETRO','VENDEDORPADRAO', [loCaseInsensitive])) then
  begin
    Try
      cod_vendedor_padrao := strToint(dm.parametroDADOS.AsString);
    except
      cod_vendedor_padrao := 0;
    end;
    nome_vendedor_padrao := dm.parametroD1.AsString;
  end else
  begin
    cod_vendedor_padrao := 1;
    nome_vendedor_padrao := '..'
  end;
  {------Pesquisando na tab Parametro se usa Comissão por Venda---------}
   { if (dm.parametro.Locate('PARAMETRO','COMISSAO VENDA',[loCaseInsensitive])) then
    begin
      if dm.parametroCONFIGURADO.AsString = 'S' then
      begin
        ComboBox2.Visible := true;
        ComboBox2.Items.Clear;
        Label17.Visible := True;
        if DMNF.cds_cm.Active then
           DMNF.cds_cm.Close;
        DMNF.cds_cm.Params[0].Clear;
        DMNF.cds_cm.Params[1].AsInteger := 9999999;
        DMNF.cds_cm.Open;
        DMNF.cds_cm.First;
        // populo a combobox
        while not DMNF.cds_cm.Eof do
        begin
          ComboBox2.Items.Add(DMNF.cds_cmCODIGO.AsString);
          DMNF.cds_cm.Next;
        end;
      end;
    end;
    }
  {------Pesquisando na tab Parametro se usa Comissão por produto---------}
   { if (dm.parametro.Locate('PARAMETRO','COMISSAO PRODUTO', [loCaseInsensitive])) then
    begin
      if dm.parametroDADOS.AsString = 'S' then
      begin
        label4.Caption := 'CM';
        if DMNF.cds_cm.Active then
          DMNF.cds_cm.Close;
        DMNF.cds_cm.Params[0].Clear;
        DMNF.cds_cm.Params[1].AsInteger := 9999999;
        DMNF.cds_cm.Open;
      end;
    end;
    }
  {------Pesquisando na tab Parametro Código e Nome da Natureza da Venda/Compra--------}
    if (dm.parametro.Locate('PARAMETRO','NATUREZAVENDA',[loCaseInsensitive])) then
    begin
      Try
        cod_nat := strToint(dm.parametroDADOS.asString);
      except
        cod_nat := 3;
      end;
      natureza := dm.parametroD1.AsString;
    end;
   { if (dm.moduloUsado = 'AUTOMOTIVA') then
    begin
      //TabSheet1.Caption := 'Peças/Serviços';
      bitbtn4.Enabled := False;
      Label4.Caption := 'Com.';
      Label29.Caption := 'Kilometragem';
      Label11.Caption := 'Colab./Técnico';
      //BitBtn3.Enabled := False;
      //fVendas.Caption := 'Ordem de Serviços e Vendas de Peças';
      //Label15.Caption := 'Lançamento de Ordem de Serviços e Vendas de Peças';
      //GroupBox2.Caption := 'Local OS';
      //GroupBox3.Caption := 'Data';
    end;
    }
   { if (dm.parametro.Locate('PARAMETRO','MATERIAPRIMA', [loCaseInsensitive])) then
    begin
      if (dm.parametroCONFIGURADO.AsString = 'S') then
      begin
        matPrima := 'SIM';
        inseridoMatPrima := 'SIM';
      end
      else
        matPrima := 'NAO';
    end;
    }
  { Usa Centro Receita }
   { if (dm.parametro.Locate('PARAMETRO','CENTRO RECEITA', [loCaseInsensitive])) then
    begin
      if (dm.parametroCONFIGURADO.AsString = 'S') then
      begin
        ComboBox5.Enabled := True;
        //Vejo quais são as contas de Receitas para listar no lookupcombobox.
        if (dmnf.cds_ccusto.Active) then
          dmnf.cds_ccusto.Close;
        dmnf.cds_ccusto.Params[0].AsString := dm.parametroDADOS.AsString;
        dmnf.cds_ccusto.Open;
        // populo a combobox
        dmnf.cds_ccusto.First;
        while (not dmnf.cds_ccusto.Eof) do
        begin
          ComboBox5.Items.Add(dmnf.cds_ccustoNOME.AsString);
          dmnf.cds_ccusto.Next;
        end;
      end;
    end;
     }
end;

procedure TfNotaf.cbCLienteChange(Sender: TObject);
begin
 if (dmnf.cds_nf.State in [dsinsert, dsEdit]) then
  if (cbCLiente.Text <> '') then
  begin
    DMNF.listaCliente.Open;
    DMNF.listaCliente.Locate('RAZAOSOCIAL',cbCLiente.Text,[loCaseInsensitive]);
    DMNF.cds_nfCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    dmnf.cds_MovimentoCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    dmnf.cds_vendaCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;;
    dmnf.cds_nfCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    DMNF.cds_nfCNPJCLI.AsString := DMNF.listaClienteCNPJ.AsString;
    DMNF.cds_nfINSCCLI.AsString := DMNF.listaClienteINSCESTADUAL.AsString;
    DMNF.cds_nfLOGRADOURO.AsString := DMNF.listaClienteLOGRADOURO.AsString;
    DMNF.cds_nfCIDADECLI.AsString := DMNF.listaClienteCIDADE.AsString;
    DMNF.cds_nfBAIRROCLI.AsString := DMNF.listaClienteBAIRRO.AsString;
    DMNF.cds_nfCEPCLI.AsString := DMNF.listaClienteCEP.AsString;
    DMNF.cds_nfUFCLI.AsString := DMNF.listaClienteUF.AsString;
    DMNF.cds_nfTELEFONE.AsString := DMNF.listaClienteTELEFONE.AsString;
    prazo := dmnf.listaClientePRAZORECEBIMENTO.AsFloat;

    if (DMNF.listaClienteCOD_TRANPORTADORA.AsInteger > 0 ) then
    begin
      if (proc_transp.Active) then
        proc_transp.Close;
      proc_transp.Params[0].AsInteger := DMNF.listaClienteCOD_TRANPORTADORA.AsInteger;
      proc_transp.Open;
      dmnf.cds_nfCODTRANSP.AsInteger := proc_transpCODTRANSP.AsInteger;
      dmnf.cds_nfNOMETRANSP.AsString := proc_transpNOMETRANSP.AsString;
      dmnf.cds_nfUF_TRANSP.AsString := proc_transpUF_TRANSP.AsString;
      dmnf.cds_nfFRETE.AsString := proc_transpFRETE.AsString;
      dmnf.cds_nfUF_VEICULO_TRANSP.AsString := proc_transpUF_VEICULO_TRANSP.AsString;
      dmnf.cds_nfCNPJ_CPF.AsString := proc_transpCNPJ_CPF.AsString;
      dmnf.cds_nfEND_TRANSP.AsString := proc_transpEND_TRANSP.AsString;
      dmnf.cds_nfCIDADE_TRANSP.AsString := proc_transpCIDADE_TRANSP.AsString;
      dmnf.cds_nfUF_TRANSP.AsString := proc_transpUF_TRANSP.AsString;
      dmnf.cds_nfINSCRICAOESTADUAL.AsString := proc_transpINSCRICAOESTADUAL.AsString;
      dmnf.cds_nfPLACATRANSP.AsString := proc_transpPLACATRANSP.AsString;
      dmnf.cds_nfCORPONF1.AsString  := proc_transpCORPONF1.AsString;
      dmnf.cds_nfCORPONF2.AsString  := proc_transpCORPONF2.AsString;
      dmnf.cds_nfCORPONF3.AsString  := proc_transpCORPONF3.AsString;
      dmnf.cds_nfCORPONF4.AsString  := proc_transpCORPONF4.AsString;
      proc_transp.Close;
    end;

    DMNF.listaCliente.Close;
  end;
end;

procedure TfNotaf.cbNaturezaChange(Sender: TObject);
begin
  if (dmnf.cds_nf.State in [dsinsert, dsEdit]) then
  begin
    dmnf.listaCFOP.Open;
    DMNF.listaCFOP.Locate('CFNOME',cbNatureza.Text,[loCaseInsensitive]);
    DMNF.cds_nfCFOP.AsString := DMNF.listaCFOPCFCOD.AsString;
    DMNF.listaCFOP.Close;
  end;
end;

procedure TfNotaf.cbCFOPChange(Sender: TObject);
begin
  if (dmnf.cds_nf.State in [dsinsert, dsEdit]) then
  begin
    dmnf.listaCFOP.Open;
    DMNF.listaCFOP.Locate('CFCOD',cbCFOP.Text,[loCaseInsensitive]);
    DMNF.cds_nfDESCNATUREZA.AsString := DMNF.listaCFOPCFNOME.AsString;
    DMNF.listaCFOP.Close;
  end;
end;

procedure TfNotaf.btnSairClick(Sender: TObject);
begin
  dm.cds_empresa.Close;
  close;
end;

procedure TfNotaf.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
var
 nomepro, codigopro : string;
begin
   if (key = #13) then
    if (DMNF.dtSrc1.State in [dsInsert, dsEdit]) then
    begin
       if (JvDBGrid1.SelectedIndex = 0) then
       begin
          if dm.scds_produto_proc.Active then
            dm.scds_produto_proc.Close;
          dm.scds_produto_proc.Params[0].AsInteger := 0;
          dm.scds_produto_proc.Params[1].AsString := dmnf.cds_Mov_detCODPRO.AsString;
          dm.scds_produto_proc.Open;
          if dm.scds_produto_proc.IsEmpty then
          begin
            MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
            [mbOk], 0);
            exit;
          end;
          DMNF.cds_Mov_detPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
          DMNF.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
          DMNF.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
          DMNF.cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
          DMNF.cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
          DMNF.cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
          DMNF.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
          DMNF.estoque := dm.scds_produto_procESTOQUEATUAL.AsFloat;
          DMNF.cds_Mov_detQUANTIDADE.AsFloat := 1;
          DMNF.qtde := dm.scds_produto_procPESO_QTDE.AsFloat;
          DMNF.cds_Mov_detQTDE_ALT.AsFloat := 0;
          DMNF.cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
          if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
             DMNF.cds_Mov_detVLR_BASE.AsFloat := DM.scds_produto_procVALOR_PRAZO.AsFloat / DM.scds_produto_procQTDE_PCT.AsFloat
          else
             DMNF.cds_Mov_detVLR_BASE.AsFloat := DM.scds_produto_procVALOR_PRAZO.AsFloat;
          valorUnitario := dm.scds_produto_procVALOR_PRAZO.AsFloat;
          DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
          DMNF.cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
          DMNF.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
          if DMNF.cds_Movimento.State in [dsBrowse, dsInactive] then
              DMNF.cds_Movimento.Edit;
          DMNF.DtSrc1.DataSet.Post;
          DMNF.DtSrc1.DataSet.Append;
          key:= #0;
       end;
       if (JvDBGrid1.SelectedIndex = 1) then
       begin
          nomepro := JvDBGrid1.SelectedField.Text;
         if (nomepro <> '') then
         begin
            if not localizaProduto.Active then
               localizaProduto.Open;
            localizaProduto.Locate('PRODUTO', nomepro, [loCaseInsensitive]);
            localizaProduto.Open;
            codigopro := localizaProdutoCODPRO.AsString;
            if dm.scds_produto_proc.Active then
              dm.scds_produto_proc.Close;
            dm.scds_produto_proc.Params[0].AsInteger := 0;
            dm.scds_produto_proc.Params[1].AsString := codigopro;
            dm.scds_produto_proc.Open;
            if dm.scds_produto_proc.IsEmpty then
            begin
              MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
              [mbOk], 0);
              exit;
            end;
            DMNF.cds_Mov_detCODPRO.Value := dm.scds_produto_procCODPRO.Value;
            DMNF.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
            DMNF.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
            DMNF.cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
            DMNF.cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
            DMNF.cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
            DMNF.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
            DMNF.estoque := dm.scds_produto_procESTOQUEATUAL.AsFloat;
            DMNF.cds_Mov_detQUANTIDADE.AsFloat := 1;
            DMNF.qtde := dm.scds_produto_procPESO_QTDE.AsFloat;
            DMNF.cds_Mov_detQTDE_ALT.AsFloat := 0;
            DMNF.cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
            if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
               DMNF.cds_Mov_detVLR_BASE.AsFloat := DM.scds_produto_procVALOR_PRAZO.AsFloat / DM.scds_produto_procQTDE_PCT.AsFloat
            else
               DMNF.cds_Mov_detVLR_BASE.AsFloat := DM.scds_produto_procVALOR_PRAZO.AsFloat;
            valorUnitario := dm.scds_produto_procVALOR_PRAZO.AsFloat;
            DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
            DMNF.cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
            DMNF.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
            if DMNF.cds_Movimento.State in [dsBrowse, dsInactive] then
                DMNF.cds_Movimento.Edit;
            DMNF.DtSrc1.DataSet.Post;
            DMNF.DtSrc1.DataSet.Append;
            key:= #0;
            JvDBGrid1.SelectedIndex := 2;
         end;
       end;
       if ((JvDBGrid1.SelectedIndex = 3) or (JvDBGrid1.SelectedIndex = 4)) then
         dmnf.cds_Mov_det.Post;
     end;
end;

procedure TfNotaf.BitBtn1Click(Sender: TObject);
begin
  {fProcurar_nf:= TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
   // varform := 'venda';
    //codcli := 0;
    //nomecli := '';
    if (fProcurar_nf.ShowModal = mrOK) then
    begin
      if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
        //dbeCliente.SetFocus;
      end;
      if dmnf.dtSrc.State=dsBrowse then
        dmnf.cds_Movimento.Edit;
      prazo := dmnf.scds_cli_procPRAZORECEBIMENTO.AsFloat;
      dmnf.cds_MovimentoCODCLIENTE.AsInteger := dmnf.scds_cli_procCODCLIENTE.AsInteger;
      dmnf.cds_vendaCODCLIENTE.AsInteger := dmnf.scds_cli_procCODCLIENTE.AsInteger;
      dmnf.cds_nfCODCLIENTE.AsInteger := dmnf.scds_cli_procCODCLIENTE.AsInteger;
      dmnf.cds_nfRAZAOSOCIAL.AsString := dmnf.scds_cli_procRAZAOSOCIAL.AsString;
    end;
  finally
   dmnf.scds_cli_proc.Close;
   fProcurar_nf.Free;
  end;   }
    fClienteCadastro:=TfClienteCadastro.Create(Application);
    try
      fClienteCadastro.ShowModal;
    finally
      fClienteCadastro.free;
    end;
    if (not dmnf.listaCliente.Active) then
      dmnf.listaCliente.Open;
    dmnf.listaCliente.First;
    cbCLiente.Items.Clear;
    while not dmnf.listaCliente.Eof do
    begin
       cbCLiente.Items.Add(dmnf.listaClienteRAZAOSOCIAL.AsString);
       dmnf.listaCliente.Next;
    end;
    dmnf.listaCliente.Close;
    cbCLiente.Text := DM.varNomeCliente;
end;

procedure TfNotaf.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfNotaf.btnCancelarClick(Sender: TObject);
begin
    DMNF.cds_nf.Cancel;
    DMNF.cds_venda.Cancel;
    DMNF.cds_Mov_det.Cancel;
    DMNF.cds_Movimento.Cancel;
    {DMNF.cds_nf.Close;
    DMNF.cds_venda.Close;
    DMNF.cds_Mov_det.Close;
    DMNF.cds_Movimento.Close;}
end;

procedure TfNotaf.BitBtn5Click(Sender: TObject);
begin
  if dmnf.DtSrc1.DataSet.State in [dsInactive] then
   exit;
  fProcura_prod.btnIncluir.Visible := true;
  fProcura_prod.Panel2.Visible := True;
  fProcura_prod.Panel1.Visible := False;
  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  var_F := 'formnotaf';
  dmnf.cds_Mov_detLOTE.AsString := '';
  fProcura_prod.BitBtn1.Click;
  fProcura_prod.ShowModal;
end;

procedure TfNotaf.cbTransportadoraChange(Sender: TObject);
begin
 if (dmnf.cds_nf.State in [dsinsert, dsEdit]) then
  if (cbTransportadora.Text <> '') then
  begin
     DMNF.listaTransp.Open;
     DMNF.listaTransp.Locate('NOMETRANSP',cbTransportadora.Text,[loCaseInsensitive]);
     DMNF.cds_nfPLACATRANSP.AsString := DMNF.listaTranspPLACATRANSP.AsString;
     DMNF.cds_nfUF_VEICULO_TRANSP.AsString := DMNF.listaTranspUF_VEICULO_TRANSP.AsString;
     DMNF.cds_nfCNPJ_CPF.AsString := DMNF.listaTranspCNPJ_CPF.AsString;
     DMNF.cds_nfEND_TRANSP.AsString := DMNF.listaTranspEND_TRANSP.AsString;
     DMNF.cds_nfCIDADE_TRANSP.AsString := DMNF.listaTranspCIDADE_TRANSP.AsString;
     DMNF.cds_nfUF_TRANSP.AsString := DMNF.listaTranspUF_TRANSP.AsString;
     DMNF.cds_nfINSCRICAOESTADUAL.AsString := DMNF.listaTranspINSCRICAOESTADUAL.AsString;
     DMNF.cds_nfCORPONF1.AsString := DMNF.listaTranspCORPONF1.AsString;
     DMNF.cds_nfCORPONF2.AsString := DMNF.listaTranspCORPONF2.AsString;
     DMNF.cds_nfCORPONF3.AsString := DMNF.listaTranspCORPONF3.AsString;
     DMNF.cds_nfCORPONF4.AsString := DMNF.listaTranspCORPONF4.AsString;
     DMNF.cds_nfCORPONF5.AsString := DMNF.listaTranspCORPONF5.AsString;
     DMNF.cds_nfCORPONF6.AsString := DMNF.listaTranspCORPONF6.AsString;
     DMNF.listaTransp.Close;
  end;
end;

procedure TfNotaf.BitBtn2Click(Sender: TObject);
begin
   ftransp := Tftransp.Create(Application);
   try
     ftransp.ShowModal;
   finally
     ftransp.Free;
   end;
  //Populo combobox Transportadora
  if (not dmnf.listaTransp.Active) then
    dmnf.listaTransp.Open;
  dmnf.listaTransp.First;
  cbTransportadora.Items.Clear;
  while not dmnf.listaTransp.Eof do
  begin
     cbTransportadora.Items.Add(dmnf.listaTranspNOMETRANSP.AsString);
     dmnf.listaTransp.Next;
  end;
  dmnf.listaTransp.Close;
end;

procedure TfNotaf.btnGravarClick(Sender: TObject);
begin
  if (dmnf.cds_Mov_detCODPRO.AsString <> '') then
  if (dmnf.cds_Mov_det.State in [dsInsert]) then
     dmnf.cds_Mov_det.Post;
 // Grava o Movimento
 if (DMNF.DtSrc.State in [dsInsert, dsEdit]) then
   gravamovimento;
 // Grava o Movimento Detalhe
 if (DMNF.DtSrc1.State in [dsInsert, dsEdit, dsBrowse]) then
   gravamov_detalhe;
 // Salvar Venda
 //if (cbFinanceiro.Checked) then  -- Neste caso usa a tabela venda ,
 //  -- pois, a natureza q está nota é gravado não gera financeiro
 if (DMNF.DtSrcVenda.State in [dsInsert, dsEdit]) then
   gravavenda;
 //Salvo Nota Fiscal
 if (DMNF.DtSrc_NF.State in [dsInsert, dsEdit]) then
   gravanotafiscal;
end;

procedure TfNotaf.gravamov_detalhe;
begin
  if (dmnf.cds_Mov_det.State in [dsEdit, dsInsert]) then
    dmnf.cds_mov_det.Post;
  //********************************************************************************
  // aqui corrijo o codigo do movimento na tabela mov_detalhe
    dmnf.cds_Mov_det.First;
    While not dmnf.cds_Mov_det.Eof do
    begin
      if (dmnf.cds_Mov_detCODDETALHE.AsInteger >= 1999999) then
      begin
        dmnf.cds_Mov_det.Edit;
        if dmnf.cds_Mov_detCODPRODUTO.IsNull then
           dmnf.cds_Mov_detCODPRODUTO.AsInteger := 1;
        dmnf.cds_Mov_detCODMOVIMENTO.AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
        IF (dmnf.cds_Mov_detQTDE_ALT.IsNull) then
           dmnf.cds_Mov_detQTDE_ALT.AsFloat := 0;
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        codmovdet := dm.c_6_genid.Fields[0].AsInteger;
        {if ComboBox2.Text <> '' then
        begin
           dmnf.cds_cm.Locate('CODIGO', ComboBox2.Text,[loPartialKey]);
           dmnf.cds_Mov_detCOD_COMISSAO.AsInteger := dmnf.cds_cmCOD_COMISSAO.AsInteger;
           //dmnf.cds_Mov_detCODIGO.AsString := dmnf.cds_cmCODIGO.AsString;
        end;}
        dmnf.cds_Mov_detCODDETALHE.AsInteger := codmovdet;
        if (cbEstoque.Checked = False) then
          dmnf.cds_Mov_detBAIXA.AsString := '2';
        dmnf.cds_Mov_det.post;
      end;
      dmnf.cds_Mov_det.Next;
    end;
    dmnf.cds_Mov_det.ApplyUpdates(0);
end;

procedure TfNotaf.gravamovimento;
begin
   if dmnf.cds_Movimento.State in [dsInsert] then
   begin
     if dm.c_6_genid.Active then
       dm.c_6_genid.Close;
     dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
     dm.c_6_genid.Open;
     dmnf.cds_MovimentoCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
     dm.c_6_genid.Close;
  {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRO RECEITA PADRAO';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
      dmnf.cds_MovimentoCODALMOXARIFADO.AsInteger := strToint(dm.cds_parametroDADOS.AsString);

    dm.cds_parametro.Close;
    dmnf.cds_MovimentoDATAMOVIMENTO.AsDateTime := dmnf.cds_nfDTAEMISSAO.AsDateTime;

    if ((cbFinanceiro.Checked = True) and (cbEstoque.Checked = True)) then
    begin
        DMNF.cds_MovimentoCODNATUREZA.AsInteger := 3;
        DMNF.cds_MovimentoDESCNATUREZA.AsString := 'Venda';
    end;
    if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = True)) then
    begin
        DMNF.cds_MovimentoCODNATUREZA.AsInteger := 2;
        DMNF.cds_MovimentoDESCNATUREZA.AsString := 'Saída';
    end;
    if ((cbFinanceiro.Checked = False) and (cbEstoque.Checked = False)) then
    begin
        DMNF.cds_MovimentoCODNATUREZA.AsInteger := 12;
        DMNF.cds_MovimentoDESCNATUREZA.AsString := 'NF';
    end;

   end;
  //*******************************************************************************
   dmnf.cds_Movimento.ApplyUpdates(0);
end;

procedure TfNotaf.gravavenda;
var  strSql, strTit, tipoMov: String;
     diferenca : double;
begin
  if (DBEdit33.Text = '') then
  begin
    MessageDlg('Informe o n. da Nota Fiscal', mtError, [mbOK], 0);
    DBEdit33.SetFocus;
    exit;
  end;

    DMNF.cds_vendaNOTAFISCAL.AsInteger := StrToint(DMNF.cds_nfNOTASERIE.AsString);
    DMNF.cds_vendaCODCLIENTE.AsInteger := DMNF.cds_MovimentoCODCLIENTE.AsInteger;
    DMNF.cds_vendaCODVENDEDOR.AsInteger := dmnf.cds_MovimentoCODUSUARIO.AsInteger;
    DMNF.cds_vendaDATAVENDA.AsDateTime := DMNF.cds_MovimentoDATAMOVIMENTO.AsDateTime;
    DMNF.cds_vendaCODCCUSTO.AsInteger := DMNF.cds_MovimentoCODALMOXARIFADO.AsInteger;
    dmnf.cds_vendaCODMOVIMENTO.AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
    dmnf.cds_vendaCODUSUARIO.AsInteger := dmnf.cds_MovimentoCODUSUARIO.AsInteger;
    if (dmnf.sqs_tit.Active) then
      dmnf.sqs_tit.Close;

   if (dmnf.sqs_tit.Active) then
      dmnf.sqs_tit.Close;
   dmnf.sqs_tit.CommandText := 'SELECT SUM((QUANTIDADE * PRECO) - ((QTDE_ALT/100)*(QUANTIDADE * PRECO))) FROM MOVIMENTODETALHE' +
                           ' WHERE CODMOVIMENTO = ' +
                           IntToStr(dmnf.cds_MovimentoCODMOVIMENTO.asInteger);
  dmnf.sqs_tit.Open;
  if (parametroNF <> 'S') then
  begin
    dmnf.cds_vendaVALOR.AsCurrency := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
    dmnf.cds_vendaVALOR_PAGAR.AsCurrency := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
  end;
  vrr := FloatToCurr(dmnf.sqs_tit.Fields[0].AsFloat);
  dmnf.sqs_tit.Close;

  if (codVendaFin = 0) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dmnf.cds_vendaCODVENDA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  if (parametroNF <> 'S') then
    alteraVlrVenda;

  {dmnf.cds_vendaVALOR.AsFloat := dmnf.cds_vendaVALOR.AsFloat +
    dmnf.cds_vendaVALOR_FRETE.AsFloat +
    dmnf.cds_vendaVALOR_SEGURO.AsFloat +
    dmnf.cds_vendaOUTRAS_DESP.AsFloat +
    dmnf.cds_vendaVALOR_IPI.AsFloat;
  dmnf.cds_vendaAPAGAR.AsFloat := dmnf.cds_vendaVALOR.AsFloat -
    dmnf.cds_vendaENTRADA.AsFloat + dmnf.cds_vendaMULTA_JUROS.AsFloat -
    dmnf.cds_vendaDESCONTO.AsFloat;}

  dmnf.cds_venda.ApplyUpdates(0);

  if not dmnf.scds_serie_proc.Active then
  begin
     dmnf.scds_serie_proc.Params[0].AsString := dbeSerie.Text;
     dmnf.scds_serie_proc.Open;
  end;
  if (not dmnf.scds_serie_proc.IsEmpty) then
  if (dmnf.cds_vendaNOTAFISCAL.AsInteger > dmnf.scds_serie_procULTIMO_NUMERO.AsInteger) then
  begin
    dmnf.scds_serie_proc.Edit;
    dmnf.scds_serie_procULTIMO_NUMERO.AsInteger := dmnf.cds_vendaNOTAFISCAL.AsInteger;
    dmnf.scds_serie_proc.ApplyUpdates(0);
  end;
  dmnf.scds_serie_proc.Close;
end;

procedure TfNotaf.BitBtn4Click(Sender: TObject);
begin
  try
    dmnf.repdm.FileName := str_relatorio + 'nf_new.rep';
    dmnf.repdm.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    dmnf.repdm.Report.Params[0].Value := dmnf.cds_nfNUMNF.AsInteger;
    dmnf.repdm.Execute;
  except
    // deu erro na impressão então para aqui.
  end;
  if (dmnf.cds_nf.State in [dsBrowse]) then
    dmnf.cds_nf.Edit;
  dmnf.cds_nfIMPRESSA.AsString := 'S';
  dmnf.cds_nf.ApplyUpdates(0);
end;

procedure TfNotaf.btnProcurarClick(Sender: TObject);
var varsql:string;
begin
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
    dm.cds_parametro.Params[0].AsString := 'NATUREZANF';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      varsql :=  'Insert into PARAMETRO (PARAMETRO,CONFIGURADO,DADOS) ' ;
      varsql := varsql + 'values (''NATUREZANF'',''S'',''12'')';
      dm.sqlsisAdimin.executedirect(varsql);
    end;

    fFiltroMovimento.Edit3.Text := dm.cds_parametroDADOS.AsString;
    fFiltroMovimento.Edit4.Text := dm.cds_parametroD1.AsString;
    dm.cds_parametro.Close;
    fFiltroMovimento.BitBtn8.Enabled := False;
    fFiltroMovimento.ShowModal;

    dmnf.cds_Movimento.Close;
    dmnf.cds_Movimento.Params[0].AsInteger := fFiltroMovimento.cod_mov;
    dmnf.cds_Movimento.Open;

    if (dmnf.cds_MovimentoCODNATUREZA.AsInteger = 12) then
    begin
       cbFinanceiro.Checked := False;
       cbEstoque.Checked := False;
    end;

    dmnf.cds_Mov_det.Close;
    dmnf.cds_Mov_det.Params[0].Clear;
    dmnf.cds_Mov_det.Params[1].AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
    dmnf.cds_Mov_det.Open;

    //mostra venda
    if (dmnf.cds_venda.Active) then
      dmnf.cds_venda.Close;
    dmnf.cds_venda.Params[0].Clear;
    dmnf.cds_venda.Params[1].AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.asInteger;
    dmnf.cds_venda.Open;
    //Mostra NF
    if (dmnf.cds_nf.Active) then
      dmnf.cds_nf.Close;
    dmnf.cds_nf.Params[0].Clear;
    dmnf.cds_nf.Params[1].AsInteger := dmnf.cds_vendaCODVENDA.asInteger;
    dmnf.cds_nf.Open;
    if (dmnf.cds_nfSTATUS.AsString = 'S') then
       RadioGroup1.ItemIndex := 0
    else
       RadioGroup1.ItemIndex := 1;


    if (not  dm.cds_empresa.Active) then
      dm.cds_empresa.open;
end;

procedure TfNotaf.gravanotafiscal;
var nfnum : integer;
begin
 nfnum := 0;
 // Gravo a NF
 if (RadioGroup1.ItemIndex = 1) then
  if (cbCFOP.text = '') then
  begin
    MessageDlg('Informe o CFOP!',mtWarning, [mbOK], 0);
    dbedit5.SetFocus;
    exit;
  end;
  if (dmnf.cds_nfUF.AsString = '') then
  begin
    {** Abro o Cadastro do Clientes para adicionar o estado **}
  end;
  // salvo a Nota Fiscal
  if (dmnf.DtSrc_NF.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_NF, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dmnf.cds_nfNUMNF.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    nfnum := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  dmnf.cds_nfCODVENDA.AsInteger := dmnf.cds_vendaCODVENDA.AsInteger;
  if (nfnum = 0) then
    nfnum := dmnf.cds_nfNUMNF.AsInteger;
  if (parametroNF <> 'S') then
    alteraVlrVenda;
  if (RadioGroup1.ItemIndex = 0) then
    dmnf.cds_nfSTATUS.AsString := 'S';
  dmnf.cds_nf.ApplyUpdates(0);
  // Calcula ICMS - IPI
  if (codVendaFin = 0) then
    calculaicms('SP');

  dmnf.cds_nf.close;
  dmnf.cds_nf.Params[0].AsInteger := nfnum;
  dmnf.cds_nf.Params[1].Clear;
  dmnf.cds_nf.open;
end;

procedure TfNotaf.calculaicms(Estado: String);
var str_sql: string;
begin
  Try
    if (dmnf.sds_calculo.Active) then
      dmnf.sds_calculo.Close;
    str_sql := 'EXECUTE PROCEDURE CALCULA_ICMS(';
    // NUMNF
    str_sql := str_sql + IntToStr(dmnf.cds_nfNUMNF.asInteger);
    // UF
    str_sql := str_sql + ',''' + dmnf.cds_nfUFCLI.AsString + '''';
    // CFOP
    str_sql := str_sql + ',''' + dmnf.cds_nfCFOP.AsString + '''';
    // Valor Frete
    DecimalSeparator := '.';
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nfVALOR_FRETE.AsFloat);
    // Valor Seguro
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nfVALOR_SEGURO.AsFloat);
    // Valor_Outros
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nfOUTRAS_DESP.AsFloat);
    // Total
    str_sql := str_sql + ',' + FloatToStr(dmnf.cds_nfVALOR_PRODUTO.AsFloat);
    if (Estado = 'OUTROS') then
    begin
      str_sql := str_sql + ',''' + 'S' + '''';
      str_sql := str_sql + ', ' + FloatToStr(dmnf.cds_nfICMS.AsFloat);
      str_sql := str_sql + ', ' + FloatToStr(dmnf.cds_nfREDUZICMS.AsFloat);
    end
    else begin
      str_sql := str_sql + ',''' + 'N' + '''';
      str_sql := str_sql + ', 0';
      str_sql := str_sql + ', 0';
    end;
   // end;
    str_sql := str_sql + ')';
    DecimalSeparator := ',';
    dmnf.sds_calculo.CommandText := str_sql;
    dmnf.sds_calculo.ExecSQL();
  except
    DecimalSeparator := ',';
    MessageDlg('Erro no cálculo!', mtError, [mbOK], 0);
  end;

end;

procedure TfNotaf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (DMNF.cds_nf.State in [dsInsert, dsEdit]) then
      DMNF.cds_nf.Cancel;
  if (DMNF.cds_venda.State in [dsInsert, dsEdit]) then
      DMNF.cds_venda.Cancel;
  if (DMNF.cds_Mov_det.State in [dsInsert, dsEdit]) then
      DMNF.cds_Mov_det.Cancel;
  if (DMNF.cds_Movimento.State in [dsInsert, dsEdit]) then
      DMNF.cds_Movimento.Cancel;
  DMNF.cds_nf.Close;
  DMNF.cds_venda.Close;
  DMNF.cds_Mov_det.Close;
  DMNF.cds_Movimento.Close;
end;

procedure TfNotaf.somavalores;
var
  varTotalnota : double;
begin
     varTotalnota := 0;
//     dmnf.cds_nfVALOR_ICMS.Value +
     varTotalnota :=  dmnf.cds_nfVALOR_FRETE.Value
                    + dmnf.cds_nfVALOR_SEGURO.Value + dmnf.cds_nfOUTRAS_DESP.Value
                    + dmnf.cds_nfVALOR_IPI.Value;
     if (varTotalnota <> dmnf.cds_nfVALOR_TOTAL_NOTA.value) then
         dmnf.cds_nfVALOR_TOTAL_NOTA.value := dmnf.cds_nfVALOR_PRODUTO.value + varTotalnota;
end;

procedure TfNotaf.DBEdit11Change(Sender: TObject);
begin
  if (dmnf.cds_nf.State in [dsInsert, dsEdit]) then
    somavalores;
end;

procedure TfNotaf.btnExcluirClick(Sender: TObject);
begin
  formExclusao := TformExclusao.Create(Application);
  try
     formExclusao.ShowModal;
  finally
     formExclusao.Free;
  end;
end;

procedure TfNotaf.BitBtn6Click(Sender: TObject);
begin
    dmnf.repdm.FileName := str_relatorio + 'nf_new_serv.rep';
    dmnf.repdm.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    dmnf.repdm.Report.Params[0].Value := dmnf.cds_nfNUMNF.AsInteger;
    dmnf.repdm.Execute;
end;

procedure TfNotaf.RadioGroup1Click(Sender: TObject);
begin
    if (RadioGroup1.ItemIndex = 0) then
    begin
      TabSheet1.TabVisible := True;
      TabNF.TabVisible := False;
    end
    else
    begin
      TabSheet1.TabVisible := False;
      TabNF.TabVisible := True;
    end;

end;

procedure TfNotaf.cbCLiente1Change(Sender: TObject);
begin
 if (dmnf.cds_nf.State in [dsinsert, dsEdit]) then
  if (cbCLiente1.Text <> '') then
  begin
    DMNF.listaCliente.Open;
    DMNF.listaCliente.Locate('RAZAOSOCIAL',cbCLiente1.Text,[loCaseInsensitive]);
    DMNF.cds_nfCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    dmnf.cds_MovimentoCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    dmnf.cds_vendaCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;;
    dmnf.cds_nfCODCLIENTE.AsInteger := DMNF.listaClienteCODCLIENTE.AsInteger;
    DMNF.cds_nfCNPJCLI.AsString := DMNF.listaClienteCNPJ.AsString;
    DMNF.cds_nfINSCCLI.AsString := DMNF.listaClienteINSCESTADUAL.AsString;
    DMNF.cds_nfLOGRADOURO.AsString := DMNF.listaClienteLOGRADOURO.AsString;
    DMNF.cds_nfCIDADECLI.AsString := DMNF.listaClienteCIDADE.AsString;
    DMNF.cds_nfBAIRROCLI.AsString := DMNF.listaClienteBAIRRO.AsString;
    DMNF.cds_nfCEPCLI.AsString := DMNF.listaClienteCEP.AsString;
    DMNF.cds_nfUFCLI.AsString := DMNF.listaClienteUF.AsString;
    DMNF.cds_nfTELEFONE.AsString := DMNF.listaClienteTELEFONE.AsString;
    prazo := dmnf.listaClientePRAZORECEBIMENTO.AsFloat;
    DMNF.listaCliente.Close;
  end;
end;

procedure TfNotaf.JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
    if (key = #13) then
    if (DMNF.dtSrc1.State in [dsInsert, dsEdit]) then
    begin
       if (JvDBGrid2.SelectedIndex = 0) then
       begin
          if dm.scds_produto_proc.Active then
            dm.scds_produto_proc.Close;
          dm.scds_produto_proc.Params[0].AsInteger := 0;
          dm.scds_produto_proc.Params[1].AsString := dmnf.cds_Mov_detCODPRO.AsString;
          dm.scds_produto_proc.Open;
          if dm.scds_produto_proc.IsEmpty then
          begin
            MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
            [mbOk], 0);
            exit;
          end;
         if (dmnf.cds_Mov_det.State in [dsBrowse]) then
           dmnf.cds_Mov_det.Edit;
          DMNF.cds_Mov_detPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
          DMNF.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
          DMNF.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
          DMNF.cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
          DMNF.cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
          DMNF.cds_Mov_detQTDE_PCT.AsFloat := dm.scds_produto_procQTDE_PCT.AsFloat;
          DMNF.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
          DMNF.estoque := dm.scds_produto_procESTOQUEATUAL.AsFloat;
          DMNF.cds_Mov_detQUANTIDADE.AsFloat := 1;
          DMNF.qtde := dm.scds_produto_procPESO_QTDE.AsFloat;
          DMNF.cds_Mov_detQTDE_ALT.AsFloat := 0;
          DMNF.cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
          if dm.scds_produto_procQTDE_PCT.AsFloat >= 1 then
             DMNF.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
          else
             DMNF.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat;
          valorUnitario := dm.scds_produto_procVALOR_PRAZO.AsFloat;
          DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
          DMNF.cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
          DMNF.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
          if DMNF.cds_Movimento.State in [dsBrowse, dsInactive] then
              DMNF.cds_Movimento.Edit;
          DMNF.DtSrc1.DataSet.Post;
          DMNF.DtSrc1.DataSet.Append;
          key:= #0;
       end;

       if (JvDBGrid2.SelectedIndex = 1) then
          key:= #0;
       if ((JvDBGrid2.SelectedIndex = 3) or (JvDBGrid2.SelectedIndex = 4)) then
          dmnf.cds_Mov_det.Post;
     end;
end;

procedure TfNotaf.JvDBGrid1ColExit(Sender: TObject);
begin
{  if (JvDBGrid2.SelectedIndex = 1) then
  begin
   if (dmnf.cds_Mov_detDESCPRODUTO.AsString <> '') then
   begin
     if (dmnf.cds_Mov_det.State in [dsBrowse]) then
       dmnf.cds_Mov_det.Edit;
     DMNF.listaProduto.open;
     if (DMNF.listaProduto.Locate('PRODUTO',dmnf.cds_Mov_detDESCPRODUTO.AsString,[loCaseInsensitive])) then
     begin
       dmnf.cds_Mov_detCODPRO.AsString := DMNF.listaProdutoCODPRO.AsString;
       DMNF.cds_Mov_detPRODUTO.Value := DMNF.listaProdutoPRODUTO.Value;
       // DMNF.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
        DMNF.cds_Mov_detCODPRODUTO.AsInteger := DMNF.listaProdutoCODPRODUTO.AsInteger;
        DMNF.cds_Mov_detLOCALIZACAO.Value := DMNF.listaProdutoLOCALIZACAO.Value;
        DMNF.cds_Mov_detCOD_COMISSAO.AsInteger := DMNF.listaProdutoCOD_COMISSAO.AsInteger;
        DMNF.cds_Mov_detQTDE_PCT.AsFloat := DMNF.listaProdutoQTDE_PCT.AsFloat;
        DMNF.cds_Mov_detUN.AsString := DMNF.listaProdutoUNIDADEMEDIDA.AsString;
        DMNF.estoque := DMNF.listaProdutoESTOQUEATUAL.AsFloat;
        DMNF.cds_Mov_detQUANTIDADE.AsFloat := 1;
        DMNF.qtde := DMNF.listaProdutoPESO_QTDE.AsFloat;
        DMNF.cds_Mov_detQTDE_ALT.AsFloat := 0;
        DMNF.cds_Mov_detPRECOCUSTO.AsFloat := DMNF.listaProdutoPRECOMEDIO.AsFloat;
        if DMNF.listaProdutoQTDE_PCT.AsFloat >= 1 then
           DMNF.cds_Mov_detPRECO.AsFloat := DMNF.listaProdutoVALOR_PRAZO.AsFloat / DMNF.listaProdutoQTDE_PCT.AsFloat
        else
           DMNF.cds_Mov_detPRECO.AsFloat := DMNF.listaProdutoVALOR_PRAZO.AsFloat;
        valorUnitario := DMNF.listaProdutoVALOR_PRAZO.AsFloat;
        DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := DMNF.listaProdutoCODALMOXARIFADO.AsInteger;
        DMNF.cds_Mov_detALMOXARIFADO.AsString := DMNF.listaProdutoALMOXARIFADO.AsString;
        DMNF.cds_Mov_detICMS.AsFloat := DMNF.listaProdutoICMS.AsFloat;
     end
     else
       DMNF.cds_Mov_detCODPRODUTO.AsInteger := 1;
   end;
  end;}

    // está posicionado no campo Descrição do Produto

end;

procedure TfNotaf.JvDBGrid1EditChange(Sender: TObject);
begin
    if (JvDBGrid1.SelectedIndex = 1) then
    begin
      if (dmnf.cds_Mov_detCODPRO.AsString = '') then
      begin
       if (dmnf.cds_Mov_detDESCPRODUTO.AsString <> '') then
       begin
         if (dmnf.cds_Mov_det.State in [dsBrowse]) then
           dmnf.cds_Mov_det.Edit;
         DMNF.listaProduto.open;
         if (DMNF.listaProduto.Locate('PRODUTO',dmnf.cds_Mov_detDESCPRODUTO.AsString,[loCaseInsensitive])) then
         begin
           dmnf.cds_Mov_detCODPRO.AsString := DMNF.listaProdutoCODPRO.AsString;
           DMNF.cds_Mov_detPRODUTO.Value := DMNF.listaProdutoPRODUTO.Value;
           // DMNF.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
            DMNF.cds_Mov_detCODPRODUTO.AsInteger := DMNF.listaProdutoCODPRODUTO.AsInteger;
            DMNF.cds_Mov_detLOCALIZACAO.Value := DMNF.listaProdutoLOCALIZACAO.Value;
            DMNF.cds_Mov_detCOD_COMISSAO.AsInteger := DMNF.listaProdutoCOD_COMISSAO.AsInteger;
            DMNF.cds_Mov_detQTDE_PCT.AsFloat := DMNF.listaProdutoQTDE_PCT.AsFloat;
            DMNF.cds_Mov_detUN.AsString := DMNF.listaProdutoUNIDADEMEDIDA.AsString;
            DMNF.estoque := DMNF.listaProdutoESTOQUEATUAL.AsFloat;
            DMNF.cds_Mov_detQUANTIDADE.AsFloat := 1;
            DMNF.qtde := DMNF.listaProdutoPESO_QTDE.AsFloat;
            DMNF.cds_Mov_detQTDE_ALT.AsFloat := 0;
            DMNF.cds_Mov_detPRECOCUSTO.AsFloat := DMNF.listaProdutoPRECOMEDIO.AsFloat;
            if DMNF.listaProdutoQTDE_PCT.AsFloat >= 1 then
               DMNF.cds_Mov_detVLR_BASE.AsFloat := DMNF.listaProdutoVALOR_PRAZO.AsFloat / DMNF.listaProdutoQTDE_PCT.AsFloat
            else
               DMNF.cds_Mov_detVLR_BASE.AsFloat := DMNF.listaProdutoVALOR_PRAZO.AsFloat;
            valorUnitario := DMNF.listaProdutoVALOR_PRAZO.AsFloat;
            DMNF.cds_Mov_detCODALMOXARIFADO.AsInteger := DMNF.listaProdutoCODALMOXARIFADO.AsInteger;
            DMNF.cds_Mov_detALMOXARIFADO.AsString := DMNF.listaProdutoALMOXARIFADO.AsString;
            DMNF.cds_Mov_detICMS.AsFloat := DMNF.listaProdutoICMS.AsFloat;
         end
         else
           DMNF.cds_Mov_detCODPRODUTO.AsInteger := 1;
       end;
      end;
    end;
    if ((JvDBGrid1.SelectedIndex = 5) or (JvDBGrid1.SelectedIndex = 6)) then
    begin
      if (dmnf.cds_Mov_detCODPRO.AsString <> '') then
      begin
        if (dmnf.cds_Mov_detDESCPRODUTO.AsString <> '') then
        begin
          if (dmnf.cds_Mov_det.State in [dsBrowse]) then
            dmnf.cds_Mov_det.Edit;
            DMNF.cds_Mov_detPRECO.AsFloat := DMNF.cds_Mov_detVLR_BASE.AsFloat;
        end;
      end;
    end;

    if (dmNf.cds_Mov_det.state in [dsEdit, dsInsert]) then
    if (DMNF.cds_Mov_detPRECO.AsFloat <> dmnf.cds_Mov_detVLR_BASE.asFloat) then
      DMNF.cds_Mov_detPRECO.AsFloat := dmnf.cds_Mov_detVLR_BASE.asFloat;

end;

procedure TfNotaf.alteraVlrVenda;
begin
  if (dmnf.cds_venda.state in [dsBrowse]) then
    dmnf.cds_venda.Edit;
  if (dmnf.cds_vendaVALOR_ICMS.AsFloat <> dmnf.cds_nfVALOR_ICMS.AsFloat) then
  begin
    dmnf.cds_vendaVALOR_ICMS.AsFloat := dmnf.cds_nfVALOR_ICMS.AsFloat
  end;
  if (dmnf.cds_vendaVALOR_FRETE.AsFloat <> dmnf.cds_nfVALOR_FRETE.AsFloat) then
  begin
    dmnf.cds_vendaVALOR_FRETE.AsFloat := dmnf.cds_nfVALOR_FRETE.AsFloat
  end;
  if (dmnf.cds_vendaVALOR_SEGURO.AsFloat <> dmnf.cds_nfVALOR_SEGURO.AsFloat) then
  begin
    dmnf.cds_vendaVALOR_SEGURO.AsFloat := dmnf.cds_nfVALOR_SEGURO.AsFloat
  end;
  if (dmnf.cds_vendaOUTRAS_DESP.AsFloat <> dmnf.cds_nfOUTRAS_DESP.AsFloat) then
  begin
    dmnf.cds_vendaOUTRAS_DESP.AsFloat := dmnf.cds_nfOUTRAS_DESP.AsFloat
  end;
  if (dmnf.cds_nfVALOR_TOTAL_NOTA.AsFloat <> dmnf.cds_vendaVALOR.AsFloat) then
    dmnf.cds_vendaVALOR.AsFloat := dmnf.cds_nfVALOR_TOTAL_NOTA.AsFloat;
  if (dmnf.cds_venda.State in [dsEdit, dsInsert]) then
    dmnf.cds_venda.ApplyUpdates(0);
end;

procedure TfNotaf.BitBtn9Click(Sender: TObject);
var nunf: integer;
begin
  if (dmnf.cds_nf.State in [dsEdit, dsInsert]) Then
  begin
    btnGravar.Click;
    exit;
  end;
  nunf := DMNF.cds_nfNUMNF.AsInteger;
  // Calcula ICMS - IPI
  calculaicms('OUTROS');
  // Abre a tabela Novamente.
  dmnf.cds_nf.Close;
  dmnf.cds_nf.Params[0].AsInteger := nunf;
  dmnf.cds_nf.Open;
end;

end.
