unit uLancaProcSaudeProc;

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
  TfLancaProcSaudeProc = class(TForm)
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
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
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
    BitBtn4: TBitBtn;
    JvDateEdit1: TJvDatePickerEdit;
    BitBtn5: TBitBtn;
    Label12: TLabel;
    vencimento2: TJvDatePickerEdit;
    vencimento1: TJvDatePickerEdit;
    Label13: TLabel;
    dataX: TJvDatePickerEdit;
    dataY: TJvDatePickerEdit;
    Label14: TLabel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Label15: TLabel;
    Label16: TLabel;
    lbl3: TLabel;
    JvCalcEdit1: TJvCalcEdit;
    sSoma: TSQLClientDataSet;
    btnPDF: TBitBtn;
    dsI: TClientDataSet;
    dspI: TDataSetProvider;
    sqlI: TSQLDataSet;
    sqlICODCLI: TIntegerField;
    dsICODCLI: TIntegerField;
    sqlIRA: TStringField;
    dsIRA: TStringField;
    btn1: TButton;
    JvCalcEdit2: TJvCalcEdit;
    dtnewrec: TJvDatePickerEdit;
    btnfichaPdf: TBitBtn;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ds1: TClientDataSet;
    SQLDataSet1CODCLI: TIntegerField;
    SQLDataSet1RA: TStringField;
    ds1CODCLI: TIntegerField;
    ds1RA: TStringField;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    JvCalcEdit3: TJvCalcEdit;
    BitBtn14: TBitBtn;
    Label17: TLabel;
    entrada1: TJvDatePickerEdit;
    entrada2: TJvDatePickerEdit;
    BitBtn15: TBitBtn;
    RadioGroup1: TRadioGroup;
    Label18: TLabel;
    data_recibo: TJvDatePickerEdit;
    valor_recibo: TJvCalcEdit;
    BitBtn16: TBitBtn;
    Edit1: TEdit;
    sSomaRec: TSQLClientDataSet;
    JvCalcEdit4: TJvCalcEdit;
    Label19: TLabel;
    ckCorrigir: TCheckBox;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure JvDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure btnPDFClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    function Selecionado(Codigos : TStringList; Codigo : String) : Integer;
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnfichaPdfClick(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
  private
    { Private declarations }
    sqlSaude,sqlPar, sql2 ,sqlR , sqlRs: string;
  public
    { Public declarations }
    ccustoProc: string;
    valtot : Double ;
  end;

var
  fLancaProcSaudeProc: TfLancaProcSaudeProc;
  v_codigos : TStringList;
implementation

uses UDm, UDmSaude, uLancaProcSaude, uLancaProcPcmso, uLancaProcPart ,
  ufLancaProcSaude1, uFinanceiro;

{$R *.dfm}

procedure TfLancaProcSaudeProc.btnProcurarClick(Sender: TObject);
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
    'faixaEtaria , n_boleto , DATASISTEMA , OUTRAS_DESP , data_ent_ree , historico FROM LANCAPROCSAUDEPROC(';

  if (JvDateEdit1.Text = '') then
  begin
    MessageDlg('Preencha o período a pesquisar.', mtInformation, [mbOK], 0);
    exit;
  end;
  sqlSaude := '';
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) + ','; // Emissao;
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) + ','; // Emissao;

      // Data Vencimento

  if (vencimento1.Text = '') then
  begin
    sqlSaude := sqlSaude + QuotedStr('01/01/2007') + ',';
    sqlSaude := sqlSaude + QuotedStr('01/01/2028') + ',';
  end
  else begin
    sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',vencimento1.Date)) + ','; // vencimento1;
    sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',vencimento2.Date)) + ','; // vencimento2;
  end;

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

  if(ckCorrigir.Checked = True) then
  begin

  sSoma.Close;
  soma := 'SELECT  sum(vlrRec)FROM LANCAPROCSAUDEPROC(';

  if(cds.Fields[14].AsString <> '') then
    soma := soma + sqlsaude + ' where CODREC = ' +  cds.Fields[14].AsString
  else
  soma := soma + sqlsaude;
  sSoma.CommandText := soma ;
  sSoma.Open;
  Label19.Caption := 'Soma Venc .Mesmo Periodo';
  end;

  if(ckCorrigir.Checked = False) then
  begin
  sSoma.Close;
  soma := 'SELECT  sum(vlrRec)FROM LANCAPROCSAUDEPROC(';
  soma := soma + sqlsaude;
  sSoma.CommandText := soma ;
  sSoma.Open;
  Label19.Caption := 'Total';
  end;

    if(JvDBSearchEdit2.Text <> '') then
  begin
    sSomaRec.Close;
  somarec := 'SELECT  VALOR_PRIM_VIA FROM RECEBIMENTO ';
  somarec := somarec + ' where CODRECEBIMENTO = ' +  cds.Fields[14].AsString;
  sSomaRec.CommandText := somarec ;
  if(somarec = 'SELECT  VALOR_PRIM_VIA FROM RECEBIMENTO  where CODRECEBIMENTO = ')then
  sSomaRec.Close
  else  sSomaRec.Open;
  end;

  {
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
  JvDBGrid1.Columns[10].FieldName := cds.Fields[20].FieldName;
  }
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
  JvDBGrid1.Columns[8].FieldName := cds.Fields[24].FieldName;
  JvDBGrid1.Columns[9].FieldName := cds.Fields[8].FieldName;
  JvDBGrid1.Columns[10].FieldName := cds.Fields[9].FieldName;
  JvDBGrid1.Columns[11].FieldName := cds.Fields[7].FieldName;
  JvDBGrid1.Columns[12].FieldName := cds.Fields[20].FieldName;
  JvDBGrid1.Columns[13].FieldName := cds.Fields[21].FieldName;
  JvDBGrid1.Columns[14].FieldName := cds.Fields[22].FieldName;
  JvDBGrid1.Columns[15].FieldName := cds.Fields[23].FieldName;

  Label15.Caption := IntToStr(cds.RecordCount);
  JvCalcEdit1.Text :=  sSoma.Fields[0].Text;
 // JvCalcEdit4.Text :=  sSomaRec.Fields[0].Text;

  if(sSoma.Fields[0].Text <> '')then
  begin
    ven :=  StrToFloat(sSoma.Fields[0].Text);
    if(JvDBSearchEdit2.Text <> '') then
    rec :=  StrToFloat(sSomaRec.Fields[0].Text)
  else
    rec :=  StrToFloat(sSoma.Fields[0].Text);
  end;

  if(ckCorrigir.Checked = True) then
  begin

  if((JvDBSearchEdit1.Text <> '') and (JvDBSearchEdit2.Text <> '') and (mesA = mesB))then
  begin
    if(ven <> rec) then
    begin
      if  MessageDlg('O Valor no Recebimento Diferente da Venda  :' + #13+#10+
      'Valor no Recebimento = ''' + FloatToStr(rec) + '''' + #13+#10+
      'Valor no Venda      .= ''' + FloatToStr(ven) + '''' + #13+#10+
      'Deseja Corrigi ? ' + '''' + #13+#10+
      'Mesmo Confirmando Se Estiver Recebido Não Será Corrigido'
      ,         mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;

      DecimalSeparator := '.';
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        str1 := 'UPDATE RECEBIMENTO set VALOR_PRIM_VIA = ' + FloatToStr(JvCalcEdit1.Value) +
              ', VALOR_RESTO = ' + FloatToStr(JvCalcEdit1.Value) +
              ', VALORTITULO = ' + FloatToStr(JvCalcEdit1.Value) +
              ' where  STATUS = ' + QuotedStr('5-') +
              ' and CODRECEBIMENTO = ' +  cds.Fields[14].AsString;
        DecimalSeparator := ',';
        dm.sqlsisAdimin.ExecuteDirect(str1);
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro ao Alterar Recebimento .', mtError, [mbOK], 0);
        exit;
      end;
    end;
  end;
  end;
  {
    dm.sqlsisAdimin.StartTransaction(TD);
        // manoel 10/07/13
        historico := 'INSERT INTO UCTABHISTORY ( APPLICATIONID, USERID, EVENTDATE ,EVENTTIME ' +
        ' ,FORM ,FORMCAPTION ,EVENT ,OBS ,TNAME'+
        ') VALUES (' +
        QuotedStr(DM.varAplicacaoID) + ',' +
        IntToStr(Dm.varUSERID) + ',' +
        QuotedStr(FormatDateTime('dd/mm/yyyy', now )) + ','+
        QuotedStr(FormatDateTime('hh:mm:ss', now )) + ','+
        QuotedStr(fLancaProcSaudeProc.Name) + ',' +
        QuotedStr(fLancaProcSaudeProc.Caption) + ','+
        QuotedStr('Editado') + ','+
        QuotedStr('CODRECEBIMENTO||' + cds.Fields[14].AsString +
        'VALORTITULO||' +  FloatToStr(JvCalcEdit1.Value)) +
        ','  +
        QuotedStr('dm.cds_cr') + ')';
    dm.sqlsisAdimin.ExecuteDirect(historico);
    dm.sqlsisAdimin.Commit(TD);
 }


end;

procedure TfLancaProcSaudeProc.FormShow(Sender: TObject);
var datai : TUtils;
    ano, mes, dia, dia1: word;
begin
  v_codigos := TStringList.Create;
  decodedate(DataX.date, ano, mes, dia);
  if(mes < 11) then
  mes := mes +1;
  if(mes = 12) then
  mes := mes ;
  if(mes = 2) then
  dia := 28 ;
  if (dia > 30 ) then
  dia := dia - 1;
  DataX.Date:=encodedate(ano, mes, dia);

  decodedate(DataY.date, ano, mes, dia);
//  mes := mes +1;
  if(mes < 11) then
  mes := mes +1;
  if(mes = 12) then
  mes := mes ;

  dia := 1;
  DataY.Date:=encodedate(ano, mes, dia);

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

procedure TfLancaProcSaudeProc.btnIncluirClick(Sender: TObject);
var nTitulo : string;
begin
  if (ccustoProc = 'ASH') then
  begin
    fLancaProcSaude.JvCalcEdit3.Clear;
    fLancaProcSaude.Label18.Caption := '' ;
  end;
  if (cds.IsEmpty) then
  begin
    MessageDlg('Execute uma pesquisa primeiro.', mtInformation, [mbOK], 0);
    exit;
  end;
  if (not cds.IsEmpty) then
  begin
    if (ccustoProc = 'ASH') then
    begin
      fLancaProcSaude.JvDateEdit1.Date := cds.Fields[1].AsDateTime;  // Emissão
      fLancaProcSaude.JvDateEdit2.Date := cds.Fields[2].AsDateTime;  // Vencimento
      fLancaProcSaude.JvDBSearchEdit2.Text := cds.Fields[4].AsString;   // Associado
      fLancaProcSaude.JvDBSearchEdit1.Text := cds.Fields[13].AsString;   // CódAssociado
      fLancaProcSaude.data_recibo.Date := cds.Fields[21].AsDateTime; // data recibo
      fLancaProcSaude.data_reem.Date := cds.Fields[23].AsDateTime; // data entrada recibo

      if(cds.Fields[22].Value <> null) then
      fLancaProcSaude.JvCalcEdit3.Value := cds.Fields[22].Value; // valor

      fLancaProcSaude.codConta := cds.Fields[5].AsString;  // codigo procedimento 
      if (cds.Fields[8].AsFloat > 0) then
      begin
        fLancaProcSaude.JvCalcEdit2.Text := FloatToStr(cds.Fields[8].AsFloat);  // ValorRec
        fLancaProcSaude.JvCalcEdit1.Text := '0';
      end
      else begin
        fLancaProcSaude.JvCalcEdit2.Text := '0';
        fLancaProcSaude.JvCalcEdit1.Text := FloatToStr(-(cds.Fields[8].AsFloat));  // ValorRec
      end;
      fLancaProcSaude.Edit2.Text    := cds.Fields[20].asString;
      fLancaProcSaude.codReceb := cds.Fields[14].asInteger;
      fLancaProcSaude.codMov := cds.Fields[16].AsInteger;
      fLancaProcSaude.codVen := cds.Fields[17].AsInteger;
      fLancaProcSaude.codMovd := cds.Fields[18].AsInteger;
      //fLancaProcSaude.JvDBSearchEdit6.Text := cds.Fields[10].AsString;// Contratado
      //fLancaProcSaude.JvDBSearchEdit5.Text := IntToStr(cds.Fields[12].AsInteger);   // CódContratado
      fLancaProcSaude.codForn := cds.Fields[12].AsInteger; // Codigo Fornecedor
      fLancaProcSaude.Memo1.Lines.Text := cds.Fields[7].asString;
      if (fLancaProcSaude.cds_Movimento.Active) then
        fLancaProcSaude.cds_Movimento.Close;
      fLancaProcSaude.cds_Movimento.Params[0].AsInteger := fLancaProcSaude.codMov;
      fLancaProcSaude.cds_Movimento.open;
      fLancaProcSaude.cds_Movimento.Edit;
    end;
    if (ccustoProc = 'PCMSO') then
    begin

      if (fLancaProcPcmso.cds_Movimento.Active) then
        fLancaProcPcmso.cds_Movimento.Close;
      fLancaProcPcmso.cds_Movimento.Params[0].AsInteger := fLancaProcPcmso.codMov;
      fLancaProcPcmso.cds_Movimento.open;
      fLancaProcPcmso.cds_Movimento.Edit;

      fLancaProcPcmso.JvDateEdit1.Date := cds.Fields[1].AsDateTime;
      fLancaProcPcmso.JvDateEdit2.Date := cds.Fields[2].AsDateTime;
      fLancaProcPcmso.JvDBSearchEdit2.Text := cds.Fields[3].AsString;   // Associado
      fLancaProcPcmso.JvDBSearchEdit1.Text := cds.Fields[11].AsString;   // CódAssociado
      fLancaProcPcmso.empresa := cds.Fields[11].AsString;   // CódAssociado
      fLancaProcPcmso.dbFuncionario.Text := cds.Fields[4].AsString;   // Funcionario
      fLancaProcPcmso.dbcodFuncionario.Text := cds.Fields[13].AsString;   // CódFuncionario
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
      //fLancaProcPcmso.JvDBSearchEdit5.Text := IntToStr(cds.Fields[12].AsInteger);   // CódContratado
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
    if (ccustoProc = 'PARTICULAR') then
    begin
      fLancaProcPart.JvDateEdit1.Date := cds.Fields[1].AsDateTime;
      fLancaProcPart.JvDateEdit2.Date := cds.Fields[2].AsDateTime;
      fLancaProcPart.JvDBSearchEdit2.Text := cds.Fields[4].AsString;   // Associado
      fLancaProcPart.JvDBSearchEdit1.Text := cds.Fields[13].AsString;   // CódAssociado
      //fLancaProcSaude.JvDBSearchEdit4.Text := cds.Fields[6].AsString; // Procedimento
      //fLancaProcSaude.JvDBSearchEdit3.Text := cds.Fields[5].AsString; // Procedimento
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
      //fLancaProcSaude.JvDBSearchEdit6.Text := cds.Fields[10].AsString;// Contratado
      //fLancaProcSaude.JvDBSearchEdit5.Text := IntToStr(cds.Fields[12].AsInteger);   // CódContratado
      fLancaProcPart.codForn := cds.Fields[12].AsInteger;
      fLancaProcPart.Memo1.Lines.Text := cds.Fields[7].asString;
      if (fLancaProcPart.cds_Movimento.Active) then
        fLancaProcPart.cds_Movimento.Close;
      fLancaProcPart.cds_Movimento.Params[0].AsInteger := fLancaProcPart.codMov;
      fLancaProcPart.cds_Movimento.open;
      fLancaProcPart.cds_Movimento.Edit;
    end;

  end;

  if (ccustoProc = 'ASH') then
  begin
    fLancaProcSaude.codPagto := cds.Fields[15].asInteger;
    fLancaProcSaude.JvDBSearchEdit1.Enabled := False;
    fLancaProcSaude.JvDBSearchEdit2.Enabled := False;
    // 10/07/2013
    fLancaProcSaude.JvDateEdit1.Enabled := False;
    fLancaProcSaude.JvDateEdit2.Enabled := False;
    //

    fLancaProcSaude.Label20.Caption := cds.Fields[5].AsString ;
    fLancaProcSaude.Label21.Caption := cds.Fields[10].AsString ;
    fLancaProcSaude.Label22.Caption := cds.Fields[12].AsString ;
    fLancaProcSaude.Label23.Caption := cds.Fields[6].AsString ;


    fLancaProcSaude.Label18.Caption := cds.Fields[8].AsString ;
    if(fLancaProcSaude.Label18.Caption < '0') then
    begin
      fLancaProcSaude.Label19.Caption := fLancaProcSaude.Label18.Caption;
      fLancaProcSaude.Label18.Caption := '...';
    end else begin
      fLancaProcSaude.Label19.Caption := '...' ;



    end;




    fLancaProcSaude.ShowModal;
  end;
  if (ccustoProc = 'PCMSO') then
  begin
    fLancaProcPcmso.codPagto := cds.Fields[15].asInteger;
    dmSaude.cdsClienteBusca.Locate('RA', fLancaProcPcmso.empresa, [loCaseInsensitive]);
    fLancaProcPcmso.JvDBSearchEdit1.Enabled := False;
    fLancaProcPcmso.JvDBSearchEdit2.Enabled := False;
    // 10/07/2013
    fLancaProcPcmso.JvDateEdit1.Enabled := False;
    fLancaProcPcmso.JvDateEdit2.Enabled := False;
    //

    fLancaProcPcmso.ShowModal;
  end;
  if (ccustoProc = 'PARTICULAR') then
  begin
    fLancaProcPart.codPagto := cds.Fields[15].asInteger;

    fLancaProcPart.ShowModal;
  end;

  if (dmSaude.cdsClienteBusca.Active) then
    dmSaude.cdsClienteBusca.close;

   dmSaude.cdsClienteBusca.CommandText := 'select CODCLIENTE, NOMECLIENTE, ' +
    'RAZAOSOCIAL,tem_ie , RA ,datacadastro  from CLIENTES where status = 0 and GRUPO_CLIENTE = ' + QuotedStr(ccustoProc) +
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
  DMSaude.cdsClienteBuscaP.Params[0].AsString := ccustoProc;
  DMSaude.cdsClienteBuscaP.Open;
 // JvDBSearchEdit1.Text := '';
//  JvDBSearchEdit2.Text := '';
  JvDBSearchEdit1.Text := cds.Fields[11].AsString;
  JvDBSearchEdit2.Text := cds.Fields[3].AsString;
  JvDBSearchEdit3.Text := '';
  JvDBSearchEdit4.Text := '';
  JvDBSearchEdit5.Text := '';
  JvDBSearchEdit6.Text := '';
  JvDBSearchEdit7.Text := '';
  JvDBSearchEdit8.Text := '';
 // btnProcurar.Click;

end;

procedure TfLancaProcSaudeProc.btnSairClick(Sender: TObject);
begin
   DMSaude.sqlVencimentoPCMSO.Close;
   DMSaude.sqlVencimentoASH.Close;
   Close;
end;

procedure TfLancaProcSaudeProc.BitBtn2Click(Sender: TObject);
begin
  JvDBSearchEdit7.Clear;
  JvDBSearchEdit8.Clear;
end;

procedure TfLancaProcSaudeProc.BitBtn3Click(Sender: TObject);
begin
  JvDBSearchEdit5.Clear;
  JvDBSearchEdit6.Clear;
end;

procedure TfLancaProcSaudeProc.BitBtn11Click(Sender: TObject);
begin
  JvDBSearchEdit1.Clear;
  JvDBSearchEdit2.Clear;
end;

procedure TfLancaProcSaudeProc.BitBtn1Click(Sender: TObject);
begin
  JvDBSearchEdit3.Clear;
  JvDBSearchEdit4.Clear;
end;

procedure TfLancaProcSaudeProc.btnImprimirClick(Sender: TObject);
  var data1,data2 :TRpLabel;
begin

  rep.Filename := str_relatorio + 'ver_lancamentos.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  sql2 := 'SELECT * ' +
    'FROM LANCAPROCSAUDEPROC(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;

  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel4'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel8'));

  if JvDateEdit1.text <> '' then
  begin
  if Assigned(data1) then
    data1.Text := dataX.Text;
  if Assigned(data2) then
    data2.Text := dataY.Text;
  end;

  rep.Execute; 

end;

procedure TfLancaProcSaudeProc.BitBtn4Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin
  Edit1.Text := fFinanceiro.UserControlFinanceiro.CurrentUser.UserLogin;

  if(Edit1.Text = 'elis')then
  begin
  rep.Filename := str_relatorio + 'receita_saude1.rep';
  end else
  rep.Filename := str_relatorio + 'receita_saude.rep';
  rep.Title := rep.FileName;
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  sql2 := 'SELECT * ' +
    'FROM AVISO_ASH_TODOS(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;

  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));

   if JvDateEdit1.text <> '' then
  begin
  if Assigned(data1) then
    data1.Text :=  JvDateEdit1.Text;
  if Assigned(data2) then
    data2.Text := JvDateEdit2.Text;
  end;

  rep.Execute;    
 {
  rep.Filename := str_relatorio + 'receita_saude_matricial.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  sql2 := 'SELECT * ' +
    'FROM LANCAMENTOS(';
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
 }
end;

procedure TfLancaProcSaudeProc.JvDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfLancaProcSaudeProc.BitBtn5Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin
  // antes era matricial mudei para imprimir todos sem ter S no geraaviso
  //rep.Filename := str_relatorio + 'aviso_saudeMatricial.rep';

  Edit1.Text := fFinanceiro.UserControlFinanceiro.CurrentUser.UserLogin;

  if(Edit1.Text = 'elis')then
  begin
  rep.Filename := str_relatorio + 'aviso_saude1.rep';
  end else
  rep.Filename := str_relatorio + 'aviso_saude.rep';
  rep.Title := rep.FileName;
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  sql2 := 'SELECT * ' +
    'FROM AVISO_ASH_TODOS(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;

  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));



   if JvDateEdit1.text <> '' then
  begin
  if Assigned(data1) then
    data1.Text := dataX.Text;
  if Assigned(data2) then
    data2.Text := dataY.Text;
  end;



  rep.Execute;
end;



procedure TfLancaProcSaudeProc.JvDBGrid1TitleClick(Column: TColumn);
begin
  cds.IndexFieldNames := Column.FieldName;
end;

procedure TfLancaProcSaudeProc.BitBtn6Click(Sender: TObject);
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

procedure TfLancaProcSaudeProc.BitBtn7Click(Sender: TObject);
begin
  if (cds.Active) then
    cds.Close;
  sql2 := 'SELECT tit, emissao, vence, assocTitular, assocDependente, ' +
    'codConta , conta, hist, vlrRec, vlrPagto, contratado, codTitular, ' +
    'codContratado, codDependente, codrec, codpag, codMovi, codVen, codMovDet, ' +
    'faixaEtaria FROM PREVISAO_EXAMES(';

  if (JvDateEdit1.Text = '') then
  begin
    MessageDlg('Preencha o período a pesquisar.', mtInformation, [mbOK], 0);
    exit;
  end;
  sqlSaude := '';
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) + ','; // Emissao;
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) + ','; // Emissao;

      // Data Vencimento

  vencimento1.Clear;
  vencimento2.Clear;

  if (vencimento1.Text = '') then
    begin
      sqlSaude := sqlSaude + QuotedStr('01/01/2007') + ',';
      sqlSaude := sqlSaude + QuotedStr('01/01/2028') + ',';
    end
  else begin
    sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',vencimento1.Date)) + ','; // vencimento1;
    sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',vencimento2.Date)) + ','; // vencimento2;
  end;


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

procedure TfLancaProcSaudeProc.BitBtn8Click(Sender: TObject);
begin
  {
  rep.Filename := str_relatorio + 'ver_reembolsos.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  sql2 := 'SELECT * ' +
    'FROM LANCAPROCSAUDEPROC(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;
  rep.Execute;
  }
/// if (cds.Active) then
///    cds.Close;

  rep.Filename := str_relatorio + 'ver_reembolsos.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
//  sql2 := 'SELECT * ' +

  sql2 := 'SELECT tit, emissao, vence, assocTitular, assocDependente, ' +
    'codConta , conta, hist, vlrRec, vlrPagto, contratado, codTitular, ' +
    'codContratado, codDependente, codrec, codpag, codMovi, codVen, codMovDet, ' +
    'faixaEtaria FROM LANCAPROCSAUDEPROC(';

  if (JvDateEdit1.Text = '') then
  begin
    MessageDlg('Preencha o período a pesquisar.', mtInformation, [mbOK], 0);
    exit;
  end;
  sqlSaude := '';
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) + ','; // Emissao;
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) + ','; // Emissao;

      // Data Vencimento

  if (vencimento1.Text = '') then
    begin
      sqlSaude := sqlSaude + QuotedStr('01/01/2007') + ',';
      sqlSaude := sqlSaude + QuotedStr('01/01/2028') + ',';
    end
  else begin
    sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',vencimento1.Date)) + ','; // vencimento1;
    sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',vencimento2.Date)) + ','; // vencimento2;
  end;


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
 // cds.CommandText := sql2 + sqlSaude;
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;
  rep.Execute;

end;

procedure TfLancaProcSaudeProc.BitBtn9Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin

  Edit1.Text := fFinanceiro.UserControlFinanceiro.CurrentUser.UserLogin;

  if(Edit1.Text = 'elis')then
  begin
  rep.Filename := str_relatorio + 'aviso_saude1.rep';
  end else
  rep.Filename := str_relatorio + 'aviso_saude.rep';

  rep.Title := rep.FileName;
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  sql2 := 'SELECT * ' +
    'FROM AVISO_ASH(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;

  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));


   if JvDateEdit1.text <> '' then
  begin
  if Assigned(data1) then
    data1.Text := dataX.Text;
  if Assigned(data2) then
    data2.Text := dataY.Text;
  end;



  rep.Execute;

end;

procedure TfLancaProcSaudeProc.BitBtn10Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin

  Edit1.Text := fFinanceiro.UserControlFinanceiro.CurrentUser.UserLogin;

  if(Edit1.Text = 'elis')then
  begin
  rep.Filename := str_relatorio + 'receita_saude1.rep';
  end else
  rep.Filename := str_relatorio + 'receita_saude.rep';
  rep.Title := rep.FileName;
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  sql2 := 'SELECT * ' +
    'FROM AVISO_ASH(';
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

procedure TfLancaProcSaudeProc.btnPDFClick(Sender: TObject);
  var data1,data2 :TRpLabel;
  codsoc : Integer;
  SR: TSearchRec;
  I: integer;
begin
  // ira limpar o diretotio 1º
{  I := FindFirst('C:\home\ash_avisos\*.*', faAnyFile, SR);
  while I = 0 do begin if (SR.Attr and faDirectory) <> faDirectory then
  if not DeleteFile('C:\home\rel_funcionarios\' + SR.Name)
  then ShowMessage('Não foi possível excluir C:\home\ash_avisos\' + SR.Name);
  I := FindNext(SR);
 end;
 }

  codsoc := 0;
  if(dsI.Active)then
  dsI.Close;
  dsI.Params[0].AsDate := JvDateEdit1.Date;
  dsI.Params[1].AsDate := JvDateEdit2.Date;
  dsI.Params[2].AsDate := vencimento1.Date;
  dsI.Params[3].AsDate := vencimento1.Date;
  if(JvDBSearchEdit1.Text = '')then
    dsI.Params[4].AsString := '0'
  else
  dsI.Params[4].AsString := JvDBSearchEdit1.Text;

  dsI.Open;

  while not dsI.Eof do
  begin

    codsoc :=  dsICODCLI.Value;


    Edit1.Text := fFinanceiro.UserControlFinanceiro.CurrentUser.UserLogin;

    if(Edit1.Text = 'elis')then
    begin
    rep.Filename := str_relatorio + 'aviso_saude1.rep';
    end else
    rep.Filename := str_relatorio + 'aviso_saude.rep';

    rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

    sql2 := 'SELECT * ' +
      'FROM AVISO_ASH_PDF(';
    rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlpar + IntToStr(codsoc) + ',0,0,0,51);' ;
    //rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude ;
    data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
    data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));



    if JvDateEdit1.text <> '' then
    begin
    if Assigned(data1) then
      data1.Text := dataX.Text;
    if Assigned(data2) then
      data2.Text := dataY.Text;
    end;

    rep.SaveToPDF('C:\home\ash_avisos\' + dsIRA.Value +'AVISO.pdf');
    //rep.Execute;

    dsI.Next;
  end


end;

procedure TfLancaProcSaudeProc.btn1Click(Sender: TObject);
var codvenda , x , newrec : Integer;
    str , str_up , str_rec ,new_val ,new_val1, new_val2 ,centro: string ;
    TD: TTransactionDesc;
    va1 , va2 , newval : Double ;
begin

   if  MessageDlg('Confirma a Alteração e Geração de Novo recebimento : ''' + dm.cds_crTITULO.AsSTring + '''',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;


  if (dm.c_6_genid.Active) then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(COD_AREC, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  newrec := dm.c_6_genid.fields[0].AsInteger;
  dm.c_6_genid.Close;

  dm.sqlsisAdimin.StartTransaction(TD);
  DecimalSeparator := '.';

  if (fLancaProcSaudeProc.ccustoProc = 'PCMSO') then
  centro := '52';
  if (fLancaProcSaudeProc.ccustoProc = 'ASH') then
  centro := '51';

  str := ' INSERT INTO RECEBIMENTO (CODRECEBIMENTO, TITULO, CODCLIENTE ,DATAVENCIMENTO,EMISSAO, STATUS ,VIA ,' +
         ' FORMARECEBIMENTO,CODALMOXARIFADO ,CODVENDA ,' +
         ' VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO )'+
         ' VALUES (' +
         IntToStr(newrec) + ',' +  //  codrecebimento
         IntToStr(cds.Fields[14].AsInteger) + ','+  //  titulo (field 11 = codtitular , field 14 = codrecebimento )
         IntToStr(cds.Fields[0].AsInteger) + ','+  //  codtitular
         QuotedStr(FormatDateTime('mm/dd/yyyy',dtnewrec.Date)) + ','+ // venc
         QuotedStr(FormatDateTime('mm/dd/yyyy',cds.Fields[1].Value)) + ','+ // EMISSAO
         QuotedStr('5-') + ','+  // status
         QuotedStr('1') + ','+   // via
         QuotedStr('1') + ','+   // forma recebimento
         QuotedStr(centro) + ','+  // almoxarifado
         IntToStr(cds.Fields[17].AsInteger) + ','+  //  CODVENDA
         FloatToStr(JvCalcEdit2.Value) + ','+ //
         FloatToStr(JvCalcEdit2.Value) + ','+ //
         FloatToStr(JvCalcEdit2.Value) +
         ')';

  va1 := (JvCalcEdit1.Value);
  va2 := (JvCalcEdit2.Value);
  newval := (va1 - va2);


  dm.sqlsisAdimin.ExecuteDirect(str);
  dm.sqlsisAdimin.Commit(TD);
  DecimalSeparator := ',';

  DecimalSeparator := '.';
  // update tabela recebimento
  dm.sqlsisAdimin.StartTransaction(TD);
  str_rec := 'UPDATE RECEBIMENTO SET VALORTITULO = ' + FloatToStr(newval) +
             ' , VALOR_PRIM_VIA = ' + FloatToStr(newval) +
             ' , VALOR_RESTO = ' + FloatToStr(newval) +
             ' WHERE CODRECEBIMENTO = ' + IntToStr(cds.Fields[14].Value) ;
  dm.sqlsisAdimin.ExecuteDirect(str_rec);
  dm.sqlsisAdimin.Commit(TD);
  DecimalSeparator := ',';

  { Campos do sql
    tit, emissao, vence, assocTitular, assocDependente,codConta,conta, hist, vlrRec, vlrPagto,
    contratado, codTitular,codContratado, codDependente, codrec, codpag, codMovi, codVen,
    codMovDet,faixaEtaria , n_boleto ,datasistema ,outras_desp
  }

  for x := 0 to v_codigos.Count-1 do
  begin
    codvenda := StrToInt( v_codigos[x]);
    dm.sqlsisAdimin.StartTransaction(TD);
    str_up := 'UPDATE VENDA SET NUMEROBORDERO = ' + IntToStr(newrec) +
              ', DATAVENCIMENTO = ' + QuotedStr(formatDateTime('mm/dd/yyyy',dtnewrec.Date)) +
              ' WHERE CODVENDA = ' +  IntToStr(codvenda) ;
    dm.sqlsisAdimin.ExecuteDirect(str_up);
    dm.sqlsisAdimin.Commit(TD);

  //Fim do Loop (FOR)
  end;
  MessageDlg('Geração de Recebimento e Alteração Gravada . '+ IntToStr(codvenda) , mtInformation, [mbOK], 0);
  valtot := 0;
  JvCalcEdit2.Clear;
  btnProcurar.Click;
  v_codigos.Free;
  v_codigos := TStringList.Create;
end;

procedure TfLancaProcSaudeProc.JvDBGrid1CellClick(Column: TColumn);
var
  x, y : integer;
begin

  //VERIFICAR SE JÁ ESTA INCLUSO
  y := Selecionado(v_codigos, IntToStr(cds.Fields[17].AsInteger));
  if (y < 0) then // menor que zero, então não esta selecionado
  begin
    v_codigos.Add(IntToStr(cds.Fields[17].AsInteger)); //Adiciona à lista
    valtot := valtot + cds.Fields[8].Value;
  end
  else
  begin
    v_codigos.Delete(y); //Senão remove ele da lista
    valtot := valtot - cds.Fields[8].Value;
  end;
  JvCalcEdit2.Value := valtot;
  JvDBGrid1.Repaint;
end;
function TfLancaProcSaudeProc.Selecionado(Codigos: TStringList;
  Codigo: String): Integer;
var
  x : integer;
begin
  //Verificando se o código já esta selecionado...
  //Resultando -1 se não estiver e Resultando a posição
  //dele na StringList caso já esteja selecionado.
  Result := -1;
  for x := 0 to Codigos.Count-1 do
    if (Codigos[x] = Codigo) then
      begin
        Result := x; //Retorna a posição na StringList;
        Break; //PARA DE EXECUTAR O LOOP
      end;
end;
procedure TfLancaProcSaudeProc.JvDBGrid1DrawColumnCell(Sender: TObject;
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

    if (y < 0) then //menor que zero, então não esta selecionado
      DrawFrameControl(JvDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK)
    else
      DrawFrameControl(JvDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_CHECKED);
  end;

end;

procedure TfLancaProcSaudeProc.btnfichaPdfClick(Sender: TObject);
 var data1,data2 :TRpLabel;
  codsoc : Integer;
  SR: TSearchRec;
  I: integer;
begin
  // ira limpar o diretotio 1º
 { I := FindFirst('C:\home\pcmso_fichas\*.*', faAnyFile, SR);
  while I = 0 do begin if (SR.Attr and faDirectory) <> faDirectory then
  if not DeleteFile('C:\home\rel_funcionarios\' + SR.Name)
  then ShowMessage('Não foi possível excluir C:\home\pcmso_fichas\' + SR.Name);
  I := FindNext(SR);
  end;
 }
  codsoc := 0;
  if(ds1.Active)then
  ds1.Close;
  ds1.Params[0].AsDate := JvDateEdit1.Date;
  ds1.Params[1].AsDate := JvDateEdit2.Date;
  ds1.Params[2].AsDate := vencimento1.Date;
  ds1.Params[3].AsDate := vencimento1.Date;
  if(JvDBSearchEdit1.Text = '')then
    ds1.Params[4].AsString := '0'
  else
  ds1.Params[4].AsString := JvDBSearchEdit1.Text;
  ds1.Open;

  while not ds1.Eof do
  begin

    codsoc :=  ds1CODCLI.Value;

    rep.Filename := str_relatorio + 'receita_saude.rep';
    rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

    sql2 := 'SELECT * ' +
      'FROM AVISO_ASH_PDF(';
    rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlpar + IntToStr(codsoc) + ',0,0,0,52);' ;
    //rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude ;
    data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
    data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));

    dataX.Text := JvDateEdit1.Text;
    dataY.Text := JvDateEdit2.Text;

    if JvDateEdit1.text <> '' then
    begin
    if Assigned(data1) then
      data1.Text := dataX.Text;
    if Assigned(data2) then
      data2.Text := dataY.Text;
    end;

    rep.SaveToPDF('C:\home\pcmso_fichas\' + ds1RA.Value +'FICHA.pdf');
    //rep.Execute;

    ds1.Next;
  end

end;

procedure TfLancaProcSaudeProc.BitBtn12Click(Sender: TObject);
var codvenda , x , newrec : Integer;
    str , str_up , str_rec ,new_val ,new_val1, new_val2 ,centro: string ;
    TD: TTransactionDesc;
    va1 , va2 , newval : Double ;
begin
  if MessageDlg('Confirma a Alteração Data Recibo ',
    mtConfirmation, [mbYes, mbNo],0) = mrNo
  then
  exit;

  for x := 0 to v_codigos.Count-1 do
  codvenda := StrToInt( v_codigos[x]);
  dm.sqlsisAdimin.StartTransaction(TD);

      str_up := 'UPDATE VENDA SET DATASISTEMA = ' + QuotedStr(formatDateTime('mm/dd/yyyy',data_recibo.Date)) +
              ' , OUTRAS_DESP = ' + FloatToStr(valor_recibo.Value) +
              ' WHERE CODVENDA = ' +  IntToStr(codvenda) ;
      {
      str1 := 'UPDATE MOVIMENTODETALHE SET PRECO = '+
        FloatToStr(JvCalcEdit2.Value - JvCalcEdit1.Value) +
        ' ,CODPRODUTO = ' + IntToStr(cdsCODPRODUTO.asInteger) +
        ' ,CONTROLE = ' + IntToStr(sql_dependenteCODCLIENTE.asInteger) +
        ' ,COD_COMISSAO = ' + IntToStr(dmSaude.cdsFornecedorCODFORNECEDOR.asInteger) +
        ' ,LOTE = ' + QuotedStr(memo1.Text) +
        ' ,DTAVCTO = ' + QuotedStr(FormatDateTime('mm/dd/yy',data_recibo.Date)) +
        ' ,DTAFAB = ' + QuotedStr(FormatDateTime('mm/dd/yy',data_reem.Date)) +
        ' ,PRECOCUSTO = ' + FloatToStr(JvCalcEdit3.Value) +
        ' where codDetalhe = ' + IntToStr(codMovd);
      dm.sqlsisAdimin.ExecuteDirect(str1);

      str1 := 'UPDATE VENDA set n_boleto = ' + QuotedStr(Edit2.Text)+ ', dataVenda = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) +
        ', dataVencimento = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) +
        ', datasistema = ' + QuotedStr(FormatDateTime('mm/dd/yy',data_recibo.Date)) +
        ', data_ent_ree = ' + QuotedStr(FormatDateTime('mm/dd/yy',data_reem.Date)) +
        ', OUTRAS_DESP = ' + FloatToStr(JvCalcEdit3.Value)+
        ' where codVenda = ' + IntToStr(codVen);
      }

    dm.sqlsisAdimin.ExecuteDirect(str_up);
  dm.sqlsisAdimin.Commit(TD);
  btnProcurar.Click;
  MessageDlg('Data do Recibo Alterado Com Sucesso .', mtInformation, [mbOK], 0);
  v_codigos.Free;
  v_codigos := TStringList.Create;
end;

procedure TfLancaProcSaudeProc.BitBtn13Click(Sender: TObject);
var codvenda , x , newvenda , parcela : Integer;
    str,str1 ,str_movd , str_up , str_rec ,new_val ,new_val1, new_val2 ,centro: string ;
    TD: TTransactionDesc;
    va1 , va2 , newval : Double ;
begin
 // if( JvDBSearchEdit3.Text <> '744') then
 // Exit;


  if  MessageDlg('Confirma o Parcelamento deste Valor : ''' + JvCalcEdit2.Text + '''',
    mtConfirmation, [mbYes, mbNo],0) = mrNo
  then exit;


  dm.sqlsisAdimin.StartTransaction(TD);
  DecimalSeparator := '.';

  if (fLancaProcSaudeProc.ccustoProc = 'PCMSO') then
  centro := '52';
  if (fLancaProcSaudeProc.ccustoProc = 'ASH') then
  centro := '51';


  parcela := 1;
  va1 := (JvCalcEdit2.Value);
  //va2 := (JvCalcEdit2.Value);
  newval := (va1/2);
  JvCalcEdit3.Value :=  newval ;

  for x := 0 to parcela-1 do
  begin
  {
  if (dm.c_6_genid.Active) then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  newvenda := dm.c_6_genid.fields[0].AsInteger;
  dm.c_6_genid.Close;
   }
    dm.sqlsisAdimin.StartTransaction(TD);
      str1 := 'EXECUTE PROCEDURE LANCARECEITASAUDE( ';
      str1 := str1 + QuotedStr(FormatDateTime('mm/dd/yyyy',cds.Fields[1].Value)); // Emissao
      str1 := str1 + ',';
      str1 := str1 + QuotedStr(FormatDateTime('mm/dd/yyyy',dtnewrec.Date)); // Vencimento
      str1 := str1 + ',';
      str1 := str1 + IntToStr(cds.Fields[0].AsInteger); // CódClienteTitular
      str1 := str1 + ',';
      // CódClienteDependente (Gravado no Campo CONTROLE movDetalhe)
      str1 := str1 + IntToStr(cds.Fields[0].AsInteger);
      str1 := str1 + ',';
      str1 := str1 + IntToStr(cds.Fields[5].AsInteger); // Conta a Receber
      str1 := str1 + ',';
      str1 := str1 + 'null,';
      str1 := str1 + IntToStr(cds.Fields[12].AsInteger); // CódFornecedor (Contratado)
     {
      if(centro = '51')then
        str1 := str1 + IntToStr(99) // CódFornecedor (Contratado)
      else
      str1 := str1 + IntToStr(139); // CódFornecedor (Contratado)
      }
      str1 := str1 + ',';
      DecimalSeparator := '.';
      str1 := str1 + '0,';
      str1 := str1 + FloatToStr(newval);
      str1 := str1 + ',';
      str1 := str1 + '0,';
      str1 := str1 + 'null,';
      str1 := str1 + centro ;
      str1 := str1 + ',';
      str1 := str1 + 'null,';
      str1 := str1 + 'null,';
      str1 := str1 + 'null,';
      str1 := str1 + 'null,';
      str1 := str1 + 'null';
      str1 := str1 + ')';
      DecimalSeparator := ',';
      dm.sqlsisAdimin.ExecuteDirect(str1);

   { str_up := 'INSERT INTO VENDA ( CODVENDA , CODMOVIMENTO, CODCLIENTE, DATAVENDA, DATAVENCIMENTO ,' +
              ' STATUS ,VALOR,NOTAFISCAL ,DESCONTO ,CODCCUSTO, N_PARCELA , MULTA_JUROS ,ENTRADA    )'+
              ' VALUES (' +
              IntToStr(newvenda ) + ',' +  //  codvenda
              IntToStr(cds.Fields[16].AsInteger) + ','+  // codmovi
              IntToStr(cds.Fields[0].AsInteger) + ','+  //  codtitular
              QuotedStr(FormatDateTime('mm/dd/yyyy',cds.Fields[1].Value)) + ','+ // EMISSAO
              QuotedStr(FormatDateTime('mm/dd/yyyy',dtnewrec.Date)) + ','+ // venc
              QuotedStr('0') + ','+  // status
              FloatToStr(JvCalcEdit3.Value) + ','+ //
              IntToStr(cds.Fields[0].AsInteger) + ','+  //  NOTA FISCAL codtitular
              QuotedStr('0') + ','+   // DESCONTO
              QuotedStr(centro) + ','+  // CODCCUSTO
              QuotedStr('1') + ','+   // PARCELA
              QuotedStr('0') + ','+   // MULTA JUROS
              QuotedStr('0') + /////','+   // ENTRADA
              {
              IntToStr(cds.Fields[17].AsInteger) + ','+  //  CODVENDA
              FloatToStr(JvCalcEdit2.Value) + ','+ //
              FloatToStr(JvCalcEdit2.Value) + ','+ //
              FloatToStr(JvCalcEdit2.Value) +
              }
        /// ')';
    //}

    dm.sqlsisAdimin.ExecuteDirect(str_up);
    dm.sqlsisAdimin.Commit(TD);

  end;

   { Campos do sql
    0 tit, 1 emissao, 2 vence,3 assocTitular,4 assocDependente, 5 codConta,6 conta,7 hist,8 vlrRec,9 vlrPagto,
    10 contratado,11 codTitular,12 codContratado,13 codDependente,14 codrec,15 codpag,16 codMovi,17 codVen,
    18 codMovDet, 19 faixaEtaria , 20 n_boleto ,21 datasistema , 22 outras_desp
  }



 // va1 := (JvCalcEdit1.Value);
 // va2 := (JvCalcEdit2.Value);
 // newval := (va1 - va2);


 // dm.sqlsisAdimin.ExecuteDirect(str);
 // dm.sqlsisAdimin.Commit(TD);
// DecimalSeparator := ',';

  DecimalSeparator := '.';

  // update tabela recebimento
 { dm.sqlsisAdimin.StartTransaction(TD);
  str_rec := 'UPDATE RECEBIMENTO SET VALORTITULO = ' + FloatToStr(newval) +
             ' , VALOR_PRIM_VIA = ' + FloatToStr(newval) +
             ' , VALOR_RESTO = ' + FloatToStr(newval) +
             ' WHERE CODRECEBIMENTO = ' + IntToStr(cds.Fields[14].Value) ;
  dm.sqlsisAdimin.ExecuteDirect(str_rec);
  dm.sqlsisAdimin.Commit(TD);
  }
  dm.sqlsisAdimin.StartTransaction(TD);
  str_movd := 'UPDATE MOVIMENTODETALHE SET PRECO = ' + FloatToStr(newval) +
            // ' , VALOR_PRIM_VIA = ' + FloatToStr(newval) +
            // ' , VALOR_RESTO = ' + FloatToStr(newval) +
             ' WHERE CODMOVIMENTO = ' + IntToStr(cds.Fields[16].Value) ;
  dm.sqlsisAdimin.ExecuteDirect(str_movd);
  dm.sqlsisAdimin.Commit(TD);

  DecimalSeparator := ',';

  { Campos do sql
    tit, emissao, vence, assocTitular, assocDependente,codConta,conta, hist, vlrRec, vlrPagto,
    contratado, codTitular,codContratado, codDependente, codrec, codpag, codMovi, codVen,
    codMovDet,faixaEtaria , n_boleto ,datasistema ,outras_desp
  }


  MessageDlg('Gerado Parcela e Alteração no Recebimento.' , mtInformation, [mbOK], 0);
  valtot := 0;
  JvCalcEdit2.Clear;
  btnProcurar.Click;
  v_codigos.Free;
  v_codigos := TStringList.Create;

end;

procedure TfLancaProcSaudeProc.BitBtn14Click(Sender: TObject);
begin
  rep.Filename := str_relatorio + 'ver_reembolsos_novo.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  
 { sql2 := 'SELECT tit, emissao, vence, assocTitular, assocDependente, ' +
    'codConta , conta, hist, vlrRec, vlrPagto, contratado, codTitular, ' +
    'codContratado, codDependente, codrec, codpag, codMovi, codVen, codMovDet, ' +
    'faixaEtaria FROM LANCAPROCSAUDEPROC(';

  if (JvDateEdit1.Text = '') then
  begin
    MessageDlg('Preencha o período a pesquisar.', mtInformation, [mbOK], 0);
    exit;
  end;
  sqlSaude := '';
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) + ','; // Emissao;
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) + ','; // Emissao;

      // Data Vencimento

  if (vencimento1.Text = '') then
    begin
      sqlSaude := sqlSaude + QuotedStr('01/01/2007') + ',';
      sqlSaude := sqlSaude + QuotedStr('01/01/2028') + ',';
    end
  else begin
    sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',vencimento1.Date)) + ','; // vencimento1;
    sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',vencimento2.Date)) + ','; // vencimento2;
  end;


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
  }
 // cds.CommandText := sql2 + sqlSaude;
  rep.Report.DataInfo.Items[0].SQL:= sqlR + sqlRs + ' where vlrRec < 0  and conta Like' + QuotedStr('REEM%') + 'order by conta';
  rep.Execute;
end;

procedure TfLancaProcSaudeProc.BitBtn15Click(Sender: TObject);
var soma , datado : string ;
begin
   sqlR := '';
   sqlRs := '';

   if(RadioGroup1.ItemIndex = 0 ) then
     datado := 'FROM LANCA_REEMBOLSO_VEND(';
   if(RadioGroup1.ItemIndex = 1 ) then
     datado := 'FROM LANCA_REEMBOLSO_VENC(';
   if(RadioGroup1.ItemIndex = 2 ) then
     datado := 'FROM LANCA_REEMBOLSO_ENTR(';

  if (cds.Active) then
    cds.Close;
  sqlR := 'SELECT tit, emissao, vence, assocTitular, assocDependente, ' +
    'codConta , conta, hist, vlrRec, vlrPagto, contratado, codTitular, ' +
    'codContratado, codDependente, codrec, codpag, codMovi, codVen, codMovDet, ' +
    'faixaEtaria , n_boleto , DATASISTEMA , OUTRAS_DESP , data_ent_ree ' +

    datado ;

     // Data
    sqlRs := sqlRs + QuotedStr(FormatDateTime('mm/dd/yy',entrada1.Date)) + ','; // vencimento1;
    sqlRs := sqlRs + QuotedStr(FormatDateTime('mm/dd/yy',entrada2.Date)) + ','; // vencimento2;

  // Titular
  if (JvDBSearchEdit2.Text <> '') then
  begin
    if (dmSaude.cdsClienteBuscaRA.AsString <> JvDBSearchEdit1.Text) then
      DMSaude.cdsClienteBusca.Locate('RA',JvDBSearchEdit1.Text,[loCaseInsensitive]);
    sqlRs := sqlRs + IntToStr(dmSaude.cdsClienteBuscaCODCLIENTE.asInteger) + ', ';
  end
  else
    sqlRs := sqlRs + '0' + ',';

  // Beneficiario
  if (JvDBSearchEdit8.Text <> '') then
    sqlRs := sqlRs + IntToStr(DMSaude.cdsClienteBuscaPCODCLIENTE.asInteger) + ', '
  else
    sqlRs := sqlRs + '0' + ',';

  // Procedimento
  if (JvDBSearchEdit4.Text <> '') then
    sqlRs := sqlRs + cdsCODPRO.asString + ','
  else
    sqlRs := sqlRs + '0' + ',';

  // Fornecedor - Contratado
  if (JvDBSearchEdit5.Text <> '') then
    sqlRs := sqlRs + IntToStr(dmSaude.cdsFornecedorCODFORNECEDOR.asInteger) + ','
  else
    sqlRs := sqlRs + '0' + ',';

  // Centro de Custo

   sqlRs := sqlRs + '51' + ')';


  cds.CommandText := sqlR + sqlRs + ' where vlrRec < 0  and conta Like' + QuotedStr('REEM%') + 'order by conta';

  sSoma.Close;
  if(RadioGroup1.ItemIndex = 0 ) then
    soma  := 'SELECT  sum(vlrRec)FROM LANCA_REEMBOLSO_VEND(';
  if(RadioGroup1.ItemIndex = 1 ) then
    soma  := 'SELECT  sum(vlrRec)FROM LANCA_REEMBOLSO_VENC(';
  if(RadioGroup1.ItemIndex = 2 ) then
    soma  := 'SELECT  sum(vlrRec)FROM LANCA_REEMBOLSO_ENTR(';

 // soma := 'SELECT  sum(vlrRec)FROM LANCA_REEMBOLSO_VENC(';


  soma := soma + sqlRs + ' where vlrRec < 0 ';
  sSoma.CommandText := soma ;
  sSoma.Open;

  cds.Open;

  TFloatField(cds.Fields[8]).DisplayFormat := ',##0.00';
  TFloatField(cds.Fields[9]).DisplayFormat := ',##0.00'; 
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
  JvCalcEdit1.Text :=  sSoma.Fields[0].Text;

end;

procedure TfLancaProcSaudeProc.JvDBGrid1DblClick(Sender: TObject);
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
      fLancaProcSaude1.JvDBSearchEdit1.Text := cds.Fields[13].AsString;   // CódAssociado
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
      //fLancaProcSaude1.JvDBSearchEdit5.Text := IntToStr(cds.Fields[12].AsInteger);   // CódContratado
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
      fLancaProcPcmso.JvDBSearchEdit1.Text := cds.Fields[11].AsString;   // CódAssociado
      fLancaProcPcmso.empresa := cds.Fields[11].AsString;   // CódAssociado
      fLancaProcPcmso.dbFuncionario.Text := cds.Fields[4].AsString;   // Funcionario
      fLancaProcPcmso.dbcodFuncionario.Text := cds.Fields[13].AsString;   // CódFuncionario
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
      //fLancaProcPcmso.JvDBSearchEdit5.Text := IntToStr(cds.Fields[12].AsInteger);   // CódContratado
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
      fLancaProcPart.JvDBSearchEdit1.Text := cds.Fields[13].AsString;   // CódAssociado
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
      //fLancaProcSaude1.JvDBSearchEdit5.Text := IntToStr(cds.Fields[12].AsInteger);   // CódContratado
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

procedure TfLancaProcSaudeProc.BitBtn16Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin
  {rep.Filename := str_relatorio + 'receita_saude.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  sql2 := 'SELECT * ' +
    'FROM AVISO_ASH(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;

  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));



   if JvDateEdit1.text <> '' then
  begin
  if Assigned(data1) then
    data1.Text := dataX.Text;
  if Assigned(data2) then
    data2.Text := dataY.Text;
  end;
 }
  rep.Filename := str_relatorio + 'receita_particular.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  sql2 := 'SELECT * ' +
    'FROM  AVISO_ASH(';
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

end.

