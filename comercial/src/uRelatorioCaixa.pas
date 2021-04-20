unit uRelatorioCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, MMJPanel, rpcompobase,
  rpvclreport, DB, DBClient, JvFormPlacement, JvComponentBase,
  JvAppStorage, JvAppXMLStorage, FMTBcd, DBCtrls, SqlExpr, Provider,DBXpress,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls;

type
  TfRelatorioCaixa = class(TForm)
    MMJPanel3: TMMJPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    MaskEdit2: TMaskEdit;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label2: TLabel;
    Label11: TLabel;
    edCodCCusto: TComboBox;
    BitBtn3: TBitBtn;
    VCLReport1: TVCLReport;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    JvFormStorage1: TJvFormStorage;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    cds: TClientDataSet;
    dsp: TDataSetProvider;
    sql: TSQLDataSet;
    sqlUDF_ROUNDDEC: TFloatField;
    cdsUDF_ROUNDDEC: TFloatField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    btnFechar: TBitBtn;
    Bevel1: TBevel;
    BitBtn6: TBitBtn;
    sqlIn: TSQLDataSet;
    dspIn: TDataSetProvider;
    cdsIn: TClientDataSet;
    sqlInDTAPAGTO: TDateField;
    sqlInORDEM: TSmallintField;
    sqlInDESCRICAO: TStringField;
    sqlInVALORC: TFloatField;
    sqlInVALORD: TFloatField;
    sqlInVALOR: TFloatField;
    sqlInCONTACONTABIL: TStringField;
    sqlInCAIXA: TStringField;
    sqlInCODCONTA: TStringField;
    sqlInFORMA: TStringField;
    sqlInN_DOC: TStringField;
    sqlInORDENA: TSmallintField;
    sqlInCOMPENSADO: TStringField;
    cdsInDTAPAGTO: TDateField;
    cdsInORDEM: TSmallintField;
    cdsInDESCRICAO: TStringField;
    cdsInVALORC: TFloatField;
    cdsInVALORD: TFloatField;
    cdsInVALOR: TFloatField;
    cdsInCONTACONTABIL: TStringField;
    cdsInCAIXA: TStringField;
    cdsInCODCONTA: TStringField;
    cdsInFORMA: TStringField;
    cdsInN_DOC: TStringField;
    cdsInORDENA: TSmallintField;
    cdsInCOMPENSADO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelatorioCaixa: TfRelatorioCaixa;

implementation

uses UDm, uUtils, ufechamento_caixa;

{$R *.dfm}

procedure TfRelatorioCaixa.FormShow(Sender: TObject);
var conta_local: String;
begin
  if (dm.moduloUsado <> 'SAUDE') then
    begin
      BitBtn3.Visible := False;
      BitBtn4.Visible := False;
      ComboBox2.Visible := False;
      edCodCCusto.Visible := False;
      Label2.Visible := False;
      Label11.Visible := False;
    end;

    //Vejo quais são as contas de Receitas para listar no lookupcombobox.
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    conta_local := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;

   // populo a combobox Centro de Custo
    if dm.cds_ccusto.Active then
      dm.cds_ccusto.Close;
    dm.cds_ccusto.Params[0].AsString := conta_local;
    dm.cds_ccusto.Open;
    DM.cds_ccusto.First;
    while not DM.cds_ccusto.Eof do
    begin
      edCodCCusto.Items.Add(dm.cds_ccustoNOME.AsString);
      DM.cds_ccusto.Next;
    end;
    dm.cds_ccusto.Close;

  // populo a combobox Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;
  dm.cds_7_contas.First;
  while not dm.cds_7_contas.Eof do
  begin
    ComboBox1.Items.Add(dm.cds_7_contasNOME.AsString);
    dm.cds_7_contas.Next;
  end;
  dm.cds_7_contas.Close;

end;

procedure TfRelatorioCaixa.BitBtn3Click(Sender: TObject);
var   varRelCaixa : TUtils;
      Save_Cursor:TCursor;
begin
  btnFechar.Enabled := False;
  DBEdit1.Text := '';
  varRelCaixa := TUtils.Create;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  
  VCLReport1.Filename := str_relatorio + 'caixaResumo.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  VCLReport1.Report.Params.ParamByName('DATAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
  // Caixa
  if ComboBox1.Text <> '' then
  begin
    if (not dm.cds_7_contas.Active) then
       dm.cds_7_contas.Open;
    dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
    VCLReport1.Report.Params.ParamByName('PCAIXA').Value := dm.cds_7_contasCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('PCAIXA').Value := 0;

  // Forma Recebimento
  if ComboBox2.Text <> '' then
  begin
    VCLReport1.Report.Params.ParamByName('PFORMA').Value := varRelCaixa.pegaForma(ComboBox2.Text);
  end
  else
    VCLReport1.Report.Params.ParamByName('PFORMA').Value := '0';

  // Ccusto
  if (edCodCCusto.Text <> '') then
  begin
    if (not dm.cds_ccusto.Active) then
       dm.cds_ccusto.Open;
    dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := '0';

  VCLReport1.Execute;
  Screen.Cursor := Save_Cursor;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;
end;

procedure TfRelatorioCaixa.BitBtn1Click(Sender: TObject);
var  Save_Cursor:TCursor;
begin
  if (RadioGroup1.ItemIndex = 0) then
    VCLReport1.Filename := str_relatorio + 'caixa_movimento.rep'
  else
    VCLReport1.Filename := str_relatorio + 'caixa_movimentoConsolida.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
  if ComboBox1.Text <> '' then
  begin
    if (not dm.cds_7_contas.Active) then
       dm.cds_7_contas.Open;
    dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := dm.cds_7_contasCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := 0;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  if(cds.Active)then
  cds.Close;
    cds.Params[0].Clear;
    cds.Params.ParamByName('DTAINI').AsString := formatdatetime('mm/dd/yyyy', StrToDate(maskedit1.Text));
    cds.Params.ParamByName('DTAFIM').AsString := formatdatetime('mm/dd/yyyy', StrToDate(maskedit2.Text));
    cds.Params.ParamByName('COD_CAIXA').AsInteger := dm.cds_7_contasCODIGO.asInteger;
  cds.Open;
  cds.Last;

  VCLReport1.Execute;

  Screen.Cursor := Save_Cursor;
  btnFechar.Enabled := True;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;
 {
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  if(cds.Active)then
  cds.Close;
    cds.Params[0].Clear;
    cds.Params.ParamByName('DTAINI').AsString := formatdatetime('mm/dd/yyyy', StrToDate(maskedit1.Text));
    cds.Params.ParamByName('DTAFIM').AsString := formatdatetime('mm/dd/yyyy', StrToDate(maskedit2.Text));
    cds.Params.ParamByName('COD_CAIXA').AsInteger := dm.cds_7_contasCODIGO.asInteger;
  cds.Open;
  Screen.Cursor := Save_Cursor;
  }
end;

procedure TfRelatorioCaixa.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfRelatorioCaixa.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

procedure TfRelatorioCaixa.BitBtn4Click(Sender: TObject);
  var  Save_Cursor:TCursor;
begin
  btnFechar.Enabled := False;
  DBEdit1.Text := '';
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  VCLReport1.Filename := str_relatorio + 'caixaDetalhado.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  VCLReport1.Report.Params.ParamByName('DATAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
  // Ccusto
  if (edCodCCusto.Text <> '') then
  begin
    if (not dm.cds_ccusto.Active) then
       dm.cds_ccusto.Open;
    dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := '0';


  if ComboBox1.Text <> '' then
  begin
    if (not dm.cds_7_contas.Active) then
       dm.cds_7_contas.Open;
    dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := dm.cds_7_contasCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := 0;
  VCLReport1.Execute;
  Screen.Cursor := Save_Cursor;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;

end;

procedure TfRelatorioCaixa.FormCreate(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    ComboBox2.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;
end;

procedure TfRelatorioCaixa.BitBtn5Click(Sender: TObject);
  var  Save_Cursor:TCursor;
begin
  btnFechar.Enabled := False;
  DBEdit1.Text := '';
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;  
  VCLReport1.Title := str_relatorio + 'caixa_movimentoSintetico.rep';
  VCLReport1.Filename := str_relatorio + 'caixa_movimentoSintetico.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
  if ComboBox1.Text <> '' then
  begin
    if (not dm.cds_7_contas.Active) then
       dm.cds_7_contas.Open;
    dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := dm.cds_7_contasCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := 0;
  VCLReport1.Execute;
  Screen.Cursor := Save_Cursor;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;


end;

procedure TfRelatorioCaixa.btnFecharClick(Sender: TObject);
var TD: TTransactionDesc;
    sqlR : string;
begin

    if(fFechamento_caixa.cds.Active) then
    fFechamento_caixa.cds.Close;
    fFechamento_caixa.cds.Open;

    dm.sqlsisAdimin.StartTransaction(TD);
    DecimalSeparator := '.';
    sqlR  := ' INSERT INTO CAIXA_FECHADO ( COD_CAIXA ,DATA_FIM ,VALOR)'+
          ' VALUES (' +
          IntToStr(dm.cds_7_contasCODIGO.asInteger) + ',' +                           //  fFechamento_caixa.cdsCOD_CAIXA.Value
          QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(maskedit2.Text))) + ','+
          FloatToStr(cdsUDF_ROUNDDEC.Value) +
         ')';
    try
    dm.sqlsisAdimin.ExecuteDirect(sqlR);
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('O Caixa Foi Fechado ', mtInformation, [mbOK], 0)
    except
      MessageDlg('Caixa ja foi Fechado nesta Data', mtInformation, [mbOK], 0);
    end;
    DecimalSeparator := ',';
    btnFechar.Enabled := False;
    DBEdit1.Enabled := False;

    

end;

procedure TfRelatorioCaixa.ComboBox1Change(Sender: TObject);
begin
   DBEdit1.Text := '';
   btnFechar.Enabled := False;
end;

procedure TfRelatorioCaixa.BitBtn6Click(Sender: TObject);
var TD: TTransactionDesc;
    sqlR : string;
begin

  if cdsIn.Active then
    cdsIn.Close;

  cdsIn.Params[0].AsDate := StrToDate(maskedit1.Text);
  cdsIn.Params[1].AsDate := StrToDate(maskedit2.Text);
  cdsIn.Params[2].AsInteger := dm.cds_7_contasCODIGO.asInteger;

  cdsIn.Open;

  while not (cdsIn.Eof) do
  begin
    dm.sqlsisAdimin.StartTransaction(TD);
    DecimalSeparator := '.';

    sqlR  := ' INSERT INTO TB_MOV_CAIXA_ORDEM (ID_TB_MOV , CODCAIXA, DTAPAGTO , ORDEM, DESCRICAO,VALORC,VALORD , VALOR ,CONTACONTABIL ,' +
                                               ' CAIXA , CODCONTA, FORMA ,N_DOC, ORDENA , COMPENSADO)' +
          ' VALUES (' +
          ('GEN_ID("ID_TB_MOV",1)') + ',' +
          IntToStr(dm.cds_7_contasCODIGO.asInteger) + ','+
          QuotedStr(FormatDateTime('mm/dd/yyyy', cdsInDTAPAGTO.Value)) + ',' +
          IntToStr(cdsInORDEM.AsInteger) + ','+  //
          QuotedStr(cdsInDESCRICAO.AsString) + ','+  //
          FloatToStr(cdsInVALORC.Value) + ',' +
          FloatToStr(cdsInVALORD.Value) + ',' +
          FloatToStr(cdsInVALOR.Value) + ',' +
          QuotedStr(cdsInCONTACONTABIL.AsString) + ','+  //
          QuotedStr(cdsInCAIXA.AsString) + ','+  //
          QuotedStr(cdsInCODCONTA.AsString) + ',' +
          QuotedStr(cdsInFORMA.AsString) + ','+  //
          QuotedStr(cdsInN_DOC.AsString) + ','+  //
          IntToStr(cdsInORDENA.AsInteger) + ','+  //
          QuotedStr(cdsInCOMPENSADO.AsString) +

         ')';

    dm.sqlsisAdimin.ExecuteDirect(sqlR);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
    cdsIn.Next;
  end;

  MessageDlg('Exportado com Sucesso', mtInformation, [mbOK], 0);

end;

end.
