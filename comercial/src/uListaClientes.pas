unit uListaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr, FMTBcd, Grids, DBGrids, rpcompobase,
  DBClient, DB, DBLocal, DBLocalS, Menus, StdCtrls, Buttons,
  ExtCtrls, rpvclreport, XPMenu, MMJPanel, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit;

type
  TfListaClientes = class(TForm)
    PopupMenu1: TPopupMenu;
    Novo1: TMenuItem;
    Cancela1: TMenuItem;
    procurar1: TMenuItem;
    fechar1: TMenuItem;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1CODCLIENTE: TIntegerField;
    SQLDataSet1NOMECLIENTE: TStringField;
    SQLDataSet1TELEFONE: TStringField;
    SQLDataSet1CIDADE: TStringField;
    DBGrid1: TDBGrid;
    VCLReport1: TVCLReport;
    ListaCliente: TSQLDataSet;
    ListaClienteCODCLIENTE: TIntegerField;
    ListaClienteNOMECLIENTE: TStringField;
    ListaClienteRAZAOSOCIAL: TStringField;
    ListaClienteSEGMENTO: TSmallintField;
    ListaClienteSTATUS: TSmallintField;
    ListaClienteCONTATO: TStringField;
    ListaClienteDATANASC: TDateField;
    ListaClienteCNPJ: TStringField;
    ListaClienteINSCESTADUAL: TStringField;
    ListaClienteTELEFONE: TStringField;
    ListaClienteTELEFONE1: TStringField;
    ListaClienteTELEFONE2: TStringField;
    ListaClienteFAX: TStringField;
    ListaClienteCIDADE: TStringField;
    ListaClienteCODBANCO: TSmallintField;
    ListaClientePRAZORECEBIMENTO: TSmallintField;
    ListaClienteOBS: TStringField;
    ListaClienteNOME_REPRCLI: TStringField;
    ListaClienteNOMEUSUARIO: TStringField;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsCODCLIENTE: TIntegerField;
    cdsNOMECLIENTE: TStringField;
    cdsRAZAOSOCIAL: TStringField;
    cdsSEGMENTO: TSmallintField;
    cdsSTATUS: TSmallintField;
    cdsCONTATO: TStringField;
    cdsDATANASC: TDateField;
    cdsCNPJ: TStringField;
    cdsINSCESTADUAL: TStringField;
    cdsTELEFONE: TStringField;
    cdsTELEFONE1: TStringField;
    cdsTELEFONE2: TStringField;
    cdsFAX: TStringField;
    cdsCIDADE: TStringField;
    cdsCODBANCO: TSmallintField;
    cdsPRAZORECEBIMENTO: TSmallintField;
    cdsOBS: TStringField;
    cdsNOME_REPRCLI: TStringField;
    cdsNOMEUSUARIO: TStringField;
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
    DataSetProvider2: TDataSetProvider;
    ListaClienteUF: TStringField;
    cdsUF: TStringField;
    ListaClienteCODUSUARIO: TIntegerField;
    cdsCODUSUARIO: TIntegerField;
    ListaClienteNOME_FUNCIONARIO: TStringField;
    ListaClienteTELEFONE_1: TStringField;
    ListaClienteCELULAR: TStringField;
    cdsNOME_FUNCIONARIO: TStringField;
    cdsTELEFONE_1: TStringField;
    cdsCELULAR: TStringField;
    VCLReport_etiqueta: TVCLReport;
    BuscapeloNome1: TMenuItem;
    BuscapeloCdigo1: TMenuItem;
    ListaClienteENDERECO: TStringField;
    cdsENDERECO: TStringField;
    ListaClienteFONE: TStringField;
    cdsFONE: TStringField;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    CBox1: TRadioButton;
    CBox2: TRadioButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    codVen: TEdit;
    nomeVen: TEdit;
    BitBtn5: TBitBtn;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    edCodigo: TEdit;
    edNome: TEdit;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    edCidade: TEdit;
    BitBtn1: TBitBtn;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    edtUF: TEdit;
    edtDDD: TEdit;
    MMJPanel2: TMMJPanel;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    SpeedButton4: TBitBtn;
    BitBtn13: TBitBtn;
    RadioButton4: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    ListaClienteTEL: TStringField;
    cdsTEL: TStringField;
    JvDatePickerEdit2: TJvDatePickerEdit;
    JvDatePickerEdit3: TJvDatePickerEdit;
    Label10: TLabel;
    RadioButton5: TRadioButton;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure edNomeKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BuscapeloNome1Click(Sender: TObject);
    procedure BuscapeloCdigo1Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //, nome_user, varform
  end;

var
  fListaClientes: TfListaClientes;
  varCondicao: String;
  nomecli, telefonecli, enderecocli : string;
  codcli, codVendedor : integer;

implementation

uses UDm, uProcurar, uClienteCadastro, ufDlgLogin, sCtrlResize;

{$R *.dfm}

procedure TfListaClientes.DBGrid1TitleClick(Column: TColumn);
begin
    cds.IndexFieldNames := Column.FieldName;
end;

procedure TfListaClientes.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(ListaCliente.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
end;

procedure TfListaClientes.BitBtn3Click(Sender: TObject);
begin
  ListaCliente.Close;
  edCodigo.Text := '';
  edNome.Text := '';
  edCidade.Text := '';
  codVen.Text := '';
  nomeVen.Text := '';
end;

procedure TfListaClientes.BitBtn2Click(Sender: TObject);
Var
 varSql: String;
begin
  varCondicao:= '';
   varSql:='select DISTINCT cli.CODCLIENTE, cli.NOMECLIENTE, cli.RAZAOSOCIAL, ' +
   'cli.SEGMENTO, cli.CODUSUARIO, cli.STATUS, cli.CONTATO, cli.DATANASC, cli.CNPJ, cli.INSCESTADUAL, '+
   '       (CASE when ende.DDD is null then  ende.TELEFONE ELSE ' +
   QuotedStr('(') + ' || ende.DDD || ' + QuotedStr(')') + ' || ende.TELEFONE END ) as TELEFONE , ' +
   '       (CASE when ende.DDD1 is null then  ende.TELEFONE1 ELSE ' +
   QuotedStr('(') + ' || ende.DDD1 || ' + QuotedStr(')') + ' || ende.TELEFONE1 END ) as TELEFONE1, ' +
   '       (CASE when ende.DDD2 is null then  ende.TELEFONE2 ELSE ' +
   QuotedStr('(') + ' || ende.DDD2 || ' + QuotedStr(')') + ' || ende.TELEFONE2 END ) as TELEFONE2, ' +
   '       (CASE when ende.DDD3 is null then  ende.FAX ELSE ' +
   QuotedStr('(') + ' || ende.DDD3 || ' + QuotedStr(')') + ' || ende.FAX END ) as FAX, ende.CIDADE, ' +
   'ende.UF, ende.LOGRADOURO || ' + QuotedStr(', ') + '|| ende.BAIRRO as ENDERECO, ende.TELEFONE as FONE, '+
   'cli.CODBANCO, cli.PRAZORECEBIMENTO, cli.OBS, rep.NOME_REPRCLI, ' +
   'usu.NOMEUSUARIO, fun.NOME_FUNCIONARIO, fun.TELEFONE, fun.CELULAR, ende.TELEFONE as tel from CLIENTES cli ' +
   'left outer join ENDERECOCLIENTE ende on ende.CODCLIENTE=cli.CODCLIENTE ' +
   'left outer join USUARIO usu on usu.CODUSUARIO = cli.CODUSUARIO ' +
   'left outer join REPR_CLIENTE rep on rep.COD_CLIENTE=cli.CODCLIENTE ' +
   'left outer join FUNCIONARIO fun on fun.CODUSUARIO = cli.CODUSUARIO ';

 varCondicao := 'where ende.TIPOEND = 0 ';

 if codVen.Text <> '' then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.CODUSUARIO = ' + codVen.Text
   else
   varCondicao := 'where cli.CODUSUARIO = ' + codVen.Text;
//********************************************************************************************
 if NomeVen.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and UDF_COLLATEBR(usu.NOMEUSUARIO) containing ' + '''' + nomeVen.Text +  ''''
   else
     varCondicao := 'where UDF_COLLATEBR(usu.NOMEUSUARIO) containing ' + '''' + nomeVen.Text + '''';
//********************************************************************************************

//********************************************************************************************
 if CBox1.Checked = true then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.STATUS = 1 '
   else
   varCondicao := 'where cli.STATUS = 1 ';
//********************************************************************************************
 if CBox2.Checked = true then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.STATUS = 2 '
   else
   varCondicao := 'where cli.STATUS = 2 ';
  //********************************************************************************************
  if (RadioButton5.Checked = true) then
  begin
    if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.DATACADASTRO between '
    else
      varCondicao := ' where cli.DATACADASTRO between  ';
    varCondicao := varCondicao + QuotedStr(FormatDateTime('mm/dd/yyyy', JvDatePickerEdit2.Date));
    varCondicao := varCondicao +  ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy', JvDatePickerEdit3.Date));
  end;
//********************************************************************************************
 if edCodigo.Text <> '' then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.CODCLIENTE = ' + edCodigo.Text
   else
   varCondicao := 'where cli.CODCLIENTE = ' + edCodigo.Text;
//********************************************************************************************
 if edNome.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and UDF_COLLATEBR(cli.NOMECLIENTE) containing ' + '''' + edNome.Text +  ''''
   else
     varCondicao := 'where UDF_COLLATEBR(cli.NOMECLIENTE) containing ' + '''' + edNome.Text + '''';
//********************************************************************************************
 if edCidade.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and UDF_COLLATEBR(ende.CIDADE) containing  ' + '''' + edCidade.Text + '' + ''''
   else
     varCondicao := 'where UDF_COLLATEBR(ende.CIDADE) containing ' + '''' + edCidade.Text +  '''';
//********************************************************************************************
 if edtUF.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and ende.UF = ' + '''' + edtUF.Text +  ''''
   else
     varCondicao := 'where ende.UF = ' + '''' + edtUF.Text +  '''';
//********************************************************************************************
 if edtDDD.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and ende.DDD = ' + '''' + edtDDD.Text +  ''''
   else
     varCondicao := 'where ende.DDD = ' + '''' + edtDDD.Text + '''';
//********************************************************************************************
 varCondicao := varSql + varCondicao + ' order by cli.NOMECLIENTE '; //ende.CIDADE,

  if cds.Active then
     cds.Close;
  cds.CommandText := '';
  cds.CommandText := varCondicao;
  cds.Open;

  DBGrid1.SetFocus;
  
end;

procedure TfListaClientes.BitBtn4Click(Sender: TObject);
begin
  if not dm.cds_empresa.Active then
    dm.cds_empresa.Open;
  if (RadioButton1.Checked = true) then
  begin
    VCLReport1.FileName := str_relatorio + 'rel_cliente.rep';
    if (RadioButton5.Checked = true) then
    begin
      VCLReport1.Report.Params.ParamByName('DATA1').Value := JvDatePickerEdit2.Date;
      VCLReport1.Report.Params.ParamByName('DATA2').Value := JvDatePickerEdit3.Date;
    end;
  end;
  if RadioButton2.Checked = true then
    VCLReport1.FileName := str_relatorio + 'rel_cliente1.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Title := VCLReport1.FileName;
  if varCondicao <> '' then
  begin
    VCLReport1.Report.DataInfo.Items[1].SQL := varCondicao;
  end;
  VCLReport1.Execute;
end;

procedure TfListaClientes.BitBtn5Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'VENDEDOR';
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
   if fProcurar.ShowModal=mrOk then
    begin
     codVen.Text := IntToStr(dm.scds_usuario_ProcCODusuario.AsInteger);
     nomeVen.Text := dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
  finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TfListaClientes.BitBtn8Click(Sender: TObject);
begin
  if (dm.var_teste = 'consulta') then
  begin
    fClienteCadastro:=TfClienteCadastro.Create(Application);
    try
      fClienteCadastro.ShowModal;
    finally
      fClienteCadastro.free;
    end;        
  end
  else
  begin
     fClienteCadastro:=TfClienteCadastro.Create(Application);
     try
      fClienteCadastro.cds_cli.Params[0].AsInteger := cdsCODCLIENTE.AsInteger;
      fClienteCadastro.cds_cli.Open;
      if fClienteCadastro.cdsEnderecoCli.Active then
         fClienteCadastro.cdsEnderecoCli.Close;
      fClienteCadastro.cdsEnderecoCli.Params[0].Clear;
      fClienteCadastro.cdsEnderecoCli.Params[1].AsInteger := cdsCODCLIENTE.AsInteger;
      fClienteCadastro.cdsEnderecoCli.Open;
//      fClienteCadastro.btnIncluir.Click;
      fClienteCadastro.ShowModal;
     finally
       fClienteCadastro.Free;
       if (dm.var_teste <> 'consulta') then
         Close;
     end;
  end;
end;

procedure TfListaClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //  if codcli = 0 then
  codcli := cdsCODCLIENTE.AsInteger;
  //  if nomecli = '' then
  nomecli := cdsNOMECLIENTE.AsString;
  telefonecli := cdsTEL.AsString;
  enderecocli := cdsENDERECO.AsString;
end;

procedure TfListaClientes.SpeedButton2Click(Sender: TObject);
begin
  if not dm.cds_empresa.Active then
    dm.cds_empresa.Open;
  VCLReport1.FileName := str_relatorio + 'clienteEtiqueta2.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  // Número de Etiquetas por Cliente
  VCLReport1.Report.Params.ParamByName('N_ETIQUETA').Value := 1;
  IF (edCodigo.Text <> '') then
    VCLReport1.Report.Params.ParamByName('CODCLI').Value := StrToInt(edCodigo.Text)
  else
    VCLReport1.Report.Params.ParamByName('CODCLI').Value := 0;

  IF (CodVen.Text <> '') then
    VCLReport1.Report.Params.ParamByName('CODVEND').Value := StrToInt(CodVen.Text)
  else
    VCLReport1.Report.Params.ParamByName('CODVEND').Value := 0;

  IF (EdtUF.Text <> '') then
    VCLReport1.Report.Params.ParamByName('UFCLI').Value := edtuf.Text
  else
    VCLReport1.Report.Params.ParamByName('UFCLI').Value := 'TODOS';

  IF (EdCidade.text <> '') then
    VCLReport1.Report.Params.ParamByName('CID').Value := edCidade.Text
  else
    VCLReport1.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA';

  IF (EdtDDD.Text <> '') then
    VCLReport1.Report.Params.ParamByName('DDDCLI').Value := edtddd.Text
  else
    VCLReport1.Report.Params.ParamByName('DDDCLI').Value := 'TODOS';


  VCLReport1.Execute;
end;

procedure TfListaClientes.SpeedButton4Click(Sender: TObject);
begin
 if (RadioButton4.Checked = True) then
 begin
    if not dm.cds_empresa.Active then
      dm.cds_empresa.Open;
    VCLReport_etiqueta.Filename := str_relatorio + 'clienteEtiquetaUnica.rep';
    VCLReport_etiqueta.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport_etiqueta.Report.Params.ParamByName('N_ETIQUETA').Value := 1;
    IF (edCodigo.Text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('CODCLI').Value := StrToInt(edCodigo.Text)
    else
      VCLReport_etiqueta.Report.Params.ParamByName('CODCLI').Value := 0;
    IF (CodVen.Text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('CODVEND').Value := StrToInt(CodVen.Text)
    else
      VCLReport_etiqueta.Report.Params.ParamByName('CODVEND').Value := 0;
    IF (EdtUF.Text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('UFCLI').Value := edtuf.Text
    else
      VCLReport_etiqueta.Report.Params.ParamByName('UFCLI').Value := 'TODOS';
    IF (EdCidade.text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('CID').Value := edCidade.Text
    else
      VCLReport_etiqueta.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA';
    IF (EdtDDD.Text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('DDDCLI').Value := edtddd.Text
    else
      VCLReport_etiqueta.Report.Params.ParamByName('DDDCLI').Value := 'TODOS';
    VCLReport_etiqueta.Title := VCLReport_etiqueta.Filename;      
    VCLReport_etiqueta.Execute;
 end;
 if (RadioButton3.Checked = True) then
 begin
    if not dm.cds_empresa.Active then
      dm.cds_empresa.Open;
    VCLReport1.FileName := str_relatorio + 'clienteEtiqueta2.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    // Número de Etiquetas por Cliente
    VCLReport1.Report.Params.ParamByName('N_ETIQUETA').Value := 1;
    IF (edCodigo.Text <> '') then
      VCLReport1.Report.Params.ParamByName('CODCLI').Value := StrToInt(edCodigo.Text)
    else
      VCLReport1.Report.Params.ParamByName('CODCLI').Value := 0;
    IF (CodVen.Text <> '') then
      VCLReport1.Report.Params.ParamByName('CODVEND').Value := StrToInt(CodVen.Text)
    else
      VCLReport1.Report.Params.ParamByName('CODVEND').Value := 0;
    IF (EdtUF.Text <> '') then
      VCLReport1.Report.Params.ParamByName('UFCLI').Value := edtuf.Text
    else
      VCLReport1.Report.Params.ParamByName('UFCLI').Value := 'TODOS';
    IF (EdCidade.text <> '') then
      VCLReport1.Report.Params.ParamByName('CID').Value := edCidade.Text
    else
      VCLReport1.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA';
    IF (EdtDDD.Text <> '') then
      VCLReport1.Report.Params.ParamByName('DDDCLI').Value := edtddd.Text
    else
      VCLReport1.Report.Params.ParamByName('DDDCLI').Value := 'TODOS';
    VCLReport1.title := VCLReport1.FileName;      
    VCLReport1.Execute;
 end;



end;

procedure TfListaClientes.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fListaClientes));
  bitbtn2.Click;
end;

procedure TfListaClientes.DBGrid1DblClick(Sender: TObject);
begin
//  if (varform = 'consulta') then
  if (dm.var_teste = 'consulta') then
    bitbtn8.Click;//fClienteCadastro.ShowModal;
end;

procedure TfListaClientes.RadioButton1Click(Sender: TObject);
begin
  if RadioButton2.Checked = true then
    RadioButton2.Checked := false;
end;

procedure TfListaClientes.RadioButton2Click(Sender: TObject);
begin
  if RadioButton1.Checked = true then
    RadioButton1.Checked := false;
end;

procedure TfListaClientes.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
  //if (varform = 'consulta') then
  if (dm.var_teste = 'consulta') then
    fClienteCadastro.ShowModal;
 end;
end;

procedure TfListaClientes.edNomeKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   //key:= #0;
   //SelectNext((Sender as TwinControl),True,True);
   bitbtn2.Click;
 end;

end;

procedure TfListaClientes.RadioButton4Click(Sender: TObject);
begin
  if RadioButton3.Checked = true then
    RadioButton3.Checked := false;
end;

procedure TfListaClientes.RadioButton3Click(Sender: TObject);
begin
  if RadioButton4.Checked = true then
    RadioButton4.Checked := false;
end;

procedure TfListaClientes.BitBtn13Click(Sender: TObject);
begin
  close;
end;

procedure TfListaClientes.BitBtn1Click(Sender: TObject);
begin
  if not dm.Proc_end_cli.Active then
    dm.Proc_end_cli.Open;
  fProcurar:=TfProcurar.Create(self,dm.Proc_end_cli);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'CIDADE';
   if fProcurar.ShowModal=mrOk then
     edCidade.Text := dm.Proc_end_cliCIDADE.AsString;
   finally
    dm.Proc_end_cli.Close;
    fProcurar.Free;
   end;
end;

procedure TfListaClientes.BuscapeloNome1Click(Sender: TObject);
begin
  BitBtn3.Click;
  edNome.SetFocus;
end;

procedure TfListaClientes.BuscapeloCdigo1Click(Sender: TObject);
begin
  BitBtn3.Click;
  edCodigo.SetFocus;
end;

procedure TfListaClientes.RadioButton5Click(Sender: TObject);
begin
  //if (RadioButton5.Checked = true) then
  //begin
  JvDatePickerEdit2.Enabled := RadioButton5.Checked;
  JvDatePickerEdit3.Enabled := RadioButton5.Checked;
  //end
  //else begin
  //  RadioButton2.Checked := false;
  //end;
end;

end.
