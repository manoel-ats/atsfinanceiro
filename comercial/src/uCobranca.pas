unit uCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  Mask, DBCtrls, FMTBcd, DBClient, Provider, SqlExpr ,DBxPress;

type
  TfCobranca = class(TfPai)
    btnP: TBitBtn;
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
    dspCliente: TDataSetProvider;
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
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBMemo1: TDBMemo;
    cdsCob: TClientDataSet;
    dspCob: TDataSetProvider;
    sdsCob: TSQLDataSet;
    sdsCobCODCOB: TIntegerField;
    sdsCobCODCLI: TIntegerField;
    sdsCobCONTATO: TStringField;
    sdsCobFORMA: TStringField;
    sdsCobDATACADASTRO: TDateField;
    sdsCobHORA: TTimeField;
    sdsCobNUMERO_TITULO: TStringField;
    sdsCobDATAEMI: TDateField;
    sdsCobDATAVENC: TDateField;
    sdsCobDATAPREV: TDateField;
    sdsCobVALORNEGOCIADO: TFloatField;
    sdsCobOBS: TMemoField;
    sdsCobRAZAOSOCIAL: TStringField;
    cdsCobCODCOB: TIntegerField;
    cdsCobCODCLI: TIntegerField;
    cdsCobCONTATO: TStringField;
    cdsCobFORMA: TStringField;
    cdsCobDATACADASTRO: TDateField;
    cdsCobHORA: TTimeField;
    cdsCobNUMERO_TITULO: TStringField;
    cdsCobDATAEMI: TDateField;
    cdsCobDATAVENC: TDateField;
    cdsCobDATAPREV: TDateField;
    cdsCobVALORNEGOCIADO: TFloatField;
    cdsCobOBS: TMemoField;
    cdsCobRAZAOSOCIAL: TStringField;
    sdsCobSTATUS: TStringField;
    cdsCobSTATUS: TStringField;
    Edit1: TEdit;
    Edit2: TEdit;
    Label5: TLabel;
    Label18: TLabel;
    rA: TRadioButton;
    rP: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnPClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rAClick(Sender: TObject);
    procedure rPClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCobranca: TfCobranca;
   grupo : string;
implementation

uses uFiltroCobranca, UProcuraGrupo, UDmSaude, UDm;

{$R *.dfm}

procedure TfCobranca.FormCreate(Sender: TObject);
begin
 // inherited;

end;

procedure TfCobranca.btnProcurarClick(Sender: TObject);
begin
  // inherited;
  DBEdit1.Text := '';
  DBEdit2.Text := '';
  Edit1.Text:= '';
  Edit2.Text := '';
  DBEdit1.Enabled := False;
  DBEdit2.Enabled := False;
  btnP.Enabled := False;

  fFiltroCobranca := TfFiltroCobranca.Create(Application);
  try
    fFiltroCobranca.Color := clSkyBlue;
    fFiltroCobranca.ShowModal;
  finally
    fFiltroCobranca.Free;
  end;
end;

procedure TfCobranca.btnPClick(Sender: TObject);
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
  Edit1.Text := cdsClienteNOMECLIENTE.AsString;
  Edit2.Text := cdsClienteRA.AsString;
  DMSaude.cdsCobCODCLI.AsInteger := cdsClienteCODCLIENTE.AsInteger;
  DBEdit7.SetFocus;
end;

procedure TfCobranca.btnGravarClick(Sender: TObject);
begin
    if DtSrc.DataSet.State in [dsInsert] then
    begin
      if(DM.c_6_genid.Active) then
        DM.c_6_genid.Close;
      DM.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CODCOB, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      DM.c_6_genid.Open;
      DMSaude.cdsCobCODCOB.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      DMSaude.cdsCobCODCLI.AsInteger := StrToInt(DBEdit1.Text);

      if(rA.Checked = True) then
        grupo := 'ASH';
      if(rP.Checked = True) then
        grupo := 'PCMSO';
      DMSaude.cdsCobGRUPO.AsString := grupo ;
    end;
  inherited;

end;

procedure TfCobranca.btnExcluirClick(Sender: TObject);
var TD: TTransactionDesc;
    strSql : string;
begin
 // inherited;
   strSql := 'UPDATE COBRANCA1 SET STATUS = ' + QuotedStr('I') + ' WHERE CODCOB = ' + IntToStr(cdsCobCODCOB.AsInteger);

    Try
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       dm.sqlsisAdimin.Commit(TD);
       MessageDlg('Alterado para Inativo', mtInformation, [mbOK], 0);
       fCobranca.cdsCob.Refresh;
    except
       dm.sqlsisAdimin.Rollback(TD);
       MessageDlg('Erro ao mudar Status para Inativo .', mtError,
           [mbOk], 0);
    end;
end;

procedure TfCobranca.btnIncluirClick(Sender: TObject);
begin
  //  DtSrc.DataSet.Insert;
  inherited;
    if (DtSrc.DataSet.State in [dsInsert]) then
    begin
      DMSaude.cdsCobDATACADASTRO.AsDateTime := now;
      DMSaude.cdsCobHORA.AsDateTime := now;
      DMSaude.cdsCobSTATUS.AsString := 'A';
    end;
  DBEdit1.Enabled := True;
  DBEdit2.Enabled := True;
  btnP.Enabled := True;
  rA.Enabled := True;
  rP.Enabled := True;
  Label1.Caption:= '';
  Label2.Caption:= '';
  Edit1.Text := '';
  Edit2.Text := '';
  
end;

procedure TfCobranca.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DBEdit1.Text := '';
  DBEdit2.Text := '';
  Edit1.Text := '';
  Edit2.Text := '';
  DBEdit1.Enabled := False;
  DBEdit2.Enabled := False;
  btnP.Enabled := False;
  rA.Enabled := False;
  rP.Enabled := False;
end;

procedure TfCobranca.FormShow(Sender: TObject);
begin
  inherited;
  Label1.Caption:= '';
  Label2.Caption:= '';
end;


procedure TfCobranca.rAClick(Sender: TObject);
begin
//  inherited;
  fCobranca.Color := clSkyBlue;
end;

procedure TfCobranca.rPClick(Sender: TObject);
begin
 // inherited;
  fCobranca.Color := clMoneyGreen;
end;

end.

