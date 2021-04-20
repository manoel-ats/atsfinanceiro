unit uClientePlano;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, Provider, DBClient, SqlExpr, Mask, DBCtrls, DBLocal, DBLocalS,
  uPai, XPMenu, JvExStdCtrls, JvDBCombobox, JvComponentBase, JvBalloonHint,
  JvHint, UCHistDataset, UCHist_Base, ComCtrls,DBXPress, EChkCNPJ;

type
  TfClientePlano = class(TfPai)
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    dsEndereco: TDataSource;
    DBText1: TDBText;
    Dependente1: TMenuItem;
    sql_ra: TSQLDataSet;
    sql_raCONCATENATION: TStringField;
    Hist_titular: TUCHist_DataSet;
    sql_PCMSO: TSQLDataSet;
    sql_PCMSORA: TFMTBCDField;
    Hist_Endereco: TUCHist_DataSet;
    HistoricoTitular: TUCControlHistorico;
    procIBGE: TSQLClientDataSet;
    procIBGENM_MUNICIPIO: TStringField;
    procIBGENM_LOCALIDADE: TStringField;
    procIBGECD_UF: TStringField;
    procIBGECD_IBGE: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label32: TLabel;
    Label36: TLabel;
    DBEdit31: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label25: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    DBEdit23: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit29: TDBEdit;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    Label6: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    lbl1: TLabel;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    BitBtn3: TBitBtn;
    DBEdit16: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit36: TDBEdit;
    dbedtEXIST_COBERT: TDBEdit;
    BitBtn2: TBitBtn;
    Label19: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit2: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    lbl2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit39: TDBEdit;
    dbeditCNS: TDBEdit;
    Label30: TLabel;
    Label21: TLabel;
    Label31: TLabel;
    DBEdit28: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit30: TDBEdit;
    Label26: TLabel;
    Label28: TLabel;
    Label42: TLabel;
    DBEdit24: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit35: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit20: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit38: TDBEdit;
    btnDependente: TBitBtn;
    Label41: TLabel;
    DBEdit34: TDBEdit;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    Label40: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    BitBtn4: TBitBtn;
    GroupBox4: TGroupBox;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit50: TDBEdit;
    Label61: TLabel;
    dbRDebito: TDBRadioGroup;
    Label62: TLabel;
    btnap: TBitBtn;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    BitBtn5: TBitBtn;
    Label63: TLabel;
    DBEdit54: TDBEdit;
    Label64: TLabel;
    DBEdit55: TDBEdit;
    Label65: TLabel;
    DBEdit56: TDBEdit;
    Label66: TLabel;
    sqlConta: TSQLClientDataSet;
    sqlContaCOUNT: TIntegerField;
    Label67: TLabel;
    Label68: TLabel;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDependenteClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure dsEnderecoStateChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure dbRDebitoClick(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure btnapClick(Sender: TObject);
    procedure dbeditCNSExit(Sender: TObject);
    procedure DBEdit53Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBRadioGroup2Click(Sender: TObject);
  private
    { Private declarations }
  public
    codCliente, ptipo : integer;
    nomeCliente: String;
    function cpf(num: string): boolean;
    function cgc(num: string): boolean;
    Function ValidaCNS(Num: string):Boolean;
    Function ValidaCNS_PROV(Num: string):Boolean;
    { Public declarations }
  end;

var
  fClientePlano: TfClientePlano;
  grupo : string;
implementation

uses UDmSaude, uprocurarSaude, uDependente, UProcuraGrupo, UDm,
  uPlanoSaude, uProcurar;

{$R *.dfm}


procedure TfClientePlano.btnProcurarClick(Sender: TObject);
begin
  inherited;
  {
    fProcurarSaude:= TfProcurarSaude.Create(self,DMSaude.scdCliente);
    fProcurarSaude.BtnProcurar.Click;
    fProcurarSaude.EvDBFind1.DataField := 'NOMECLIENTE';
  try
    fProcurarSaude.ShowModal;
  if DMSaude.cdsCliente.Active then
    DMSaude.cdsCliente.Close;
     DMSaude.cdsCliente.Params[0].AsInteger := DMSaude.scdClienteCODCLIENTE.AsInteger;
     DMSaude.cdsCliente.Open;
  if DMSaude.cdsEndereco.Active then
    DMSaude.cdsEndereco.Close;
     DMSaude.cdsEndereco.Params[0].AsInteger := DMSaude.cdsClienteCODCLIENTE.AsInteger;
     DMSaude.cdsEndereco.Open;
 finally
    fProcurarSaude.Free;
  end;
  }

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
   if DMSaude.cdsCliente.Active then
    DMSaude.cdsCliente.Close;
     DMSaude.cdsCliente.Params[0].AsInteger := DMSaude.procgrupoCODCLIENTE.AsInteger;
     DMSaude.cdsCliente.Open;



    ptipo := DMSaude.cdsClienteTIPOFIRMA.AsInteger;

   if(ptipo = 0) then
  begin
    DMSaude.cdsClienteCNPJ.EditMask := '000.000.000-00;1;_';
   end
  else
  begin
    DMSaude.cdsClienteCNPJ.EditMask := '00.000.000/0000-00;1;_';

  end;

    sqlConta.Close;
    sqlConta.Params[0].AsString := DMSaude.cdsClienteRAZAOSOCIAL.AsString;
    sqlConta.Open;


  Label68.Caption := sqlContaCOUNT.AsString;

  if DMSaude.cdsEndereco.Active then
    DMSaude.cdsEndereco.Close;
     DMSaude.cdsEndereco.Params[0].AsInteger := DMSaude.cdsClienteCODCLIENTE.AsInteger;
     DMSaude.cdsEndereco.Open;
  finally
    fProcuraGrupo.Free;
  end;
  PageControl1.ActivePage := TabSheet1;
  btnDependente.Enabled := True;
end;

procedure TfClientePlano.FormCreate(Sender: TObject);
begin
 // inherited;
    Incluir := 'S';
    Alterar := 'S';
    Excluir := 'S';
    Cancelar := 'S';
    Procurar := 'S';

 end;

procedure TfClientePlano.btnDependenteClick(Sender: TObject);
begin
 inherited;
//   fDependente:=TfDependente.Create(Application);
   if ( grupo = 'ASH') then
   begin
      if fDependente.DBEdit8.Visible = false then
      fDependente.DBEdit8.Visible:= true;
      fDependente.MMJPanel2.Background.StartColor := clSkyBlue;
      fDependente.MMJPanel1.Background.EndColor := clSkyBlue;
      fDependente.Panel1.Color := clSkyBlue;
      fDependente.Color := clSkyBlue;
      fDependente.DBEdit1.Visible := FALSE;
      fDependente.Label6.Visible := FALSE;
      fDependente.DBRadioGroup1.Visible := false;
      fDependente.DBEdit11.Visible := FALSE;

      

      /// apos usercontrol
   ////  fDependente.DBEdit39.Text := '' ;
   ////   fDependente.DBEdit39.Visible := True;
   ////   fDependente.Label46.Visible:= True;
   ////   fDependente.Label47.Visible:= True;


      fDependente.Label10.Visible:= True;
      fDependente.DBEdit7.Visible:= True;
      fDependente.GroupBox2.Visible:= True;
      fDependente.DBEdit9.Visible:= True;
      fDependente.Label11.Visible:= True;
      fDependente.DBEdit6.Visible:= True;
      fDependente.Label8.Visible:= True;
      fDependente.DBEdit4.Visible:= False;
      fDependente.DBRadioGroup2.Visible := True;
   ////    fDependente.Label36.Visible:= True;
  ////     fDependente.Label32.Visible:= True;
      fDependente.DBEdit12.Visible:= True;
  ////     fDependente.Label34.Visible:= True;
      fDependente.DBGrid1.Columns[0].Title.caption := 'DEPENDENTE';
      fDependente.Label3.Caption := 'DEPENDENTE';
 ////      fDependente.DBEdit34.Visible:= True;
      fDependente.DBEdit14.Visible:= True;
 ////      fDependente.Label41.Visible:= True;
      fDependente.Label14.Visible:= True;
      fDependente.DBEdit16.Visible:= True;
      fDependente.Label18.Visible:= True;
 ////      fDependente.Label43.Visible := True;
      fDependente.GroupBox3.Visible := True;
      fDependente.DBEdit15.Visible:= True;
      fDependente.DBEdit13.Visible:= True;
      fDependente.Label16.Visible := True;
      fDependente.dbCOD_ANS.Visible := True;
      fDependente.BitBtn1.Visible := True;
      fDependente.lbl2.Visible := True;
      fDependente.dbeditcns.Visible := True;
      fDependente.lbl1.Visible := True;
      fDependente.dbtxtRAZAOSOCIAL.Visible := True;
      fDependente.BitBtn2.Visible := True;

      fDependente.DBEdit17.Visible:= True;
      fDependente.Label19.Visible := True;
      fDependente.BitBtn2.Visible := True;
      fDependente.BitBtn3.Visible := True;
      fDependente.BitBtn4.Visible := True;
      fDependente.BitBtn5.Visible := True;
      fDependente.DBEdit3.Visible:= True;
      fDependente.Label5.Visible := True;
      fDependente.TabSheet1.SetFocus;

     ///

   end
   else
   begin

      if fDependente.DBEdit8.Visible = true then
        fDependente.DBEdit8.Visible:= false;
        fDependente.Label10.Visible:= false;
        fDependente.DBEdit7.Visible:= false;
        fDependente.GroupBox2.Visible:= False;
        fDependente.DBEdit9.Visible:= false;
        fDependente.Label11.Visible:= false;
        fDependente.DBEdit4.Visible:= false;
        fDependente.Label9.Caption := 'CODIGO';
  ////       fDependente.Label47.Caption := 'NOME';
        fDependente.Label3.Caption := 'FUNÇÃO';
        fDependente.Label7.Caption := 'DATA ADMISSÃO';
        fDependente.Label12.Caption := 'DATA RESCISÃO';
        fDependente.DBGrid1.Columns[0].Title.caption := 'FUNÇÃO';
        fDependente.DBRadioGroup2.Visible := false;
        fDependente.DBRadioGroup1.Visible := True;
        fDependente.MMJPanel2.Background.StartColor := clTeal ;
        fDependente.MMJPanel1.Background.EndColor := clTeal ;
        fDependente.Panel1.Color := clMoneyGreen ;
        fDependente.Color := clMoneyGreen ;

  ////       fDependente.DBEdit39.Text := '9' ;
 ////        fDependente.DBEdit39.Visible := False;
////        fDependente.Label46.Visible:= false;
      //  fDependente.Label47.Visible:= false;



  ////       fDependente.Label36.Visible:= false;
 ////        fDependente.Label32.Visible:= false;
        fDependente.DBEdit12.Visible:= false;
 ////        fDependente.Label34.Visible:= false;
 ////        fDependente.DBEdit34.Visible:= false;

 ////        fDependente.Label41.Visible:= false;

        fDependente.DBEdit16.Visible:= false;
        fDependente.Label18.Visible:= false;
 ////        fDependente.Label43.Visible := False;
        fDependente.GroupBox3.Visible := False;
        fDependente.DBEdit15.Visible:= false;

        fDependente.Label15.Visible := False;

 ////        fDependente.DBEdit36.Visible:= false;
////         fDependente.DBEdit37.Visible:= false;
        fDependente.dbCOD_ANS.Visible := false;
        fDependente.BitBtn1.Visible := false;
        fDependente.lbl2.Visible := false;
        fDependente.dbeditcns.Visible := false;

        fDependente.DBEdit17.Visible:= false;
        fDependente.Label19.Visible := False;

        fDependente.BitBtn3.Visible := false;
        fDependente.BitBtn4.Visible := false;
     //   fDependente.BitBtn5.Visible := false;
     //   fDependente.DBEdit3.Visible:= false;
     //   fDependente.Label5.Visible := False;

        fDependente.lbl1.Visible := false;
        fDependente.dbtxtRAZAOSOCIAL.Visible := false;
        fDependente.BitBtn2.Visible := false;
       // fDependente.DBEdit11.Visible := true;
        fDependente.DBEdit19.Visible := false;
        fDependente.Label22.Visible := False;
        fDependente.Label23.Visible := False;
        fDependente.Label25.Visible := False;
        fDependente.Label26.Visible := False;
        fDependente.Label24.Visible := False;
        fDependente.Label9.Visible := False;
        fDependente.DBEdit22.Visible:= False;
        fDependente.DBEdit23.Visible:= False;
        fDependente.DBEdit21.Visible:= False;
        fDependente.DBEdit24.Visible:= False;
        fDependente.DBEdit13.Visible:= True;
        fDependente.Label16.Visible := True;
        fDependente.Label14.Visible := True;
        fDependente.DBEdit14.Visible:= True;
        fDependente.BitBtn2.Visible := True;
        fDependente.DBEdit6.Visible := True;
        fDependente.Label8.Visible  := True;

    end;
 // try
   fDependente.ShowModal;

 //finally
  // fDependente.Free;
  //end;
end;

procedure TfClientePlano.btnIncluirClick(Sender: TObject);
begin
  if(grupo <> 'ASH') then
  begin
  if sql_ra.Active then
    sql_ra.Close;
  sql_ra.Params[0].AsString := grupo ;
  sql_ra.Open;
  end;
  inherited;

  DMSaude.cdsClienteGRUPO_CLIENTE.AsString := grupo;
  if(grupo = 'PARTICULAR') then
  begin
    DBEdit9.SetFocus;
    DMSaude.cdsClienteRA.AsString := sql_raCONCATENATION.AsString;
  end;
  if grupo = 'ASH' then
  begin
    DBEdit9.SetFocus;
    DBEdit13.Text := '15'; // Codigo de inclusão ANS
    DMSaude.cdsClienteTIPOFIRMA.AsString :='0';
    DMSaude.cdsClienteSTATUS.AsString := '0';
    DMSaude.cdsClienteCONTATO.AsString := 'BENEFICIAR';
    DMSaude.cdsClienteEXIST_COBERT.AsInteger := 2 ;
    DMSaude.cdsClienteEXISTCOPART.AsInteger := 1 ;
    DMSaude.cdsClienteESTADORG.AsString := '00';
    DMSaude.cdsClienteSITUACAOESCOLAR.AsString := '01';
    DMSaude.cdsClienteID_COB.AsInteger := 0;
   // DMSaude.cdsClienteRA.AsString := sql_raCONCATENATION.AsString;
end;
  sql_ra.Close;

  if grupo = 'PCMSO' then
  begin
    if sql_PCMSO.Active then
      sql_PCMSO.Close;
    sql_PCMSO.Params[0].AsString := grupo ;
    sql_PCMSO.Open;

    DBEdit9.SetFocus;
   // DBEdit2.ReadOnly := False;
   // DBEdit13.Text := '15'; // Codigo de inclusão ANS
    DMSaude.cdsClienteTIPOFIRMA.AsString :='0';
    DMSaude.cdsClienteSTATUS.AsString := '0';
    DMSaude.cdsClienteCONTATO.AsString := 'BENEFICIAR';
    DMSaude.cdsClienteEXIST_COBERT.AsInteger := 2 ;
    DMSaude.cdsClienteEXISTCOPART.AsInteger := 1 ;
    DMSaude.cdsClienteESTADORG.AsString := '00';
    DMSaude.cdsClienteSITUACAOESCOLAR.AsString := '01';
    DMSaude.cdsClienteID_COB.AsInteger := 0 ;
    DMSaude.cdsClienteRA.AsString := sql_PCMSORA.AsString;
    if(grupo <> 'ASH')then
    DMSaude.cdsClienteNUMERO.AsInteger := 9 ;

    sql_PCMSO.Close;
  end;

{
  if (DtSrc.State in [dsInsert]) then
  begin
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DMSaude.cdsClienteCODCLIENTE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
}
  if DMSaude.cdsEndereco.Active then
    DMSaude.cdsEndereco.Close;
  DMSaude.cdsEndereco.Params[0].Clear;
  if not DMSaude.cdsEndereco.Active then
    DMSaude.cdsEndereco.open;
  DMSaude.cdsEndereco.Append;
  DMSaude.cdsEnderecoUF.AsString := 'SP';
end;

procedure TfClientePlano.btnGravarClick(Sender: TObject);
var    TD: TTransactionDesc;
      str1,str2 : STRING;
      dataC,dataR : TDateTime;
begin

  if (grupo = 'PARTICULAR') then
    dmSaude.cdsClienteGRUPO_CLIENTE.AsString := 'PARTICULAR';
 //   DMSaude.cdsClienteCODCLIENTE.AsInteger := DMSaude.cdsClienteRA.AsInteger  ;
   // dmS
  if (DMSaude.cdsCliente.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DMSaude.cdsClienteCODCLIENTE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    DMSaude.cdsClienteRAZAOSOCIAL.AsString := DMSaude.cdsClienteNOMECLIENTE.AsString;

    if (grupo = 'PARTICULAR') then
    DMSaude.cdsClienteRA.AsInteger := DMSaude.cdsClienteCODCLIENTE.AsInteger ;

    DMSaude.cdsClienteSEGMENTO.AsString :='0' ;
    DMSaude.cdsClienteREGIAO.AsString := '0';
    DMSaude.cdsClienteCODUSUARIO.AsInteger := 1;
    DMSaude.cdsClienteESTADORG.AsString := DBEdit31.Text;
    DMSaude.cdsClienteSITUACAOESCOLAR.AsString := DBEdit32.Text;
    if(dbrDebito.ItemIndex = 0)then
    begin
      DMSaude.cdsClientePRAZOENTREGA.AsInteger := 2;
    end else
      DMSaude.cdsClientePRAZOENTREGA.AsInteger := 1;

    if(grupo <> 'ASH')then
    DMSaude.cdsClienteNUMERO.AsInteger := 9 ;

  end;
  if(dsEndereco.DataSet.State in [dsEdit]) then
    if(DtSrc.DataSet.State in [dsBrowse]) then
      DtSrc.DataSet.Edit;
  DMSaude.cdsClienteEXIST_COBERT.AsInteger := 2 ;
  DMSaude.cdsClienteEXISTCOPART.AsInteger := 1 ;

    if(dbrDebito.ItemIndex = 0)then
    begin
      DMSaude.cdsClientePRAZOENTREGA.AsInteger := 2;
    end else
      DMSaude.cdsClientePRAZOENTREGA.AsInteger := 1;

   if(DBEdit1.Text <> DMSaude.cdsClienteRAZAOSOCIAL.AsString)then
   begin
     if (grupo = 'PCMSO') then
     begin
       TD.TransactionID := 1;
       TD.IsolationLevel := xilREADCOMMITTED;
       dm.sqlsisAdimin.StartTransaction(TD);
       str1 := ' UPDATE CLIENTES SET RAZAOSOCIAL = ' + QuotedStr(DBEdit1.Text) +
               ' WHERE RAZAOSOCIAL = '  + QuotedStr(DMSaude.cdsClienteRAZAOSOCIAL.AsString) +
               ' and GRUPO_CLIENTE = ' + QuotedStr('PCMSO');

      // str1 := 'EXECUTE PROCEDURE CORRIGI_RAZAO ( ';
     //  str1 := str1 + QuotedStr(DBEdit1.Text);
     //  str1 := str1 + ')';

       try
         dm.sqlsisAdimin.ExecuteDirect(str1);
         dm.sqlsisAdimin.Commit(TD);
         MessageDlg('Cadastro Alterado ,'+#13+#10+' Para Localizar os Funcionarios , '+#13+#10+'Faça a Busca da Empresa Novamente', mtWarning, [mbOK], 0);

       except
         dm.sqlsisAdimin.Rollback(TD);
         MessageDlg('Erro ao Alterar .', mtError, [mbOK], 0);
         exit;
       end;
     end;
   end;
   ///////
   ///////
   //if (grupo = 'PCMSO') then
   if (DMSaude.cdsCliente.State in [dsEdit]) then
   begin

     if(DBEdit9.Text <> '  /  /    ' )then
       dataC := StrToDateTime(DBEdit9.Text);

     if(DBEdit4.Text <> '' ) then
       dataR := StrToDateTime(DBEdit4.Text);

    // if((DBEdit4.Text <> '  /  /    ' )or(DBEdit4.Text <> '' )) then
    //   dataR := StrToDateTime(DBEdit4.Text);

     //dataC  := StrToDateTime(DBEdit9.Text);
     //dataR  := StrToDateTime(DBEdit4.Text);

     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     dm.sqlsisAdimin.StartTransaction(TD);
     str2 := ' UPDATE CLIENTES SET NOMEMAE = ' + QuotedStr(DBEdit56.Text) ;

             str2 := str2 + ', INSCESTADUAL = ' + QuotedStr(DBEdit11.Text) ;
             str2 := str2 + ', CNPJ         = ' + QuotedStr(DBEdit12.Text) ;
             str2 := str2 + ', TIPOFIRMA    = ' + QuotedStr(DBRadioGroup2.Value) ;
             str2 := str2 + ', STATUS       = ' + QuotedStr(DBRadioGroup1.Value) ;
             str2 := str2 + ', COD_FAIXA    = ' + QuotedStr(DBEdit2.Text) ;
             if(DBEdit9.Text <> '  /  /    ' )then
             str2 := str2 + ', DATACADASTRO = ' + QuotedStr(FormatDateTime('mm/dd/yy',dataC));
             if(DBEdit4.Text <> '' )then
             str2 := str2 + ', DATARESC = ' + QuotedStr(FormatDateTime('mm/dd/yy',dataR));
             str2 := str2 + ', N_CONTRATO     = ' + QuotedStr(DBEdit40.Text) ;
             str2 := str2 + ', CPF_D          = ' + QuotedStr(DBEdit41.Text) ;
             str2 := str2 + ', CC             = ' + QuotedStr(DBEdit42.Text) ;
             str2 := str2 + ', AGENCIA        = ' + QuotedStr(DBEdit50.Text) ;
             str2 := str2 + ', PRAZOENTREGA   = ' + QuotedStr(dbRDebito.Value) ;
             str2 := str2 + ', TITULAR        = ' + QuotedStr(DBEdit44.Text) ;
             str2 := str2 + ', NUMERO_CONTA   = ' + QuotedStr(DBEdit45.Text) ;
             str2 := str2 + ', DIGITO_CONTA   = ' + QuotedStr(DBEdit46.Text) ;
             str2 := str2 + ', CODIGO_AGENCIA = ' + QuotedStr(DBEdit47.Text) ;
             str2 := str2 + ', DIGITO_AGENCIA = ' + QuotedStr(DBEdit48.Text) ;
             str2 := str2 + ', NOMEBANCO      = ' + QuotedStr(DBEdit49.Text) ;


             str2 := str2 + ' WHERE RAZAOSOCIAL = '  + QuotedStr(DMSaude.cdsClienteRAZAOSOCIAL.AsString) ;
             str2 := str2 + ' and GRUPO_CLIENTE = ' + QuotedStr('PCMSO');
             str2 := str2 + ' and SEGMENTO = ' + QuotedStr('0');

     try
       dm.sqlsisAdimin.ExecuteDirect(str2);
       dm.sqlsisAdimin.Commit(TD);
       MessageDlg('Cadastro Alterado .', mtWarning, [mbOK], 0);

     except
       dm.sqlsisAdimin.Rollback(TD);
       MessageDlg('Erro ao Alterar .', mtError, [mbOK], 0);
       exit;
     end;
   end;
   //////




   if(DBEdit1.Text <> DMSaude.cdsClienteRAZAOSOCIAL.AsString)then
   begin
   if (grupo = 'ASH') then
   begin
     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     dm.sqlsisAdimin.StartTransaction(TD);

     str1 := ' UPDATE CLIENTES SET RAZAOSOCIAL = ' + QuotedStr(DBEdit1.Text) +
             ' WHERE RAZAOSOCIAL = '  + QuotedStr(DMSaude.cdsClienteRAZAOSOCIAL.AsString) +
             ' and GRUPO_CLIENTE = ' + QuotedStr('ASH');
          //   ' and ID_COB = ' + QuotedStr('0');     so se for incluir de novo deve ser 0

   // str1 := 'EXECUTE PROCEDURE CORRIGI_RAZAO_ASH ( ';
   //  str1 := str1 + QuotedStr(DBEdit1.Text);
   //  str1 := str1 + ')';

     try
       dm.sqlsisAdimin.ExecuteDirect(str1);
       dm.sqlsisAdimin.Commit(TD);
       MessageDlg('Cadastro Alterado ,'+#13+#10+' Para Localizar os Dependente , '+#13+#10+'Faça a Busca do Socio Novamente', mtWarning, [mbOK], 0);

     except
       dm.sqlsisAdimin.Rollback(TD);
       MessageDlg('Erro ao Alterar .', mtError, [mbOK], 0);
       exit;
     end;
   end;
   end;

 // DMSaude.cdsClienteID_COB.AsInteger := 0

  {
  if DBRadioGroup1.ItemIndex = 1 then
    DMSaude.cdsClienteID_COB.AsInteger := 1
   else
     DMSaude.cdsClienteID_COB.AsInteger := 0 ;
 }
   ///
 {
    if(DBRadioGroup1.ItemIndex = 1) then
    begin
     MessageDlg('Data de Rescisão deve ser Preenchida ', mtConfirmation, [mbYes, mbNo], 0);

      if( DBEdit4.Text = '  /  /  ') then
      begin
     //   DBEdit4.SetFocus;
        exit;
      end;
    end;

    if(DBRadioGroup1.ItemIndex = 0) then
    begin
      MessageDlg('Data de Rescisão deve ser Apagada ', mtConfirmation, [mbYes, mbNo], 0);

      if( DBEdit4.Text <> '  /  /  ') then
      begin
    //    DBEdit4.SetFocus;
        exit;
      end;
    end;
   
  }
  //  MessageDlg('Data de  Alteração  Será Atualizado  ', mtConfirmation, [mbYes, mbNo], 0);

    DMSaude.cdsClienteDTAALTERA.AsDateTime := now ;

                                                                                             
  inherited;

  // btnProcurar.Click;

   if (DMSaude.cdsEndereco.State in [dsInsert, dsEdit]) then
   begin
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_END_CLI, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      DMSaude.cdsEnderecoCODENDERECO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      if (DMsaude.cdsEnderecoCODCLIENTE.AsInteger = 0) then
        DMSaude.cdsEnderecoCODCLIENTE.AsInteger := DMSaude.cdsClienteCODCLIENTE.AsInteger;
        DMSaude.cdsEnderecoTIPOEND.AsString := '0';
      DMSaude.cdsEndereco.ApplyUpdates(0);
   end;

end;

procedure TfClientePlano.dsEnderecoStateChange(Sender: TObject);

begin
   btnIncluir.Enabled:=dsEndereco.State in [dsBrowse,dsInactive];

   btnGravar.Enabled:=dsEndereco.State in [dsInsert,dsEdit];

   btnCancelar.Enabled:=dsEndereco.State in [dsInsert,dsEdit];

   btnExcluir.Enabled:=dsEndereco.State in [dsBrowse];

   btnProcurar.Enabled := dsEndereco.State in [dsBrowse,dsInactive];

   btnSair.Enabled:=dsEndereco.State in [dsBrowse,dsInactive];
     if dsEndereco.State in [dsInsert, dsEdit] then
  begin
    btnIncluir.Visible := False;
    btnexcluir.Visible := False;
    btngravar.Visible := True;
    btnCancelar.Visible := True;
  end;

  if dsEndereco.State in [dsBrowse,dsInactive] then
  begin
    btnIncluir.Visible := True;
    btnexcluir.Visible := True;
    btngravar.Visible := False;
    btnCancelar.Visible := False;
  end;

end;

procedure TfClientePlano.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if(dsEndereco.DataSet.State in [dsEdit]) then
    dsEndereco.DataSet.Cancel;
end;

procedure TfClientePlano.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  codCliente := dmSaude.cdsClienteCODCLIENTE.AsInteger;
  nomeCliente := dmSaude.cdsClienteNOMECLIENTE.AsString;
  inherited;
  if(dsEndereco.DataSet.Active) then
    dsEndereco.DataSet.Close;
end;

procedure TfClientePlano.FormShow(Sender: TObject);
begin
  inherited;
 // fPlanoSaude.UserControlSaude.
  Label40.Caption := fPlanoSaude.UserControlSaude.CurrentUser.UserName; //usercontrol1.CurrentUser;
  if (grupo = 'PARTICULAR') then
  begin
    label1.Caption := 'PARTICULAR';
    label2.Caption := 'PARTICULAR';
    //GroupBox1.Visible := False;
    //GroupBox2.Visible := False;
    //dbEdit17.Visible := False;
    //dbEdit18.Visible := False;
    //dbEdit19.Visible := False;
    dbEdit20.Visible := False;
  end;

  Application.HintHidePause := 100000;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfClientePlano.btnExcluirClick(Sender: TObject);
var    TD: TTransactionDesc;
      str1 : STRING;
begin
//  inherited;
  if (grupo = 'PCMSO') then
  begin
    if( MessageDlg('Confirma o Desligamento desta Empresa e de seus Funcionarios ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
     { if(DMSaude.cdsCliente.State in [dsBrowse]) then
        DMSaude.cdsCliente.Edit;
      DMSaude.cdsClienteSTATUS.AsInteger := 1;
      DMSaude.cdsClienteDATARESC.AsDateTime := now;
      DMSaude.cdsClienteDTAALTERA.AsDateTime := now;
      DMSaude.cdsCliente.ApplyUpdates(0);
      }
      if (grupo = 'PCMSO') then
      begin
        TD.TransactionID := 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        dm.sqlsisAdimin.StartTransaction(TD);
        str1 := 'EXECUTE PROCEDURE DESLIGA_FUNC ( ';
        str1 := str1 + QuotedStr(DBEdit1.Text);
        str1 := str1 + ')';
        dm.sqlsisAdimin.ExecuteDirect(str1);
        dm.sqlsisAdimin.Commit(TD);
        MessageDlg('Empresa e Funcionarios Desligado', mtInformation, [mbOK], 0);
      end;

    end;
  end;

end;

procedure TfClientePlano.DBEdit3Exit(Sender: TObject);
begin
  inherited;
    if(StrToDate(DBEdit3.Text) > (now - 1)) then
    MessageDlg('Data Invalida', mtWarning, [mbOK], 0);

end;

procedure TfClientePlano.Button1Click(Sender: TObject);
begin
 // inherited;
/// DBEdit4.Text := '__/__/____';
 end;

procedure TfClientePlano.BitBtn3Click(Sender: TObject);
begin
//  inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  DMSaude.cdsClienteDATARESC.Text := '';
end;

procedure TfClientePlano.BitBtn1Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,procIBGE);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NM_MUNICIPIO';
   if fProcurar.ShowModal=mrOk then
   begin
     if(DtSrc.State in [dsbrowse,dsinactive]) then
       DMSaude.cdsEndereco.Edit;
     DBEdit23.Text := procIBGENM_MUNICIPIO.AsString;
     DBEdit26.Text := procIBGECD_UF.AsString;
     DBEdit35.Text := procIBGECD_IBGE.AsString;

   end;
   finally
    procIBGE.Close;
    fProcurar.Free;
   end;
end;

procedure TfClientePlano.BitBtn2Click(Sender: TObject);
begin
  //inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  DMSaude.cdsClienteDATANASCIMENTO.Text := '';
end;

procedure TfClientePlano.BitBtn4Click(Sender: TObject);
begin
 // inherited;
   if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  DMSaude.cdsClienteCNS.Text := '';
end;

procedure TfClientePlano.dbRDebitoClick(Sender: TObject);
begin
 // inherited;
{ if(dbRDebito.ItemIndex = 0)then
  begin
  DMSaude.cdsClienteCPF_D.EditMask := '000.000.000-00;1;_';
  end else
  DMSaude.cdsClienteCPF_D.EditMask := '00.000.000/0000-00;1;_';
 }
end;

procedure TfClientePlano.DBEdit12Exit(Sender: TObject);
 Var str_cpf: String;
begin
 IF (DBEdit12.Text = '   .   .   -  ') or (DBEdit12.Text = '  .   .   /    -  ') then
    DBEdit12.SetFocus
  else
  begin
  inherited;
  if not DMSaude.cdsClienteTIPOFIRMA.IsNull then
  begin
    if DBRadioGroup2.ItemIndex = 0 then
    begin
      str_cpf := copy(DMSaude.cdsClienteCNPJ.AsString,0,3)+copy(DMSaude.cdsClienteCNPJ.AsString,5,3)+
         copy(DMSaude.cdsClienteCNPJ.AsString,9,3)+copy(DMSaude.cdsClienteCNPJ.AsString,13,2);
      if cpf(str_cpf) = False then
      begin
        MessageDlg('CPF Inválido !', mtWarning,[mbOk], 0);
        DBEdit12.SetFocus;
        exit;
      end;
    end;
    if DBRadioGroup2.ItemIndex = 1 then
    begin
      str_cpf := copy(DMSaude.cdsClienteCNPJ.AsString,0,2)+copy(DMSaude.cdsClienteCNPJ.AsString,4,3)+
        copy(DMSaude.cdsClienteCNPJ.AsString,8,3)+copy(DMSaude.cdsClienteCNPJ.AsString,12,4)
        +copy(DMSaude.cdsClienteCNPJ.AsString,17,2);
      if cgc(str_cpf) = False then
      begin
        MessageDlg('C.N.P.J. Inválido !', mtWarning,[mbOk], 0);
        DBEdit12.SetFocus;
        exit;
      end;
    end;
  end;
 end;

end;

function TfClientePlano.cgc(num: string): boolean;
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

function TfClientePlano.cpf(num: string): boolean;
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
procedure TfClientePlano.btnapClick(Sender: TObject);
begin
 // inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  DMSaude.cdsClienteCNPJ.Text := '';
end;

procedure TfClientePlano.dbeditCNSExit(Sender: TObject);
var str_cpf , tipo_cns : String;
begin
 // inherited;
  tipo_cns := copy(DMSaude.cdsClienteCNS.AsString,0,1) ;

  if((tipo_cns = '1') or (tipo_cns = '2'))then
  begin
    str_cpf := stringReplace(DMSaude.cdsClienteCNS.AsString, '.', '', [RfReplaceAll]); //stringReplace(Valor, ',', '', [])
    if ValidaCNS(str_cpf) = False then
    begin
      MessageDlg('CNS Inválido Verifique os Numeros !', mtWarning,[mbOk], 0);
      dbeditcns.SetFocus;
      exit;
    end;
  end else
  begin
  if((tipo_cns = '7') or (tipo_cns = '8') or (tipo_cns = '9'))then
  begin
    str_cpf := stringReplace(DMSaude.cdsClienteCNS.AsString, '.', '', [RfReplaceAll]); //stringReplace(Valor, ',', '', [])
    if ValidaCNS_PROV(str_cpf) = False then
    begin
      MessageDlg('CNS Inválido Verifique os Numeros !', mtWarning,[mbOk], 0);
      dbeditcns.SetFocus;
      exit;
    end;
end;
end;
end;



procedure TfClientePlano.DBEdit53Exit(Sender: TObject);
var str_cpf , tipo_cns : String;
begin
 // inherited;
  tipo_cns := copy(DMSaude.cdsClienteCNS_ANS.AsString,0,1) ;

  if((tipo_cns = '1') or (tipo_cns = '2'))then
  begin
    str_cpf := stringReplace(DMSaude.cdsClienteCNS_ANS.AsString, '.', '', [RfReplaceAll]); //stringReplace(Valor, ',', '', [])
    if ValidaCNS(str_cpf) = False then
    begin
      MessageDlg('CNS Inválido Verifique os Numeros !', mtWarning,[mbOk], 0);
      DBEdit53.SetFocus;
      exit;
    end;
  end else
  begin
  if((tipo_cns = '7') or (tipo_cns = '8') or (tipo_cns = '9'))then
  begin
    str_cpf := stringReplace(DMSaude.cdsClienteCNS_ANS.AsString, '.', '', [RfReplaceAll]); //stringReplace(Valor, ',', '', [])
    if ValidaCNS_PROV(str_cpf) = False then
    begin
      MessageDlg('CNS Inválido Verifique os Numeros !', mtWarning,[mbOk], 0);
      DBEdit53.SetFocus;
      exit;
    end;
end;
end;

end;

function TfClientePlano.ValidaCNS(Num: string): Boolean;
var
pis       : string;
resto     : integer;
dv        : integer;
soma      : int64;
resultado : string;
 
begin
pis := copy(Num,1,11);
 
soma:=  ( ( strtoint64( copy( pis, 1, 1 ) ) ) * 15 ) +
        ( ( strtoint64( copy( pis, 2, 1 ) ) ) * 14 ) +
        ( ( strtoint64( copy( pis, 3, 1 ) ) ) * 13 ) +
        ( ( strtoint64( copy( pis, 4, 1 ) ) ) * 12 ) +
        ( ( strtoint64( copy( pis, 5, 1 ) ) ) * 11 ) +
        ( ( strtoint64( copy( pis, 6, 1 ) ) ) * 10 ) +
        ( ( strtoint64( copy( pis, 7, 1 ) ) ) * 9 ) +
        ( ( strtoint64( copy( pis, 8, 1 ) ) ) * 8 ) +
        ( ( strtoint64( copy( pis, 9, 1 ) ) ) * 7 ) +
        ( ( strtoint64( copy( pis, 10, 1 ) ) ) * 6 ) +
        ( ( strtoint64( copy( pis, 11, 1 ) ) ) * 5 );
 
resto:= soma mod 11;
dv     := 11 - resto;
 
if dv = 11 then
   dv:= 0;
 
if dv = 10 then
begin
  soma:=  ( ( strtoint64( copy( pis, 1, 1 ) ) ) * 15 ) +
          ( ( strtoint64( copy( pis, 2, 1 ) ) ) * 14 ) +
          ( ( strtoint64( copy( pis, 3, 1 ) ) ) * 13 ) +
          ( ( strtoint64( copy( pis, 4, 1 ) ) ) * 12 ) +
          ( ( strtoint64( copy( pis, 5, 1 ) ) ) * 11 ) +
          ( ( strtoint64( copy( pis, 6, 1 ) ) ) * 10 ) +
          ( ( strtoint64( copy( pis, 7, 1 ) ) ) * 9 ) +
          ( ( strtoint64( copy( pis, 8, 1 ) ) ) * 8 ) +
          ( ( strtoint64( copy( pis, 9, 1 ) ) ) * 7 ) +
          ( ( strtoint64( copy( pis, 10, 1 ) ) ) * 6 ) +
          ( ( strtoint64( copy( pis, 11, 1 ) ) ) * 5 ) + 2;
  resto:= soma mod 11;
  dv     := 11 - resto;
  resultado:= pis + '001' + inttostr( dv );
end
else
  resultado:= pis + '000' + inttostr( dv );
 
if  Num <> resultado then
 result := false
else
 result := true;
end;

function TfClientePlano.ValidaCNS_PROV(Num: string): Boolean;
var
pis       : string;
resto     : integer;
dv        : integer;
soma      : int64;
resultado : string;

begin
soma:=  ( ( strtoint64( copy( Num, 1, 1 ) ) ) * 15 ) +
        ( ( strtoint64( copy( Num, 2, 1 ) ) ) * 14 ) +
        ( ( strtoint64( copy( Num, 3, 1 ) ) ) * 13 ) +
        ( ( strtoint64( copy( Num, 4, 1 ) ) ) * 12 ) +
        ( ( strtoint64( copy( Num, 5, 1 ) ) ) * 11 ) +
        ( ( strtoint64( copy( Num, 6, 1 ) ) ) * 10 ) +
        ( ( strtoint64( copy( Num, 7, 1 ) ) ) * 9 ) +
        ( ( strtoint64( copy( Num, 8, 1 ) ) ) * 8 ) +
        ( ( strtoint64( copy( Num, 9, 1 ) ) ) * 7 ) +
        ( ( strtoint64( copy( Num, 10, 1 ) ) ) * 6 ) +
        ( ( strtoint64( copy( Num, 11, 1 ) ) ) * 5 ) +
        ( ( strtoint64( copy( Num, 12, 1 ) ) ) * 4 ) +
        ( ( strtoint64( copy( Num, 13, 1 ) ) ) * 3 ) +
        ( ( strtoint64( copy( Num, 14, 1 ) ) ) * 2 ) +
        ( ( strtoint64( copy( Num, 15, 1 ) ) ) * 1 );

resto:= soma mod 11;
if resto <> 0 then
 result := false
else
 result := true;
end;
procedure TfClientePlano.BitBtn5Click(Sender: TObject);
begin
 // inherited;
   if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  DMSaude.cdsClienteCNS_ANS.Text := '';
end;

procedure TfClientePlano.DBRadioGroup2Click(Sender: TObject);
begin
  inherited;
  if DBRadioGroup2.ItemIndex=0 then
  begin
    DMSaude.cdsClienteCNPJ.EditMask := '000.000.000-00;1;_';
   end
  else
  begin
    DMSaude.cdsClienteCNPJ.EditMask := '00.000.000/0000-00;1;_';

  end;
end;

end.
