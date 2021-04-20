unit uAtsAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, XPMenu, dxCore, dxButton, ExtCtrls, MMJPanel,DB,
  Buttons, StdCtrls, FMTBcd, DBClient, Provider, SqlExpr, EOneInst, ImgList,
  rpcompobase, rpvclreport, DBxpress, UCBase, ActnList, RXCtrls, RxGIF,
  jpeg, EAppProt, TFlatSpeedButtonUnit, StdActns, UCHist_Base,
  UCHistDataset, JvGIF;

type
  TfAtsAdmin = class(TForm)
    XPMenu1: TXPMenu;
    PopupMenu1: TPopupMenu;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes: TMenuItem;
    Fornecedores: TMenuItem;
    produtos: TMenuItem;
    usoprod: TMenuItem;
    comissao: TMenuItem;
    Agenda: TMenuItem;
    Lanamentos1: TMenuItem;
    compras: TMenuItem;
    venda: TMenuItem;
    NotasFiscais: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    SobreoSistema1: TMenuItem;
    Ajuda2: TMenuItem;
    StatusBar1: TStatusBar;
    transportadoras: TMenuItem;
    MMJPanel2: TMMJPanel;
    Terminal: TMenuItem;
    Sair1: TMenuItem;
    Vendas1: TMenuItem;
    sds_parametro: TSQLDataSet;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroDADOS: TStringField;
    sds_parametroD1: TStringField;
    sds_parametroD2: TStringField;
    sds_parametroD3: TStringField;
    sds_parametroD4: TStringField;
    sds_parametroD5: TStringField;
    sds_parametroD6: TStringField;
    sds_parametroD7: TStringField;
    sds_parametroD8: TStringField;
    sds_parametroD9: TStringField;
    sds_parametroINSTRUCOES: TStringField;
    dsp: TDataSetProvider;
    cds_parametro: TClientDataSet;
    cds_parametroDESCRICAO: TStringField;
    cds_parametroPARAMETRO: TStringField;
    cds_parametroCONFIGURADO: TStringField;
    cds_parametroDADOS: TStringField;
    cds_parametroD1: TStringField;
    cds_parametroD2: TStringField;
    cds_parametroD3: TStringField;
    cds_parametroD4: TStringField;
    cds_parametroD5: TStringField;
    cds_parametroD6: TStringField;
    cds_parametroD7: TStringField;
    cds_parametroD8: TStringField;
    cds_parametroD9: TStringField;
    cds_parametroINSTRUCOES: TStringField;
    Estoque1: TMenuItem;
    N1: TMenuItem;
    Compras1: TMenuItem;
    SriaNotaFiscal1: TMenuItem;
    NotasFiscais1: TMenuItem;
    Timer1: TTimer;
    ImageList1: TImageList;
    RelatriodeVendasporProduto1: TMenuItem;
    Lotes1: TMenuItem;
    RelatrioListadeProdutos1: TMenuItem;
    RelatrioListadeProdporLote1: TMenuItem;
    VCLReport_lista_produtos: TVCLReport;
    erminal1: TMenuItem;
    Clientes1: TMenuItem;
    RelatrioVendasprSrieSubGrupoetc1: TMenuItem;
    sds_Login: TSQLDataSet;
    sds_LoginLOGIN: TStringField;
    sds_LoginMICRO: TStringField;
    sds_LoginMODULO: TStringField;
    sds_LoginID_LOG: TIntegerField;
    dsp_Login: TDataSetProvider;
    cds_Login: TClientDataSet;
    cds_LoginLOGIN: TStringField;
    cds_LoginMICRO: TStringField;
    cds_LoginMODULO: TStringField;
    cds_LoginID_LOG: TIntegerField;
    Romaneio1: TMenuItem;
    EvOneInstance1: TEvOneInstance;
    RelatrioNotasCompras1: TMenuItem;
    sds_video: TSQLDataSet;
    sds_parametroLOGIN: TStringField;
    sds_parametroSENHA: TStringField;
    sds_parametroPERFIL: TStringField;
    sds_parametroCODUSUARIO: TIntegerField;
    sds_videoMICRO: TStringField;
    sds_videoP1: TStringField;
    sds_videoP2: TStringField;
    dsp_video: TDataSetProvider;
    cds_video: TClientDataSet;
    cds_parametroLOGIN: TStringField;
    cds_parametroSENHA: TStringField;
    cds_parametroPERFIL: TStringField;
    cds_parametroCODUSUARIO: TIntegerField;
    cds_videoMICRO: TStringField;
    cds_videoP1: TStringField;
    cds_videoP2: TStringField;
    ListadeCompras1: TMenuItem;
    RelatriodeCompras1: TMenuItem;
    CorrigirEstoque1: TMenuItem;
    RelatriodeComprasVendaICMS1: TMenuItem;
    mnDevCompra: TMenuItem;
    DevolucaoVendas1: TMenuItem;
    N2: TMenuItem;
    Usuarios1: TMenuItem;
    rocarSenha1: TMenuItem;
    RocarUsuarioLogOff1: TMenuItem;
    Historico1: TMenuItem;
    Financeiro: TActionList;
    acCompras: TAction;
    acVendas: TAction;
    acNFiscais: TAction;
    acTerminal: TAction;
    acEstoque: TAction;
    acClientes: TAction;
    acAgenda: TAction;
    UserControlComercial: TUserControl;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    dxButton6: TdxButton;
    Receber1: TMenuItem;
    Pagar1: TMenuItem;
    LanarDespesas1: TMenuItem;
    LanarReceitas1: TMenuItem;
    acReceber: TAction;
    RelastriosFinanceiros1: TMenuItem;
    ContEstoque1: TMenuItem;
    MovimentaoFinanceira1: TMenuItem;
    GerarMensalidades1: TMenuItem;
    VerMovimentaodecheques1: TMenuItem;
    RelContasaPagar1: TMenuItem;
    RelContasaReceber1: TMenuItem;
    RelDRE1: TMenuItem;
    RelBalancete1: TMenuItem;
    RelResumo1: TMenuItem;
    RelCaixa1: TMenuItem;
    FluxoCaixa1: TMenuItem;
    dxButton1: TdxButton;
    dxButton9: TdxButton;
    dxButton8: TdxButton;
    dxButton7: TdxButton;
    SpeedButton4: TdxButton;
    btnsair: TdxButton;
    EvAppProtect1: TEvAppProtect;
    mPlanoContas: TMenuItem;
    mSuporte: TMenuItem;
    mCadColaborador: TMenuItem;
    CFOPEstados1: TMenuItem;
    Empresa1: TMenuItem;
    VerEstoque1: TMenuItem;
    EntradadeEstoque1: TMenuItem;
    SaidadeEstoque1: TMenuItem;
    MovimentaodeEstoque1: TMenuItem;
    RelatrioListadeProdutos2: TMenuItem;
    RelatrioListadeProdporLote2: TMenuItem;
    VCLReport1: TVCLReport;
    N3: TMenuItem;
    Image1: TImage;
    acAPagar: TEditCut;
    acDespesa: TAction;
    acReceitas: TAction;
    acBanco: TAction;
    Banco1: TMenuItem;
    acPrazo: TAction;
    Prazos1: TMenuItem;
    ArquivoRetorno: TMenuItem;
    acArquivoRetorno: TAction;
    acClienteBloqueio: TAction;
    ClienteBloqueio1: TMenuItem;
    LanamentoPassivo1: TMenuItem;
    LanarOS1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure FornecedoresClick(Sender: TObject);
    procedure produtosClick(Sender: TObject);
    procedure comissaoClick(Sender: TObject);
    procedure SriaNotaFiscal1Click(Sender: TObject);
    procedure transportadorasClick(Sender: TObject);
    procedure AgendaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure usoprodClick(Sender: TObject);
    procedure RelatriodeVendasporProduto1Click(Sender: TObject);
    procedure Lotes1Click(Sender: TObject);
    procedure RelatrioListadeProdutos1Click(Sender: TObject);
    procedure RelatrioListadeProdporLote1Click(Sender: TObject);
    procedure ListaClientes1Click(Sender: TObject);
    procedure ListausoProduto1Click(Sender: TObject);
    procedure RelatrioVendasprSrieSubGrupoetc1Click(Sender: TObject);
    procedure Visitas1Click(Sender: TObject);
    procedure Romaneio1Click(Sender: TObject);
    procedure RelatrioNotasCompras1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListadeCompras1Click(Sender: TObject);
    procedure RelatriodeCompras1Click(Sender: TObject);
    procedure CorrigirEstoque1Click(Sender: TObject);
    procedure RelatriodeComprasVendaICMS1Click(Sender: TObject);
    procedure mnDevCompraClick(Sender: TObject);
    procedure DevolucaoVendas1Click(Sender: TObject);
    procedure acComprasExecute(Sender: TObject);
    procedure acVendasExecute(Sender: TObject);
    procedure acNFiscaisExecute(Sender: TObject);
    procedure acTerminalExecute(Sender: TObject);
    procedure acEstoqueExecute(Sender: TObject);
    procedure acClientesExecute(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure acReceberExecute(Sender: TObject);
    procedure MovimentaoFinanceira1Click(Sender: TObject);
    procedure GerarMensalidades1Click(Sender: TObject);
    procedure VerMovimentaodecheques1Click(Sender: TObject);
    procedure RelContasaPagar1Click(Sender: TObject);
    procedure RelContasaReceber1Click(Sender: TObject);
    procedure RelDRE1Click(Sender: TObject);
    procedure mPlanoContasClick(Sender: TObject);
    procedure mSuporteClick(Sender: TObject);
    procedure mCadColaboradorClick(Sender: TObject);
    procedure CFOPEstados1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure VerEstoque1Click(Sender: TObject);
    procedure EntradadeEstoque1Click(Sender: TObject);
    procedure SaidadeEstoque1Click(Sender: TObject);
    procedure MovimentaodeEstoque1Click(Sender: TObject);
    procedure RelatrioListadeProdutos2Click(Sender: TObject);
    procedure RelatrioListadeProdporLote2Click(Sender: TObject);
    procedure RelCaixa1Click(Sender: TObject);
    procedure FluxoCaixa1Click(Sender: TObject);
    procedure acAPagarExecute(Sender: TObject);
    procedure acDespesaExecute(Sender: TObject);
    procedure acReceitasExecute(Sender: TObject);
    procedure acBancoExecute(Sender: TObject);
    procedure Prazos1Click(Sender: TObject);
    procedure acPrazoExecute(Sender: TObject);
    procedure acArquivoRetornoExecute(Sender: TObject);
    procedure acClienteBloqueioExecute(Sender: TObject);
    procedure LanamentoPassivo1Click(Sender: TObject);
    procedure LanarOS1Click(Sender: TObject);
  private
    STime: TDateTime;
    tempo_medio:  double;
    bytes_transf: longword;
    tamanho_arquivo : longword;
    { Private declarations }
  public
    { Public declarations }
    function GetVersion: string;
    Function NomeComputador: string;
  end;

var
  fAtsAdmin: TfAtsAdmin;

implementation

uses uVendas, ufprocura_prod, uVendaFinalizar, uMostra_Contas, uCheques_bol,
  uClienteCadastro, uFornecedorCadastro, uProdutoCadastro,
  uComissaoCadastro, uCompra, uCompraFinalizar, uSeriaNF, uRateioPag, UDm,
  uftransp, ufNotafiscalProc, uSobre, uUso_Prod, uRelVendas, uITENS_NF,
  uLotes, uTerminal, uListaClientes, ufListaProd, uRel_vendas,
  uTerminal_Delivery, uTipoVisita, uAgendamento, uRomaneio, ufDlgLogin,
  uFiltroMovimento, uListadeCompra, uRel, uEstoqueCorrige, uTerminalLoja,
  uLote, sCtrlResize, ufcr, uCrTituloInclui, uFiltro_forn_plano, ufcpproc,
  ufcrtitulo, uCrTituloPagto, uSplash, ucrTitulo, ufContabilLanc, uGeraCob,
  uProcuraCheque, uRelatorio, uRelatorioReceber, uNF, uProdudoBusca,
  uNotaf, ufContasAssistente, ufuncionario, uEstado, uEmpresa,
  uFiltroEstoque, uEntra_Sai_estoque, uRelatorioFin, uRelatorioCaixa,
  uFluxoCaixa, uNFCompra, uEscolherNF, uProcura_produtos, uMovLinhas ,ubanco,
  uAtualizaSistema, uPrazo, uArquivoRetorno, uClienteBloqueio, uPassivo,
  uMaquinaControle;


{$R *.dfm}

(**********************************************************************)
Function Saudacao : string;
begin
 result:='Boa-noite!';
 if (time>=0.25) and (time<0.5) then result:='Bom-dia!';
 if (time>=0.5) and (time<0.80) then result:='Boa-tarde!';
end;
(**********************************************************************)

procedure TfAtsAdmin.FormCreate(Sender: TObject);
var
 vSaudacao : string;
begin
  DM.MODULOUSERCONTROL := 'atsadmin';
  sCtrlResize.CtrlResize(TForm(fAtsAdmin));
  StatusBar1.Panels[0].Text := ' ATS - Admin versão: ' + GetVersion;
  StatusBar1.Panels[2].Text := Saudacao + ' Hoje é '+formatdatetime('dddddd',date);
  if (dm.moduloUsado = 'AUTOMOTIVA') then
  begin
    //dxButton2.Caption := 'Ordem Serv.(CTRL+V)';
    //dxButton5.Caption := 'Proc. Peças(CTRL+E)';
    //dxButton4.Enabled := False;
    //dxButton6.Enabled := False;
    MainMenu1.Items.Items[0].Items[4].Caption := 'Cad. Peças/Serviços';
  end;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    //dxButton1.Caption := 'Ent./Colheita(CTRL+C)';
    //dxButton5.Caption := 'Proc. Frutos(CTRL+E)';
    //dxButton6.Enabled := False;
    MainMenu1.Items.Items[0].Items[4].Caption := 'Cad. Frutas';
  end;
  if (FileExists('logo.jpg')) then
    Image1.Picture.LoadFromFile('logo.jpg');
    
end;

procedure TfAtsAdmin.ClientesClick(Sender: TObject);
begin
  if (varform <> '') then
    varform := '';
  fClienteCadastro := TfClienteCadastro.Create(Application);
  try
    fClienteCadastro.ShowModal;
  finally
    fClienteCadastro.Free;
    varform := '';
  end;
end;

procedure TfAtsAdmin.FornecedoresClick(Sender: TObject);
begin
  fFornecedorCadastro := TfFornecedorCadastro.Create(Application);
  try
    fFornecedorCadastro.ShowModal;
  finally
    fFornecedorCadastro.Free;
  end;
end;

procedure TfAtsAdmin.produtosClick(Sender: TObject);
begin
  fProdutoCadastro := TfProdutoCadastro.Create(Application);
  try
    fProdutoCadastro.ShowModal;
  finally
    fProdutoCadastro.Free;
  end;
end;

procedure TfAtsAdmin.comissaoClick(Sender: TObject);
begin
  fComissaoCadastro := TfComissaoCadastro.Create(Application);
  try
    fComissaoCadastro.ShowModal;
  finally
    fComissaoCadastro.Free;
  end;
end;

procedure TfAtsAdmin.SriaNotaFiscal1Click(Sender: TObject);
begin
 fSeriaNF := TfSeriaNF.Create(Application);
 try
  fSeriaNF.ShowModal;
 finally
  fSeriaNF.Free;
 end;
end;

procedure TfAtsAdmin.transportadorasClick(Sender: TObject);
begin
   ftransp := Tftransp.Create(Application);
   try
     ftransp.ShowModal;
   finally
     ftransp.Free;
   end;
end;

procedure TfAtsAdmin.AgendaClick(Sender: TObject);
begin
  fAgendamento := TfAgendamento.Create(Application);
  try
    fAgendamento.ShowModal;
  finally
    fAgendamento.Free;
  end;
end;

procedure TfAtsAdmin.Timer1Timer(Sender: TObject);
begin
 StatusBar1.Panels[1].Text := TimetoStr(Time);
end;

procedure TfAtsAdmin.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
 statusBar1.Canvas.Brush.Color:=clMoneyGreen;//$00AEB7D2;
 StatusBar1.Canvas.FillRect(rect);
 StatusBar1.Canvas.TextOut(Rect.Left+18,rect.Top,Panel.Text);
 ImageList1.Draw(StatusBar.Canvas,rect.Left,rect.Top,Panel.Index+0)
end;

procedure TfAtsAdmin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Você realmente deseja encerrar o sistema ?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
     Application.Terminate
  else
    abort;
end;

procedure TfAtsAdmin.SobreoSistema1Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Application);
  try
    fSobre.ShowModal;
  finally
    fSobre.Free;
  end;
end;

procedure TfAtsAdmin.usoprodClick(Sender: TObject);
begin
  fUso_Prod := TfUso_Prod.Create(Application);
  try
    fUso_Prod.ShowModal;
  finally
    fUso_Prod.Free;
  end;
end;

procedure TfAtsAdmin.RelatriodeVendasporProduto1Click(Sender: TObject);
begin
  fRelVenda := TfRelVenda.Create(Application);
  try
    fRelVenda.ShowModal;
  finally
    fRelVenda.Free;
  end;

end;

procedure TfAtsAdmin.Lotes1Click(Sender: TObject);
begin
  if (dm.moduloUsado = 'CITRUS') then
  begin
    fLote := TfLote.Create(Application);
    try
      fLote.ShowModal;
    finally
      fLote.Free;
    end;
  end
  else begin
    fLotes := TfLotes.Create(Application);
    try
      fLotes.ShowModal;
    finally
      fLotes.Free;
    end;
  end;
end;

procedure TfAtsAdmin.RelatrioListadeProdutos1Click(Sender: TObject);
begin
  fProcura_prod.ShowModal;
end;

procedure TfAtsAdmin.RelatrioListadeProdporLote1Click(Sender: TObject);
begin
  VCLReport_lista_produtos.FileName := str_relatorio + 'lista_produtosLotes.rep';
  VCLReport_lista_produtos.report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_lista_produtos.Title := VCLReport_lista_produtos.FileName;
  VCLReport_lista_produtos.Execute;
end;

procedure TfAtsAdmin.ListaClientes1Click(Sender: TObject);
begin
   fListaClientes:=TfListaClientes.Create(Application);
   try
   fListaClientes.ShowModal;
   finally
       fListaClientes.Free;
   end;
end;

function TfAtsAdmin.GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

procedure TfAtsAdmin.ListausoProduto1Click(Sender: TObject);
begin
  fListaProd:=TfListaProd.Create(Application);
  // fListaClientes.edNome.SetFocus;
  try
    fListaProd.ShowModal;
  finally
    fListaProd.Free;
    // dbEdit2.SetFocus;
  end;
end;

procedure TfAtsAdmin.RelatrioVendasprSrieSubGrupoetc1Click(
  Sender: TObject);
begin
  fRel_Vendas:=TfRel_Vendas.Create(Application);
  try
    fRel_Vendas.BitBtn3.Visible := False;
    fRel_Vendas.ShowModal;
  finally
    fRel_Vendas.Free;
  end;
end;

function TfAtsAdmin.NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

procedure TfAtsAdmin.Visitas1Click(Sender: TObject);
begin
  fTipoVisita := TfTipoVisita.Create(Application);
  try
     fTipoVisita.ShowModal;
  finally
     fTipoVisita.Free;
  end;
end;

procedure TfAtsAdmin.Romaneio1Click(Sender: TObject);
begin
   fRomaneio := TfRomaneio.Create(Application);
   try
      fRomaneio.ShowModal;
   finally
      fRomaneio.Free;
   end;
end;

procedure TfAtsAdmin.RelatrioNotasCompras1Click(Sender: TObject);
begin
  {Notas de Compras }
  VCLReport_lista_produtos.FileName := str_relatorio + 'rel_notasCompras.rep';
  VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_lista_produtos.Title := VCLReport_lista_produtos.Filename;
  VCLReport_lista_produtos.Execute;
end;

procedure TfAtsAdmin.FormShow(Sender: TObject);
begin
  //Se tiver Agendamento para o dia abro a agenda
  if (dm.cds_ag.Active) then
    dm.cds_ag.Close;
  dm.cds_ag.Params[0].Clear;
  dm.cds_ag.Params[1].AsInteger := 9999999;
  dm.cds_ag.Params[2].Value := Now;
  dm.cds_ag.Params[3].Value := Now;
  dm.cds_ag.Params[4].Clear;
  dm.cds_ag.Params[5].AsInteger := 9999999;
  dm.cds_ag.Open;
  if (not dm.cds_ag.IsEmpty) then
  begin
    dm.cds_ag.Close;
    fAgendamento := TfAgendamento.Create(Application);
    try
      fAgendamento.ShowModal;
    finally
      fAgendamento.Free;
    end;
  end
  else
  begin
    dm.cds_ag.Close;
    if (dm.ag_dia.Active) then
      dm.ag_dia.Close;
    dm.ag_dia.Params[0].Value := now;
    dm.ag_dia.Open;
    if (dm.ag_dia.IsEmpty) then
      dm.ag_dia.Close
    else
      begin
        dm.ag_dia.Close;
        fAgendamento := TfAgendamento.Create(Application);
      try
        fAgendamento.ShowModal;
      finally
        fAgendamento.Free;
      end;
    end;
  end;
  //************************************************************
  //fAtualizaSistema := TfAtualizaSistema.Create(Application);
  //try
    // nao preciso visualizar.
    //fAtualizaSistema.ShowModal;
  //finally
  // fAtualizaSistema.Free;
 //end;
end;

procedure TfAtsAdmin.ListadeCompras1Click(Sender: TObject);
begin
  fListadeCompra := TfListadeCompra.Create(Application);
  try
    fListadeCompra.ShowModal;
  finally
    fListadeCompra.Free;
  end;
end;

procedure TfAtsAdmin.RelatriodeCompras1Click(Sender: TObject);
begin
  fRel := TfRel.Create(Application);
  try
    fRel.ShowModal;
  finally
    fRel.Free;
  end;
end;

procedure TfAtsAdmin.CorrigirEstoque1Click(Sender: TObject);
begin
  {Corrige o Estoque }
  fEstoqueCorrige := TfEstoqueCorrige.Create(Application);
  try
    fEstoqueCorrige.ShowModal;
  finally
    fEstoqueCorrige.Free;
  end;

end;

procedure TfAtsAdmin.RelatriodeComprasVendaICMS1Click(Sender: TObject);
begin
  fRel_Vendas:=TfRel_Vendas.Create(Application);
  try
    fRel_Vendas.GroupBox1.Visible := false;
    fRel_Vendas.RadioButton1.Visible := False;
    fRel_Vendas.RadioButton2.Visible := False;
    fRel_Vendas.RadioButton3.Visible := False;
    fRel_Vendas.RadioButton4.Visible := False;
    fRel_Vendas.btnImprimir.Visible := False;
    fRel_Vendas.ComboBox1.Visible := False;
    fRel_Vendas.ComboBox2.Visible := False;
    fRel_Vendas.Label3.Visible := False;
    fRel_Vendas.Label4.Visible := False;
    fRel_Vendas.ShowModal;
  finally
    fRel_Vendas.Free;
  end;
end;

procedure TfAtsAdmin.mnDevCompraClick(Sender: TObject);
begin
    fCompra.tipoCompra := 'DEVOLUCAO';
    fCompra.ShowModal;
end;

procedure TfAtsAdmin.DevolucaoVendas1Click(Sender: TObject);
begin
   fVendas.tipoVenda := 'DEVOLUCAO';
   fVendas.ShowModal;
end;

procedure TfAtsAdmin.acComprasExecute(Sender: TObject);
begin
 // fRateioPag := TfRateioPag.Create(Application);
 // try
    fCompra.tipoCompra := 'COMPRA';
    fCompra.ShowModal;
  //finally
   // fRateioPag.Free;
  //end;
end;

procedure TfAtsAdmin.acVendasExecute(Sender: TObject);
begin
 //fMostra_Contas := TfMostra_Contas.Create(Application);
// fVendaFinalizar := TfVendaFinalizar.Create(Application);
 //fCheques_bol := TfCheques_bol.Create(Application);
// try
   fVendas.tipoVenda := 'VENDA';
   fVendas.ShowModal;
 //finally
 // fCheques_bol.Free;
 // fMostra_Contas.Free;
  //fVendaFinalizar.Free;
 //end;
end;

procedure TfAtsAdmin.acNFiscaisExecute(Sender: TObject);
begin
  usulog :=  UserControlComercial.CurrentUser.UserID;
  nome_user := UserControlComercial.CurrentUser.UserName;
  fEscolherNF := TfEscolherNF.Create(Application);
  try
    fEscolherNF.ShowModal;
  finally
    fEscolherNF.Free;
  end;
end;

procedure TfAtsAdmin.acTerminalExecute(Sender: TObject);
var
  empresaemuso : string;
begin
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'EMPRESA';
  dm.cds_parametro.Open;
  empresaemuso := dm.cds_parametroDADOS.AsString;
  if (empresaemuso = 'COMETA') then
    fTerminal.ShowModal
  else
    fTerminal_Delivery.ShowModal;
 //fTerminal.ShowModal;
 {fTerminalLoja := TfTerminalLoja.Create(Application);
 try
   fTerminalLoja.ShowModal;
 finally
   fTerminalLoja.Free;
 end; }
end;

procedure TfAtsAdmin.acEstoqueExecute(Sender: TObject);
begin
  fProcura_produtos.btnIncluir.Visible := true;
  fProcura_produtos.ShowModal;
  fProcura_produtos.cbMarca.Text := '';
end;

procedure TfAtsAdmin.acClientesExecute(Sender: TObject);
begin
   fListaClientes := TfListaClientes.Create(Application);
   //fClienteCadastro := TfClienteCadastro.Create(Application);
   try
     varform := 'consulta';
     dm.var_teste := 'consulta';
     fListaClientes.ShowModal;
   finally
     //fClienteCadastro.Free;
     fListaClientes.Free;
     varform := '';
     dm.var_teste := '';
   end;
end;

procedure TfAtsAdmin.btnsairClick(Sender: TObject);
begin
  close;
end;

procedure TfAtsAdmin.acReceberExecute(Sender: TObject);
var
  TD: TTransactionDesc;
begin
  { Limpo a Tabela caso o sistema foi fechado de forma incorreta }
  try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set DP = null where DP is not null');
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD);
  end;

  fcrproc := Tfcrproc.Create(Application);
  try
     fcrproc.ShowModal;
  finally
     fcrproc.Free;
  end;

end;

procedure TfAtsAdmin.MovimentaoFinanceira1Click(Sender: TObject);
begin
  fContabilLanc := TfContabilLanc.Create(Application);
  try
    fContabilLanc.ShowModal;
  finally
    fContabilLanc.Free;
  end;
end;

procedure TfAtsAdmin.GerarMensalidades1Click(Sender: TObject);
begin
  fGeraCob := TfGeraCob.Create(Application);
  try
    fGeraCob.ComboBox2.Visible := true;
    fGeraCob.Label3.Visible := true;
    fGeraCob.ComboBox3.Visible := False;
    fGeraCob.Label12.Visible := False;
   if (dm.moduloUsado = 'SAUDE') then
   begin
    fGeraCob.edCodCCusto.Visible := TRUE;
   END;
    fGeraCob.Label11.Visible := False;
    fGeraCob.ShowModal;
  finally
    fGeraCob.Free;
  end;

end;

procedure TfAtsAdmin.VerMovimentaodecheques1Click(Sender: TObject);
begin
  fProcuraCheque := TfProcuraCheque.Create(Application);
  try
    fProcuraCheque.ShowModal;
  finally
    fProcuraCheque.Free;
  end; 
end;

procedure TfAtsAdmin.RelContasaPagar1Click(Sender: TObject);
begin
  //fFiltro_forn_plano := TfFiltro_forn_plano.Create(Application);
  fRelatorio := TfRelatorio.Create(Application);
  try
    fRelatorio.ShowModal;
  finally
    //fFiltro_forn_plano.Free;
    fRelatorio.Free;
  end;
end;

procedure TfAtsAdmin.RelContasaReceber1Click(Sender: TObject);
begin
  fRelatorioReceber := TfRelatorioReceber.Create(Application);
  try
    fRelatorioReceber.ShowModal;
  finally
    fRelatorioreceber.Free;
  end;
end;

procedure TfAtsAdmin.RelDRE1Click(Sender: TObject);
begin
  fRelatorioFin := TfRelatorioFin.Create(Application);
  try
    fRelatorioFin.ShowModal;
  finally
    fRelatorioFin.Free;
  end;
end;

procedure TfAtsAdmin.mPlanoContasClick(Sender: TObject);
begin
 fContasAssistente := TfContasAssistente.Create(Application);
 try
  fContasAssistente.ShowModal;
 finally
  fContasAssistente.Free;
 end;
end;

procedure TfAtsAdmin.mSuporteClick(Sender: TObject);
begin
  WinExec('atsSuporte.EXE', SW_SHOWNORMAL);
end;

procedure TfAtsAdmin.mCadColaboradorClick(Sender: TObject);
begin
  // Carlos
  fFuncionario := TfFuncionario.Create(Application);
  try
    fFuncionario.ShowModal;
  finally
    fFuncionario.Free;
  end;
end;

procedure TfAtsAdmin.CFOPEstados1Click(Sender: TObject);
begin
  fEstado := TfEstado.Create(Application);
  try
    fEstado.ShowModal;
  finally
    fEstado.Free;
  end;
end;

procedure TfAtsAdmin.Empresa1Click(Sender: TObject);
begin
  fEmpresa := TfEmpresa.Create(Application);
  try
    fEmpresa.ShowModal;
  finally
    fEmpresa.Free;
  end;
end;

procedure TfAtsAdmin.VerEstoque1Click(Sender: TObject);
begin
 fFiltroEstoque := TfFiltroEstoque.Create(Application);
 try
   fFiltroEstoque.ShowModal;
 finally
   fFiltroEstoque.Free;
 end;
end;

procedure TfAtsAdmin.EntradadeEstoque1Click(Sender: TObject);
begin
 fEntra_Sai_estoque := TfEntra_Sai_estoque.Create(Application);
 try
   with fEntra_Sai_estoque do
   begin
     label1.visible := False;
     dbEdit1.Visible := False;
     Label2.Visible := False;
     Combobox1.Visible := False;
     Label11.Visible := False;
     Edit1.Visible := False;
     label13.Top := label13.Top - 15;
     MaskEdit1.Top := MaskEdit1.Top - 15;
     Label3.Top := Label3.Top - 15;
     Combobox2.Top := Combobox2.Top - 15;
     Label12.Top := Label12.Top - 15;
     Edit2.Top := Edit2.Top - 15;
     entsai := 0;
     Label15.Caption := 'Entrada de Mercadorias de Estoque';

     cbCodigo.DataField := '';
     cbNome.DataField := '';
     if (cdsB.Active) then
       cdsB.Close;
     cdsB.CommandText := 'SELECT CODFORNECEDOR, NOMEFORNECEDOR FROM FORNECEDOR WHERE ' +
       ' STATUS = 1';
     cdsB.Open;
     cbCodigo.DataField := 'CODFORNECEDOR';
     cbNome.DataField := 'NOMEFORNECEDOR';

     ShowModal;
   end;
 finally
   fEntra_Sai_estoque.Free;
 end;

end;

procedure TfAtsAdmin.SaidadeEstoque1Click(Sender: TObject);
begin
  fEntra_Sai_estoque := TfEntra_Sai_estoque.Create(Application);
 try
   with fEntra_Sai_estoque do
   begin
     label13.visible := False;
     MaskEdit1.Visible := False;
     Label3.Visible := False;
     Combobox2.Visible := False;
     Label12.Visible := False;
     Edit2.Visible := False;
     label1.Top := label1.Top + 15;
     DbEdit1.Top := DbEdit1.Top + 15;
     Label2.Top := Label2.Top + 15;
     Combobox1.Top := Combobox1.Top + 15;
     Label11.Top := Label11.Top + 15;
     Edit1.Top := Edit1.Top + 15;
     entsai := 1;
     Label15.Caption := 'Saida de Mercadorias de Estoque';

     cbCodigo.DataField := '';
     cbNome.DataField := '';
     if (cdsB.Active) then
       cdsB.Close;
     cdsB.CommandText := 'SELECT CODCLIENTE, NOMECLIENTE FROM CLIENTES WHERE ' +
       ' STATUS = 1';
     cdsB.Open;
     cbCodigo.DataField := 'CODCLIENTE';
     cbNome.DataField := 'NOMECLIENTE';

     ShowModal;
   end;
 finally
   fEntra_Sai_estoque.Free;
 end;
end;

procedure TfAtsAdmin.MovimentaodeEstoque1Click(Sender: TObject);
begin
  fEntra_Sai_estoque := TfEntra_Sai_estoque.Create(Application);
  try
   with fEntra_Sai_estoque do
   begin
     entsai := 1;
     Label14.visible := False;
     Label16.visible := False;
     cbCodigo.visible := False;
     cbNome.visible := False;
     Label15.Caption := 'Movimento de Mercadorias no Estoque';
     ShowModal;
   end;
  finally
   fEntra_Sai_estoque.Free;
  end;
  {
  fMovLinhas := TfMovLinhas.Create(Application);
  try
    fMovLinhas.ShowModal;
  finally
    fMovLinhas.Free;
  end;
  }
end;

procedure TfAtsAdmin.RelatrioListadeProdutos2Click(Sender: TObject);
begin
  VCLReport_lista_produtos.FileName := str_relatorio + 'lista_produtos.rep';
  VCLReport_lista_produtos.Title := VCLReport_lista_produtos.Filename;
  VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_lista_produtos.Title := VCLReport_lista_produtos.Filename;
  VCLReport_lista_produtos.Execute;
end;

procedure TfAtsAdmin.RelatrioListadeProdporLote2Click(Sender: TObject);
begin
  VCLReport_lista_produtos.FileName := str_relatorio + 'lista_produtosLotes.rep';
  VCLReport_lista_produtos.Title := VCLReport_lista_produtos.Filename;
  VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_lista_produtos.Title := VCLReport_lista_produtos.Filename;
  VCLReport_lista_produtos.Execute;
end;

procedure TfAtsAdmin.RelCaixa1Click(Sender: TObject);
begin

 fRelatorioCaixa := TfRelatorioCaixa.Create(Application);
 try
   fRelatorioCaixa.ShowModal;
 finally
   fRelatorioCaixa.Free;
 end;
end;

procedure TfAtsAdmin.FluxoCaixa1Click(Sender: TObject);
begin
 fFluxoCaixa := TfFluxoCaixa.Create(Application);
 try
   fFluxoCaixa.ShowModal;
 finally
   fFluxoCaixa.Free;
 end;

end;

procedure TfAtsAdmin.acAPagarExecute(Sender: TObject);
begin
 fCpProc:=TfCpProc.Create(Application);
 try
   fCpProc.ShowModal;
 finally
   fCpProc.Free;
 end;

end;

procedure TfAtsAdmin.acDespesaExecute(Sender: TObject);
begin
  // Verifica se usa centro de Custo
 { if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRO CUSTO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'S' then
      fRateioPag:=TfRateioPag.Create(Application);
  try
    fcrTituloPagto.ShowModal;
  finally
    if dm.cds_parametroDADOS.AsString = 'S' then
      fRateioPag.Free;
  end;
  dm.cds_parametro.Close; }
  fcrTituloPagto.ShowModal;
  DM.varAplicacaoID := fAtsAdmin.UserControlComercial.ApplicationID;
  Dm.varUSERID := fAtsAdmin.UserControlComercial.CurrentUser.UserID;
end;

procedure TfAtsAdmin.acReceitasExecute(Sender: TObject);
begin
  if (dm.moduloUsado = 'ESCOLA') then
  begin
    fcrTituloInclui.DBEdit4.Visible := True;
    fcrTituloInclui.Label9.Caption := 'RA';
    fcrTituloInclui.Label10.Caption := 'Aluno';
  end;
  fcrTituloInclui.ShowModal;

end;

procedure TfAtsAdmin.acBancoExecute(Sender: TObject);
begin
 fbanco:=Tfbanco.Create(Application);
 try
   dm.cdsBanco.Open;
   fbanco.ShowModal;
 finally
   dm.cdsBanco.Close;
   fbanco.Free;
 end;
end;

procedure TfAtsAdmin.Prazos1Click(Sender: TObject);
begin
 fPrazo := TfPrazo.Create(Application);
 try
   dm.cdsPrazo.Open;
   fPrazo.ShowModal;
 finally
   dm.cdsPrazo.Close;
   fPrazo.Free;
 end;
end;

procedure TfAtsAdmin.acPrazoExecute(Sender: TObject);
begin
 fPrazo := TfPrazo.Create(Application);
 try
   dm.cdsPrazo.Open;
   fPrazo.ShowModal;
 finally
   dm.cdsPrazo.Close;
   fPrazo.Free;
 end;
end;
procedure TfAtsAdmin.acArquivoRetornoExecute(Sender: TObject);
begin
  fArquivoRetorno := TfArquivoRetorno.Create(Application);
  try
    fArquivoRetorno.ShowModal;
  finally
    fArquivoRetorno.Free;
  end;
end;

procedure TfAtsAdmin.acClienteBloqueioExecute(Sender: TObject);
begin
  fClienteBloqueio := TfClienteBloqueio.Create(Application);
  try
    fClienteBloqueio.ShowModal;
  finally
    fClienteBloqueio.Free;
  end;

end;

procedure TfAtsAdmin.LanamentoPassivo1Click(Sender: TObject);
begin
  fPassivo := TfPassivo.Create(Application);
  try
    fPassivo.ShowModal;
  finally
    fPassivo.Free;
  end;

end;

procedure TfAtsAdmin.LanarOS1Click(Sender: TObject);
begin
  fMaquinasControle := TfMaquinasControle.Create(Application);
  try
    fMaquinasControle.ShowModal;
  finally
    fMaquinasControle.Free;
  end;
end;

end.
