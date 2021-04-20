unit uLabExameLocaliza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MMJPanel, Buttons, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, ComCtrls, JvExComCtrls, JvDateTimePicker,
  JvDBDateTimePicker, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, DBCtrls,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, Menus, rpcompobase,
  rpvclreport, DBXpress;

type
  TfLabExameLocaliza = class(TForm)
    MMJPanel1: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    cbCliente: TJvDBSearchComboBox;
    JvDBGrid1: TJvDBGrid;
    btnProcurar: TBitBtn;
    sdsClienteBusca: TSQLDataSet;
    dspBuscaCliente: TDataSetProvider;
    cdsClienteBusca: TClientDataSet;
    cdsClienteBuscaCODCLIENTE: TIntegerField;
    cdsClienteBuscaNOMECLIENTE: TStringField;
    cdsClienteBuscaRA: TStringField;
    dsClienteBusca: TDataSource;
    cbMedico: TJvDBSearchComboBox;
    sdsMedico: TSQLDataSet;
    dspMedico: TDataSetProvider;
    cdsMedico: TClientDataSet;
    cdsMedicoCOD_REPRFOR: TIntegerField;
    cdsMedicoNOME_REPRFOR: TStringField;
    cdsMedicoFUNCAO: TStringField;
    dsMedico: TDataSource;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    cdsCODEXAME: TIntegerField;
    cdsDATASOLICITACAO: TDateField;
    cdsDATAENTREGAMATERIAL: TDateField;
    cdsDATAPREVISTAENTREGA: TDateField;
    cdsDATALAUDOEXAME: TDateField;
    cdsDATARETIRADA: TDateField;
    cdsCODCLIENTE: TIntegerField;
    cdsTIPOEXAME: TStringField;
    cdsMEDICOSOLICITANTE: TIntegerField;
    cdsCONVENIO: TStringField;
    cdsVALOR: TFloatField;
    cdsSITUACAO: TStringField;
    cdsMATERIALRECEBIDO: TStringField;
    cdsNOMECLIENTE: TStringField;
    btnSair: TBitBtn;
    dt2: TJvDatePickerEdit;
    cbExame: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    BitBtn5: TBitBtn;
    btnImp: TBitBtn;
    Label8: TLabel;
    dt3: TJvDatePickerEdit;
    btnCon: TBitBtn;
    ComboBox1: TComboBox;
    dt1: TJvDatePickerEdit;
    btnana: TButton;
    scds: TSQLDataSet;
    dsps: TDataSetProvider;
    cdss: TClientDataSet;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    DateField3: TDateField;
    DateField4: TDateField;
    DateField5: TDateField;
    StringField1: TStringField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    cdsIMPRESSO: TStringField;
    Label6: TLabel;
    Label9: TLabel;
    cdsDEVOLUCAO: TFloatField;
    btnDev: TBitBtn;
    cdsDATADEV: TDateField;
    hoje: TJvDatePickerEdit;
    btnImpRD: TBitBtn;
    sqlEmpresa: TSQLDataSet;
    sqlEmpresaDIVERSOS2: TStringField;
    sqlEmpresaDIVERSOS3: TStringField;
    sqlEmpresaCODIGO_CONTA: TIntegerField;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaDIVERSOS2: TStringField;
    cdsEmpresaDIVERSOS3: TStringField;
    cdsEmpresaCODIGO_CONTA: TIntegerField;
    dsEmpresa: TDataSource;
    Label10: TLabel;
    btnImp30: TBitBtn;
    BitBtn6: TBitBtn;
    cdsNUMERO: TStringField;
    VCLReport1: TVCLReport;
    BitBtn7: TBitBtn;
    Edit1: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    cdsINCLUIU: TStringField;
    cdsCANCELA: TStringField;
    cdsDEVOLVE: TStringField;
    Label13: TLabel;
    Label14: TLabel;
    cdsRECEBEU: TStringField;
    cdsDATASISTEMA: TDateField;
    Label15: TLabel;
    BitBtn8: TBitBtn;
    dtRec2: TJvDatePickerEdit;
    dtRec1: TJvDatePickerEdit;
    btnCaixa: TButton;
    BitBtn9: TBitBtn;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure btnConClick(Sender: TObject);
    procedure btnanaClick(Sender: TObject);
    procedure btnDevClick(Sender: TObject);
    procedure btnImpRDClick(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure btnImp30Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    sql, cTexto ,sql2, sql3, sql4, cTexto2: string;
    codExame : integer;
    { Public declarations }
  end;

var
  fLabExameLocaliza: TfLabExameLocaliza;

implementation

uses UDmSaude, uLabSolicitaExame, UDm, uLaboratorio;

{$R *.dfm}

procedure TfLabExameLocaliza.FormCreate(Sender: TObject);
var podes : string;
begin
//  dt1.Clear;
  dt2.Clear;

  if (cdsMedico.Active) then
    cdsMedico.close;
    cdsMedico.Open;
  podes := 'n';
  usuario := fLaboratorio.UserLab.CurrentUser.UserName;

  if(usuario = 'Carmen')then
  podes := 's';
  if(usuario = 'regiane')then
  podes := 's';

  if(podes = 's')then
  begin
   if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE , INSCESTADUAL ' +
    'FROM CLIENTES WHERE STATUS = 0 and GRUPO_CLIENTE = ' + QuotedStr('ASH') + 'ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;
  cbCliente.ItemIndex := -1;
  ComboBox1.Text := 'ASH';
  end;

  if(podes = 'n')then
   begin

   if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE , INSCESTADUAL ' +
    'FROM CLIENTES WHERE STATUS = 0 and GRUPO_CLIENTE = ' + QuotedStr('PARTICULAR') + 'ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;
  cbCliente.ItemIndex := -1;
  ComboBox1.Text := 'PARTICULAR';
  end;

  {
  if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE ' +
    'FROM CLIENTES WHERE STATUS = 0 ORDER BY NOMECLIENTE ';
  cdsClienteBusca.Open;
  cbCliente.ItemIndex := -1;
  }

  if (dmSaude.cdsCombo.Active) then
    dmSaude.cdsCombo.close;
  dmSaude.cdsCombo.Params[0].AsString := 'EXAMES';
  dmSaude.cdsCombo.Open;
  While not dmSaude.cdsCombo.Eof do
  begin
    cbExame.Items.Add(dmSaude.cdsComboDESCRICAO.AsString);
    dmSaude.cdsCombo.Next;
  end;

end;

procedure TfLabExameLocaliza.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfLabExameLocaliza.btnProcurarClick(Sender: TObject);

begin
  sql := '';
  cTexto := 'select labe.CODEXAME, labe.DATASOLICITACAO, labe.DATAENTREGAMATERIAL ,'+
  ' labe.DATAPREVISTAENTREGA,labe.DATALAUDOEXAME, labe.DATARETIRADA, labe.CODCLIENTE,' +
  ' labe.TIPOEXAME,labe.MEDICOSOLICITANTE, labe.CONVENIO, labe.VALOR, labe.SITUACAO, ' +
  ' labe.MATERIALRECEBIDO , cli.NOMECLIENTE ,labe.IMPRESSO ,labe.DEVOLUCAO ,labe.DATADEV,'+
  ' labe.NUMERO,labe.INCLUIU,labe.CANCELA,labe.DEVOLVE,labe.IMPRESSO,labe.RECEBEU ,labe.DATASISTEMA from LABEXAME labe ,' +
  ' CLIENTES cli where cli.CODCLIENTE = labe.CODCLIENTE ';  //and labexame.situacao <> ' + QuotedStr('CANCELADO');
  if (cbCliente.Text <> '') then
  begin
    sql := ' and cli.NOMECLIENTE = ' + QuotedStr(cbCliente.Text);
  end;
  if (cbExame.Text <> '') then
  begin
    sql := sql + ' and labe.TIPOEXAME = ' + QuotedStr(cbExame.Text);
  end;
  if (cbMedico.Text <> '') then
  begin
    sql := sql + ' and labe.MEDICOSOLICITANTE = ' + IntToStr( cdsMedicoCOD_REPRFOR.AsInteger);
  end;

   if (ComboBox1.Text <> '') then
  begin
    sql := sql + ' and labe.CONVENIO = ' + QuotedStr(ComboBox1.Text);
  end;

  if (dt1.Text <> '') then
  begin
    sql := sql + ' and labe.DATASOLICITACAO between ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt1.Date)) +
                 ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt3.Date));
  end;
  if (dt2.Text <> '') then
  begin
    sql := sql + ' and labe.DATARETIRADA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt2.Date));
  end;
  {
  if (dt1.Text <> '') then
  begin
    sql := sql + ' and labe.DATADEV between ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt1.Date)) +
                 ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt3.Date));
  end;
  }
  if (cds.Active) then
    cds.Close;
  cds.CommandText := cTexto + sql + ' order by labe.NUMERO ,cli.NOMECLIENTE' ;

  cds.Open;
  cds.CommandText := cTexto + ' order by labe.NUMERO ,cli.NOMECLIENTE' ;
                     //////
  codExame := cdsCODEXAME.AsInteger;

  sql2 := '';
  cTexto2 := 'select count(labe.CODEXAME) as CODEXAME , labe.DATASOLICITACAO, labe.DATAENTREGAMATERIAL ,'+
  ' labe.DATAPREVISTAENTREGA,labe.DATALAUDOEXAME, labe.DATARETIRADA,' +
  ' labe.TIPOEXAME,labe.MEDICOSOLICITANTE, labe.CONVENIO, sum(labe.VALOR) as VALOR , labe.SITUACAO, ' +
  ' labe.MATERIALRECEBIDO ,labe.DEVOLUCAO ,labe.DATADEV , labe.NUMERO ,labe.INCLUIU, '+
  ' labe.CANCELA,labe.DEVOLVE, labe.IMPRESSO ,labe.RECEBEU ,labe.DATASISTEMA from LABEXAME labe ,' +
  ' CLIENTES cli where cli.CODCLIENTE = labe.CODCLIENTE '; //  order by labe.NUMERO
  if (cbCliente.Text <> '') then
  begin
    sql2 := ' and cli.NOMECLIENTE = ' + QuotedStr(cbCliente.Text);
  end;
  if (cbExame.Text <> '') then
  begin
    sql2 := sql2 + ' and labe.TIPOEXAME = ' + QuotedStr(cbExame.Text);
  end;
  if (cbMedico.Text <> '') then
  begin
    sql2 := sql2 + ' and labe.MEDICOSOLICITANTE = ' + IntToStr( cdsMedicoCOD_REPRFOR.AsInteger);
  end;

   if (ComboBox1.Text <> '') then
  begin
    sql2 := sql2 + ' and labe.CONVENIO = ' + QuotedStr(ComboBox1.Text);
  end;

  if (dt1.Text <> '') then
  begin
    sql2 := sql2 + ' and labe.DATASOLICITACAO between ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt1.Date)) +
                 ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt3.Date));
  end;
  if (dt2.Text <> '') then
  begin
    sql2 := sql2 + ' and labe.DATARETIRADA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt2.Date));
  end;
  if (cdss.Active) then
    cdss.Close;

  sql3 := '  group by  labe.CONVENIO ,labe.DATASOLICITACAO, labe.DATAENTREGAMATERIAL ,'+
  ' labe.DATAPREVISTAENTREGA,labe.DATALAUDOEXAME, labe.DATARETIRADA, ' +
  ' labe.TIPOEXAME,labe.MEDICOSOLICITANTE, labe.SITUACAO, ' +
  ' labe.MATERIALRECEBIDO ,labe.DEVOLUCAO ,labe.DATADEV , labe.NUMERO,labe.RECEBEU, ' +
  ' labe.INCLUIU,labe.CANCELA,labe.DEVOLVE ,labe.IMPRESSO ,labe.DATASISTEMA order by labe.NUMERO' ;

  cdss.CommandText := cTexto2 + sql2 + sql3;

  sql4 := cdss.CommandText ;


  cdss.CommandText := cdss.CommandText  ;


   cdss.Open;
   cdss.CommandText := cTexto2;
                        /////

  Label14.Caption :=  IntToStr(cds.RecordCount);

  if(cbCliente.Text <> '') then
  begin
    BitBtn7.Click;
  end;

end;

procedure TfLabExameLocaliza.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfLabExameLocaliza.dsDataChange(Sender: TObject; Field: TField);
begin
  codExame := cdsCODEXAME.asInteger;
end;

procedure TfLabExameLocaliza.BitBtn1Click(Sender: TObject);
begin
  dt2.Clear;
end;

procedure TfLabExameLocaliza.BitBtn2Click(Sender: TObject);
begin
  cbMedico.Text := '';
end;

procedure TfLabExameLocaliza.FormShow(Sender: TObject);
begin
  cbMedico.Text := '';
end;

procedure TfLabExameLocaliza.BitBtn3Click(Sender: TObject);
begin
  cbCliente.Text := '';
end;

procedure TfLabExameLocaliza.BitBtn4Click(Sender: TObject);
begin
  cbExame.Text := '';
end;

procedure TfLabExameLocaliza.BitBtn5Click(Sender: TObject);
begin
    dt1.Clear;
    dt3.Clear;
end;

procedure TfLabExameLocaliza.btnImpClick(Sender: TObject);
var atualizar, codcli , numero  : string;
    TD: TTransactionDesc;
    seque , quantos : integer;

begin
  if(cbCliente.Text = '') then
  begin
    MessageDlg('Escolha um Solicitante ', mtWarning, [mbOK], 0);
    cbCliente.setfocus;
    exit;
  end;

  if(Edit1.Text = '') then
  begin
  MessageDlg('Escolha um Numero de Recibo ', mtWarning, [mbOK], 0);
  exit;
  end;


  if(cdsVALOR.AsFloat < 0 ) then
  begin
    MessageDlg('Essa Consulta Não gera Recibo', mtWarning, [mbOK], 0);
  exit;
  end;

   {
   if(cdsIMPRESSO.Text <> 'SIM')then
   Begin

   // GERAR NUMERO RECIBO
    if not (cdsEmpresa.Active) then
    cdsEmpresa.Open;

    if(cdsEmpresa.State in [dsEdit , dsBrowse ]) then
    cdsEmpresa.Edit;

    if(hoje.Text <> cdsEmpresaDIVERSOS2.AsString)then
    begin
      cdsEmpresaDIVERSOS2.AsString := hoje.Text ;
      cdsEmpresaCODIGO_CONTA.AsInteger := 0;
    end;

    if(cbCliente.Text <> cdsEmpresaDIVERSOS3.AsString) then
    begin
      cdsEmpresaDIVERSOS2.AsString := hoje.Text ;
      cdsEmpresaDIVERSOS3.AsString := cbCliente.Text;
      seque:= cdsEmpresaCODIGO_CONTA.AsInteger;
      seque:= seque+1;
      cdsEmpresaCODIGO_CONTA.AsInteger := seque;

      cdsEmpresa.ApplyUpdates(-1);
   
    end;
   }
  DMSaude.cdsExame.Open;
  DMSaude.cdsExame.Edit;
  codcli := IntToStr(cdsCODCLIENTE.AsInteger);

  if(cdsIMPRESSO.Text <> 'SIM')then
  Begin
    DMSaude.cdsExameNUMERO.AsString := Edit1.Text;  ///(hoje.Text + '-' + IntToStr(cdsEmpresaCODIGO_CONTA.AsInteger));
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.sqlsisAdimin.StartTransaction(TD);
    atualizar := '';
   // atualizar := 'update LABEXAME set NUMERO = ' + QuotedStr((hoje.Text + '-' + IntToStr(cdsEmpresaCODIGO_CONTA.AsInteger)));
    atualizar := 'update LABEXAME set IMPRESSO = ';
    atualizar := atualizar + QuotedStr('SIM') ;
    atualizar := atualizar + ' , RECEBEU = ';
    atualizar := atualizar + QuotedStr(fLaboratorio.UserLab.CurrentUser.UserName) ;
    atualizar := atualizar + ' , DATASISTEMA = ';
    atualizar := atualizar + QuotedStr(FormatDateTime('mm/dd/yyyy',hoje.Date));
    atualizar := atualizar + ' where CODCLIENTE = ';
    atualizar := atualizar + QuotedStr(codcli) ;
    atualizar := atualizar + ' and NUMERO = ';
    atualizar := atualizar + QuotedStr(Edit1.Text) ;
   // atualizar := atualizar + ' and DATASOLICITACAO = ';
   // atualizar := atualizar + QuotedStr(FormatDateTime('mm/dd/yyyy',cdsDATASOLICITACAO.AsDateTime));
   // atualizar := atualizar + ' and IMPRESSO = ';
   // atualizar := atualizar + QuotedStr(is null) ;
    DM.sqlsisAdimin.ExecuteDirect(atualizar);
    DM.sqlsisAdimin.Commit(TD);
  end;

  quantos := cds.RecordCount;

  if(quantos < 21) then
  begin
    VCLReport1.FileName := str_relatorio + 'recibo_exames.rep';
    VCLReport1.Title := str_relatorio + 'recibo_exames.rep';
  end;

  if(quantos > 20) then
  begin
    VCLReport1.FileName := str_relatorio + 'recibo_exames30.rep';
    VCLReport1.Title := str_relatorio + 'recibo_exames.rep';
  end;

  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('TITULAR').Value := cbCliente.Text;
  VCLReport1.Report.Params.ParamByName('DTA1').Value := dt1.Text;
  VCLReport1.Report.Params.ParamByName('numeros').Value := Edit1.Text;
  //VCLReport1.Report.Params.ParamByName('VIA').Value := ' 2ª Via';
  VCLReport1.Execute;

  btnProcurar.Click;
end;

procedure TfLabExameLocaliza.btnConClick(Sender: TObject);
var cod , codmedico : integer ;
    gru , tipo : string ;
begin
{
  VCLReport1.FileName := str_relatorio + 'rel_exames1.rep';
  VCLReport1.Title := str_relatorio + 'rel_exames1.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.DataInfo.Items[0].SQL:= cds.CommandText;

  VCLReport1.Execute;
  }
  if(cbCliente.Text <> '') then
  cod := cdsCODCLIENTE.AsInteger
  else begin
  cod := 9999999;
  end;
  if(ComboBox1.Text <> '') then
  gru := cdsCONVENIO.AsString
  else begin
  gru := 'TODOS OS GRUPOS CADASTRADOS';
  end;
  if(cbExame.Text <> '') then
  tipo := cdsTIPOEXAME.AsString
  else begin
  tipo := 'TODOS OS EXAMES CADASTRADOS';
  end;
  if(cbMedico.Text <> '') then
  codmedico := cdsMEDICOSOLICITANTE.AsInteger
  else begin
  codmedico := 9999999;
  end;

  VCLReport1.FileName := str_relatorio + 'rel_exames.rep';
  VCLReport1.Title := str_relatorio + 'rel_exames.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
 // VCLReport1.Report.DataInfo.Items[0].SQL:= cds.CommandText;
  VCLReport1.Report.Params.ParamByName('DTA').Value := dt1.Text;
  VCLReport1.Report.Params.ParamByName('DTA1').Value := dt3.Text;
  VCLReport1.Report.Params.ParamByName('CODIGO').Value := cod;
  VCLReport1.Report.Params.ParamByName('GRUPO').Value := gru;
  VCLReport1.Report.Params.ParamByName('TIPO').Value := tipo;
  VCLReport1.Report.Params.ParamByName('CODMEDICO').Value := codmedico;


  VCLReport1.Execute;



end;

procedure TfLabExameLocaliza.btnanaClick(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'w.rep';
  VCLReport1.Title := str_relatorio + 'w.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DTA').Value := dt1.Text;
  VCLReport1.Report.Params.ParamByName('DTA1').Value := dt3.Text;
  VCLReport1.Report.DataInfo.Items[0].SQL:= sql4;

  VCLReport1.Execute;
end;

procedure TfLabExameLocaliza.btnDevClick(Sender: TObject);
var contar : integer;
  atualizar , str : string;
  TD: TTransactionDesc;
begin
  if(cdsVALOR.AsFloat < 0 ) then
  begin
    MessageDlg('Esse Consulta Não gera Devolução ', mtWarning, [mbOK], 0);
    exit;
  end;

     if((contar =1)and(cdsDATADEV.AsString <>'')) then
     begin
       MessageDlg('Ja foi feito Devolução deve Valor !!!!!!!', mtWarning, [mbOK], 0);
     end;
    {
     if((contar >1)and(cdsDATADEV.AsString <>'') and(cdsIMPRESSO.AsString ='SIM')) then
     begin
       MessageDlg('Para Fazer a Devolução Selecione Somente um Exame!', mtWarning, [mbOK], 0);
     end;
    }
     if(cdsIMPRESSO.AsString <>'SIM') then
     begin
       MessageDlg('Devolução para Recibo Somente Já Impresso!', mtWarning, [mbOK], 0);
     end;


     cds.RecordCount;
      if not cds.Active then
     cds.Open;
     contar := cds.RecordCount;
     if((contar >=1)and(cdsDATADEV.AsString ='') and(cdsIMPRESSO.AsString ='SIM')) then
     begin
       DecimalSeparator := '.';
       TD.TransactionID := 1;
       TD.IsolationLevel := xilREADCOMMITTED;
       DM.sqlsisAdimin.StartTransaction(TD);
       atualizar := '';
       atualizar := 'update LABEXAME set DEVOLUCAO = ' + QuotedStr(FloatToStr(cdsVALOR.Value)) ;
       atualizar := atualizar + ' , DATADEV = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',hoje.Date));
       atualizar := atualizar + ' , DEVOLVE = ' + QuotedStr(fLaboratorio.UserLab.CurrentUser.UserName);
       atualizar := atualizar + ' where CODEXAME = ';
       atualizar := atualizar + QuotedStr(cdsCODEXAME.Text) ;
       DM.sqlsisAdimin.ExecuteDirect(atualizar);
       DM.sqlsisAdimin.Commit(TD);

       cds.Edit;
       cdsDEVOLUCAO.Value := cdsVALOR.Value;
       cdsDATADEV.Value := now;
       cds.ApplyUpdates(0);
       MessageDlg('Devolução Realizada Imprima o Comprovante', mtInformation, [mbOK], 0);

       dm.sqlsisAdimin.StartTransaction(TD);
       str := 'INSERT INTO LABEXAME (CODEXAME , DATASOLICITACAO , CODCLIENTE, TIPOEXAME, MEDICOSOLICITANTE, CONVENIO '+
       ',VALOR, DEVOLUCAO,IMPRESSO, DATADEV ,NUMERO,SITUACAO, DEVOLVE)';
       str := str +  ' VALUES(';
       str := str + 'GEN_ID("LABEXAMECOD",1)' + ',';
       str := str + QuotedStr(FormatDateTime('mm/dd/yyyy',hoje.Date));
       str := str + ', ';
       str := str + IntToStr(cdsCODCLIENTE.AsInteger) + ',';
       str := str + QuotedStr(cdsTIPOEXAME.AsString) + ',';
       str := str + IntToStr(cdsMedicoCOD_REPRFOR.AsInteger) + ',';
       str := str + QuotedStr(cdsCONVENIO.AsString) + ',';
       DecimalSeparator := '.';
       str := str + QuotedStr(FloatToStr(cdsVALOR.Value*-1)) ;
       str := str + ', ';
       str := str + QuotedStr(FloatToStr(cdsDEVOLUCAO.Value));
       str := str + ', ';
       str := str + QuotedStr('SIM');
       str := str + ', ';
       str := str +  QuotedStr(FormatDateTime('mm/dd/yyyy',hoje.Date));
       str := str + ', ';
       str := str + QuotedStr(Edit1.Text);
       str := str + ', ';
       str := str + QuotedStr('DEVOLVIDO');
       str := str + ', ';
       str := str +  QuotedStr(fLaboratorio.UserLab.CurrentUser.UserName);
       str := str + ')';

       dm.sqlsisAdimin.ExecuteDirect(str);
       dm.sqlsisAdimin.Commit(TD);
       DecimalSeparator := ',';
       btnProcurar.Click;
     end;


end;

procedure TfLabExameLocaliza.btnImpRDClick(Sender: TObject);
begin
  if(cbCliente.Text = '') then
  begin
    MessageDlg('Escolha um Solicitante ', mtWarning, [mbOK], 0);
  exit;
  end;

 { if(cdsVALOR.AsFloat < 0 ) then
  begin
    MessageDlg('Esse Consulta Não gera Recibo ', mtWarning, [mbOK], 0);
  exit;
  end;
 }
  if(cdsDEVOLUCAO.Text = '') then
  begin
    MessageDlg('Não há Devolução para Esse Solicitante ', mtWarning, [mbOK], 0);
  exit;
  end;

  VCLReport1.FileName := str_relatorio + 'recibo_dev.rep';
  VCLReport1.Title := str_relatorio + 'recibo_dev.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('TITULAR').Value := cbCliente.Text;
  VCLReport1.Report.Params.ParamByName('DTA1').Value := dt1.Text;

  VCLReport1.Execute;
end;

procedure TfLabExameLocaliza.ComboBox1Click(Sender: TObject);
begin

   if(ComboBox1.Text <> '')then
   begin

   if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE , INSCESTADUAL ' +
    'FROM CLIENTES WHERE STATUS = 0 and GRUPO_CLIENTE = ' + QuotedStr(ComboBox1.Text) + 'ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;
  cbCliente.ItemIndex := -1;

  end;

   if(ComboBox1.Text = '')then
   begin

   if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE , INSCESTADUAL ' +
    'FROM CLIENTES WHERE STATUS = 0 and GRUPO_CLIENTE = ' + QuotedStr('PARTICULAR') + 'ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;
  cbCliente.ItemIndex := 0;
  ComboBox1.Text := 'PARTICULAR';
  end;




end;

procedure TfLabExameLocaliza.btnImp30Click(Sender: TObject);
var atualizar, codcli , numero : string;
    TD: TTransactionDesc;
    seque : integer;

begin
  if(cbCliente.Text = '') then
  begin
  MessageDlg('Escolha um Solicitante ', mtWarning, [mbOK], 0);
  exit;
  
  if(Edit1.Text = '') then
  begin
  MessageDlg('Escolha um Numero de Recibo ', mtWarning, [mbOK], 0);
  exit;
  end;

  end;
  if(cdsVALOR.AsFloat < 0 ) then
  begin
    MessageDlg('Essa Consulta Não gera Recibo', mtWarning, [mbOK], 0);
  exit;
  end;

   {
   if(cdsIMPRESSO.Text <> 'SIM')then
   Begin

   // GERAR NUMERO RECIBO
    if not (cdsEmpresa.Active) then
    cdsEmpresa.Open;

    if(cdsEmpresa.State in [dsEdit , dsBrowse ]) then
    cdsEmpresa.Edit;

    if(hoje.Text <> cdsEmpresaDIVERSOS2.AsString)then
    begin
      cdsEmpresaDIVERSOS2.AsString := hoje.Text ;
      cdsEmpresaCODIGO_CONTA.AsInteger := 0;
    end;

    if(cbCliente.Text <> cdsEmpresaDIVERSOS3.AsString) then
    begin
      cdsEmpresaDIVERSOS2.AsString := hoje.Text ;
      cdsEmpresaDIVERSOS3.AsString := cbCliente.Text;
      seque:= cdsEmpresaCODIGO_CONTA.AsInteger;
      seque:= seque+1;
      cdsEmpresaCODIGO_CONTA.AsInteger := seque;

      cdsEmpresa.ApplyUpdates(-1);

    end;
    }
  DMSaude.cdsExame.Open;
  DMSaude.cdsExame.Edit;
  codcli := IntToStr(cdsCODCLIENTE.AsInteger);

  if(cdsIMPRESSO.Text <> 'SIM')then
  Begin
    DMSaude.cdsExameNUMERO.AsString := Edit1.Text; //(hoje.Text + '-' + IntToStr(cdsEmpresaCODIGO_CONTA.AsInteger));
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.sqlsisAdimin.StartTransaction(TD);
    atualizar := '';
   // atualizar := 'update LABEXAME set NUMERO = ' + QuotedStr((hoje.Text + '-' + IntToStr(cdsEmpresaCODIGO_CONTA.AsInteger)));
    atualizar := 'update LABEXAME set IMPRESSO = ';
    atualizar := atualizar + QuotedStr('SIM') ;
    atualizar := atualizar + ' where CODCLIENTE = ';
    atualizar := atualizar + QuotedStr(codcli) ;
    atualizar := atualizar + ' and NUMERO = ';
    atualizar := atualizar + QuotedStr(Edit1.Text) ;
   // atualizar := atualizar + ' and DATASOLICITACAO = ';
   // atualizar := atualizar + QuotedStr(FormatDateTime('mm/dd/yyyy',cdsDATASOLICITACAO.AsDateTime));
   // atualizar := atualizar + ' and IMPRESSO = ';
   // atualizar := atualizar + QuotedStr(is null) ;
    DM.sqlsisAdimin.ExecuteDirect(atualizar);
    DM.sqlsisAdimin.Commit(TD);
  end;

  VCLReport1.FileName := str_relatorio + 'recibo_exames30.rep';
  VCLReport1.Title := str_relatorio + 'recibo_exames.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('TITULAR').Value := cbCliente.Text;
  VCLReport1.Report.Params.ParamByName('DTA1').Value := dt1.Text;
  VCLReport1.Report.Params.ParamByName('numeros').Value := Edit1.Text;
  //VCLReport1.Report.Params.ParamByName('VIA').Value := ' 2ª Via';
  VCLReport1.Execute;

  btnProcurar.Click;

end;

procedure TfLabExameLocaliza.BitBtn6Click(Sender: TObject);
var atualizar , str : string;
    TD: TTransactionDesc;
    contar : integer;
begin
     cds.RecordCount;
     if not cds.Active then
     cds.Open;

     contar := cds.RecordCount;
     if((cdsDATADEV.AsString ='') and(cdsIMPRESSO.AsString ='SIM')) then
     begin
       DecimalSeparator := '.';
       TD.TransactionID := 1;
       TD.IsolationLevel := xilREADCOMMITTED;
       DM.sqlsisAdimin.StartTransaction(TD);
       atualizar := '';
       atualizar := 'update LABEXAME  set DEVOLUCAO = ' + QuotedStr(FloatToStr(cdsVALOR.Value)) ;
       atualizar := atualizar + ', VALOR = ' + QuotedStr(FloatToStr(0)) ;
       atualizar := atualizar + ', SITUACAO = ' + QuotedStr('CANCELADO') ;
       atualizar := atualizar + ' , DATADEV = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',hoje.Date));
       atualizar := atualizar + ' , CANCELA = ' + QuotedStr(fLaboratorio.UserLab.CurrentUser.UserName);
       atualizar := atualizar + ' where CODEXAME = ';
       atualizar := atualizar + QuotedStr(cdsCODEXAME.Text) ;
       DM.sqlsisAdimin.ExecuteDirect(atualizar);
       DM.sqlsisAdimin.Commit(TD);

       cds.Edit;
       cdsDEVOLUCAO.Value := cdsVALOR.Value;
       cdsDATADEV.Value := now;
       cdsSITUACAO.Value := 'CANCELADO';
       cds.ApplyUpdates(0);
       MessageDlg('Exame Cancelado', mtInformation, [mbOK], 0);

       btnProcurar.Click;
     end;

     if((cdsDATADEV.AsString ='') and(cdsIMPRESSO.AsString ='NÃO')) then
     begin
       DecimalSeparator := '.';
       TD.TransactionID := 1;
       TD.IsolationLevel := xilREADCOMMITTED;
       DM.sqlsisAdimin.StartTransaction(TD);
       atualizar := '';
       atualizar := 'update LABEXAME  set DEVOLUCAO = ' + QuotedStr(FloatToStr(0)) ;
       atualizar := atualizar + ', VALOR = ' + QuotedStr(FloatToStr(0)) ;
       atualizar := atualizar + ', SITUACAO = ' + QuotedStr('CANCELADO') ;
       atualizar := atualizar + ' , DATADEV = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',hoje.Date));
       atualizar := atualizar + ' , CANCELA = ' + QuotedStr(fLaboratorio.UserLab.CurrentUser.UserName);
       atualizar := atualizar + ' where CODEXAME = ';
       atualizar := atualizar + QuotedStr(cdsCODEXAME.Text) ;
       DM.sqlsisAdimin.ExecuteDirect(atualizar);
       DM.sqlsisAdimin.Commit(TD);

       cds.Edit;
       cdsDEVOLUCAO.Value := cdsVALOR.Value;
       cdsDATADEV.Value := now;
       cdsSITUACAO.Value := 'CANCELADO';
       cds.ApplyUpdates(0);
       MessageDlg('Exame Cancelado', mtInformation, [mbOK], 0);

       btnProcurar.Click;
     end;


end;

procedure TfLabExameLocaliza.BitBtn7Click(Sender: TObject);
begin
  JvDBGrid1.SelectedField.Value;
  JvDBGrid1.SelectedField.AsString;
  Edit1.Text := JvDBGrid1.Columns[9].Field.AsString; //JvDBGrid1.SelectedField.AsString;
end;

procedure TfLabExameLocaliza.JvDBGrid1CellClick(Column: TColumn);
begin
  BitBtn7.Click;
end;

procedure TfLabExameLocaliza.BitBtn8Click(Sender: TObject);
begin
    dtRec1.Clear;
    dtRec2.Clear;
end;

procedure TfLabExameLocaliza.btnCaixaClick(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'wCaixaRec.rep';
  VCLReport1.Title := str_relatorio + 'wCaixaRec.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DTA').Value := dtRec1.Text;
  VCLReport1.Report.Params.ParamByName('DTA1').Value := dtRec2.Text;
  VCLReport1.Report.DataInfo.Items[0].SQL:= sql4;

  VCLReport1.Execute;
end;

procedure TfLabExameLocaliza.BitBtn9Click(Sender: TObject);
begin
  sql := '';
  {
  cTexto := 'select labe.CODEXAME, labe.DATASOLICITACAO, labe.DATAENTREGAMATERIAL ,'+
  ' labe.DATAPREVISTAENTREGA,labe.DATALAUDOEXAME, labe.DATARETIRADA, labe.CODCLIENTE,' +
  ' labe.TIPOEXAME,labe.MEDICOSOLICITANTE, labe.CONVENIO, labe.VALOR, labe.SITUACAO, ' +
  ' labe.MATERIALRECEBIDO , cli.NOMECLIENTE ,labe.IMPRESSO ,labe.DEVOLUCAO ,labe.DATADEV,'+
  ' labe.NUMERO,labe.INCLUIU,labe.CANCELA,labe.DEVOLVE,labe.IMPRESSO,labe.RECEBEU ,labe.DATASISTEMA from LABEXAME labe ,' +
  ' CLIENTES cli where cli.CODCLIENTE = labe.CODCLIENTE ';  //and labexame.situacao <> ' + QuotedStr('CANCELADO');
  if (cbCliente.Text <> '') then
  begin
    sql := ' and cli.NOMECLIENTE = ' + QuotedStr(cbCliente.Text);
  end;
  if (cbExame.Text <> '') then
  begin
    sql := sql + ' and labe.TIPOEXAME = ' + QuotedStr(cbExame.Text);
  end;
  if (cbMedico.Text <> '') then
  begin
    sql := sql + ' and labe.MEDICOSOLICITANTE = ' + IntToStr( cdsMedicoCOD_REPRFOR.AsInteger);
  end;

   if (ComboBox1.Text <> '') then
  begin
    sql := sql + ' and labe.CONVENIO = ' + QuotedStr(ComboBox1.Text);
  end;

  if (dt1.Text <> '') then
  begin
    sql := sql + ' and labe.DATASISTEMA between ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt1.Date)) +
                 ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt3.Date));
  end;
  if (dt2.Text <> '') then
  begin
    sql := sql + ' and labe.DATARETIRADA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt2.Date));
  end;

  if (cds.Active) then
    cds.Close;
  cds.CommandText := cTexto + sql + ' order by labe.NUMERO ,cli.NOMECLIENTE' ;

  cds.Open;
  cds.CommandText := cTexto + ' order by labe.NUMERO ,cli.NOMECLIENTE' ;
                     //////
  codExame := cdsCODEXAME.AsInteger;

  sql2 := '';
  cTexto2 := 'select count(labe.CODEXAME) as CODEXAME , labe.DATASOLICITACAO, labe.DATAENTREGAMATERIAL ,'+
  ' labe.DATAPREVISTAENTREGA,labe.DATALAUDOEXAME, labe.DATARETIRADA,' +
  ' labe.TIPOEXAME,labe.MEDICOSOLICITANTE, labe.CONVENIO, sum(labe.VALOR) as VALOR , labe.SITUACAO, ' +
  ' labe.MATERIALRECEBIDO ,labe.DEVOLUCAO ,labe.DATADEV , labe.NUMERO ,labe.INCLUIU, '+
  ' labe.CANCELA,labe.DEVOLVE, labe.IMPRESSO ,labe.RECEBEU ,labe.DATASISTEMA from LABEXAME labe ,' +
  ' CLIENTES cli where cli.CODCLIENTE = labe.CODCLIENTE '; //  order by labe.NUMERO
  if (cbCliente.Text <> '') then
  begin
    sql2 := ' and cli.NOMECLIENTE = ' + QuotedStr(cbCliente.Text);
  end;
  if (cbExame.Text <> '') then
  begin
    sql2 := sql2 + ' and labe.TIPOEXAME = ' + QuotedStr(cbExame.Text);
  end;
  if (cbMedico.Text <> '') then
  begin
    sql2 := sql2 + ' and labe.MEDICOSOLICITANTE = ' + IntToStr( cdsMedicoCOD_REPRFOR.AsInteger);
  end;

   if (ComboBox1.Text <> '') then
  begin
    sql2 := sql2 + ' and labe.CONVENIO = ' + QuotedStr(ComboBox1.Text);
  end;

  if (dt1.Text <> '') then
  begin
    sql2 := sql2 + ' and labe.DATASISTEMA between ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dtRec1.Date)) +
                 ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dtRec2.Date));
  end;
  if (dt2.Text <> '') then
  begin
    sql2 := sql2 + ' and labe.DATARETIRADA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt2.Date));
  end;
  if (cdss.Active) then
    cdss.Close;

  sql3 := '  group by  labe.CONVENIO ,labe.DATASOLICITACAO, labe.DATAENTREGAMATERIAL ,'+
  ' labe.DATAPREVISTAENTREGA,labe.DATALAUDOEXAME, labe.DATARETIRADA, ' +
  ' labe.TIPOEXAME,labe.MEDICOSOLICITANTE, labe.SITUACAO, ' +
  ' labe.MATERIALRECEBIDO ,labe.DEVOLUCAO ,labe.DATADEV , labe.NUMERO,labe.RECEBEU, ' +
  ' labe.INCLUIU,labe.CANCELA,labe.DEVOLVE ,labe.IMPRESSO ,labe.DATASISTEMA order by labe.NUMERO' ;

  cdss.CommandText := cTexto2 + sql2 + sql3;
  }

    if (cds.Active) then
    cds.Close;
 {        labe.datasolicitacao,labe.tipoexame, labe.medicosolicitante, labe.convenio,
        labe.valor,labe.situacao,labe.materialrecebido,labe.devolucao,labe.datadev,
        labe.numero,labe.incluiu,labe.cancela,labe.devolve,labe.impresso,labe.recebeu,
        labe.datasistema,cli.nomecliente,labe.CODEXAME ,labe.DATAENTREGAMATERIAL ,
labe.DATAPREVISTAENTREGA ,labe.DATALAUDOEXAME ,labe.DATARETIRADA ,labe.CODCLIENTE

 }


  cds.CommandText := 'select * from CX_LAB ( ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dtRec1.Date)) +
                 ' , ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dtRec2.Date))+ ') order by numero ' ;

  cds.Open;

  sql4 := cds.CommandText ;

 {
  cdss.CommandText := cdss.CommandText  ;


   cdss.Open;
   cdss.CommandText := cTexto2;
                        /////
 }
  Label14.Caption :=  IntToStr(cds.RecordCount);
end;

procedure TfLabExameLocaliza.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  if Column.Field = cdsSITUACAO then
   if cdsSITUACAO.AsString = 'EXCLUIDO' then
   begin
     jvDBGrid1.Canvas.Font.Color := clRed;
     jvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = cdsNUMERO then
   if cdsSITUACAO.AsString = 'EXCLUIDO' then
   begin
     jvDBGrid1.Canvas.Font.Color := clRed;
     jvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

end;

end.
