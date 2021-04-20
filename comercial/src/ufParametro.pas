unit ufParametro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, Grids, DBGrids, DBClient, Provider, DB, SqlExpr,
  Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel, Mask, DBCtrls,
  ComCtrls,DBXpress, JvExExtCtrls, JvExtComponent, JvDBRadioPanel,
  JvExStdCtrls, JvCheckBox, JvExMask, JvToolEdit, JvBaseEdits;

type
  TfParametro = class(TfPai)
    DataSource1: TDataSource;
    Parametro: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Edit12: TEdit;
    BitBtn4: TBitBtn;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Edit13: TEdit;
    BitBtn2: TBitBtn;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    BitBtn5: TBitBtn;
    Image1: TImage;
    sbusca: TSQLDataSet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    RadioGroup1: TRadioGroup;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    GroupBox6: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit17: TEdit;
    BitBtn7: TBitBtn;
    Edit18: TEdit;
    Edit19: TEdit;
    ComboBox2: TComboBox;
    GroupBox8: TGroupBox;
    BitBtn8: TBitBtn;
    RadioGroup2: TRadioGroup;
    GroupBox9: TGroupBox;
    Label19: TLabel;
    BitBtn9: TBitBtn;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Label20: TLabel;
    GroupBox7: TGroupBox;
    Label9: TLabel;
    Edit14: TEdit;
    BitBtn6: TBitBtn;
    ComboBox1: TComboBox;
    Label10: TLabel;
    GroupBox10: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    BitBtn10: TBitBtn;
    ComboBox5: TComboBox;
    meDta1: TMaskEdit;
    meDta2: TMaskEdit;
    Label13: TLabel;
    GroupBox11: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    BitBtn11: TBitBtn;
    ComboBox6: TComboBox;
    meDta3: TMaskEdit;
    meDta4: TMaskEdit;
    GroupBox12: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    BitBtn12: TBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    GroupBox13: TGroupBox;
    Label24: TLabel;
    Label27: TLabel;
    BitBtn13: TBitBtn;
    ComboBox8: TComboBox;
    Edit15: TEdit;
    TabSheet4: TTabSheet;
    GroupBox14: TGroupBox;
    BitBtn14: TBitBtn;
    JvCheckBox1: TJvCheckBox;
    JvCheckBox2: TJvCheckBox;
    JvCheckBox3: TJvCheckBox;
    JvCheckBox4: TJvCheckBox;
    JvCheckBox5: TJvCheckBox;
    JvCheckBox6: TJvCheckBox;
    GroupBox15: TGroupBox;
    Label28: TLabel;
    Edit16: TEdit;
    BitBtn15: TBitBtn;
    TabSheet5: TTabSheet;
    GroupBox16: TGroupBox;
    Label29: TLabel;
    BitBtn16: TBitBtn;
    ComboBox7: TComboBox;
    GroupBox17: TGroupBox;
    Label30: TLabel;
    BitBtn17: TBitBtn;
    cbUsaJuros: TComboBox;
    Label31: TLabel;
    Label32: TLabel;
    edJuros: TJvCalcEdit;
    GroupBox18: TGroupBox;
    Label33: TLabel;
    Edit20: TEdit;
    BitBtn18: TBitBtn;
    cbCentroCusto: TComboBox;
    Edit21: TEdit;
    GroupBox19: TGroupBox;
    Label34: TLabel;
    BitBtn19: TBitBtn;
    ComboBox9: TComboBox;
    TabSheet6: TTabSheet;
    GroupBox20: TGroupBox;
    Label35: TLabel;
    BitBtn20: TBitBtn;
    ComboBox10: TComboBox;
    GroupBox21: TGroupBox;
    BitBtn21: TBitBtn;
    GroupBox22: TGroupBox;
    BitBtn22: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fParametro: TfParametro;

implementation

uses UDm;

{$R *.dfm}

procedure TfParametro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 if dm.cds_param.Active then
   dm.cds_param.Close;
end;

procedure TfParametro.FormShow(Sender: TObject);
begin
  inherited;
  if not dm.cds_param.Active then
         dm.cds_param.Open;
end;

procedure TfParametro.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfParametro.BitBtn1Click(Sender: TObject);
begin
  inherited;
  If (RadioGroup1.ItemIndex = 0) then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'ANOTACOESVENDAS';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Preenche a Combobox na tela de vendas com os dados D1 .. D9';
      dm.cds_parametroPARAMETRO.AsString := 'ANOTACOESVENDAS';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := 'S';
    end
    else
      dm.cds_parametro.Edit;
      edit3.Text := dm.cds_parametroD1.AsString;
      edit4.Text := dm.cds_parametroD2.AsString;
      edit5.Text := dm.cds_parametroD3.AsString;
      edit6.Text := dm.cds_parametroD4.AsString;
      edit7.Text := dm.cds_parametroD5.AsString;
      edit8.Text := dm.cds_parametroD6.AsString;
      edit9.Text := dm.cds_parametroD7.AsString;
      edit10.Text := dm.cds_parametroD8.AsString;
      edit11.Text := dm.cds_parametroD9.AsString;
  end
  else begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'ANOTACOESVENDAS';
    dm.cds_parametro.Open;
    if (not dm.cds_parametro.IsEmpty) then
      dm.cds_parametro.Delete;
  end;

  if (dm.cds_parametro.State in [dsInsert, dsEdit]) then
  begin
    try
      dm.cds_parametroD1.AsString := edit3.Text;
      dm.cds_parametroD2.AsString := edit4.Text;
      dm.cds_parametroD3.AsString := edit5.Text;
      dm.cds_parametroD4.AsString := edit6.Text;
      dm.cds_parametroD5.AsString := edit7.Text;
      dm.cds_parametroD6.AsString := edit8.Text;
      dm.cds_parametroD7.AsString := edit9.Text;
      dm.cds_parametroD8.AsString := edit10.Text;
      dm.cds_parametroD9.AsString := edit11.Text;
      dm.cds_parametro.ApplyUpdates(0);
      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;
  end;
end;

procedure TfParametro.BitBtn3Click(Sender: TObject);
begin
  inherited;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'VIDEO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Configuração de Video';
      dm.cds_parametroPARAMETRO.AsString := 'VIDEO';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString := edit1.Text;
      dm.cds_parametroD2.AsString := edit2.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroD1.AsString := edit1.Text;
      dm.cds_parametroD2.AsString := edit2.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;
end;

procedure TfParametro.BitBtn4Click(Sender: TObject);
begin
  inherited;
  try
    if (not dm.c_1_planoc.Active) then
      dm.c_1_planoc.Open;
    if (not dm.c_1_planoc.Locate('CONTA',Edit12.Text, [loCaseInsensitive])) then
    begin
      MessageDlg('A Conta informada não existe no plano de contas.', mtInformation,
      [mbOk], 0);
      Edit12.SetFocus;
      exit;
    end;
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CONTA_CLIENTE';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Conta usada no cadastro de cada Cliente (CONTA_CLIENTE)';
      dm.cds_parametroPARAMETRO.AsString := 'CONTA_CLIENTE';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString := edit12.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroD1.AsString := edit12.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;
  try
    if  MessageDlg('Deseja atualizar a Tabela Cliente com está conta ?',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    begin
      dm.sqlsisAdimin.ExecuteDirect('UPDATE CLIENTES SET CONTA_CLIENTE = ' +
        '''' + Edit12.Text + '''');
      MessageDlg('Atualização realizada com sucesso.', mtInformation,
        [mbOk], 0);
    end;
  except
    MessageDlg('A Tabela cliente não foi atualizada, notifique o administrador !', mtError,
    [mbOk], 0);
  end;
end;

procedure TfParametro.FormCreate(Sender: TObject);
begin
  inherited;
  dm.cds_param.Open;
  if (dm.cds_param.Locate('PARAMETRO','ANOTACOESVENDAS', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramDADOS.AsString = 'S') then
      RadioGroup1.ItemIndex := 0
    else
      RadioGroup1.ItemIndex := 1;
    edit3.Text := dm.cds_paramD1.AsString;
    edit4.Text := dm.cds_paramD2.AsString;
    edit5.Text := dm.cds_paramD3.AsString;
    edit6.Text := dm.cds_paramD4.AsString;
    edit7.Text := dm.cds_paramD5.AsString;
    edit8.Text := dm.cds_paramD6.AsString;
    edit9.Text := dm.cds_paramD7.AsString;
    edit10.Text := dm.cds_paramD8.AsString;
    edit11.Text := dm.cds_paramD9.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','VIDEO', [loCaseInsensitive])) then
  begin
    Edit1.Text := dm.cds_paramD1.AsString;
    Edit2.Text := dm.cds_paramD2.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','CONTA_CLIENTE', [loCaseInsensitive])) then
  begin
    Edit12.Text := dm.cds_paramD1.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','CONTA_FORNECEDOR', [loCaseInsensitive])) then
  begin
    Edit13.Text := dm.cds_paramD1.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','PDV', [loCaseInsensitive])) then
  begin
    Edit18.Text := dm.cds_paramDADOS.AsString;
    Edit17.Text := dm.cds_paramD1.AsString;
    Edit19.Text := dm.cds_paramD2.AsString;
    ComboBox2.Text := dm.cds_paramD3.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO', 'TERMINALVENDAS', [loCaseInsensitive])) then
  begin
     if (dm.cds_parametroDADOS.AsString = 'PROC_PROD_SIMPLES') then
       RadioGroup2.ItemIndex := 0
     else
       RadioGroup2.ItemIndex := 1;
  end;
  if (dm.cds_param.Locate('PARAMETRO','PRECOLISTA', [loCaseInsensitive])) then
  begin
    ComboBox3.Text := dm.cds_paramDADOS.AsString;
  end;

  if (dm.cds_param.Locate('PARAMETRO','CADASTROVEICULO', [loCaseInsensitive])) then
  begin
    ComboBox4.Text := dm.cds_paramDADOS.AsString;
  end;

  if (dm.cds_param.Locate('PARAMETRO','CONTROLE', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
      ComboBox1.ItemIndex := 0
    else
      ComboBox1.ItemIndex := 1;
    edit14.Text := dm.cds_paramDADOS.AsString;
  end;

  if (dm.cds_param.Locate('PARAMETRO','PADRAOFILTROVENDA', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
    begin
      ComboBox5.ItemIndex := 0;
      meDta1.Text := dm.cds_paramD1.AsString;
      meDta2.Text := dm.cds_paramD2.AsString;
    end
    else
      ComboBox5.ItemIndex := 1;
  end;

  if (dm.cds_param.Locate('PARAMETRO','PADRAOFILTROCOMPRA', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
    begin
      ComboBox6.ItemIndex := 0;
      meDta3.Text := dm.cds_paramD1.AsString;
      meDta4.Text := dm.cds_paramD2.AsString;
    end
    else
      ComboBox6.ItemIndex := 1;
  end;
  if (dm.cds_param.Locate('PARAMETRO','FORMATACAO', [loCaseInsensitive])) then
  begin
    MaskEdit1.Text := dm.cds_paramD1.AsString;
    MaskEdit2.Text := dm.cds_paramD2.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','EMPRESA', [loCaseInsensitive])) then
  begin
    Edit15.Text := dm.cds_paramDADOS.AsString;
    ComboBox8.Text := dm.cds_paramD1.AsString;
  end;
  if (dm.cds_param.Locate('PARAMETRO','MODULO', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramD1.AsString = 'S') then
      jvCheckBox1.Checked := True
    else
      jvCheckBox1.Checked := False;
    if (dm.cds_paramD2.AsString = 'S') then
      jvCheckBox2.Checked := True
    else
      jvCheckBox2.Checked := False;
    if (dm.cds_paramD3.AsString = 'S') then
      jvCheckBox3.Checked := True
    else
      jvCheckBox3.Checked := False;
    if (dm.cds_paramD4.AsString = 'S') then
      jvCheckBox4.Checked := True
    else
      jvCheckBox4.Checked := False;
    if (dm.cds_paramD5.AsString = 'S') then
      jvCheckBox5.Checked := True
    else
      jvCheckBox5.Checked := False;
    if (dm.cds_paramD6.AsString = 'S') then
      jvCheckBox6.Checked := True
    else
      jvCheckBox6.Checked := False;
  end;
  if (dm.cds_param.Locate('PARAMETRO','GRUPOMARCA', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramDADOS.AsString = 'SIM') then
    begin
      Edit16.Text := 'SIM';
    end
    else
      Edit16.text := '';
  end;
  if (dm.cds_param.Locate('PARAMETRO','USARECEITAS', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramDADOS.AsString = 'S') then
    begin
      ComboBox7.Text := 'S';
    end
    else
      ComboBox7.text := '';
  end;
  if (dm.cds_param.Locate('PARAMETRO','RECEBERJUROS', [loCaseInsensitive])) then
  begin
    if (dm.cds_paramCONFIGURADO.AsString = 'S') then
    begin
      cbUsaJuros.Text := dm.cds_paramCONFIGURADO.AsString;
      edJuros.Text := dm.cds_paramDADOS.AsString;
    end
    else begin
      cbUsaJuros.Text := 'N';
      edJuros.Text := '0';
    end;
  end;

  if (dm.cds_param.Locate('PARAMETRO','CENTROCUSTO', [loCaseInsensitive])) then
  begin
    cbCentroCusto.Text := dm.cds_paramCONFIGURADO.AsString;
    Edit20.Text := dm.cds_paramDADOS.AsString;
    Edit21.Text := dm.cds_paramD1.AsString;
  end;

end;

procedure TfParametro.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    if (not dm.c_1_planoc.Active) then
      dm.c_1_planoc.Open;
    if (not dm.c_1_planoc.Locate('CONTA',Edit13.Text, [loCaseInsensitive])) then
    begin
      MessageDlg('A Conta informada não existe no plano de contas.', mtInformation,
      [mbOk], 0);
      Edit13.SetFocus;
      exit;
    end;
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CONTA_FORNECEDOR';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Conta usada no cadastro de cada Fornecedor (CONTA_FORNECEDOR)';
      dm.cds_parametroPARAMETRO.AsString := 'CONTA_FORNECEDOR';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString := edit13.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroD1.AsString := edit13.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;
  try
    if  MessageDlg('Deseja atualizar a Tabela FORNECEDOR com está conta ?',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    begin
      dm.sqlsisAdimin.ExecuteDirect('UPDATE FORNECEDOR SET CONTA_FORNECEDOR = ' +
        '''' + Edit13.Text + '''');
      MessageDlg('Atualização realizada com sucesso.', mtInformation,
        [mbOk], 0);
    end;
  except
    MessageDlg('A Tabela Fornecedor não foi atualizada, notifique o administrador !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn5Click(Sender: TObject);
var
   TD: TTransactionDesc;
   strsql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  strsql := 'insert into USUARIO (CODUSUARIO, NOMEUSUARIO, STATUS' +
            ', PERFIL) VALUES (0, ' + QuotedStr('Usuário Sistema') +
            ',0,'+ QuotedStr('Vendas') + ')';
  dm.sqlsisAdimin.ExecuteDirect(strsql);
  Try
     dm.sqlsisAdimin.Commit(TD);
     MessageDlg('Usuário inserido com sucesso!', mtInformation,
         [mbOk], 0);
  except
     dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
     MessageDlg('Erro no sistema, Usuário não incluído!', mtError,
         [mbOk], 0);
  end;
end;
procedure TfParametro.BitBtn7Click(Sender: TObject);
var
   strsql : string;
begin
  // Pesquisando se os dados inseridos existem no sistema
  // -----------------CODCLIENTE------------------------------
  if (sbusca.Active) then
    sbusca.Close;
  strsql := 'SELECT CODCLIENTE FROM CLIENTES where CODCLIENTE = ';
  strsql := strsql + Edit18.Text;
  sbusca.CommandText := strsql;
  sbusca.Open;
  if (sbusca.IsEmpty) then
  begin
    MessageDlg('Não existe cliente com esse código no sistema, informe um cliente válido !', mtWarning, [mbOK], 0);
    exit;
  end;
  // -----------------CODALMOXARIFADO------------------------------
  // Não tem chave estrangeira
  // --------------------------------------------------------------
  // -----------------CODNATUREZA----------------------------------
  if (sbusca.Active) then
    sbusca.Close;
  strsql := 'SELECT CODNATUREZA FROM NATUREZAOPERACAO where CODNATUREZA = ';
  strsql := strsql + Edit19.Text;
  sbusca.CommandText := strsql;
  sbusca.Open;
  if (sbusca.IsEmpty) then
  begin
    MessageDlg('Não existe NaturezaOperação com esse código'+#13#10+'no sistema, informe um código válido !', mtWarning, [mbOK], 0);
    exit;
  end;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'PDV';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usado PDV: Inseri CODCLIENTE, CODALMOXARIFADO, CODNATUREZA';
      dm.cds_parametroPARAMETRO.AsString := 'PDV';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := edit18.Text;
      dm.cds_parametroD1.AsString := edit17.Text;
      dm.cds_parametroD2.AsString := edit19.Text;
      dm.cds_parametroD3.AsString := ComboBox2.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := edit18.Text;
      dm.cds_parametroD1.AsString := edit17.Text;
      dm.cds_parametroD2.AsString := edit19.Text;
      dm.cds_parametroD3.AsString := ComboBox2.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;


end;

procedure TfParametro.BitBtn8Click(Sender: TObject);
begin
  inherited;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'TERMINALVENDAS';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Form Procura usado terminal Vendas';
      dm.cds_parametroPARAMETRO.AsString := 'TERMINALVENDAS';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      Case RadioGroup2.ItemIndex of
        0: dm.cds_parametroDADOS.AsString := 'PROC_PROD_SIMPLES';
        1: dm.cds_parametroDADOS.AsString := 'PROC_PROD_COMPLETO';
      end;
    end
    else begin
      dm.cds_parametro.Edit;
      Case RadioGroup2.ItemIndex of
        0: dm.cds_parametroDADOS.AsString := 'PROC_PROD_SIMPLES';
        1: dm.cds_parametroDADOS.AsString := 'PROC_PROD_COMPLETO';
      end;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn9Click(Sender: TObject);
begin
  inherited;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'PRECOLISTA';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usa Lista de Preço de Terceiros ?';
      dm.cds_parametroPARAMETRO.AsString := 'PRECOLISTA';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := ComboBox3.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := ComboBox3.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CADASTROVEICULO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usa Cadastro de Veículos ?';
      dm.cds_parametroPARAMETRO.AsString := 'CADASTROVEICULO';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := ComboBox4.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := ComboBox4.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;


end;

procedure TfParametro.BitBtn6Click(Sender: TObject);
begin
  inherited;
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CONTROLE';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Campo usado no Form Finalizar Venda';
      dm.cds_parametroPARAMETRO.AsString := 'CONTROLE';
      if (ComboBox1.ItemIndex = 0) then
        dm.cds_parametroCONFIGURADO.AsString := 'S'
       else
        dm.cds_parametroCONFIGURADO.AsString := 'N';
      dm.cds_parametroDADOS.AsString := edit14.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      if (ComboBox1.ItemIndex = 0) then
        dm.cds_parametroCONFIGURADO.AsString := 'S'
       else
        dm.cds_parametroCONFIGURADO.AsString := 'N';
      dm.cds_parametroDADOS.AsString := edit14.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn10Click(Sender: TObject);
begin
  inherited;
  // PADRAOFILTROVENDA
  if (ComboBox5.ItemIndex = 0) then
  begin
    // ----------------------------------------------------
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'PADRAOFILTROVENDA';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Append;
        dm.cds_parametroDESCRICAO.AsString := 'Dados Padrões usado no FiltroMovimento';
        dm.cds_parametroPARAMETRO.AsString := 'PADRAOFILTROVENDA';
        dm.cds_parametroCONFIGURADO.AsString := 'S';
        dm.cds_parametroD1.AsString := meDta1.Text;
        dm.cds_parametroD2.AsString := meDta2.Text;
      end
      else begin
        dm.cds_parametro.Edit;
        dm.cds_parametroD1.AsString := meDta1.Text;
        dm.cds_parametroD2.AsString := meDta2.Text;
      end;
      dm.cds_parametro.ApplyUpdates(0);
      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;

  end;
  if (ComboBox5.ItemIndex = 1) then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'PADRAOFILTROVENDA';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Delete;
        dm.cds_parametro.ApplyUpdates(0);
        meDta1.Text := '';
        meDta2.Text := '';
      end;
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;

  end;
end;

procedure TfParametro.BitBtn11Click(Sender: TObject);
begin
  inherited;
  // PADRAOFILTROCOMPRA
  if (ComboBox6.ItemIndex = 0) then
  begin
    // ----------------------------------------------------
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'PADRAOFILTROCOMPRA';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Append;
        dm.cds_parametroDESCRICAO.AsString := 'Dados Padrões usado no FiltroMovimentoCompra';
        dm.cds_parametroPARAMETRO.AsString := 'PADRAOFILTROCOMPRA';
        dm.cds_parametroCONFIGURADO.AsString := 'S';
        dm.cds_parametroD1.AsString := meDta3.Text;
        dm.cds_parametroD2.AsString := meDta4.Text;
      end
      else begin
        dm.cds_parametro.Edit;
        dm.cds_parametroD1.AsString := meDta3.Text;
        dm.cds_parametroD2.AsString := meDta4.Text;
      end;
      dm.cds_parametro.ApplyUpdates(0);
      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;

  end;
  if (ComboBox6.ItemIndex = 1) then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'PADRAOFILTROCOMPRA';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Delete;
        dm.cds_parametro.ApplyUpdates(0);
        meDta3.Text := '';
        meDta4.Text := '';
      end;
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;

  end;

end;

procedure TfParametro.BitBtn12Click(Sender: TObject);
begin
  inherited;
  { Usado para configurar o Display Format em alguns forms }
  // FORMATACAO
  // ----------------------------------------------------
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'FORMATACAO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Formatação usadas no sistema (n. casas decimais...) D1 : Qtde, D2 : Valor';
      dm.cds_parametroPARAMETRO.AsString := 'FORMATACAO';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroD1.AsString := MaskEdit1.Text;
      dm.cds_parametroD2.AsString := MaskEdit2.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroD1.AsString := MaskEdit1.Text;
      dm.cds_parametroD2.AsString := MaskEdit2.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;
end;

procedure TfParametro.BitBtn13Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'EMPRESA';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'empresa que usa (Dados - Nome empresa, D1 - AUTOMOTIVA (OFICINA, PECAS, ETc.)';
      dm.cds_parametroPARAMETRO.AsString := 'EMPRESA';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := Edit15.Text;
      dm.cds_parametroD1.AsString := combobox8.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := Edit15.Text;
      dm.cds_parametroD1.AsString := combobox8.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn14Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'MODULO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Módulos utilizados.';
      dm.cds_parametroPARAMETRO.AsString := 'MODULO';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      if (jvCheckBox1.Checked) then
        dm.cds_parametroD1.AsString := 'S'
      else
        dm.cds_parametroD1.AsString := 'N';
      if (jvCheckBox2.Checked) then
        dm.cds_parametroD2.AsString := 'S'
      else
        dm.cds_parametroD2.AsString := 'N';
      if (jvCheckBox3.Checked) then
        dm.cds_parametroD3.AsString := 'S'
      else
        dm.cds_parametroD3.AsString := 'N';
      if (jvCheckBox4.Checked) then
        dm.cds_parametroD4.AsString := 'S'
      else
        dm.cds_parametroD4.AsString := 'N';
      if (jvCheckBox5.Checked) then
        dm.cds_parametroD5.AsString := 'S'
      else
        dm.cds_parametroD5.AsString := 'N';
      if (jvCheckBox6.Checked) then
        dm.cds_parametroD6.AsString := 'S'
      else
        dm.cds_parametroD6.AsString := 'N';
    end
    else begin
      dm.cds_parametro.Edit;
      if (jvCheckBox1.Checked) then
        dm.cds_parametroD1.AsString := 'S'
      else
        dm.cds_parametroD1.AsString := 'N';
      if (jvCheckBox2.Checked) then
        dm.cds_parametroD2.AsString := 'S'
      else
        dm.cds_parametroD2.AsString := 'N';
      if (jvCheckBox3.Checked) then
        dm.cds_parametroD3.AsString := 'S'
      else
        dm.cds_parametroD3.AsString := 'N';
      if (jvCheckBox4.Checked) then
        dm.cds_parametroD4.AsString := 'S'
      else
        dm.cds_parametroD4.AsString := 'N';
      if (jvCheckBox5.Checked) then
        dm.cds_parametroD5.AsString := 'S'
      else
        dm.cds_parametroD5.AsString := 'N';
      if (jvCheckBox6.Checked) then
        dm.cds_parametroD6.AsString := 'S'
      else
        dm.cds_parametroD6.AsString := 'N';
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn15Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'GRUPOMARCA';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Se GRUPOMARCA DADOS = SIM então ' +
        'usa o campo MARCA relacionado com o campo GRUPO';
      dm.cds_parametroPARAMETRO.AsString := 'GRUPOMARCA';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := Edit16.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := Edit16.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn16Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'USARECEITAS';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Se USA O BOTÃO RECEITAS E O MENU LANÇAR COBRANÇA ' +
        ' no FINANCEIRO.';
      dm.cds_parametroPARAMETRO.AsString := 'USARECEITAS';
      dm.cds_parametroCONFIGURADO.AsString := 'S';
      dm.cds_parametroDADOS.AsString := ComboBox7.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroDADOS.AsString := ComboBox7.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn17Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'RECEBERJUROS';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usa no Títulos de Contas a Receber o Cálculo ' +
        ' de Juros.';
      dm.cds_parametroPARAMETRO.AsString := 'RECEBERJUROS';
      dm.cds_parametroCONFIGURADO.AsString := cbUsaJuros.Text;
      dm.cds_parametroDADOS.AsString := edJuros.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroCONFIGURADO.AsString := cbUsaJuros.Text;
      dm.cds_parametroDADOS.AsString := edJuros.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn18Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CENTROCUSTO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usado no Form de COMPRA';
      dm.cds_parametroPARAMETRO.AsString := 'CENTROCUSTO';
      dm.cds_parametroCONFIGURADO.AsString := cbCentroCusto.Text;
      dm.cds_parametroDADOS.AsString := Edit20.Text;
      dm.cds_parametroD1.AsString := Edit21.Text;
    end
    else begin
      dm.cds_parametro.Edit;
      dm.cds_parametroCONFIGURADO.AsString := cbCentroCusto.Text;
      dm.cds_parametroDADOS.AsString := Edit20.Text;
      dm.cds_parametroD1.AsString := Edit21.Text;
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn19Click(Sender: TObject);
begin
  inherited;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'LISTAPRECO';
  dm.cds_parametro.Open;
  try
    // Insere ou Altera a tabela PARAMETROS
    if (dm.cds_parametro.IsEmpty) then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Usa preço pôr Fornecedor';
      dm.cds_parametroPARAMETRO.AsString := 'LISTAPRECO';
      if (combobox9.text = 'Sim') then
        dm.cds_parametroCONFIGURADO.AsString := 'S'
      else
        dm.cds_parametroCONFIGURADO.AsString := 'N';
    end
    else begin
      dm.cds_parametro.Edit;
      if (combobox9.text = 'Sim') then
        dm.cds_parametroCONFIGURADO.AsString := 'S'
      else
        dm.cds_parametroCONFIGURADO.AsString := 'N';
    end;
    dm.cds_parametro.ApplyUpdates(0);
    MessageDlg('Registro gravado com sucesso.', mtInformation,
    [mbOk], 0);
  except
    MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
    [mbOk], 0);
  end;

end;

procedure TfParametro.BitBtn20Click(Sender: TObject);
begin
  inherited;
  if (ComboBox10.Text = 'REPRESENTANTE') then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CADASTROREPRESENTANTE';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Append;
        dm.cds_parametroDESCRICAO.AsString := 'Usa no cadastro do cliente o cadastro de representante.';
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROREPRESENTANTE';
        dm.cds_parametroDADOS.AsString := 'S';
      end
      else begin
        dm.cds_parametro.Edit;
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROREPRESENTANTE';
        dm.cds_parametroDADOS.AsString := 'S';
      end;
      dm.cds_parametro.ApplyUpdates(0);
      // Removo a REFERENCIA
      if (dm.cds_parametro.Active) then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].asString := 'CADASTROCLIENTE';
      dm.cds_parametro.Open;

      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Edit;
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROCLIENTE';
        dm.cds_parametroDADOS.AsString := '';
        dm.cds_parametro.ApplyUpdates(0);
      end;

      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;
  end;
  if (ComboBox10.Text = 'REFERENCIA') then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CADASTROCLIENTE';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Append;
        dm.cds_parametroDESCRICAO.AsString := 'Usa no cadastro do cliente o cadastro de REFERÊNCIA COMRERCIAL.';
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROCLIENTE';
        dm.cds_parametroDADOS.AsString := 'REFERENCIA';
      end
      else begin
        dm.cds_parametro.Edit;
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROCLIENTE';
        dm.cds_parametroDADOS.AsString := 'REFERENCIA';
      end;
      dm.cds_parametro.ApplyUpdates(0);
      //Removo o Representante
      if (dm.cds_parametro.Active) then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].asString := 'CADASTROREPRESENTANTE';
      dm.cds_parametro.Open;

      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Edit;
        dm.cds_parametroDESCRICAO.AsString := 'Usa no cadastro do cliente o cadastro de representante.';
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROREPRESENTANTE';
        dm.cds_parametroDADOS.AsString := 'N';
      end;
      dm.cds_parametro.ApplyUpdates(0);
      
      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;
  end;
  if (ComboBox10.Text = '') then
  begin
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].asString := 'CADASTROCLIENTE';
    dm.cds_parametro.Open;
    try
      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Edit;
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROCLIENTE';
        dm.cds_parametroDADOS.AsString := '';
      end;
      dm.cds_parametro.ApplyUpdates(0);
      if (dm.cds_parametro.Active) then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].asString := 'CADASTROREPRESENTANTE';
      dm.cds_parametro.Open;

      // Insere ou Altera a tabela PARAMETROS
      if (not dm.cds_parametro.IsEmpty) then
      begin
        dm.cds_parametro.Edit;
        dm.cds_parametroDESCRICAO.AsString := 'Usa no cadastro do cliente o cadastro de representante.';
        dm.cds_parametroPARAMETRO.AsString := 'CADASTROREPRESENTANTE';
        dm.cds_parametroDADOS.AsString := 'N';
      end;
      MessageDlg('Registro gravado com sucesso.', mtInformation,
      [mbOk], 0);
    except
      MessageDlg('Erro para gravar, feche o sistema e tente novamente !', mtError,
      [mbOk], 0);
    end;
  end;

end;

end.
