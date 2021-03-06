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
    JvDBGrid1: TJvDBGrid;
    MMJPanel1: TMMJPanel;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    Panel2: TPanel;
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    Panel4: TPanel;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    sds: TSQLDataSet;
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
    BitBtn7: TBitBtn;
    Label15: TLabel;
    Label16: TLabel;
    dsI: TClientDataSet;
    dspI: TDataSetProvider;
    sqlI: TSQLDataSet;
    sqlICODCLI: TIntegerField;
    dsICODCLI: TIntegerField;
    sqlIRA: TStringField;
    dsIRA: TStringField;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ds1: TClientDataSet;
    SQLDataSet1CODCLI: TIntegerField;
    SQLDataSet1RA: TStringField;
    ds1CODCLI: TIntegerField;
    ds1RA: TStringField;
    Label19: TLabel;
    Edit1: TEdit;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure JvDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    function Selecionado(Codigos : TStringList; Codigo : String) : Integer;
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid1DblClick(Sender: TObject);
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
  ufLancaProcSaude1, uFinanceiro;

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
  sql2 := 'SELECT tit, emissao, vence, assocTitular, assocDependente, ' +
    'codConta , conta, hist, vlrRec, vlrPagto, contratado, codTitular, ' +
    'codContratado, codDependente, codrec, codpag, codMovi, codVen, codMovDet, ' +
    'faixaEtaria , n_boleto , DATASISTEMA , OUTRAS_DESP , data_ent_ree FROM LANCAPROCSAUDEPROC(';

  if (JvDateEdit1.Text = '') then
  begin
    MessageDlg('Preencha o per?odo a pesquisar.', mtInformation, [mbOK], 0);
    exit;
  end;
  sqlSaude := '';
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) + ','; // Emissao;
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) + ','; // Emissao;


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

  // Fornecedor - Contratado
  if (JvDBSearchEdit5.Text <> '') then
    sqlSaude := sqlSaude + IntToStr(dmSaude.cdsFornecedorCODFORNECEDOR.asInteger) + ','
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Centro de Custo
  ccustoProc := 'PCMSO';

  if(ccustoProc = 'PCMSO') then
    sqlSaude := sqlSaude + '52' + ')'; //PCMSO

  cds.CommandText := sql2 + sqlSaude;

  cds.Open;



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
  Label15.Caption := IntToStr(cds.RecordCount);








end;

procedure TfLancaProcSaudeExames.FormShow(Sender: TObject);
var datai : TUtils;
    ano, mes, dia, dia1: word;
begin
  v_codigos := TStringList.Create;


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

procedure TfLancaProcSaudeExames.btnImprimirClick(Sender: TObject);
  var data1,data2 :TRpLabel;
begin

  rep.Filename := str_relatorio + 'ver_lancamentos.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  sql2 := 'SELECT * ' +
    'FROM LANCAPROCSAUDEPROC(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;

  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel4'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel8'));


  rep.Execute; 

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
  cds.IndexFieldNames := Column.FieldName;
end;

procedure TfLancaProcSaudeExames.BitBtn6Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin
  rep.Filename := str_relatorio + 'previsao_exames.rep';
  rep.Title := str_relatorio + 'previsao_exames.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  sql2 := 'SELECT * ' +
    'FROM PREVISAO_EXAMES(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;



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

procedure TfLancaProcSaudeExames.BitBtn7Click(Sender: TObject);
begin
  if (cds.Active) then
    cds.Close;
  sql2 := 'SELECT tit, emissao, vence, assocTitular, assocDependente, ' +
    'codConta , conta, hist, vlrRec, vlrPagto, contratado, codTitular, ' +
    'codContratado, codDependente, codrec, codpag, codMovi, codVen, codMovDet, ' +
    'faixaEtaria FROM PREVISAO_EXAMES(';

  if (JvDateEdit1.Text = '') then
  begin
    MessageDlg('Preencha o per?odo a pesquisar.', mtInformation, [mbOK], 0);
    exit;
  end;
  sqlSaude := '';
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) + ','; // Emissao;
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) + ','; // Emissao;

      // Data Vencimento



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

  // Fornecedor - Contratado
  if (JvDBSearchEdit5.Text <> '') then
    sqlSaude := sqlSaude + IntToStr(dmSaude.cdsFornecedorCODFORNECEDOR.asInteger) + ','
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Centro de Custo
  if (ccustoProc = 'ASH') then
    sqlSaude := sqlSaude + '51' + ')'
  else if (ccustoProc = 'PCMSO') then
    sqlSaude := sqlSaude + '52' + ')' //PCMSO
  else
    sqlSaude := sqlSaude + '53' + ')'; //PARTICULAR
  cds.CommandText := sql2 + sqlSaude;
  cds.Open;
  TFloatField(cds.Fields[8]).DisplayFormat := ',##0.00';
  TFloatField(cds.Fields[9]).DisplayFormat := ',##0.00';
  JvDBGrid1.Columns[0].FieldName := cds.Fields[0].FieldName;
  JvDBGrid1.Columns[1].FieldName := cds.Fields[1].FieldName;
  JvDBGrid1.Columns[2].FieldName := cds.Fields[2].FieldName;
  JvDBGrid1.Columns[3].FieldName := cds.Fields[3].FieldName;
  JvDBGrid1.Columns[4].FieldName := cds.Fields[4].FieldName;
  JvDBGrid1.Columns[5].FieldName := cds.Fields[5].FieldName;
  JvDBGrid1.Columns[6].FieldName := cds.Fields[6].FieldName;
  JvDBGrid1.Columns[7].FieldName := cds.Fields[8].FieldName;
  JvDBGrid1.Columns[8].FieldName := cds.Fields[9].FieldName;
  JvDBGrid1.Columns[9].FieldName := cds.Fields[7].FieldName;


end;

procedure TfLancaProcSaudeExames.JvDBGrid1CellClick(Column: TColumn);
var
  x, y : integer;
begin

  //VERIFICAR SE J? ESTA INCLUSO
  y := Selecionado(v_codigos, IntToStr(cds.Fields[17].AsInteger));
  if (y < 0) then // menor que zero, ent?o n?o esta selecionado
  begin
    v_codigos.Add(IntToStr(cds.Fields[17].AsInteger)); //Adiciona ? lista
    valtot := valtot + cds.Fields[8].Value;
  end
  else
  begin
    v_codigos.Delete(y); //Sen?o remove ele da lista
    valtot := valtot - cds.Fields[8].Value;
  end;

  JvDBGrid1.Repaint;
end;
function TfLancaProcSaudeExames.Selecionado(Codigos: TStringList;
  Codigo: String): Integer;
var
  x : integer;
begin
  //Verificando se o c?digo j? esta selecionado...
  //Resultando -1 se n?o estiver e Resultando a posi??o
  //dele na StringList caso j? esteja selecionado.
  Result := -1;
  for x := 0 to Codigos.Count-1 do
    if (Codigos[x] = Codigo) then
      begin
        Result := x; //Retorna a posi??o na StringList;
        Break; //PARA DE EXECUTAR O LOOP
      end;
end;
procedure TfLancaProcSaudeExames.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  x,y,Check : integer;
  R: TRect;
begin
  //Desenhar o CheckBox na primeira coluna
  if (DataCol = 0) then
  begin
    y := Selecionado(v_codigos,IntToStr(cds.Fields[17].AsInteger));
    R := Rect;
    R.Left :=  (Column.Width * -1) + 30; //Posicionando o CheckBox
    InflateRect(R,-2,-2); //Diminuindo o CheckBox

    if (y < 0) then //menor que zero, ent?o n?o esta selecionado
      DrawFrameControl(JvDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK)
    else
      DrawFrameControl(JvDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_CHECKED);
  end;

end;

procedure TfLancaProcSaudeExames.JvDBGrid1DblClick(Sender: TObject);
var nTitulo : string;
begin
  if (ccustoProc <>'PCMSO') then
  exit;

 // if (ccustoProc = 'ASH') then
 // fLancaProcSaude1.JvCalcEdit3.Clear;

  if (cds.IsEmpty) then
  begin
    MessageDlg('Execute uma pesquisa primeiro.', mtInformation, [mbOK], 0);
    exit;
  end;
  if (not cds.IsEmpty) then
  begin
    if (ccustoProc = 'PCMSO') then
    begin
      fLancaProcSaude1.JvDateEdit1.Date := cds.Fields[1].AsDateTime;
      fLancaProcSaude1.JvDateEdit2.Date := cds.Fields[2].AsDateTime;
      fLancaProcSaude1.JvDBSearchEdit2.Text := cds.Fields[4].AsString;   // Associado
      fLancaProcSaude1.JvDBSearchEdit1.Text := cds.Fields[13].AsString;   // C?dAssociado
      fLancaProcSaude1.data_recibo.Date := cds.Fields[21].AsDateTime; // data recibo
      fLancaProcSaude1.data_reem.Date := cds.Fields[23].AsDateTime; // data entrada recibo

      if(cds.Fields[22].Value <> null) then
      fLancaProcSaude1.JvCalcEdit3.Value := cds.Fields[22].Value; // valor

      fLancaProcSaude1.codConta := cds.Fields[5].AsString;
      if (cds.Fields[8].AsFloat > 0) then
      begin
        fLancaProcSaude1.JvCalcEdit2.Text := FloatToStr(cds.Fields[8].AsFloat);  // ValorRec
        fLancaProcSaude1.JvCalcEdit1.Text := '0';
      end
      else begin
        fLancaProcSaude1.JvCalcEdit2.Text := '0';
        fLancaProcSaude1.JvCalcEdit1.Text := FloatToStr(-(cds.Fields[8].AsFloat));  // ValorRec
      end;
      fLancaProcSaude1.Edit2.Text    := cds.Fields[20].asString;
      fLancaProcSaude1.codReceb := cds.Fields[14].asInteger;
      fLancaProcSaude1.codMov := cds.Fields[16].AsInteger;
      fLancaProcSaude1.codVen := cds.Fields[17].AsInteger;
      fLancaProcSaude1.codMovd := cds.Fields[18].AsInteger;
      //fLancaProcSaude1.JvDBSearchEdit6.Text := cds.Fields[10].AsString;// Contratado
      //fLancaProcSaude1.JvDBSearchEdit5.Text := IntToStr(cds.Fields[12].AsInteger);   // C?dContratado
      fLancaProcSaude1.codForn := cds.Fields[12].AsInteger;
      fLancaProcSaude1.Memo1.Lines.Text := cds.Fields[7].asString;
      if (fLancaProcSaude1.cds_Movimento.Active) then
        fLancaProcSaude1.cds_Movimento.Close;
      fLancaProcSaude1.cds_Movimento.Params[0].AsInteger := fLancaProcSaude1.codMov;
      fLancaProcSaude1.cds_Movimento.open;
      fLancaProcSaude1.cds_Movimento.Edit;
    end;

    if (ccustoProc = 'PCMSO1') then
    begin

      if (fLancaProcPcmso.cds_Movimento.Active) then
        fLancaProcPcmso.cds_Movimento.Close;
      fLancaProcPcmso.cds_Movimento.Params[0].AsInteger := fLancaProcPcmso.codMov;
      fLancaProcPcmso.cds_Movimento.open;
      fLancaProcPcmso.cds_Movimento.Edit;

      fLancaProcPcmso.JvDateEdit1.Date := cds.Fields[1].AsDateTime;
      fLancaProcPcmso.JvDateEdit2.Date := cds.Fields[2].AsDateTime;
      fLancaProcPcmso.JvDBSearchEdit2.Text := cds.Fields[3].AsString;   // Associado
      fLancaProcPcmso.JvDBSearchEdit1.Text := cds.Fields[11].AsString;   // C?dAssociado
      fLancaProcPcmso.empresa := cds.Fields[11].AsString;   // C?dAssociado
      fLancaProcPcmso.dbFuncionario.Text := cds.Fields[4].AsString;   // Funcionario
      fLancaProcPcmso.dbcodFuncionario.Text := cds.Fields[13].AsString;   // C?dFuncionario
      fLancaProcPcmso.codFun := cds.Fields[13].AsString;
      //fLancaProcPcmso.JvDBSearchEdit4.Text := cds.Fields[6].AsString; // Procedimento
      //fLancaProcPcmso.JvDBSearchEdit3.Text := cds.Fields[5].AsString; // Procedimento
      fLancaProcPcmso.codConta := cds.Fields[5].AsString;
      fLancaProcPcmso.vlr := cds.Fields[8].AsFloat;  // ValorRec
      fLancaProcPcmso.codReceb := cds.Fields[14].asInteger;
      fLancaProcPcmso.codMov := cds.Fields[16].AsInteger;
      fLancaProcPcmso.codVen := cds.Fields[17].AsInteger;
      fLancaProcPcmso.codMovd := cds.Fields[18].AsInteger;
      //fLancaProcPcmso.JvDBSearchEdit6.Text := cds.Fields[10].AsString;// Contratado
      //fLancaProcPcmso.JvDBSearchEdit5.Text := IntToStr(cds.Fields[12].AsInteger);   // C?dContratado
      fLancaProcPcmso.codForn := cds.Fields[12].AsInteger;
      if (cds.Fields[8].AsFloat > 0) then
      begin
        fLancaProcPcmso.JvCalcEdit2.Text := FloatToStr(cds.Fields[8].AsFloat);  // ValorRec
        fLancaProcPcmso.JvCalcEdit1.Text := '0';
      end
      else begin
        fLancaProcPcmso.JvCalcEdit2.Text := '0';
        fLancaProcPcmso.JvCalcEdit1.Text := FloatToStr(-(cds.Fields[8].AsFloat));  // ValorRec
      end;
      fLancaProcPcmso.Memo1.Lines.Text := cds.Fields[7].asString;

    end;

    {
    if (ccustoProc = 'PARTICULAR') then
    begin
      fLancaProcPart.JvDateEdit1.Date := cds.Fields[1].AsDateTime;
      fLancaProcPart.JvDateEdit2.Date := cds.Fields[2].AsDateTime;
      fLancaProcPart.JvDBSearchEdit2.Text := cds.Fields[4].AsString;   // Associado
      fLancaProcPart.JvDBSearchEdit1.Text := cds.Fields[13].AsString;   // C?dAssociado
      //fLancaProcSaude1.JvDBSearchEdit4.Text := cds.Fields[6].AsString; // Procedimento
      //fLancaProcSaude1.JvDBSearchEdit3.Text := cds.Fields[5].AsString; // Procedimento
      fLancaProcPart.codConta := cds.Fields[5].AsString;
      if (cds.Fields[8].AsFloat > 0) then
      begin
        fLancaProcPart.JvCalcEdit2.Text := FloatToStr(cds.Fields[8].AsFloat);  // ValorRec
        fLancaProcPart.JvCalcEdit1.Text := '0';
      end
      else begin
        fLancaProcPart.JvCalcEdit2.Text := '0';
        fLancaProcPart.JvCalcEdit1.Text := FloatToStr(-(cds.Fields[8].AsFloat));  // ValorRec
      end;
      fLancaProcPart.codReceb := cds.Fields[14].asInteger;
      fLancaProcPart.codMov := cds.Fields[16].AsInteger;
      fLancaProcPart.codVen := cds.Fields[17].AsInteger;
      fLancaProcPart.codMovd := cds.Fields[18].AsInteger;
      //fLancaProcSaude1.JvDBSearchEdit6.Text := cds.Fields[10].AsString;// Contratado
      //fLancaProcSaude1.JvDBSearchEdit5.Text := IntToStr(cds.Fields[12].AsInteger);   // C?dContratado
      fLancaProcPart.codForn := cds.Fields[12].AsInteger;
      fLancaProcPart.Memo1.Lines.Text := cds.Fields[7].asString;
      if (fLancaProcPart.cds_Movimento.Active) then
        fLancaProcPart.cds_Movimento.Close;
      fLancaProcPart.cds_Movimento.Params[0].AsInteger := fLancaProcPart.codMov;
      fLancaProcPart.cds_Movimento.open;
      fLancaProcPart.cds_Movimento.Edit;
    end;
    }
  end;

  if (ccustoProc = 'PCMSO') then
  begin
    fLancaProcSaude1.codPagto := cds.Fields[15].asInteger;
    fLancaProcSaude1.ShowModal;
  end;

  if (ccustoProc = 'PCMSO1') then
  begin
    fLancaProcPcmso.codPagto := cds.Fields[15].asInteger;
    dmSaude.cdsClienteBusca.Locate('RA', fLancaProcPcmso.empresa, [loCaseInsensitive]);
    fLancaProcPcmso.ShowModal;
  end;
  {
  if (ccustoProc = 'PARTICULAR') then
  begin
    fLancaProcPart.codPagto := cds.Fields[15].asInteger;
    fLancaProcPart.ShowModal;
  end;
   }
  {
  if (dmSaude.cdsClienteBusca.Active) then
    dmSaude.cdsClienteBusca.close;

   dmSaude.cdsClienteBusca.CommandText := 'select CODCLIENTE,  NOMECLIENTE , ' +
    ' RAZAOSOCIAL ,tem_ie , RA ,datacadastro  from CLIENTES where status = 0 and GRUPO_CLIENTE = ' + QuotedStr(ccustoProc) +
    ' order by NOMECLIENTE ';
 // dmSaude.cdsClienteBusca.Params[0].AsString := ccusto;

 // dmSaude.cdsClienteBusca.Params[0].AsString := ccustoProc;
  dmSaude.cdsClienteBusca.Open;

  if (dmSaude.cdsFornecedor.Active) then
    dmSaude.cdsFornecedor.Close;
  dmSaude.cdsFornecedor.Params[0].AsInteger := 0;
  dmSaude.cdsFornecedor.Open;

  if (DMSaude.cdsClienteBuscaP.Active) then
    DMSaude.cdsClienteBuscaP.close;
  DMSaude.cdsClienteBuscaP.Params[0].AsString := 'PCMSO';
  DMSaude.cdsClienteBuscaP.Open;
  
 // JvDBSearchEdit1.Text := '';
//  JvDBSearchEdit2.Text := '';
  JvDBSearchEdit1.Text := '';
  JvDBSearchEdit2.Text := '';
  JvDBSearchEdit3.Text := '';
  JvDBSearchEdit4.Text := '';
  JvDBSearchEdit5.Text := '';
  JvDBSearchEdit6.Text := '';
  JvDBSearchEdit7.Text := '';
  JvDBSearchEdit8.Text := '';
  //btnProcurar.Click;
  }
end;

end.

