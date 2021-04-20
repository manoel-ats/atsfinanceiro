unit uFornecedorCadastroSaude;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus,  StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBClient, Provider, SqlExpr, DBCtrls, Mask, uPai, JvExStdCtrls,
  JvRadioButton, JvCheckBox, XPMenu;

type
  TfFornecedorCadastroSaude = class(TfPai)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    dbeCNPJ: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    sds_fornecedor: TSQLDataSet;
    sds_fornecedorCODFORNECEDOR: TIntegerField;
    sds_fornecedorCONTATO: TStringField;
    sds_fornecedorTIPOFIRMA: TSmallintField;
    sds_fornecedorCPF: TStringField;
    sds_fornecedorCNPJ: TStringField;
    sds_fornecedorINSCESTADUAL: TStringField;
    sds_fornecedorRG: TStringField;
    sds_fornecedorSEGMENTO: TSmallintField;
    sds_fornecedorREGIAO: TSmallintField;
    sds_fornecedorLIMITECREDITO: TFloatField;
    sds_fornecedorDATACADASTRO: TDateField;
    sds_fornecedorCODUSUARIO: TIntegerField;
    sds_fornecedorSTATUS: TSmallintField;
    sds_fornecedorHOMEPAGE: TStringField;
    sds_fornecedorPRAZOPAGAMENTO: TSmallintField;
    sds_fornecedorPRAZOENTREGA: TSmallintField;
    dsp_fornecedor: TDataSetProvider;
    cds_fornecedor: TClientDataSet;
    cds_fornecedorCODFORNECEDOR: TIntegerField;
    cds_fornecedorCONTATO: TStringField;
    cds_fornecedorTIPOFIRMA: TSmallintField;
    cds_fornecedorCPF: TStringField;
    cds_fornecedorCNPJ: TStringField;
    cds_fornecedorINSCESTADUAL: TStringField;
    cds_fornecedorRG: TStringField;
    cds_fornecedorSEGMENTO: TSmallintField;
    cds_fornecedorREGIAO: TSmallintField;
    cds_fornecedorLIMITECREDITO: TFloatField;
    cds_fornecedorDATACADASTRO: TDateField;
    cds_fornecedorCODUSUARIO: TIntegerField;
    cds_fornecedorSTATUS: TSmallintField;
    cds_fornecedorHOMEPAGE: TStringField;
    cds_fornecedorPRAZOPAGAMENTO: TSmallintField;
    cds_fornecedorPRAZOENTREGA: TSmallintField;
    DBText1: TDBText;
    DBText2: TDBText;
    ComboBox1: TComboBox;
    Label13: TLabel;
    sds_fornecedorCONTA_FORNECEDOR: TStringField;
    cds_fornecedorCONTA_FORNECEDOR: TStringField;
    Label14: TLabel;
    rbAsh: TJvCheckBox;
    rbPcmso: TJvCheckBox;
    rbFinanceiro: TJvCheckBox;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    sds_fornecedorSITUACAO: TStringField;
    sds_fornecedorDATAEVENTO: TDateField;
    sds_fornecedorANS: TStringField;
    cds_fornecedorSITUACAO: TStringField;
    cds_fornecedorDATAEVENTO: TDateField;
    cds_fornecedorANS: TStringField;
    sds_fornecedorTIPODEC: TIntegerField;
    cds_fornecedorTIPODEC: TIntegerField;
    sds_fornecedorCNS: TStringField;
    cds_fornecedorCNS: TStringField;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    sds_fornecedorNOMEFORNECEDOR: TStringField;
    sds_fornecedorRAZAOSOCIAL: TStringField;
    cds_fornecedorNOMEFORNECEDOR: TStringField;
    cds_fornecedorRAZAOSOCIAL: TStringField;
    btnap: TBitBtn;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure rbAshClick(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure DBRadioGroup3Click(Sender: TObject);
    procedure DBRadioGroup2Click(Sender: TObject);
    procedure dbeCNPJExit(Sender: TObject);
    procedure btnapClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function cpf(num: string): boolean;
    function cgc(num: string): boolean;
  end;

var
  fFornecedorCadastroSaude: TfFornecedorCadastroSaude;
  vartipo: integer;

implementation

uses uComercial, UDm, uProcurar, uFornecedorEnderecoSaude,
  uFornecedorRepresentanteSaude, UDmSaude ;

{$R *.dfm}

procedure TfFornecedorCadastroSaude.btnIncluirClick(Sender: TObject);
begin
  inherited;
  ComboBox1.Text := '';
  if (vartipo = 0) then
  begin
    cds_fornecedorCNPJ.EditMask := '000.000.000-00;1;_';
    cds_fornecedorTIPOFIRMA.AsInteger := 0;
  end
  else
  begin
    cds_fornecedorCNPJ.EditMask := '00.000.000/0000-00;1;_';
    cds_fornecedorTIPOFIRMA.AsInteger := 1;
  end;
    cds_FoRNECEDORSEGMENTO.Value:=1;
    cds_FoRNECEDORREGIAO.Value:=1;
    cds_FoRNECEDORCODUSUARIO.Value:=1;
    cds_FoRNECEDORSTATUS.Value:=1;
    cds_FoRNECEDORDATACADASTRO.Value:=Date;
   dbEdit2.SetFocus;
end;

procedure TfFornecedorCadastroSaude.btnGravarClick(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsInsert] then
  begin

  if((dbeCNPJ.Text = '000.000.000-00')or(dbeCNPJ.Text ='00.000.000/0000-00')) then
  begin
    MessageDlg('CPF ou CNPJ Invalido !!!!!!!!!!!!', mtError, [mbOK], 0);
    exit;
  end;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FOR, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_fornecedorCODFORNECEDOR.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

    if (cds_fornecedorTIPOFIRMA.AsInteger <> 0) or (cds_fornecedorTIPOFIRMA.AsInteger <> 1)  then
    begin
       cds_fornecedorTIPOFIRMA.AsInteger := DBRadioGroup1.ItemIndex;
       vartipo := DBRadioGroup1.ItemIndex;
    end;
  end;
  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
  begin
    if (ComboBox1.Text <> '') then
    begin
      dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive]);
      cds_fornecedorCONTA_FORNECEDOR.AsString := dm.cds_ccustoCONTA.AsString;
    end;
  end;
  // Fornecedor da ASH
  if ((rbAsh.Checked = True) and (rbPcmso.Checked = False) and (rbFinanceiro.Checked = False)) then
    cds_fornecedorREGIAO.AsInteger := 1;
  // Fornecedor do PCMSO
  if ((rbAsh.Checked = False) and (rbPcmso.Checked = True) and (rbFinanceiro.Checked = False)) then
    cds_fornecedorREGIAO.AsInteger := 2;
  // Fornecedor do FINANCEIRO
  if ((rbAsh.Checked = False) and (rbPcmso.Checked = False) and (rbFinanceiro.Checked = True)) then
    cds_fornecedorREGIAO.AsInteger := 3;

  // Fornecedor da ASH , do PCMSO e do Financeiro
  if ((rbAsh.Checked = True) and (rbPcmso.Checked = True) and (rbFinanceiro.Checked = True)) then
    cds_fornecedorREGIAO.AsInteger := 4;
  // Fornecedor da ASH , do PCMSO
  if ((rbAsh.Checked = True) and (rbPcmso.Checked = True) and (rbFinanceiro.Checked = False)) then
    cds_fornecedorREGIAO.AsInteger := 5;
  // Fornecedor da ASH , do Financeiro
  if ((rbAsh.Checked = True) and (rbPcmso.Checked = False) and (rbFinanceiro.Checked = True)) then
    cds_fornecedorREGIAO.AsInteger := 6;
  // Fornecedor do PCMSO , do Financeiro
  if ((rbAsh.Checked = False) and (rbPcmso.Checked = True) and (rbFinanceiro.Checked = True)) then
    cds_fornecedorREGIAO.AsInteger := 7;

  inherited;
  //codfornecedor := cds_fornecedorCODFORNECEDOR.AsInteger;
  //fornecedor := cds_fornecedorNOMEFORNECEDOR.AsString;
end;

procedure TfFornecedorCadastroSaude.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if cds_fornecedor.State in [dsInsert, dsEdit] then
   cds_fornecedor.ApplyUpdates(0);
   fFornecedorEnderecoSaude:=TfFornecedorEnderecoSaude.Create(Application);
   try
     fFornecedorEnderecoSaude.ShowModal;
   finally
     fFornecedorEnderecoSaude.Free;
   end;
end;

procedure TfFornecedorCadastroSaude.FormShow(Sender: TObject);
begin
  inherited;
  vartipo := 1;
 if varForm1 <> 'compra' then
  btnIncluir.SetFocus;
end;

procedure TfFornecedorCadastroSaude.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;
  if Alterar = 'S' then
  begin
    BitBtn1.Enabled:= True;
    BitBtn3.Enabled:= True;
   // BitBtn1.Enabled:=DtSrc.State in [dsBrowse];
   // BitBtn3.Enabled:=DtSrc.State in [dsBrowse];
  end
  else
  begin
    BitBtn1.Enabled:=False;
    BitBtn3.Enabled:=False;
  end;

end;

procedure TfFornecedorCadastroSaude.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  try
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
    fProcurar.ShowModal;
    if cds_fornecedor.Active then
       cds_fornecedor.Close;
    cds_fornecedor.Params[0].AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
    cds_fornecedor.Open;
    if cds_fornecedorTIPOFIRMA.AsInteger = 0 then
       cds_FORNECEDORCNPJ.EditMask := '000.000.000-00;1;_'
    else
       cds_FORNECEDORCNPJ.EditMask := '00.000.000/0000-00;1;_';
    if (not cds_fornecedorCONTA_FORNECEDOR.IsNull) then
    begin
      if (dm.cds_ccusto.Locate('CONTA', cds_fornecedorCONTA_FORNECEDOR.AsString, [loCaseInsensitive])) then
         ComboBox1.Text := dm.cds_ccustoNOME.AsString
      else
         ComboBox1.Text := '';
    end;

    // Fornecedor da ASH
    if (cds_fornecedorREGIAO.AsInteger = 1) then
    begin
      rbAsh.Checked := True;
      rbPcmso.Checked := False;
      rbFinanceiro.Checked := False;
    end;
    // Fornecedor do PCMSO
    if (cds_fornecedorREGIAO.AsInteger = 2) then
    begin
      rbAsh.Checked := False;
      rbPcmso.Checked := True;
      rbFinanceiro.Checked := False;
    end;
    // Fornecedor do FINANCEIRO
    if (cds_fornecedorREGIAO.AsInteger = 3) then
    begin
      rbAsh.Checked := False;
      rbPcmso.Checked := False;
      rbFinanceiro.Checked := True;
    end;
    // Fornecedor da ASH , do PCMSO e do Financeiro
    if (cds_fornecedorREGIAO.AsInteger = 4) then
    begin
      rbAsh.Checked := True;
      rbPcmso.Checked := True;
      rbFinanceiro.Checked := True;
    end;
    // Fornecedor da ASH , do PCMSO
    if (cds_fornecedorREGIAO.AsInteger = 5) then
    begin
      rbAsh.Checked := True;
      rbPcmso.Checked := True;
      rbFinanceiro.Checked := False;
    end;
    // Fornecedor da ASH , do Financeiro
    if (cds_fornecedorREGIAO.AsInteger = 6) then
    begin
      rbAsh.Checked := True;
      rbPcmso.Checked := False;
      rbFinanceiro.Checked := True;
    end;
    // Fornecedor do PCMSO , do Financeiro
    if (cds_fornecedorREGIAO.AsInteger = 7) then
    begin
      rbAsh.Checked := False;
      rbPcmso.Checked := True;
      rbFinanceiro.Checked := True;
    end;

  finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TfFornecedorCadastroSaude.BitBtn3Click(Sender: TObject);
begin
  inherited;
   if cds_fornecedor.State in [dsInsert, dsEdit] then
     cds_fornecedor.ApplyUpdates(0);
   fFornecedorRepresentanteSaude := TfFornecedorRepresentanteSaude.Create(Application);
   try
    fFornecedorRepresentanteSaude.ShowModal;
   finally
    fFornecedorRepresentanteSaude.Free;
   end;
end;

procedure TfFornecedorCadastroSaude.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if((DtSrc.State=dsInsert) or (DtSrc.State=dsEdit)) then
  cds_fornecedorRAZAOSOCIAL.AsString := cds_fornecedorNOMEFORNECEDOR.AsString;
end;

procedure TfFornecedorCadastroSaude.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (varForm1 = 'compra') then
  begin
    cod_forn := cds_fornecedorCODFORNECEDOR.AsInteger;
    nome_forn := cds_fornecedorNOMEFORNECEDOR.AsString;
  end;
  inherited;
  dm.cds_ccusto.close;
end;

procedure TfFornecedorCadastroSaude.FormCreate(Sender: TObject);
begin
 // inherited;
  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  if (dm.cds_ccusto.Active) then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_ccusto.Open;
  dm.cds_ccusto.First;
  while not dm.cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
    dm.cds_ccusto.Next;
  end;
end;

procedure TfFornecedorCadastroSaude.ComboBox1Change(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse, dsInactive]) then
    DtSrc.Edit;
end;

procedure TfFornecedorCadastroSaude.rbAshClick(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse]) then
    cds_fornecedor.Edit;
end;

procedure TfFornecedorCadastroSaude.DBRadioGroup1Click(Sender: TObject);
begin
  inherited;
 if DBRadioGroup1.ItemIndex=0 then
  begin
    cds_fornecedorCNPJ.EditMask := '000.000.000-00;1;_';
    cds_fornecedorTIPOFIRMA.AsInteger := 0;
  end
  else
  begin
    cds_fornecedorCNPJ.EditMask := '00.000.000/0000-00;1;_';
    cds_fornecedorTIPOFIRMA.AsInteger := 1;
  end;
 
end;

procedure TfFornecedorCadastroSaude.DBRadioGroup3Click(Sender: TObject);
begin
  inherited;
  if DBRadioGroup1.ItemIndex=0 then
    cds_fornecedorSITUACAO.AsString := 'S';

   if DBRadioGroup1.ItemIndex=1 then
    cds_fornecedorSITUACAO.AsString := 'N';

end;

procedure TfFornecedorCadastroSaude.DBRadioGroup2Click(Sender: TObject);
begin
  inherited;
  if DBRadioGroup1.ItemIndex=0 then
    cds_fornecedorTIPODEC.AsInteger := 1;

   if DBRadioGroup1.ItemIndex=1 then
    cds_fornecedorTIPODEC.AsInteger := 2;

   if DBRadioGroup1.ItemIndex=2 then
    cds_fornecedorTIPODEC.AsInteger := 3;
end;

procedure TfFornecedorCadastroSaude.dbeCNPJExit(Sender: TObject);
 Var str_cpf: String;
begin

  IF (dbeCNPJ.Text = '   .   .   -  ') or (dbeCNPJ.Text = '  .   .   /    -  ')  then
    DBRadioGroup1.SetFocus
  else
  begin
  inherited;
  if not cds_fornecedorTIPOFIRMA.IsNull then
  begin
    if DBRadioGroup1.ItemIndex = 0 then
    begin
      str_cpf := copy(cds_fornecedorCNPJ.AsString,0,3)+copy(cds_fornecedorCNPJ.AsString,5,3)+
         copy(cds_fornecedorCNPJ.AsString,9,3)+copy(cds_fornecedorCNPJ.AsString,13,2);
      if cpf(str_cpf) = False then
      begin
        MessageDlg('CPF Inválido !', mtWarning,[mbOk], 0);
        dbeCNPJ.SetFocus;
        exit;
      end;
    end;
    if DBRadioGroup1.ItemIndex = 1 then
    begin
      str_cpf := copy(cds_fornecedorCNPJ.AsString,0,2)+copy(cds_fornecedorCNPJ.AsString,4,3)+
        copy(cds_fornecedorCNPJ.AsString,8,3)+copy(cds_fornecedorCNPJ.AsString,12,4)
        +copy(cds_fornecedorCNPJ.AsString,17,2);
      if cgc(str_cpf) = False then
      begin
        MessageDlg('C.N.P.J. Inválido !', mtWarning,[mbOk], 0);
        dbeCNPJ.SetFocus;
        exit;
      end;
    end;
  end;
 end;


end;

function TfFornecedorCadastroSaude.cgc(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
d1,d2: integer;
digitado, calculado: string;
begin
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[3]);
  n4:=StrToInt(num[4]);
  n5:=StrToInt(num[5]);
  n6:=StrToInt(num[6]);
  n7:=StrToInt(num[7]);
  n8:=StrToInt(num[8]);
  n9:=StrToInt(num[9]);
  n10:=StrToInt(num[10]);
  n11:=StrToInt(num[11]);
  n12:=StrToInt(num[12]);
  d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
  d1:=11-(d1 mod 11);
  if d1>=10 then d1:=0;
  d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
  d2:=11-(d2 mod 11);
  if d2>=10 then d2:=0;
  calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[13]+num[14];
  if calculado=digitado then
    cgc:=true
    else
    cgc:=false;

end;

function TfFornecedorCadastroSaude.cpf(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
d1,d2: integer;
digitado, calculado: string;
begin
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[3]);
  n4:=StrToInt(num[4]);
  n5:=StrToInt(num[5]);
  n6:=StrToInt(num[6]);
  n7:=StrToInt(num[7]);
  n8:=StrToInt(num[8]);
  n9:=StrToInt(num[9]);
  d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
  d1:=11-(d1 mod 11);
  if d1>=10 then d1:=0;
  d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
  d2:=11-(d2 mod 11);
  if d2>=10 then d2:=0;
  calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[10]+num[11];
  if calculado=digitado then
  cpf:=true
  else
  cpf:=false;

end;

procedure TfFornecedorCadastroSaude.btnapClick(Sender: TObject);
begin
 // inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  cds_fornecedorCNPJ.Text := '';
end;

end.


