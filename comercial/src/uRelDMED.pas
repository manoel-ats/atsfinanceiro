unit uRelDMED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, Mask,
  rpcompobase, rpvclreport, Buttons, FMTBcd, SqlExpr, Provider, DB,
  DBClient,rplabelitem;

type
  TfRelDMED = class(TForm)
    btnMen: TBitBtn;
    VCLReport1: TVCLReport;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    meDta5: TMaskEdit;
    meDta6: TMaskEdit;
    BitBtn1: TBitBtn;
    edCliente: TJvDBSearchEdit;
    edCodCliente: TEdit;
    btnLimpa: TBitBtn;
    fgrupo: TBitBtn;
    cds12: TClientDataSet;
    dsp12: TDataSetProvider;
    sql12: TSQLDataSet;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider3: TDataSetProvider;
    cdsClienteBusca: TClientDataSet;
    cdsClienteBuscaCODCLIENTE: TIntegerField;
    cdsClienteBuscaNOMECLIENTE: TStringField;
    cdsClienteBuscaRAZAOSOCIAL: TStringField;
    cdsClienteBuscaRA: TStringField;
    DataSource1: TDataSource;
    Edit2: TEdit;
    sqlI: TSQLDataSet;
    dspI: TDataSetProvider;
    dsI: TClientDataSet;
    sqlICODPRODUTO: TIntegerField;
    sqlIPRECO: TFloatField;
    sqlIPAGO: TFloatField;
    sqlIPR: TFloatField;
    sqlIREEMBOLSO: TFloatField;
    sqlICONTROLE: TSmallintField;
    sqlICODRECEBIMENTO: TIntegerField;
    sqlIDATAVENCIMENTO: TDateField;
    sqlICOD_COMISSAO: TIntegerField;
    sqlINOMEFORNECEDOR: TStringField;
    sqlITIPOFIRMA: TIntegerField;
    sqlICNPJ: TStringField;
    sqlIVALORUNITARIOATUAL: TFloatField;
    sqlIPRECOCUSTO: TFloatField;
    sqlIRA: TStringField;
    sqlIRAZAOSOCIAL: TStringField;
    sqlINOMECLIENTE: TStringField;
    sqlICLI_CPF: TStringField;
    sqlISITUACAOESCOLAR: TStringField;
    sqlISEXO: TStringField;
    sqlIDATANASC: TDateField;
    sqlIVALORANT: TFloatField;
    dsICODPRODUTO: TIntegerField;
    dsIPRECO: TFloatField;
    dsIPAGO: TFloatField;
    dsIPR: TFloatField;
    dsIREEMBOLSO: TFloatField;
    dsICONTROLE: TSmallintField;
    dsICODRECEBIMENTO: TIntegerField;
    dsIDATAVENCIMENTO: TDateField;
    dsICOD_COMISSAO: TIntegerField;
    dsINOMEFORNECEDOR: TStringField;
    dsITIPOFIRMA: TIntegerField;
    dsICNPJ: TStringField;
    dsIVALORUNITARIOATUAL: TFloatField;
    dsIPRECOCUSTO: TFloatField;
    dsIRA: TStringField;
    dsIRAZAOSOCIAL: TStringField;
    dsINOMECLIENTE: TStringField;
    dsICLI_CPF: TStringField;
    dsISITUACAOESCOLAR: TStringField;
    dsISEXO: TStringField;
    dsIDATANASC: TDateField;
    dsIVALORANT: TFloatField;
    BitBtn4: TBitBtn;
    sqlBR: TSQLDataSet;
    dspBR: TDataSetProvider;
    cdsBR: TClientDataSet;
    sqlTR: TSQLDataSet;
    dspTR: TDataSetProvider;
    cdsTR: TClientDataSet;
    sqlTRRA: TStringField;
    sqlTRRAZAOSOCIAL: TStringField;
    sqlTRCLI_CPF: TStringField;
    sqlTRLOGRADOURO: TStringField;
    sqlTRBAIRRO: TStringField;
    sqlTRCOMPLEMENTO: TStringField;
    sqlTRCIDADE: TStringField;
    sqlTRUF: TStringField;
    sqlTRCEP: TStringField;
    sqlTRRAMAL: TStringField;
    cdsTRRA: TStringField;
    cdsTRRAZAOSOCIAL: TStringField;
    cdsTRCLI_CPF: TStringField;
    cdsTRLOGRADOURO: TStringField;
    cdsTRBAIRRO: TStringField;
    cdsTRCOMPLEMENTO: TStringField;
    cdsTRCIDADE: TStringField;
    cdsTRUF: TStringField;
    cdsTRCEP: TStringField;
    cdsTRRAMAL: TStringField;
    sqlBRRA: TStringField;
    sqlBRRAZAOSOCIAL: TStringField;
    sqlBRCLI_CPF: TStringField;
    cdsBRRA: TStringField;
    cdsBRRAZAOSOCIAL: TStringField;
    cdsBRCLI_CPF: TStringField;
    bt_relDmed: TBitBtn;
    SQLDataSet2: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cdsV: TClientDataSet;
    SQLDataSet2RA: TStringField;
    SQLDataSet2RAZAOSOCIAL: TStringField;
    SQLDataSet2CLI_CPF: TStringField;
    SQLDataSet2LOGRADOURO: TStringField;
    SQLDataSet2BAIRRO: TStringField;
    SQLDataSet2COMPLEMENTO: TStringField;
    SQLDataSet2CIDADE: TStringField;
    SQLDataSet2UF: TStringField;
    SQLDataSet2CEP: TStringField;
    SQLDataSet2RAMAL: TStringField;
    cdsVRA: TStringField;
    cdsVRAZAOSOCIAL: TStringField;
    cdsVCLI_CPF: TStringField;
    cdsVLOGRADOURO: TStringField;
    cdsVBAIRRO: TStringField;
    cdsVCOMPLEMENTO: TStringField;
    cdsVCIDADE: TStringField;
    cdsVUF: TStringField;
    cdsVCEP: TStringField;
    cdsVRAMAL: TStringField;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Memo1: TMemo;
    Label2: TLabel;
    SQLDataSet3: TSQLDataSet;
    DataSetProvider2: TDataSetProvider;
    cdsCC: TClientDataSet;
    BitBtn2: TBitBtn;
    SQLDataSet3RA: TStringField;
    SQLDataSet3RAZAOSOCIAL: TStringField;
    SQLDataSet3LOGRADOURO: TStringField;
    SQLDataSet3BAIRRO: TStringField;
    SQLDataSet3COMPLEMENTO: TStringField;
    SQLDataSet3CIDADE: TStringField;
    SQLDataSet3UF: TStringField;
    SQLDataSet3CEP: TStringField;
    SQLDataSet3RAMAL: TStringField;
    cdsCCRA: TStringField;
    cdsCCRAZAOSOCIAL: TStringField;
    cdsCCLOGRADOURO: TStringField;
    cdsCCBAIRRO: TStringField;
    cdsCCCOMPLEMENTO: TStringField;
    cdsCCCIDADE: TStringField;
    cdsCCUF: TStringField;
    cdsCCCEP: TStringField;
    cdsCCRAMAL: TStringField;
    procedure btnMenClick(Sender: TObject);
    procedure fgrupoClick(Sender: TObject);
    procedure edCodClienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edClienteExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure bt_relDmedClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelDMED: TfRelDMED;
    grupo : string;
implementation

uses UProcuraGrupo, UDmSaude, UDm;

{$R *.dfm}

procedure TfRelDMED.btnMenClick(Sender: TObject);
var sqlRC : string ;
begin

if cds12.Active then
    cds12.Close;
    sqlRC := 'select  sum(preco)as preco , sum(pago) as pago , sum(pr) as pr ,sum(reembolso) as reembolso, controle ,  cod_comissao ,' +
    'nomefornecedor , tipofirma , cnpj , sum(valorunitarioatual) as valorunitarioatual ,sum(precocusto)as precocusto , nomecliente , cli_cpf '+
    'from D_2012D where  razaosocial = ';

   sqlRC := sqlRC + QuotedStr(edCliente.Text) ;
  // sqlRC := sqlRC + QuotedStr(edCliente.Text) + ',';

    // Data Recebimento
 //  sqlRC := sqlRC + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
 //  sqlRC := sqlRC + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ')';

   sqlRC := sqlRC + 'group by controle ,cod_comissao, nomefornecedor, tipofirma, cnpj,valorunitarioatual, nomecliente, cli_cpf ';

   cds12.CommandText := sqlRC ;

   cds12.Open;
   VCLReport1.FileName := str_relatorio + 'D_2012D.rep';
   VCLReport1.Title := str_relatorio + 'D_2012D.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlRC  ;
  // VCLReport1.Execute;
   VCLReport1.SaveToPDF('C:\home\rel_dmed_2012\' + edCodCliente.Text +'.pdf');
end;

procedure TfRelDMED.fgrupoClick(Sender: TObject);
begin
  grupo := 'ASH';
  fProcuraGrupo := TfProcuraGrupo.Create(Application);
  if ( grupo = 'ASH') then  begin
  fProcuraGrupo.Color := clSkyBlue;
  end;
  if DMSaude.procgrupo.Active then
    DMSaude.procgrupo.Close;
     DMSaude.procgrupo.Params[0].AsString := grupo;
     DMSaude.procgrupo.Open;
   try
     fProcuraGrupo.ShowModal;
    edCodCliente.Text := DMSaude.procgrupoRA.AsString;
    edCliente.Text := DMSaude.procgrupoNOMECLIENTE.AsString;
  finally
    fProcuraGrupo.Free;
  end;
end;

procedure TfRelDMED.edCodClienteExit(Sender: TObject);
begin 
 cdsClienteBusca.Locate('RA',edCodCliente.Text,[loCaseInsensitive]);
end;

procedure TfRelDMED.FormShow(Sender: TObject);
begin
    cdsClienteBusca.Params[0].AsString := 'ASH';
    cdsClienteBusca.Open;
    edCliente.Text := '';
    edCodCliente.Text := '';
end;

procedure TfRelDMED.edClienteExit(Sender: TObject);
begin
  edCodCliente.Text := IntToStr(cdsClienteBuscaRA.asInteger);
  Edit2.Text := IntToStr(cdsClienteBuscaCODCLIENTE.asInteger);
end;

procedure TfRelDMED.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfRelDMED.BitBtn3Click(Sender: TObject);
var  sqlR : string ;
begin
  cdsTR.Open;
  while not (cdsTR.Eof) do
  begin

   if (cdsBR.Active) then
    cdsBR.Close;
   sqlR := 'SELECT * FROM  REL_DMED_11(';
   sqlR := sqlR + QuotedStr(cdsTRRAZAOSOCIAL.AsString) + ')';

   cdsBR.CommandText := sqlR ;
   cdsBR.Open;

   VCLReport1.FileName := str_relatorio + 'dmed_2011.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;

  { IF(Checkpdf.Checked = TRUE) THEN
   BEGIN
    VCLReport1.SaveToPDF('C:\teste_rel_dmed\' + cdsTRRA.Value +'V_DMED.pdf');
   END ELSE

   VCLReport1.Execute;
   }
  // VCLReport1.Title := cdsTRRA.Value ;

   cdsTR.Next;

  end;
end;

procedure TfRelDMED.BitBtn4Click(Sender: TObject);
var sqlRC : string ;
 ra , nome ,ende ,compl :TRpLabel;
begin
  cdsTR.Open;
  while not (cdsTR.Eof) do
  begin

  if cds12.Active then
    cds12.Close;
 //  if (cdsBR.Active) then
//    cdsBR.Close;

   sqlRC := 'select  sum(preco)as preco , sum(pago) as pago , sum(pr) as pr ,sum(reembolso) as reembolso, controle ,  cod_comissao ,' +
    'nomefornecedor , tipofirma , cnpj , sum(valorunitarioatual) as valorunitarioatual ,sum(precocusto)as precocusto , nomecliente , cli_cpf '+
    'from D_2012D where  razaosocial = ';
   sqlRC := sqlRC + QuotedStr(cdsTRRAZAOSOCIAL.AsString) ;
   sqlRC := sqlRC + 'group by controle ,cod_comissao, nomefornecedor, tipofirma, cnpj,valorunitarioatual, nomecliente, cli_cpf ';

 //  cdsBR.CommandText := sqlRC ;
 //  cdsBR.Open;
   cds12.CommandText := sqlRC ;
   Edit1.Text := cdsTRRA.Text;
   Edit3.Text := cdsTRRAZAOSOCIAL.Text;
   Edit4.Text := cdsTRCOMPLEMENTO.Text;


  //  ende:=TRpLabel(rep.Report.FindComponent('TRpLabel17'));


   cds12.Open;

   if(cdsTRCLI_CPF.AsString = '')then
   begin
     VCLReport1.FileName := str_relatorio + 'D_2012D_MENOR_VA.rep';
   end else

   VCLReport1.FileName := str_relatorio + 'D_2012D_VA.rep';


   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlRC  ;

   ra:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel15'));
   nome:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));
   compl:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel17'));


   if meDta5.text <> '' then
   begin
     ra.Text := Edit1.Text;
     nome.Text := Edit3.Text ;
     compl.Text := Edit4.Text ;
   end;



    VCLReport1.SaveToPDF('C:\home\rel_dmed_2012\' + cdsTRRA.Value +'V_DMED.pdf');
  {
   IF(Checkpdf.Checked = TRUE) THEN
   BEGIN
    VCLReport1.SaveToPDF('C:\home\rel_dmed_2012\' + cdsTRRA.Value +'V_DMED.pdf');
   END ELSE
   VCLReport1.Execute;
   }
  // VCLReport1.Title := cdsTRRA.Value ;

   Memo1.Lines.Add(Edit1.Text +'-'+ Edit3.Text);
   cdsTR.Next;

  end;

  Label2.Caption := IntToStr(cdsTR.RecordCount);
  MessageDlg('Fim a Geração dos Arquivo PDF', mtInformation, [mbOK], 0);
end;

procedure TfRelDMED.bt_relDmedClick(Sender: TObject);
var sqlRC : string ;
 ra , nome  :TRpLabel;
begin
  cdsV.Open;
  while not (cdsV.Eof) do
  begin

  if cds12.Active then
    cds12.Close;
 //  if (cdsBR.Active) then
//    cdsBR.Close;

   sqlRC := 'select  sum(preco)as preco , sum(pago) as pago , sum(pr) as pr ,sum(reembolso) as reembolso, controle ,  cod_comissao ,' +
    'nomefornecedor , tipofirma , cnpj , sum(valorunitarioatual) as valorunitarioatual ,sum(precocusto)as precocusto , nomecliente , cli_cpf '+
    'from D_2012D where  razaosocial = ';
   sqlRC := sqlRC + QuotedStr(cdsVRAZAOSOCIAL.AsString) ;
   sqlRC := sqlRC + 'group by controle ,cod_comissao, nomefornecedor, tipofirma, cnpj,valorunitarioatual, nomecliente, cli_cpf ';

 //  cdsBR.CommandText := sqlRC ;
 //  cdsBR.Open;
   cds12.CommandText := sqlRC ;
   Edit1.Text := cdsVRA.Text;
   Edit3.Text := cdsVRAZAOSOCIAL.Text;


   cds12.Open;

   if(cdsVCLI_CPF.AsString = '')then
   begin
     VCLReport1.FileName := str_relatorio + 'D_2012D_MENOR.rep';
   end else

   VCLReport1.FileName := str_relatorio + 'D_2012D.rep';


   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlRC  ;

   ra:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel15'));
   nome:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));



   if meDta5.text <> '' then
   begin
     ra.Text := Edit1.Text;
     nome.Text := Edit3.Text ;

   end;



    VCLReport1.SaveToPDF('C:\home\rel_dmed_2012\' + cdsVRA.Value +'C_DMED.pdf');
  {
   IF(Checkpdf.Checked = TRUE) THEN
   BEGIN
    VCLReport1.SaveToPDF('C:\home\rel_dmed_2012\' + cdsTRRA.Value +'V_DMED.pdf');
   END ELSE
   VCLReport1.Execute;
   }
  // VCLReport1.Title := cdsTRRA.Value ;

   Memo1.Lines.Add(Edit1.Text +'-'+ Edit3.Text);
   cdsV.Next;

  end;
 // Label2.Caption := IntToStr(cdsTR.RecordCount);
  MessageDlg('Fim a Geração dos Arquivo PDF', mtInformation, [mbOK], 0);

end;

procedure TfRelDMED.BitBtn2Click(Sender: TObject);
var sqlRC : string ;
 ra , nome  :TRpLabel;
begin
{  cdsCC.Open;
  while not (cdsCC.Eof) do
  begin

  if cds12.Active then
    cds12.Close;
 //  if (cdsBR.Active) then
//    cdsBR.Close;

   sqlRC := 'select  sum(preco)as preco , sum(pago) as pago , sum(pr) as pr ,sum(reembolso) as reembolso, controle ,  cod_comissao ,' +
    'nomefornecedor , tipofirma , cnpj , sum(valorunitarioatual) as valorunitarioatual ,sum(precocusto)as precocusto , nomecliente , cli_cpf '+
    'from D_2012D where  razaosocial = ';
   sqlRC := sqlRC + QuotedStr(cdsCCRAZAOSOCIAL.AsString) ;
   sqlRC := sqlRC + 'group by controle ,cod_comissao, nomefornecedor, tipofirma, cnpj,valorunitarioatual, nomecliente, cli_cpf ';

 //  cdsBR.CommandText := sqlRC ;
 //  cdsBR.Open;
   cds12.CommandText := sqlRC ;
   Edit1.Text := cdsCCRA.Text;
   Edit3.Text := cdsCCRAZAOSOCIAL.Text;


   cds12.Open;

   if(cds12CLI_CPF.AsString = '')then
   begin
     VCLReport1.FileName := str_relatorio + 'D_2012D_MENOR.rep';
   end else

   VCLReport1.FileName := str_relatorio + 'D_2012D.rep';


   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlRC  ;

   ra:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel15'));
   nome:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));



   if meDta5.text <> '' then
   begin
     ra.Text := Edit1.Text;
     nome.Text := Edit3.Text ;

   end;



    VCLReport1.SaveToPDF('C:\home\rel_dmed_2012\' + cdsCCRA.Value +'C_DMED.pdf');
  {
   IF(Checkpdf.Checked = TRUE) THEN
   BEGIN
    VCLReport1.SaveToPDF('C:\home\rel_dmed_2012\' + cdsTRRA.Value +'V_DMED.pdf');
   END ELSE
   VCLReport1.Execute;
   }
  // VCLReport1.Title := cdsTRRA.Value ;

 //  Memo1.Lines.Add(Edit1.Text +'-'+ Edit3.Text);
 //  cdsCC.Next;

 // end;
 // Label2.Caption := IntToStr(cdsTR.RecordCount);
 // MessageDlg('Fim a Geração dos Arquivo PDF', mtInformation, [mbOK], 0);


end;

end.
