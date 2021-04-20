unit uFiltroCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Mask,
  DBCtrls, Menus, Buttons, JvExMask, JvToolEdit, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, rpcompobase, rpvclreport, JvBaseEdits;

type
  TfFiltroCobranca = class(TForm)
    btnProcurar: TBitBtn;
    btnVoltar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Sair1: TMenuItem;
    DBEdit1: TDBEdit;
    sdsCliente: TSQLDataSet;
    sdsClienteCODCLIENTE: TIntegerField;
    sdsClienteNOMECLIENTE: TStringField;
    sdsClienteRAZAOSOCIAL: TStringField;
    sdsClienteCONTATO: TStringField;
    sdsClienteTIPOFIRMA: TSmallintField;
    sdsClienteCPF: TStringField;
    sdsClienteCNPJ: TStringField;
    sdsClienteINSCESTADUAL: TStringField;
    sdsClienteRG: TStringField;
    sdsClienteSEGMENTO: TSmallintField;
    sdsClienteREGIAO: TSmallintField;
    sdsClienteLIMITECREDITO: TFloatField;
    sdsClienteDATACADASTRO: TDateField;
    sdsClienteCODUSUARIO: TIntegerField;
    sdsClienteSTATUS: TSmallintField;
    sdsClienteHOMEPAGE: TStringField;
    sdsClientePRAZORECEBIMENTO: TSmallintField;
    sdsClientePRAZOENTREGA: TSmallintField;
    sdsClienteCODBANCO: TSmallintField;
    sdsClienteBASE_ICMS: TSmallintField;
    sdsClienteDATANASC: TDateField;
    sdsClienteCONTA_CLIENTE: TStringField;
    sdsClienteOBS: TStringField;
    sdsClienteTEM_IE: TStringField;
    sdsClienteID_COB: TIntegerField;
    sdsClienteDATARESC: TDateField;
    sdsClienteNOMEMAE: TStringField;
    sdsClienteSEXO: TStringField;
    sdsClienteFORMA_CORRESPOND: TStringField;
    sdsClienteGRUPO_CLIENTE: TStringField;
    sdsClienteCODINCLUCANC: TIntegerField;
    sdsClienteEXIST_COBERT: TStringField;
    sdsClienteEXISTCOPART: TStringField;
    sdsClienteDATAREINC: TDateField;
    sdsClienteGERAAVISO: TStringField;
    sdsClienteGERAENV: TStringField;
    sdsClienteGERABOL: TStringField;
    sdsClienteEMVIAGEM: TStringField;
    sdsClienteDTAALTERA: TDateField;
    sdsClienteSERIE: TStringField;
    sdsClienteCOD_FAIXA: TIntegerField;
    sdsClienteRA: TStringField;
    sdsClienteLIVRONASC: TStringField;
    sdsClienteUFNASC: TStringField;
    sdsClienteDATANASCIMENTO: TSQLTimeStampField;
    sdsClienteNUMERO: TIntegerField;
    sdsClienteSITUACAOESCOLAR: TStringField;
    sdsClienteESTADORG: TStringField;
    sdsClientePARCELA: TIntegerField;
    sdsClienteDATAEMISSAORG: TDateField;
    sdsClienteCOMUNICAALUNO: TStringField;
    sdsClienteCOD_ANS: TStringField;
    sdsClienteGERADEBITOAU: TStringField;
    sdsClienteNOMEBANCO: TStringField;
    sdsClienteTITULAR: TStringField;
    sdsClienteCODIGO_AGENCIA: TStringField;
    sdsClienteDIGITO_AGENCIA: TStringField;
    sdsClienteNUMERO_CONTA: TStringField;
    sdsClienteDIGITO_CONTA: TStringField;
    sdsClienteAGENCIA: TStringField;
    sdsClienteSITUACAO: TStringField;
    sdsClienteTIPO: TStringField;
    sdsClienteCNS: TStringField;
    sdsClienteN_CONTRATO: TStringField;
    sdsClienteCPF_D: TStringField;
    sdsClienteCC: TStringField;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsClienteCODCLIENTE: TIntegerField;
    cdsClienteNOMECLIENTE: TStringField;
    cdsClienteRAZAOSOCIAL: TStringField;
    cdsClienteCONTATO: TStringField;
    cdsClienteTIPOFIRMA: TSmallintField;
    cdsClienteCPF: TStringField;
    cdsClienteCNPJ: TStringField;
    cdsClienteINSCESTADUAL: TStringField;
    cdsClienteRG: TStringField;
    cdsClienteSEGMENTO: TSmallintField;
    cdsClienteREGIAO: TSmallintField;
    cdsClienteLIMITECREDITO: TFloatField;
    cdsClienteDATACADASTRO: TDateField;
    cdsClienteCODUSUARIO: TIntegerField;
    cdsClienteSTATUS: TSmallintField;
    cdsClienteHOMEPAGE: TStringField;
    cdsClientePRAZORECEBIMENTO: TSmallintField;
    cdsClientePRAZOENTREGA: TSmallintField;
    cdsClienteCODBANCO: TSmallintField;
    cdsClienteBASE_ICMS: TSmallintField;
    cdsClienteDATANASC: TDateField;
    cdsClienteCONTA_CLIENTE: TStringField;
    cdsClienteOBS: TStringField;
    cdsClienteTEM_IE: TStringField;
    cdsClienteID_COB: TIntegerField;
    cdsClienteDATARESC: TDateField;
    cdsClienteNOMEMAE: TStringField;
    cdsClienteSEXO: TStringField;
    cdsClienteFORMA_CORRESPOND: TStringField;
    cdsClienteGRUPO_CLIENTE: TStringField;
    cdsClienteCODINCLUCANC: TIntegerField;
    cdsClienteEXIST_COBERT: TStringField;
    cdsClienteEXISTCOPART: TStringField;
    cdsClienteDATAREINC: TDateField;
    cdsClienteGERAAVISO: TStringField;
    cdsClienteGERAENV: TStringField;
    cdsClienteGERABOL: TStringField;
    cdsClienteEMVIAGEM: TStringField;
    cdsClienteDTAALTERA: TDateField;
    cdsClienteSERIE: TStringField;
    cdsClienteCOD_FAIXA: TIntegerField;
    cdsClienteRA: TStringField;
    cdsClienteLIVRONASC: TStringField;
    cdsClienteUFNASC: TStringField;
    cdsClienteDATANASCIMENTO: TSQLTimeStampField;
    cdsClienteNUMERO: TIntegerField;
    cdsClienteSITUACAOESCOLAR: TStringField;
    cdsClienteESTADORG: TStringField;
    cdsClientePARCELA: TIntegerField;
    cdsClienteDATAEMISSAORG: TDateField;
    cdsClienteCOMUNICAALUNO: TStringField;
    cdsClienteCOD_ANS: TStringField;
    cdsClienteGERADEBITOAU: TStringField;
    cdsClienteNOMEBANCO: TStringField;
    cdsClienteTITULAR: TStringField;
    cdsClienteCODIGO_AGENCIA: TStringField;
    cdsClienteDIGITO_AGENCIA: TStringField;
    cdsClienteNUMERO_CONTA: TStringField;
    cdsClienteDIGITO_CONTA: TStringField;
    cdsClienteAGENCIA: TStringField;
    cdsClienteSITUACAO: TStringField;
    cdsClienteTIPO: TStringField;
    cdsClienteCNS: TStringField;
    cdsClienteN_CONTRATO: TStringField;
    cdsClienteCPF_D: TStringField;
    cdsClienteCC: TStringField;
    Label2: TLabel;
    DataSource1: TDataSource;
    DBEdit2: TDBEdit;
    BitBtn2: TBitBtn;
    DBComboBox1: TDBComboBox;
    JvDBGrid1: TJvDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    btnData: TBitBtn;
    meDta2: TJvDateEdit;
    meDta1: TJvDateEdit;
    sqlC: TSQLDataSet;
    dspC: TDataSetProvider;
    cdsC: TClientDataSet;
    dsC: TDataSource;
    sqlCCODCOB: TIntegerField;
    sqlCCODCLI: TIntegerField;
    sqlCCONTATO: TStringField;
    sqlCFORMA: TStringField;
    sqlCDATACADASTRO: TDateField;
    sqlCHORA: TTimeField;
    sqlCNUMERO_TITULO: TStringField;
    sqlCDATAEMI: TDateField;
    sqlCDATAVENC: TDateField;
    sqlCDATAPREV: TDateField;
    sqlCVALORNEGOCIADO: TFloatField;
    sqlCOBS: TMemoField;
    cdsCCODCOB: TIntegerField;
    cdsCCODCLI: TIntegerField;
    cdsCCONTATO: TStringField;
    cdsCFORMA: TStringField;
    cdsCDATACADASTRO: TDateField;
    cdsCHORA: TTimeField;
    cdsCNUMERO_TITULO: TStringField;
    cdsCDATAEMI: TDateField;
    cdsCDATAVENC: TDateField;
    cdsCDATAPREV: TDateField;
    cdsCVALORNEGOCIADO: TFloatField;
    cdsCOBS: TMemoField;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    BitBtn5: TBitBtn;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    sqsForma: TSQLDataSet;
    dspForma: TDataSetProvider;
    cdsForma: TClientDataSet;
    dsForma: TDataSource;
    btnF: TBitBtn;
    btnObs: TBitBtn;
    sqsFormaFORMA: TStringField;
    cdsFormaFORMA: TStringField;
    ComboBox1: TComboBox;
    Label3: TLabel;
    btnImprimir: TBitBtn;
    rep: TVCLReport;
    sqlCSTATUS: TStringField;
    sqlCRAZAOSOCIAL: TStringField;
    cdsCSTATUS: TStringField;
    cdsCRAZAOSOCIAL: TStringField;
    DBText1: TDBText;
    sqlCRA: TStringField;
    cdsCRA: TStringField;
    DBText2: TDBText;
    Imprimir1: TMenuItem;
    BuscarSocio1: TMenuItem;
    rP: TRadioButton;
    rA: TRadioButton;
    Label9: TLabel;
    Label10: TLabel;
    BitBtn1: TBitBtn;
    meDta4: TJvDateEdit;
    meDta3: TJvDateEdit;
    Label11: TLabel;
    Label12: TLabel;
    Edit2: TJvCalcEdit;
    Edit3: TJvCalcEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btfOClick(Sender: TObject);
    procedure btnDataClick(Sender: TObject);
    procedure btnObsClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure rAClick(Sender: TObject);
    procedure rPClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    grupo : string;
    SqlTexto , DataStr  : String;
  end;

var
  fFiltroCobranca: TfFiltroCobranca;

implementation

uses UProcuraGrupo, UDmSaude, uCobranca, UDm;

{$R *.dfm}

procedure TfFiltroCobranca.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfFiltroCobranca.FormShow(Sender: TObject);
begin
  if(cdsCliente.Active) then
    cdsCliente.Close;
    cdsCliente.Open;
  if(cdsForma.Active) then
    cdsForma.Close;
  cdsForma.Open;

  While not (cdsForma.Eof) do
  begin
    DBComboBox1.Items.Add(cdsFormaFORMA.AsString);
    cdsForma.Next;
   end;
  DBComboBox1.Text := '';
 {
  if(cdsDoc.Active) then
    cdsDoc.Close;
  cdsDoc.Open;

  While not (cdsDoc.Eof) do
  begin
    DBComboBox2.Items.Add(cdsDocCODDOC.AsString);
    cdsDoc.Next;
  end;

  DBComboBox2.Text := '';
  JvDBSearchEdit1.Text := '';
  JvDBSearchEdit2.Text := '';
  }
end;

procedure TfFiltroCobranca.BitBtn2Click(Sender: TObject);
begin
 // inherited;
  if(rA.Checked = True) then
  grupo := 'ASH';
  if(rP.Checked = True) then
  grupo := 'PCMSO';

  fProcuraGrupo := TfProcuraGrupo.Create(Application);

  if ( grupo = 'ASH') then
  begin
   fProcuraGrupo.Color := clSkyBlue;
  end;
  if ( grupo = 'PCMSO') then
  begin
   fProcuraGrupo.Color := clMoneyGreen;
  end;

  fProcuraGrupo := TfProcuraGrupo.Create(Application);
  if ( grupo = 'ASH') then  begin
  fProcuraGrupo.Color := clSkyBlue;
  end;
  if(DMSaude.procgrupo.Active) then
    DMSaude.procgrupo.Close;
    DMSaude.procgrupo.Params[0].AsString := grupo;
    DMSaude.procgrupo.Open;
   try
     fProcuraGrupo.ShowModal;
   if(cdsCliente.Active) then
     cdsCliente.Close;
     cdsCliente.Params[0].AsInteger := DMSaude.procgrupoCODCLIENTE.AsInteger;
     cdsCliente.Open;
  {
  if DMSaude.cdsEndereco.Active then
    DMSaude.cdsEndereco.Close;
     DMSaude.cdsEndereco.Params[0].AsInteger := DMSaude.cdsClienteCODCLIENTE.AsInteger;
     DMSaude.cdsEndereco.Open;
  }   
  finally
    fProcuraGrupo.Free;
  end;
end;

procedure TfFiltroCobranca.btnProcurarClick(Sender: TObject);

begin

  if(rA.Checked = True) then
  grupo := 'ASH';
  if(rP.Checked = True) then
  grupo := 'PCMSO';

  sqlTexto := '';
  datastr:='  /  /    ';
  if cdsC.Active then
    cdsC.Close;
  begin
    cdsC.CommandText:= 'select  mov.* ,cli.razaosocial,cli.ra from COBRANCA1 mov inner join CLIENTES cli on cli.CODCLIENTE = mov.CODCLI';


  // Grupo
  if(grupo = 'ASH') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.GRUPO = '
    else
      sqlTexto := sqlTexto + ' and mov.GRUPO = ';
      sqlTexto := sqlTexto +  QuotedStr(grupo);
  end;
  // Grupo
  if(grupo = 'PCMSO') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.GRUPO = '
    else
      sqlTexto := sqlTexto + ' and mov.GRUPO = ';
      sqlTexto := sqlTexto +  QuotedStr(grupo);
  end;



  // CODIGO DO SOCIO
  if(DBEdit1.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.CODCLI = '
    else
      sqlTexto := sqlTexto + ' and mov.CODCLI = ';
      sqlTexto := sqlTexto + '' + DBEdit1.Text + '';
  end;
  // DATA CADASTRO
  if (medta1.Text<>datastr) then
  if (medta2.Text<>datastr) then
  begin
    sqlTexto := ' where mov.DATACADASTRO  between ';
    sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', medta1.Date) + '''' +
      ' and ' +
      '''' + formatdatetime('mm/dd/yy', medta2.Date) + '''';
  end;

  // DATA PREVISÃO PGTO
  if (medta3.Text<>datastr) then
  if (medta4.Text<>datastr) then
  begin
    sqlTexto := ' where mov.DATAPREV  between ';
    sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', medta3.Date) + '''' +
      ' and ' +
      '''' + formatdatetime('mm/dd/yy', medta4.Date) + '''';
  end;

  DecimalSeparator := '.';
  // VALOR
  if (Edit2.Text <> '') then
  if (Edit3.Text <> '') then
  begin
    sqlTexto := ' where mov.VALORNEGOCIADO  between ';
    sqlTexto := sqlTexto +  FloatToStr(Edit2.Value)  +
      ' and ' +
      FloatToStr(Edit3.Value)  ;
  end;

  // DEPARTAMENTO
 if (DBComboBox1.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.FORMA = '
    else
      sqlTexto := sqlTexto + ' and mov.FORMA = ';
      sqlTexto := sqlTexto + QuotedStr(DBComboBox1.Text);
  end;
  // STATUS
  if (ComboBox1.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.STATUS = '
    else
      sqlTexto := sqlTexto + ' and mov.STATUS = ';
      sqlTexto := sqlTexto + QuotedStr(ComboBox1.Text);
  end;

  //OBS
  if Edit1.Text <> '' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.OBS LIKE '
    else
      sqlTexto := sqlTexto + ' and mov.OBS LIKE';
      sqlTexto := sqlTexto +  QuotedStr('%' + Edit1.Text + '%');
  end;
  // N º DA CAIXA
 { if (Edit2.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where NUMCAI = '
    else
      sqlTexto := sqlTexto + ' and NUMCAI = ';
      sqlTexto := sqlTexto + QuotedStr(Edit2.Text);
  end;
   }
  cdsC.CommandText := cdsC.CommandText + sqlTexto;
  cdsC.Open;
  DecimalSeparator := ',';

  Label7.Caption := IntToStr(cdsC.RecordCount);

  if( cdsC.RecordCount = 0 ) then
  MessageDlg('Não existe dados para essa Consulta !', mtInformation, [mbOK], 0);

  end ;

end;

procedure TfFiltroCobranca.BitBtn5Click(Sender: TObject);
begin
  DBEdit1.Text := '';
  DBEdit2.Text := '';
  DBEdit4.Text := '';
 
end;

procedure TfFiltroCobranca.btnVoltarClick(Sender: TObject);
begin
  if(DMSaude.cdsCob.Active) then
    DMSaude.cdsCob.Close;
    DMSaude.cdsCob.Params[0].AsInteger := cdsCCODCLI.AsInteger;
    DMSaude.cdsCob.Params[1].AsInteger := cdsCCODCOB.AsInteger;
  DMSaude.cdsCob.Open;
  DMSaude.cdsCob.Refresh;

  if(cdsCliente.Active) then
    cdsCliente.Close;
    cdsCliente.Params[0].AsInteger := cdsCCODCLI.AsInteger;
    cdsCliente.Open;
  
  fCobranca.Edit1.Text:= cdsClienteNOMECLIENTE.AsString;
  fCobranca.Edit2.Text := cdsClienteRA.AsString;
  fCobranca.Label1.Caption:= cdsClienteNOMECLIENTE.AsString;
  fCobranca.Label2.Caption:= cdsClienteNOMECLIENTE.AsString;

  fFiltroCobranca.Close;
end;

procedure TfFiltroCobranca.btfOClick(Sender: TObject);
begin
  DBComboBox1.Text := '';
end;

procedure TfFiltroCobranca.btnDataClick(Sender: TObject);
begin
  meDta1.Text := '';
  meDta2.Text := '';
end;

procedure TfFiltroCobranca.btnObsClick(Sender: TObject);
begin
  Edit1.Text := '';
end;

procedure TfFiltroCobranca.btnImprimirClick(Sender: TObject);
//  var data1,data2 :TRpLabel;
begin

  rep.Filename := str_relatorio + 'cobranca.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
 // sql2 := 'SELECT * ' +
 //   'FROM LANCAPROCSAUDEPROC(';
  rep.Report.DataInfo.Items[0].SQL:= cdsC.CommandText;//+ sqlTexto;

 {
  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel4'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel8'));

  if JvDateEdit1.text <> '' then
  begin
  if Assigned(data1) then
    data1.Text := dataX.Text;
  if Assigned(data2) then
    data2.Text := dataY.Text;
  end;
 }
  rep.Execute;

end;

procedure TfFiltroCobranca.rAClick(Sender: TObject);
begin
  fFiltroCobranca.Color := clSkyBlue;
  if cdsC.Active then
    cdsC.Close;
  DBEdit1.Text := '';
  DBEdit2.Text := '';
  DBEdit4.Text := '';
end;

procedure TfFiltroCobranca.rPClick(Sender: TObject);
begin
  fFiltroCobranca.Color := clMoneyGreen;
  if cdsC.Active then
    cdsC.Close;
  DBEdit1.Text := '';
  DBEdit2.Text := '';
  DBEdit4.Text := '';    
end;

procedure TfFiltroCobranca.BitBtn1Click(Sender: TObject);
begin
  meDta3.Text := '';
  meDta4.Text := '';
end;

procedure TfFiltroCobranca.JvDBGrid1TitleClick(Column: TColumn);
begin
  cdsC.IndexFieldNames := Column.FieldName;
end;

end.
