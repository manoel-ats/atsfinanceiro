unit uAud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rpcompobase, rpvclreport,rplabelitem,
  FMTBcd, SqlExpr, Provider, DB, DBClient, JvExMask, JvToolEdit;

type
  TfAud = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    medt1: TMaskEdit;
    medt2: TMaskEdit;
    Edit1: TEdit;
    edCodCCusto: TComboBox;
    Label1: TLabel;
    btnAu: TBitBtn;
    ComboBox1: TComboBox;
    repContasReceber: TVCLReport;
    cdsAu: TClientDataSet;
    dspAu: TDataSetProvider;
    sdsAu: TSQLDataSet;
    btnAn: TBitBtn;
    btnAc: TBitBtn;
    btnSc: TBitBtn;
    btnAO: TBitBtn;
    btnSO: TBitBtn;
    Label2: TLabel;
    btnSair: TBitBtn;
    BitBtn1: TBitBtn;
    btnSIP: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    dataAu: TJvDateEdit;
    procedure btnAuClick(Sender: TObject);
    procedure btnAnClick(Sender: TObject);
    procedure btnAcClick(Sender: TObject);
    procedure btnScClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnAOClick(Sender: TObject);
    procedure btnSOClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnSIPClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAud: TfAud;

implementation

uses UDm;

{$R *.dfm}

procedure TfAud.btnAuClick(Sender: TObject);
var sqlau , codalmox : String;
   data1,data2,data3,conta,tipo,centro :TRpLabel;
begin
  if (edCodCCusto.Text = 'ASH') then
  codalmox := '51';
  if (edCodCCusto.Text = 'PCMSO') then
  codalmox := '52';
  if (edCodCCusto.Text = 'PARTICULAR') then
  codalmox := '53';
  if (cdsAu.Active) then
  cdsAu.Close;
  sqlau := 'SELECT * FROM AUDITORIA'+ '(';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(dataAu.Text)))+ ',' ;
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt1.Text))) + ',';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt2.Text))) + ',';
  sqlau := sqlau + QuotedStr(codalmox) + ')';
  cdsAu.CommandText := sqlau ;
  cdsAu.Open;
  repContasReceber.FileName := str_relatorio + 'rel_aud.rep';
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlau;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel6'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  data3:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel17'));
  centro  := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel19'));

   // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;
  //Data Auditoria
  if (dataAu.text <> '  /  /  ') then
  begin
    data3.Text := dataAu.Text;
  end;

  //Entrada
  if (medt1.text <> '  /  /  ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
    ComboBox1.Text := 'Data de Entrada';
  end;
  // Tipo de data
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '')) then
  begin
    tipo.Text := ComboBox1.Text;
  end;

  repContasReceber.Execute;

end;

procedure TfAud.btnAnClick(Sender: TObject);
var sqlau , codalmox : String;
   data1,data2,data3,conta,tipo,centro :TRpLabel;
begin
  if (edCodCCusto.Text = 'ASH') then
  codalmox := '51';
  if (edCodCCusto.Text = 'PCMSO') then
  codalmox := '52';
  if (edCodCCusto.Text = 'PARTICULAR') then
  codalmox := '53';
  if (cdsAu.Active) then
  cdsAu.Close;
  sqlau := 'SELECT * FROM AUDITORIA_ANA  '+ '(';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(dataAu.Text)))+ ',' ;
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt1.Text))) + ',';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt2.Text))) + ',';
  sqlau := sqlau + QuotedStr(codalmox) + ')';
  cdsAu.CommandText := sqlau ;
  cdsAu.Open;
  repContasReceber.FileName := str_relatorio + 'rel_aud_ana.rep';
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlau;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel6'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  data3:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel17'));
  centro  := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel19'));

  // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;
  //Data Auditoria
  if (dataAu.text <> '  /  /  ') then
  begin
    data3.Text := dataAu.Text;
  end;

  //Entrada
  if (medt1.text <> '  /  /  ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
    ComboBox1.Text := 'Data de Entrada';
  end;
  // Tipo de data
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '')) then
  begin
    tipo.Text := ComboBox1.Text;
  end;

  repContasReceber.Execute;

end;

procedure TfAud.btnAcClick(Sender: TObject);
var sqlau , codalmox : String;
   data1,data2,data3,conta,tipo,centro :TRpLabel;
begin
  if (edCodCCusto.Text = 'ASH') then
  codalmox := '51';
  if (edCodCCusto.Text = 'PCMSO') then
  codalmox := '52';
  if (edCodCCusto.Text = 'PARTICULAR') then
  codalmox := '53';
  if (cdsAu.Active) then
  cdsAu.Close;

   if (dataAu.Date < 41547) then
  begin
  sqlau := 'SELECT * FROM AUDITORIA_ANA_C  '+ '(';
  end;
   if (dataAu.Date > 41547) then
  begin
  sqlau := 'SELECT * FROM AUDITORIA_ANA_C_1  '+ '(';
  end;
 

  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(dataAu.Text)))+ ',' ;
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt1.Text))) + ',';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt2.Text))) + ',';
  sqlau := sqlau + QuotedStr(codalmox) + ')';
  cdsAu.CommandText := sqlau ;
  cdsAu.Open;
  repContasReceber.FileName := str_relatorio + 'rel_aud_ana_c.rep';
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlau;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel6'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  data3:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel17'));
  centro  := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel19'));

   // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;
  //Data Auditoria
  if (dataAu.text <> '  /  /  ') then
  begin
    data3.Text := dataAu.Text;
  end;

  //Entrada
  if (medt1.text <> '  /  /  ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
    ComboBox1.Text := 'Data de Entrada';
  end;
  // Tipo de data
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '')) then
  begin
    tipo.Text := ComboBox1.Text;
  end;

  repContasReceber.Execute;

end;

procedure TfAud.btnScClick(Sender: TObject);
var sqlau , codalmox : String;
   data1,data2,data3,conta,tipo,centro :TRpLabel;
begin
  if (edCodCCusto.Text = 'ASH') then
  codalmox := '51';
  if (edCodCCusto.Text = 'PCMSO') then
  codalmox := '52';
  if (edCodCCusto.Text = 'PARTICULAR') then
  codalmox := '53';
  if (cdsAu.Active) then
  cdsAu.Close;

   if (dataAu.Date < 41547) then
  begin
  sqlau := 'SELECT * FROM AUDITORIA_C'+ '(';
  end;
   if (dataAu.Date > 41547) then
  begin
  sqlau := 'SELECT * FROM  AUDITORIA_C_1 '+ '(';     //AUDITORIA_ANA_C_1_1 '+ '('; // 
  end;

  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(dataAu.Text)))+ ',' ;
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt1.Text))) + ',';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt2.Text))) + ',';
  sqlau := sqlau + QuotedStr(codalmox) + ')';
  cdsAu.CommandText := sqlau ;
  cdsAu.Open;
  repContasReceber.FileName := str_relatorio + 'rel_aud_c.rep';
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlau;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel6'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  data3:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel17'));
  centro  := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel19'));

   // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;
  //Data Auditoria
  if (dataAu.text <> '  /  /  ') then
  begin
    data3.Text := dataAu.Text;
  end;

  //Entrada
  if (medt1.text <> '  /  /  ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
    ComboBox1.Text := 'Data de Entrada';
  end;
  // Tipo de data
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '')) then
  begin
    tipo.Text := ComboBox1.Text;
  end;

  repContasReceber.Execute;

end;

procedure TfAud.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfAud.btnAOClick(Sender: TObject);
var sqlau , codalmox : String;
   data1,data2,data3,conta,tipo,centro :TRpLabel;
begin
  if (edCodCCusto.Text = 'ASH') then
  codalmox := '51';
  if (edCodCCusto.Text = 'PCMSO') then
  codalmox := '52';
  if (edCodCCusto.Text = 'PARTICULAR') then
  codalmox := '53';  
  if (cdsAu.Active) then
  cdsAu.Close;
  sqlau := 'SELECT * FROM AUDITORIA_ANA_O  '+ '(';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(dataAu.Text)))+ ',' ;
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt1.Text))) + ',';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt2.Text))) + ',';
  sqlau := sqlau + QuotedStr(codalmox) + ')';
  cdsAu.CommandText := sqlau ;
  cdsAu.Open;
  repContasReceber.FileName := str_relatorio + 'rel_aud_ana_o.rep';
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlau;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel6'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  data3:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel17'));
  centro  := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel19'));

   // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;
  //Data Auditoria
  if (dataAu.text <> '  /  /  ') then
  begin
    data3.Text := dataAu.Text;
  end;

  //Entrada
  if (medt1.text <> '  /  /  ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
    ComboBox1.Text := 'Data de Entrada';
  end;
  // Tipo de data
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '')) then
  begin
    tipo.Text := ComboBox1.Text;
  end;

  repContasReceber.Execute;

end;

procedure TfAud.btnSOClick(Sender: TObject);
var sqlau , codalmox : String;
   data1,data2,data3,conta,tipo,centro :TRpLabel;
begin
  if (edCodCCusto.Text = 'ASH') then
  codalmox := '51';
  if (edCodCCusto.Text = 'PCMSO') then
  codalmox := '52';
  if (edCodCCusto.Text = 'PARTICULAR') then
  codalmox := '53';  
  if (cdsAu.Active) then
  cdsAu.Close;
  sqlau := 'SELECT * FROM AUDITORIA_S_O'+ '(';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(dataAu.Text)))+ ',' ;
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt1.Text))) + ',';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt2.Text))) + ',';
  sqlau := sqlau + QuotedStr(codalmox) + ')';
  cdsAu.CommandText := sqlau ;
  cdsAu.Open;
  repContasReceber.FileName := str_relatorio + 'rel_aud_s_o.rep';
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlau;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel6'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  data3:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel17'));
  centro  := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel19'));

   // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;
  //Data Auditoria
  if (dataAu.text <> '  /  /  ') then
  begin
    data3.Text := dataAu.Text;
  end;

  //Entrada
  if (medt1.text <> '  /  /  ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
    ComboBox1.Text := 'Data de Entrada';
  end;
  // Tipo de data
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '')) then
  begin
    tipo.Text := ComboBox1.Text;
  end;

  repContasReceber.Execute;

end;

procedure TfAud.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfAud.BitBtn1Click(Sender: TObject);
var  codalmox : String;
  data1, centro :TRpLabel;
begin
  if (edCodCCusto.Text = 'ASH') then
  codalmox := '51';
  if (edCodCCusto.Text = 'PCMSO') then
  codalmox := '52';

  repContasReceber.FileName := str_relatorio + 'rel_sip1En_aud.rep';

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel1'));
  centro:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel3'));


    // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;

  //data
  if (dataAu.text <> '  /  /  ')then
  begin
  data1.Text := dataAu.Text;
  end;

  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.Params.ParamByName('DIA').Value := formatdatetime('dd/mm/yy', StrToDate(dataAu.Text));
  repContasReceber.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(medt1.Text));
  repContasReceber.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(medt2.Text));
  repContasReceber.Report.Params.ParamByName('CODALMOX').Value := codalmox ;
  repContasReceber.Execute;

end;


procedure TfAud.btnSIPClick(Sender: TObject);
var sqlau , codalmox : String;
   data1,data2,data3,conta,tipo,centro :TRpLabel;
begin
  if (edCodCCusto.Text = 'ASH') then
  codalmox := '51';
  if (edCodCCusto.Text = 'PCMSO') then
  codalmox := '52';
  if (edCodCCusto.Text = 'PARTICULAR') then
  codalmox := '53';
  if (cdsAu.Active) then
  cdsAu.Close;

   if (dataAu.Date < 41547) then
  begin
  sqlau := 'SELECT * FROM AUDITORIA_CONTAS'+ '(';
  end;
   if (dataAu.Date > 41547) then
  begin
  sqlau := 'SELECT * FROM AUDITORIA_CONTAS_1'+ '(';
  end;

  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(dataAu.Text)))+ ',' ;
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt1.Text))) + ',';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt2.Text))) + ',';
  sqlau := sqlau + QuotedStr(codalmox) + ')';
  cdsAu.CommandText := sqlau ;
  cdsAu.Open;
  repContasReceber.FileName := str_relatorio + 'rel_aud_contas.rep';
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlau;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel6'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  data3:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel17'));
  centro  := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel19'));
 
   // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;

  //Data Auditoria
  if (dataAu.text <> '  /  /  ') then
  begin
    data3.Text := dataAu.Text;
  end;

  //Entrada
  if (medt1.text <> '  /  /  ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
    ComboBox1.Text := 'Data de Entrada';
  end;
  // Tipo de data
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '')) then
  begin
    tipo.Text := ComboBox1.Text;
  end;

  repContasReceber.Execute;

end;

procedure TfAud.BitBtn2Click(Sender: TObject);
var sqlau , codalmox : String;
   data1,data2,data3,conta,tipo,centro :TRpLabel;
begin
  if (edCodCCusto.Text = 'ASH') then
  codalmox := '51';
  if (edCodCCusto.Text = 'PCMSO') then
  codalmox := '52';
  if (edCodCCusto.Text = 'PARTICULAR') then
  codalmox := '53';
  if (cdsAu.Active) then
  cdsAu.Close;
  sqlau := 'SELECT * FROM AUDITORIA_P'+ '(';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(dataAu.Text)))+ ',' ;
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt1.Text))) + ',';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt2.Text))) + ',';
  sqlau := sqlau + QuotedStr(codalmox) + ')';
  cdsAu.CommandText := sqlau ;
  cdsAu.Open;
  repContasReceber.FileName := str_relatorio + 'rel_aud_P.rep';
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlau;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel6'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  data3:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel17'));
  centro  := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel19'));

   // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;
  //Data Auditoria
  if (dataAu.text <> '  /  /  ') then
  begin
    data3.Text := dataAu.Text;
  end;

  //Entrada
  if (medt1.text <> '  /  /  ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
    ComboBox1.Text := 'Data de Entrada';
  end;
  // Tipo de data
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '')) then
  begin
    tipo.Text := ComboBox1.Text;
  end;

  repContasReceber.Execute;

end;

procedure TfAud.BitBtn3Click(Sender: TObject);
var sqlau , codalmox : String;
   data1,data2,data3,conta,tipo,centro :TRpLabel;
begin
  if (edCodCCusto.Text = 'ASH') then
  codalmox := '51';
  if (edCodCCusto.Text = 'PCMSO') then
  codalmox := '52';
  if (edCodCCusto.Text = 'PARTICULAR') then
  codalmox := '53';
  if (cdsAu.Active) then
  cdsAu.Close;


   if (dataAu.Date < 41547) then
  begin
  sqlau := 'SELECT * FROM AUDITORIA_C_P'+ '(';
  end;
   if (dataAu.Date > 41547) then
  begin
  sqlau := 'SELECT * FROM AUDITORIA_C_P_1  '+ '(';
  end;

  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(dataAu.Text)))+ ',' ;
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt1.Text))) + ',';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt2.Text))) + ',';
  sqlau := sqlau + QuotedStr(codalmox) + ')';
  cdsAu.CommandText := sqlau ;
  cdsAu.Open;
  repContasReceber.FileName := str_relatorio + 'rel_aud_c_P.rep';
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlau;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel6'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  data3:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel17'));
  centro  := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel19'));

   // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;
  //Data Auditoria
  if (dataAu.text <> '  /  /  ') then
  begin
    data3.Text := dataAu.Text;
  end;

  //Entrada
  if (medt1.text <> '  /  /  ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
    ComboBox1.Text := 'Data de Entrada';
  end;
  // Tipo de data
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '')) then
  begin
    tipo.Text := ComboBox1.Text;
  end;

  repContasReceber.Execute;

end;

procedure TfAud.BitBtn4Click(Sender: TObject);
var sqlau , codalmox : String;
   data1,data2,data3,conta,tipo,centro :TRpLabel;
begin
  if (edCodCCusto.Text = 'ASH') then
  codalmox := '51';
  if (edCodCCusto.Text = 'PCMSO') then
  codalmox := '52';
  if (edCodCCusto.Text = 'PARTICULAR') then
  codalmox := '53';  
  if (cdsAu.Active) then
  cdsAu.Close;
  sqlau := 'SELECT * FROM AUDITORIA_S_O_P'+ '(';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(dataAu.Text)))+ ',' ;
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt1.Text))) + ',';
  sqlau := sqlau + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medt2.Text))) + ',';
  sqlau := sqlau + QuotedStr(codalmox) + ')';
  cdsAu.CommandText := sqlau ;
  cdsAu.Open;
  repContasReceber.FileName := str_relatorio + 'rel_aud_s_o_P.rep';
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlau;

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel6'));
  data2:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel13'));
  data3:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel14'));
  tipo:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel17'));
  centro  := TRpLabel(repContasReceber.Report.FindComponent('TRpLabel19'));

   // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;
  //Data Auditoria
  if (dataAu.text <> '  /  /  ') then
  begin
    data3.Text := dataAu.Text;
  end;

  //Entrada
  if (medt1.text <> '  /  /  ') then
  begin
    data1.Text := medt1.Text;
    data2.Text := medt2.Text;
    ComboBox1.Text := 'Data de Entrada';
  end;
  // Tipo de data
  if((ComboBox1.Text <> '')or(ComboBox1.Text = '')) then
  begin
    tipo.Text := ComboBox1.Text;
  end;

  repContasReceber.Execute;

end;

end.
