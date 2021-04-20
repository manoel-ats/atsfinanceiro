unit uOs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, uOsClasse, Buttons,
  ExtCtrls, MMJPanel, DB, FMTBcd, DBClient, Provider, SqlExpr;

type
  TfOs = class(TForm)
    edData: TJvDatePickerEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbResultado: TJvComboBox;
    edServico: TEdit;
    Label5: TLabel;
    edCondutor: TJvComboBox;
    labelCondutor: TLabel;
    edServico1: TEdit;
    edServico2: TEdit;
    cbServico: TJvComboBox;
    Label6: TLabel;
    JvDatePickerEdit1: TJvDatePickerEdit;
    Label1: TLabel;
    MMJPanel2: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    btnClienteProcura: TBitBtn;
    edCodCliente: TEdit;
    edNomeCliente: TEdit;
    sdsProd: TSQLDataSet;
    dspProd: TDataSetProvider;
    cdsProd: TClientDataSet;
    sdsProdCODPRODUTO: TIntegerField;
    sdsProdCOD_BARRA: TStringField;
    sdsProdCODPRO: TStringField;
    sdsProdPRODUTO: TStringField;
    cdsProdCODPRODUTO: TIntegerField;
    cdsProdCOD_BARRA: TStringField;
    cdsProdCODPRO: TStringField;
    cdsProdPRODUTO: TStringField;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    Os: TOsClasse;
    Procedure limpaCampos;
    Procedure carregaCombos;
    Procedure controlaEventos;
    { Private declarations }
  public
    modo: String; // Insert, Edit, Browse, Inactive
    { Public declarations }
  end;

var
  fOs: TfOs;

implementation

uses UDm, uProcurar_nf, UDMNF;

{$R *.dfm}

procedure TfOs.btnIncluirClick(Sender: TObject);
begin
  modo := 'Insert';
  limpaCampos;
  controlaEventos;
end;

procedure TfOs.btnGravarClick(Sender: TObject);
begin
  if ((modo = 'Insert') or (modo = 'Edit')) then
  begin
    if (edCodCliente.Text = '') then
    begin
      MessageDlg('Cliente não informado', mtError, [mbOK], 0);
      edCodCliente.SetFocus;
      exit;
    end;
    Os := TOsClasse.Create;
    Os.dataMovimento := edData.Text;
    Os.codNatureza := 3;    
    Os.status := '0';
    Os.codCliente := StrToInt(edCodCliente.Text);
    Os.codUsuario := usulog;
    Os.codResponsavel := usulog;
    if (dm.cds_ccusto.Locate('NOME', cbResultado.Text, [loCaseInsensitive])) then
      Os.codCentroResultado := dm.cds_ccustoCODIGO.AsInteger
    else begin
      if (cbResultado.Text <> '') then
      begin
        MessageDlg('Centro de Resultado não encontrado.', mtError, [mbOK], 0);
        cbResultado.SetFocus;
        exit;
      end;
    end;
    if (cdsProd.Locate('PRODUTO', cbServico.Text, [loCaseInsensitive])) then
    begin
      Os.codProduto := cdsProdCODPRODUTO.AsInteger;
      Os.obsMovimento := edServico.Text + edServico1.Text + edServico2.Text;
    end;
    Os.preco := 0;
    Os.Quantidade := 0;
    Os.IncluiOs;
    Os.Destroy;
    modo := 'Browse';
    controlaEventos;
  end;
end;

procedure TfOs.limpaCampos;
begin
  cbResultado.Text := '';
  edCodCliente.Text := '';
  edNomeCliente.Text := '';
  cbServico.Text := '';
  edServico.Text := '';
  edServico1.Text := '';
  edServico2.Text := '';
end;

procedure TfOs.carregaCombos;
begin
  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;;
  dm.cds_ccusto.Open;
  // populo a cbCResultado
  DM.cds_ccusto.First;
  cbResultado.Items.Clear;
  while not DM.cds_ccusto.Eof do
  begin
    cbResultado.Items.Add(dm.cds_ccustoNOME.AsString);
    DM.cds_ccusto.Next;
  end;
  dm.cds_parametro.Close;
  //Vejo quais são os produtos cadastrados como Serviços.
  if (cdsProd.Active) then
    cdsProd.CommandText := 'SELECT CODPRODUTO, COD_BARRA, CODPRO, PRODUTO FROM ' +
      'LISTAPRODUTO(0, ' + QuotedStr('TODOSPRODUTOS') +
      ', ' + QuotedStr('TODOSPRODUTOS') + ', ' + QuotedStr('TODOSGRUPOS') +  ', ' +
      QuotedStr('TODOSSUBGRUPOS')  + ',' + QuotedStr('TODASMARCAS')+') Where TIPOPROD = ' +
      QuotedStr('SERV');
  cdsProd.Open;
  cbServico.Items.Clear;
  While (not cdsProd.Eof) do
  begin
    cbServico.Items.Add(cdsProd.Fields[3].asString);
    cdsProd.Next;
  end;
end;

procedure TfOs.btnClienteProcuraClick(Sender: TObject);
begin
  if ((modo = 'Insert') or (modo = 'Edit')) then
  begin
    //DM.varNomeCliente := '';
    //dm.codcli := 0;
    fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
    fProcurar_nf.BtnProcurar.Click;
    fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
    fProcurar_nf.btnIncluir.Visible := True;
    try
      if (fProcurar_nf.ShowModal = mrOK) then
        if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
        begin
          MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
          exit;
          //dbeCliente.SetFocus;
        end;
        if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
        begin
          MessageDlg('Cliente com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
          modo := 'Browse';
          controlaEventos;
          exit;
          //dbeCliente.SetFocus;
        end;
      //prazo := dmnf.scds_cli_procPRAZORECEBIMENTO.AsFloat;
      edCodCliente.Text := IntToStr(dmnf.scds_cli_procCODCLIENTE.AsInteger);
      edNomeCliente.Text := dmnf.scds_cli_procNOMECLIENTE.AsString;
    finally
     dmnf.scds_cli_proc.Close;
     fProcurar_nf.Free;
    end;
  end;
end;

procedure TfOs.controlaEventos;
begin
  if ((modo = 'Insert') or (modo = 'Edit')) then
  begin
    btnGravar.Visible := True;
    btnIncluir.Visible := False;
    btnProcurar.Enabled := False;
    btnSair.Enabled := False;
    btnExcluir.Visible := False;
    btnCancelar.Visible := True;
    btnClienteProcura.Enabled := True;
  end;
  if ((modo = 'Browse') or (modo = 'Inactive')) then
  begin
    btnGravar.Visible := False;
    btnIncluir.Visible := True;
    btnProcurar.Enabled := True;
    btnSair.Enabled := True;
    btnExcluir.Visible := True;
    btnCancelar.Visible := False;
    btnClienteProcura.Enabled := False;
  end;
end;

procedure TfOs.FormShow(Sender: TObject);
begin
  carregaCombos;
end;

procedure TfOs.btnCancelarClick(Sender: TObject);
begin
  modo := 'Browse';
  controlaEventos;
end;

end.
