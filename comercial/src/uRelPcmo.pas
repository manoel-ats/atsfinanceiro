unit uRelPcmo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, rpcompobase, rpvclreport, JvExStdCtrls,
  JvCombobox, JvDBSearchComboBox, SqlExpr, Provider, DB, DBClient, DBLocal,
  DBLocalS, Mask, JvExMask, JvToolEdit, ExtCtrls;

type
  TfRelPcmo = class(TForm)
    BitBtn1: TBitBtn;
    VCLReport1: TVCLReport;
    JvDBSearchEdit2: TJvDBSearchComboBox;
    SQL: TSQLClientDataSet;
    DataSource1: TDataSource;
    SQLRAZAOSOCIAL: TStringField;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    JvDBSearchComboBox1: TJvDBSearchComboBox;
    SQLRA: TStringField;
    Label2: TLabel;
    BitBtn3: TBitBtn;
    lbl1: TLabel;
    mmo1: TMemo;
    lbl2: TLabel;
    edt1: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    datavenc: TJvDateEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    bvl1: TBevel;
    lbl5: TLabel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    contar: TSQLClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    Label5: TLabel;
    BitBtn9: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPcmo: TfRelPcmo;

implementation

uses UDmSaude, UDm;

{$R *.dfm}

procedure TfRelPcmo.BitBtn1Click(Sender: TObject);
var mes : string ;
begin
  VCLReport1.Filename := str_relatorio + 'rel_emp_func_pcmso.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('NOME').Value := JvDBSearchEdit2.Text;
 // mes:=copy( datavenc.Text , 4 , 2);
 // if(mes = '01')then
 // begin
 //   VCLReport1.Report.Params.ParamByName('DATA').Value := dataVenc.Date
 // end
 // else
  VCLReport1.Report.Params.ParamByName('DATA').Value := dataVenc.Date;
 // VCLReport1.Report.Params.ParamByName('DATA').Value := IncMonth(dataVenc.Date , -1);
  VCLReport1.Execute;
end;

procedure TfRelPcmo.FormShow(Sender: TObject);
begin
    if (not contar.Active) then
    contar.Open;
    if (not sql.Active) then
    sql.Open;
    lbl1.Caption := IntToStr(contar.RecordCount);
  if (not DMSaude.sqlVencimentoPCMSO.Active) then
    DMSaude.sqlVencimentoPCMSO.Open;
  edt1.Text := DMSaude.sqlVencimentoPCMSODESCRICAO.Text;

end;

procedure TfRelPcmo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  contar.Close;
  SQL.Close;
end;

procedure TfRelPcmo.BitBtn2Click(Sender: TObject);
var mes : string ;
begin
  VCLReport1.Filename := str_relatorio + 'rel_emp_func_pcmso.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('NOME').Value := 'TODOS AS EMPRESAS ATIVAS CADASTRADOS NO SISTEMA HJ';
  {
  mes:=copy( datavenc.Text , 4 , 2);
  if(mes = '01')then
  begin
   VCLReport1.Report.Params.ParamByName('DATA').Value := dataVenc.Date
  end
  else
  }
 // VCLReport1.Report.Params.ParamByName('DATA').Value := IncMonth(dataVenc.Date , -1);
  VCLReport1.Report.Params.ParamByName('DATA').Value := dataVenc.Date;
  VCLReport1.Execute;

  
end;

procedure TfRelPcmo.BitBtn3Click(Sender: TObject);
var mes : string ;
    SR: TSearchRec;
    I: integer;
begin
  // ira limpar o diretotio 1º
 {
  I := FindFirst('C:\home\rel_funcionarios\*.*', faAnyFile, SR);
  while I = 0 do begin if (SR.Attr and faDirectory) <> faDirectory then
  if not DeleteFile('C:\home\rel_funcionarios\' + SR.Name)
  then ShowMessage('Não foi possível excluir C:\home\rel_funcionarios\' + SR.Name);
  I := FindNext(SR);
 end;
 }

  while not sql.Eof do
  begin
    VCLReport1.Filename := str_relatorio + 'rel_emp_func_pcmso.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('NOME').Value := SQLRAZAOSOCIAL.Text;
    {
    mes:=copy( datavenc.Text , 4 , 2);
    if(mes = '01')then
    begin
     VCLReport1.Report.Params.ParamByName('DATA').Value := dataVenc.Date
    end
    else
    }
   //  VCLReport1.Report.Params.ParamByName('DATA').Value := IncMonth(dataVenc.Date , -1);
   VCLReport1.Report.Params.ParamByName('DATA').Value := dataVenc.Date;

    VCLReport1.SaveToPDF('C:\home\rel_funcionarios\'+JvDBSearchComboBox1.Text+'REL_FUNCIONARIOS.pdf');
    mmo1.Lines.Add(SQLRA.Text + ' - '+ SQLRAZAOSOCIAL.Text);

    sql.Next;
  end
end;

procedure TfRelPcmo.BitBtn4Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'rel_emp_func_pcmso_antes.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('NOME').Value := JvDBSearchEdit2.Text;
  VCLReport1.Execute;
end;

procedure TfRelPcmo.BitBtn5Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'rel_emp_func_pcmso_antes.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('NOME').Value := 'TODOS AS EMPRESAS ATIVAS CADASTRADOS NO SISTEMA HJ';
  VCLReport1.Execute;
end;

procedure TfRelPcmo.BitBtn6Click(Sender: TObject);
var mes : string ;
begin
  VCLReport1.Filename := str_relatorio + 'rel_emp_func_pcmso_S.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('NOME').Value := 'TODOS AS EMPRESAS ATIVAS CADASTRADOS NO SISTEMA HJ';
  mes:=copy( datavenc.Text , 4 , 2);
   {
  if(mes = '01')then
  begin
   VCLReport1.Report.Params.ParamByName('DATA').Value := dataVenc.Date
  end
  else
  }
  //VCLReport1.Report.Params.ParamByName('DATA').Value := IncMonth(dataVenc.Date , -1);
  VCLReport1.Report.Params.ParamByName('DATA').Value := dataVenc.Date;
  VCLReport1.Execute;
end;

procedure TfRelPcmo.BitBtn7Click(Sender: TObject);
var mes : string ;
    SR: TSearchRec;
    I: integer;
begin
 { I := FindFirst('C:\home\rel_funcionarios\*.*', faAnyFile, SR);
  while I = 0 do begin if (SR.Attr and faDirectory) <> faDirectory then
  if not DeleteFile('C:\home\rel_funcionarios\' + SR.Name)
  then ShowMessage('Não foi possível excluir C:\home\rel_funcionarios\' + SR.Name);
  I := FindNext(SR);
 end;
  }
end;

procedure TfRelPcmo.BitBtn8Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'rel_emp_func_pcmso_antesDC.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('NOME').Value := JvDBSearchEdit2.Text;
  VCLReport1.Report.Params.ParamByName('DATAINI').Value := JvDateEdit1.Text;
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := JvDateEdit2.Text;
  VCLReport1.Execute;
end;

procedure TfRelPcmo.BitBtn9Click(Sender: TObject);
var mes : string ;
    SR: TSearchRec;
    I: integer;
begin
  // ira limpar o diretotio 1º
 
  I := FindFirst('C:\home\rel_funcionarios\*.*', faAnyFile, SR);
  while I = 0 do begin if (SR.Attr and faDirectory) <> faDirectory then
  if not DeleteFile('C:\home\rel_funcionarios\' + SR.Name)
  then ShowMessage('Não foi possível excluir C:\home\rel_funcionarios\' + SR.Name);
  I := FindNext(SR);
 end;

end;

end.
