unit uLancaProcSaudeExames;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvComponentBase, JvFormAutoSize, JvExStdCtrls, JvEdit,
  JvDBSearchEdit, StdCtrls, Mask, JvExMask, JvToolEdit, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, FMTBcd, SqlExpr, DB,
  DBClient, Provider, Menus, rpcompobase, rpvclreport, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvCombobox, JvDBSearchComboBox,DateUtils,uUtils,rplabelitem,
  JvFormPlacement, JvAppStorage, JvAppXMLStorage, DBLocal, DBLocalS, DBXpress,
  JvBaseEdits, UCHist_Base, UCHistDataset;

type
  TfLancaProcSaudeExames = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    JvDBSearchEdit1: TJvDBSearchEdit;
    JvDBSearchEdit3: TJvDBSearchEdit;
    JvDBSearchEdit5: TJvDBSearchEdit;
    MMJPanel1: TMMJPanel;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    Panel2: TPanel;
    Panel1: TPanel;
    Panel4: TPanel;
    ds: TDataSource;
    JvDBSearchEdit7: TJvDBSearchEdit;
    Label1: TLabel;
    Label2: TLabel;
    dsClienteBuscaP: TDataSource;
    dsProc: TDataSource;
    BitBtn11: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label11: TLabel;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    rep: TVCLReport;
    cdsProcedimento: TClientDataSet;
    cdsCODPRODUTO: TIntegerField;
    cdsVALORUNITARIOATUAL: TFloatField;
    cdsESTOQUEREPOSICAO: TFloatField;
    cdsPRODUTO: TStringField;
    cdsCONTA_DESPESA: TStringField;
    cdsCONTA_RECEITA: TStringField;
    cdsCONTA_ESTOQUE: TStringField;
    cdsVALOR_PRAZO: TFloatField;
    cdsCODPRO: TStringField;
    dspProcedimento: TDataSetProvider;
    sdsProcedimento: TSQLDataSet;
    JvDBSearchEdit2: TJvDBSearchComboBox;
    JvDBSearchEdit8: TJvDBSearchComboBox;
    JvDBSearchEdit4: TJvDBSearchComboBox;
    JvDBSearchEdit6: TJvDBSearchComboBox;
    JvDateEdit2: TJvDatePickerEdit;
    JvDateEdit1: TJvDatePickerEdit;
    BitBtn6: TBitBtn;
    Label15: TLabel;
    Label16: TLabel;
    JvDBGrid1: TJvDBGrid;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsTIT: TStringField;
    cdsEMISSAO: TDateField;
    cdsVENCE: TDateField;
    cdsASSOCTITULAR: TStringField;
    cdsCODTITULAR: TStringField;
    cdsASSOCDEPENDENTE: TStringField;
    cdsCODDEPENDENTE: TStringField;
    cdsCODCONTA: TStringField;
    cdsCONTA: TStringField;
    Panel3: TPanel;
    Panel5: TPanel;
    BitBtn4: TBitBtn;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    BitBtn5: TBitBtn;
    cdsHISTORICO: TStringField;
    btnCE: TBitBtn;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnCEClick(Sender: TObject);

  private
    { Private declarations }
    sqlSaude,sqlPar, sql2 ,sqlR , sqlRs: string;
  public
    { Public declarations }
    ccustoProc: string;
    valtot : Double ;
  end;

var
  fLancaProcSaudeExames: TfLancaProcSaudeExames;
  v_codigos : TStringList;
implementation

uses UDm, UDmSaude, uLancaProcSaude, uLancaProcPcmso, uLancaProcPart ,
  ufLancaProcSaude1, uFinanceiro, uLancaProcSaudeProc;

{$R *.dfm}

procedure TfLancaProcSaudeExames.btnProcurarClick(Sender: TObject);
var somarec, soma , str1 ,historico: string;
  TD: TTransactionDesc;
  ven , rec :Double ;
   mesA, mesB , dia , ano: word;
begin
   decodedate(JvDateEdit1.date, ano, mesA, dia);
   mesA := mesA ;

     decodedate(JvDateEdit2.date, ano, mesB, dia);
  mesB := mesB ;

  if (cds.Active) then
    cds.Close;
    sql2 := 'SELECT tit, emissao,vence , assoctitular ,codtitular , assocdependente ,' +
    ' coddependente , codconta , conta , historico FROM LANCAPROCSAUDEEXAMES1(';

  if (JvDateEdit1.Text = '') then
  begin
    MessageDlg('Preencha o período a pesquisar.', mtInformation, [mbOK], 0);
    exit;
  end;
  sqlSaude := '';
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) + ','; // Emissao;
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) + ','; // Emissao;


  sqlPar := sqlSaude ;

  // Titular
  if (JvDBSearchEdit2.Text <> '') then
  begin
    if (dmSaude.cdsClienteBuscaRA.AsString <> JvDBSearchEdit1.Text) then
    DMSaude.cdsClienteBusca.Locate('RA',JvDBSearchEdit1.Text,[loCaseInsensitive]);
    sqlSaude := sqlSaude + IntToStr(dmSaude.cdsClienteBuscaCODCLIENTE.asInteger) + ', ';
  end
  else
  sqlSaude := sqlSaude + '0' + ',';

  // Beneficiario
  if (JvDBSearchEdit8.Text <> '') then
    sqlSaude := sqlSaude + IntToStr(DMSaude.cdsClienteBuscaPCODCLIENTE.asInteger) + ', '
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Procedimento
  if (JvDBSearchEdit4.Text <> '') then
    sqlSaude := sqlSaude + cdsCODPRO.asString + ','
  else
    sqlSaude := sqlSaude + '0' + ',';



  ccustoProc := 'PCMSO';

  // Centro de Custo
  if (ccustoProc = 'PCMSO') then
    sqlSaude := sqlSaude + '52' + ')';

  cds.CommandText := sql2 + sqlSaude + 'order by assoctitular , EMISSAO, assocdependente' ;   //codtitular

  cds.Open;



 {
  TFloatField(cds.Fields[8]).DisplayFormat := ',##0.00';
  TFloatField(cds.Fields[9]).DisplayFormat := ',##0.00';
  //JvDBGrid1.Columns[0].FieldName := cds.Fields[0].FieldName;
  JvDBGrid1.Columns[1].FieldName := cds.Fields[0].FieldName;
  JvDBGrid1.Columns[2].FieldName := cds.Fields[1].FieldName;
  JvDBGrid1.Columns[3].FieldName := cds.Fields[2].FieldName;
  JvDBGrid1.Columns[4].FieldName := cds.Fields[3].FieldName;
  JvDBGrid1.Columns[5].FieldName := cds.Fields[4].FieldName;
  JvDBGrid1.Columns[6].FieldName := cds.Fields[5].FieldName;
  JvDBGrid1.Columns[7].FieldName := cds.Fields[6].FieldName;
  JvDBGrid1.Columns[8].FieldName := cds.Fields[8].FieldName;
  JvDBGrid1.Columns[9].FieldName := cds.Fields[9].FieldName;
  JvDBGrid1.Columns[10].FieldName := cds.Fields[7].FieldName;
  JvDBGrid1.Columns[11].FieldName := cds.Fields[20].FieldName;
  JvDBGrid1.Columns[12].FieldName := cds.Fields[21].FieldName;
  JvDBGrid1.Columns[13].FieldName := cds.Fields[22].FieldName;
  JvDBGrid1.Columns[14].FieldName := cds.Fields[23].FieldName;
  }
  Label15.Caption := IntToStr(cds.RecordCount);
 


end;

procedure TfLancaProcSaudeExames.FormShow(Sender: TObject);
var datai : TUtils;
    ano, mes, dia, dia1: word;
begin
  ccustoProc := 'PCMSO';
  v_codigos := TStringList.Create;

  if(mes < 11) then
  mes := mes +1;
  if(mes = 12) then
  mes := mes ;
  if(mes = 2) then
  dia := 28 ;
  if (dia > 30 ) then
  dia := dia - 1;

//  mes := mes +1;
  if(mes < 11) then
  mes := mes +1;
  if(mes = 12) then
  mes := mes ;

  dia := 1;


  decodedate(JvDateEdit1.date, ano, mes, dia);
  mes := mes ;
  dia := 1;
  JvDateEdit1.Date:=encodedate(ano, mes, dia);

  JvDateEdit1.SetFocus;

  if (not cdsProcedimento.Active) then
    cdsProcedimento.Open;

  if (dmSaude.cdsClienteBusca.Active) then
    dmSaude.cdsClienteBusca.close;

  dmSaude.cdsClienteBusca.CommandText := 'select CODCLIENTE, NOMECLIENTE , ' +
   ' RAZAOSOCIAL ,tem_ie , RA ,datacadastro from CLIENTES where status = 0 and GRUPO_CLIENTE = ' + QuotedStr(ccustoProc) +
   ' and segmento = 0 order by NOMECLIENTE ';


//  dmSaude.cdsClienteBusca.Params[0].AsString := ccustoProc;

  dmSaude.cdsClienteBusca.Open;

 if (dmSaude.cdmed.Active) then
    dmSaude.cdmed.close;
    dmSaude.cdmed.Open;


  if (dmSaude.cdsFornecedor.Active) then
    dmSaude.cdsFornecedor.Close;
  dmSaude.cdsFornecedor.Params[0].AsInteger := 0;
  dmSaude.cdsFornecedor.Open;

  if (DMSaude.cdsClienteBuscaP.Active) then
    DMSaude.cdsClienteBuscaP.close;
  DMSaude.cdsClienteBuscaP.Params[0].AsString := ccustoProc;
  DMSaude.cdsClienteBuscaP.Open;
  JvDBSearchEdit1.Text := '';
  JvDBSearchEdit2.Text := '';
  JvDBSearchEdit3.Text := '';
  JvDBSearchEdit4.Text := '';
  JvDBSearchEdit5.Text := '';
  JvDBSearchEdit6.Text := '';
  JvDBSearchEdit7.Text := '';
  JvDBSearchEdit8.Text := '';


end;

procedure TfLancaProcSaudeExames.btnSairClick(Sender: TObject);
begin
   DMSaude.sqlVencimentoPCMSO.Close;
   DMSaude.sqlVencimentoASH.Close;
   Close;
end;

procedure TfLancaProcSaudeExames.BitBtn2Click(Sender: TObject);
begin
  JvDBSearchEdit7.Clear;
  JvDBSearchEdit8.Clear;
end;

procedure TfLancaProcSaudeExames.BitBtn3Click(Sender: TObject);
begin
  JvDBSearchEdit5.Clear;
  JvDBSearchEdit6.Clear;
end;

procedure TfLancaProcSaudeExames.BitBtn11Click(Sender: TObject);
begin
  JvDBSearchEdit1.Clear;
  JvDBSearchEdit2.Clear;
end;

procedure TfLancaProcSaudeExames.BitBtn1Click(Sender: TObject);
begin
  JvDBSearchEdit3.Clear;
  JvDBSearchEdit4.Clear;
end;

procedure TfLancaProcSaudeExames.JvDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfLancaProcSaudeExames.JvDBGrid1TitleClick(Column: TColumn);
begin
//  cds.IndexFieldNames := Column.FieldName;
end;

procedure TfLancaProcSaudeExames.BitBtn6Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin

    if(JvDBSearchEdit2.Text = '')then
    begin
      MessageDlg('Selecione uma Empresa', mtError, [mbOK], 0);
      exit;
    end;


 // if(JvDBSearchEdit2.Text <> '')then
 // begin
    rep.Filename := str_relatorio + 'previsao_exames.rep';
    rep.Title := str_relatorio + 'previsao_exames.rep';
    rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    sql2 := 'SELECT * ' +
      'FROM PREVISAO_EXAMES1(';
    rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude + 'order by ASSOCTITULAR , EMISSAO ,assocdependente';   //

    data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
    data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));

     if JvDateEdit1.text <> '' then
    begin
    if Assigned(data1) then
      data1.Text := JvDateEdit1.Text;
    if Assigned(data2) then
      data2.Text := JvDateEdit2.Text;
    end;
    rep.Execute;
 // end;
 {
  if(JvDBSearchEdit2.Text = '')then
  begin
    rep.Filename := str_relatorio + 'previsao_examesS.rep';
    rep.Title := str_relatorio + 'previsao_examesS.rep';
    rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    sql2 := 'SELECT * ' +
      'FROM PREVISAO_EXAMES(';
    rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude + 'order by ASSOCTITULAR , EMISSAO';

    data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
    data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));

     if JvDateEdit1.text <> '' then
    begin
    if Assigned(data1) then
      data1.Text := JvDateEdit1.Text;
    if Assigned(data2) then
      data2.Text := JvDateEdit2.Text;
    end;
    rep.Execute;
  end;
  }
end;

procedure TfLancaProcSaudeExames.BitBtn4Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin
  {
  if(JvDBSearchEdit2.Text <> '')then
  begin
    rep.Filename := str_relatorio + 'previsao_exames.rep';
    rep.Title := str_relatorio + 'previsao_exames.rep';
    rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    sql2 := 'SELECT * ' +
      'FROM PREVISAO_EXAMES1(';
    rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude + 'order by ASSOCTITULAR , EMISSAO';

    data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
    data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));

     if JvDateEdit1.text <> '' then
    begin
    if Assigned(data1) then
      data1.Text := JvDateEdit1.Text;
    if Assigned(data2) then
      data2.Text := JvDateEdit2.Text;
    end;
    rep.Execute;
  end;
  }
 // if(JvDBSearchEdit2.Text = '')then
//  begin
    rep.Filename := str_relatorio + 'previsao_examesS.rep';
    rep.Title := str_relatorio + 'previsao_examesS.rep';
    rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    sql2 := 'SELECT * ' +
      'FROM PREVISAO_EXAMES(';
    rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude + 'order by ASSOCTITULAR , EMISSAO';  // ASSOCTITULAR

    data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
    data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));

     if JvDateEdit1.text <> '' then
    begin
    if Assigned(data1) then
      data1.Text := JvDateEdit1.Text;
    if Assigned(data2) then
      data2.Text := JvDateEdit2.Text;
    end;
    rep.Execute;
  //end;


end;

procedure TfLancaProcSaudeExames.BitBtn5Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin
 // if(JvDBSearchEdit2.Text = '')then
 // begin
    rep.Filename := str_relatorio + 'previsao_exames_t.rep';
    rep.Title := str_relatorio + 'previsao_exames_t.rep';
    rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    sql2 := 'SELECT * ' +
      'FROM PREVISAO_EXAMES_T(';
    rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude + 'order by ASSOCTITULAR , EMISSAO , nomecliente';   //ASSOCTITULAR

    data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
    data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));

     if JvDateEdit1.text <> '' then
    begin
    if Assigned(data1) then
      data1.Text := JvDateEdit1.Text;
    if Assigned(data2) then
      data2.Text := JvDateEdit2.Text;
    end;
    rep.Execute;
  //end;
  
end;

procedure TfLancaProcSaudeExames.btnCEClick(Sender: TObject);
  var data1,data2 :TRpLabel;
begin

    rep.Filename := str_relatorio + 'previsao_exames_fun.rep';
    rep.Title := str_relatorio + 'previsao_exames_fun.rep';
    rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    sql2 := 'SELECT  distinct( ra ),  nomecliente ,   codtitular ,   assoctitular,  cnpj , inscestadual,   datanasc  ' +
      'FROM PREVISAO_EXAMES_FUN(';
    rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude + 'order by ASSOCTITULAR , EMISSAO , nomecliente';   //ASSOCTITULAR

    data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
    data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));

     if JvDateEdit1.text <> '' then
    begin
    if Assigned(data1) then
      data1.Text := JvDateEdit1.Text;
    if Assigned(data2) then
      data2.Text := JvDateEdit2.Text;
    end;
    rep.Execute;

end;

end.

