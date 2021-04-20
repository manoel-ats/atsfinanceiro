 unit uLabSolicitaExame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, DBCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ComCtrls,
  JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker, JvExStdCtrls,
  JvCombobox, JvDBSearchComboBox, FMTBcd, DBClient, Provider, SqlExpr, DateUtils,
  EDBFind, rpcompobase, rpvclreport, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvEdit, JvValidateEdit,
  JvBaseEdits, DBXpress;

type
  TfLabSolicitaExame = class(TfPai_new)
    JvDBGrid1: TJvDBGrid;
    sdsClienteBusca: TSQLDataSet;
    dspBuscaCliente: TDataSetProvider;
    cdsClienteBusca: TClientDataSet;
    cdsClienteBuscaCODCLIENTE: TIntegerField;
    cdsClienteBuscaNOMECLIENTE: TStringField;
    cdsClienteBuscaRA: TStringField;
    dsClienteBusca: TDataSource;
    sdsMedico: TSQLDataSet;
    dspMedico: TDataSetProvider;
    cdsMedico: TClientDataSet;
    dsMedico: TDataSource;
    cdsMedicoCOD_REPRFOR: TIntegerField;
    cdsMedicoNOME_REPRFOR: TStringField;
    cdsMedicoFUNCAO: TStringField;
    cdsClienteBuscaGRUPO_CLIENTE: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    sdsexame: TSQLDataSet;
    dstexame: TDataSetProvider;
    cdsexame: TClientDataSet;
    dtsexame: TDataSource;
    Panel1: TPanel;
    cbCliente: TJvDBSearchComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    cbExame: TDBComboBox;
    Label2: TLabel;
    cbMedico: TJvDBSearchComboBox;
    Label3: TLabel;
    Label4: TLabel;
    JvDBDateTimePicker2: TJvDBDateTimePicker;
    Label5: TLabel;
    procMedico: TSQLDataSet;
    procMedicoCOD_REPRFOR: TIntegerField;
    procMedicoNOME_REPRFOR: TStringField;
    procMedicoFUNCAO: TStringField;
    cdsexameCODDADOS: TIntegerField;
    cdsexameDESCRICAO: TStringField;
    cdsexameUSO: TStringField;
    cdsexameCODIGOS: TStringField;
    cdsexameOUTROS: TStringField;
    cdsexameCODHOS: TIntegerField;
    cdsexameDIVERSOS: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    sqlq: TSQLDataSet;
    dspq: TDataSetProvider;
    cdsq: TClientDataSet;
    cdsqDESCRICAO: TStringField;
    cdsqOUTROS: TStringField;
    cdsqDIVERSOS: TStringField;
    btnImp: TBitBtn;
    VCLReport1: TVCLReport;
    dt1: TJvDatePickerEdit;
    sqlEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    sqlEmpresaDIVERSOS2: TStringField;
    sqlEmpresaDIVERSOS3: TStringField;
    cdsEmpresaDIVERSOS2: TStringField;
    cdsEmpresaDIVERSOS3: TStringField;
    Edit1: TEdit;
    dsEmpresa: TDataSource;
    Edit2: TEdit;
    sqlEmpresaCODIGO_CONTA: TIntegerField;
    cdsEmpresaCODIGO_CONTA: TIntegerField;
    JvDBSearchComboBox1: TJvDBSearchComboBox;
    Label6: TLabel;
    Label7: TLabel;
    DBText3: TDBText;
    Label8: TLabel;
    cbRG: TJvDBSearchComboBox;
    cdsClienteBuscaINSCESTADUAL: TStringField;
    cbSerie: TComboBox;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    btnImp30: TBitBtn;
    DATAHJ: TJvDatePickerEdit;
    Label10: TLabel;
    Label11: TLabel;
    cdsEX: TClientDataSet;
    dspEX: TDataSetProvider;
    sqlEX: TSQLDataSet;
    Label12: TLabel;
    DBText4: TDBText;
    cdsEXCODEXAME: TIntegerField;
    Label13: TLabel;
    btnVER: TButton;
    JvDBGrid2: TJvDBGrid;
    sqlVER: TSQLDataSet;
    dspVER: TDataSetProvider;
    cdsVER: TClientDataSet;
    dsVER: TDataSource;
    cdsVERCODEXAME: TIntegerField;
    cdsVERDATASOLICITACAO: TDateField;
    cdsVERDATAENTREGAMATERIAL: TDateField;
    cdsVERDATAPREVISTAENTREGA: TDateField;
    cdsVERDATALAUDOEXAME: TDateField;
    cdsVERDATARETIRADA: TDateField;
    cdsVERCODCLIENTE: TIntegerField;
    cdsVERTIPOEXAME: TStringField;
    cdsVERMEDICOSOLICITANTE: TIntegerField;
    cdsVERCONVENIO: TStringField;
    cdsVERVALOR: TFloatField;
    cdsVERSITUACAO: TStringField;
    cdsVERMATERIALRECEBIDO: TStringField;
    cdsVERNOMECLIENTE: TStringField;
    cdsVERCOBRANCA: TStringField;
    cdsVERUNICO: TStringField;
    cdsVERNUMERO: TStringField;
    cdsVERIMPRESSO: TStringField;
    cdsVERDEVOLUCAO: TFloatField;
    cdsVERFORMAPGTO: TStringField;
    cdsVERORIGEM: TIntegerField;
    cdsVERDATASISTEMA: TDateField;
    cdsVERINCLUIU: TStringField;
    cdsVERCANCELA: TStringField;
    cdsVERDEVOLVE: TStringField;
    cdsVERRECEBEU: TStringField;
    sqlVERCODEXAME: TIntegerField;
    sqlVERDATASOLICITACAO: TDateField;
    sqlVERDATAENTREGAMATERIAL: TDateField;
    sqlVERDATAPREVISTAENTREGA: TDateField;
    sqlVERDATALAUDOEXAME: TDateField;
    sqlVERDATARETIRADA: TDateField;
    sqlVERCODCLIENTE: TIntegerField;
    sqlVERTIPOEXAME: TStringField;
    sqlVERMEDICOSOLICITANTE: TIntegerField;
    sqlVERCONVENIO: TStringField;
    sqlVERVALOR: TFloatField;
    sqlVERSITUACAO: TStringField;
    sqlVERMATERIALRECEBIDO: TStringField;
    sqlVERCOBRANCA: TStringField;
    sqlVERUNICO: TStringField;
    sqlVERNUMERO: TStringField;
    sqlVERIMPRESSO: TStringField;
    sqlVERDEVOLUCAO: TFloatField;
    sqlVERDATADEV: TDateField;
    sqlVERFORMAPGTO: TStringField;
    sqlVERORIGEM: TIntegerField;
    sqlVERDATASISTEMA: TDateField;
    sqlVERINCLUIU: TStringField;
    sqlVERCANCELA: TStringField;
    sqlVERDEVOLVE: TStringField;
    sqlVERRECEBEU: TStringField;
    sqlVERNOMECLIENTE: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImpClick(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure cbSerieClick(Sender: TObject);
    procedure btnImp30Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnVERClick(Sender: TObject);
//    procedure dsVERStateChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    usuario , pode , pAntes , pAtual , numero ,datadia , mesmoNum : string;
    origem , exame , ultimo , cliente , codcliente : integer;
    data1 , data2 : TDateTime;
  end;

var
  fLabSolicitaExame: TfLabSolicitaExame;

implementation

uses uClientePlano, UDmSaude, UDm, uLabExameLocaliza, ucadastro ,
  uLaboratorio;

{$R *.dfm}

procedure TfLabSolicitaExame.BitBtn1Click(Sender: TObject);
begin
//  inherited;
  fcadastro:=Tfcadastro.Create(Application);
  grupo := 'PARTICULAR';
  try
   fcadastro.Label15.Visible := false;
   fcadastro.DBEdit13.Visible := false;
   fcadastro.Label16.Visible := false;
   fcadastro.DBEdit14.Visible := false;
   fcadastro.Label17.Visible := false;
   fcadastro.DBEdit15.Visible := false;
   fcadastro.Label8.Visible := false;
   fcadastro.DBEdit6.Visible := false;
   fcadastro.Label7.Visible := false;
   fcadastro.DBEdit5.Visible := false;
   fcadastro.Label5.Visible := false;
   fcadastro.Label13.Caption := 'CPF';
   fcadastro.Label14.Caption := 'RG';
   fcadastro.DBEdit20.Visible := false;
   fcadastro.GroupBox2.Visible := false;
   fcadastro.btnDependente.Visible := false;

   fcadastro.Label18.Visible := false;
   fcadastro.Label32.Visible := false;
 //  fcadastro.Label33.Visible := false;
 //  fcadastro.Label35.Visible := false;
   fcadastro.Label36.Visible := false;
 //  fcadastro.Label37.Visible := false;
   fcadastro.DBEdit31.Visible := false;
//   fcadastro.DBEdit32.Visible := false;
   fcadastro.DBEdit16.Visible := false;
   fcadastro.Label1.Caption := 'Particular';
   fcadastro.Label2.Caption := 'Particular';

   fcadastro.MMJPanel2.Background.StartColor := clMaroon ;
   fcadastro.MMJPanel1.Background.EndColor := clMaroon ;
   fcadastro.Color := clBtnface;
   fcadastro.ShowModal;
  finally
   fcadastro.Free;
  end;

end;

procedure TfLabSolicitaExame.FormCreate(Sender: TObject);
begin
 // inherited;
 // JvDBDateTimePicker1.Date := Today;
  JvDBDateTimePicker2.Date := Today;
  usuario := fLaboratorio.UserLab.CurrentUser.UserName;

  if(usuario = 'Carmen')then
  pode := 's';
  if(usuario = 'regiane')then
  pode := 's';


  if(pode = 's')then
  begin
   if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE , INSCESTADUAL ' +
    'FROM CLIENTES WHERE STATUS = 0 and GRUPO_CLIENTE = ' + QuotedStr('ASH') + 'ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;
  cbCliente.ItemIndex := -1;
  cbRG.ItemIndex := -1;
  cbSerie.Text := 'ASH';
  end;

 {
  if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE , INSCESTADUAL ' +
    'FROM CLIENTES WHERE STATUS = 0 ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;
  cbCliente.ItemIndex := -1;
 }
   if(cbSerie.Text = '')then
   begin

   if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE , INSCESTADUAL ' +
    'FROM CLIENTES WHERE STATUS = 0 and GRUPO_CLIENTE = ' + QuotedStr('PARTICULAR') + 'ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;
  cbCliente.ItemIndex := -1;
  cbRG.ItemIndex := -1;
  end;

 
   if (cdsexame.Active) then
    cdsexame.close;
  cdsexame.Params[0].AsString := 'EXAMES';
  cdsexame.Open;

  While not cdsexame.Eof do
  begin
    cbExame.Items.Add(cdsexameDESCRICAO.AsString);
    cdsexame.Next;
{
  if (dmSaude.cdsCombo.Active) then
    dmSaude.cdsCombo.close;
  dmSaude.cdsCombo.Params[0].AsString := 'EXAMES';
  dmSaude.cdsCombo.Open;

  While not dmSaude.cdsCombo.Eof do
  begin
    cbExame.Items.Add(dmSaude.cdsComboDESCRICAO.AsString);
    dmSaude.cdsCombo.Next;
}
 end;

end;

procedure TfLabSolicitaExame.btnIncluirClick(Sender: TObject);
begin

  if(DMSaude.cdsExameIMPRESSO.Text = 'SIM')then
  Begin
    MessageDlg('Não pode Incluir Exames em Lançamentos Com Recibo !', mtWarning, [mbOK], 0);
    exit;
  end;

  inherited;

  //  end;


  {
  if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE ' +
    'FROM CLIENTES WHERE STATUS = 0 ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;
//  cbCliente.ItemIndex := -1;
 }
 // JvDBDateTimePicker1.Date := data1 ;

  JvDBDateTimePicker2.Date := Today ;
 // dt1.Date := Today;
 //  JvDBDateTimePicker2.Date := Today;
 // JvDBDateTimePicker1.DropDownDate := Today;
 // JvDBDateTimePicker2.DropDownDate := Today;
//  dmSaude.cdsExameSITUACAO.AsString := 'NÃO COLETADO';
  dmSaude.cdsExameCOBRANCA.AsString := '0';
 // dmSaude.cdsExameVALOR.AsString := cdsexameOUTROS.AsString;

  if(cbCliente.Enabled <> False)  then
  begin
    cbCliente.SetFocus;
  end;

  if(exame = 0) then
  begin
    exame := 1;
  end;

  if(origem <> 1) then
  begin
    cdsVER.Open;
    cdsVER.Append; 
  end;


end;

procedure TfLabSolicitaExame.btnGravarClick(Sender: TObject);
  var seque : integer;
     // datasol : Tdatetime ;
begin
  cbCliente.Enabled := False;

  datadia := dt1.Text;

  if(DMSaude.cdsExameIMPRESSO.Text = 'SIM')then
  Begin
    MessageDlg('Não pode Alterar Exames Com Recibo !', mtWarning, [mbOK], 0);
    exit;
  end;


  if((pode = 'n')and(DBRadioGroup1.ItemIndex = 0))then
  begin
    MessageDlg('Escolher Tipo de Cobrança ....', mtConfirmation, [mbOK], 0);
    exit;
  end;

  // GERAR NUMERO RECIBO

  if (DBText1.Caption = 'PARTICULAR') then
  begin

    if not (cdsEmpresa.Active) then
    cdsEmpresa.Open;

    if(cdsEmpresa.State in [dsEdit , dsBrowse ]) then
    cdsEmpresa.Edit;

    // Aqui verifico as Datas para saber se é no mesmo Dia
    if(DATAHJ.Text <> cdsEmpresaDIVERSOS2.AsString)then
    begin
      cdsEmpresaDIVERSOS2.AsString := DATAHJ.Text ;
      cdsEmpresaCODIGO_CONTA.AsInteger := 0;
    end;
    // Aqui vejo se é a mesma Pessoa
    if(cbCliente.Text <> cdsEmpresaDIVERSOS3.AsString) then
    begin
      pAntes := cdsEmpresaDIVERSOS3.AsString;
      pAtual := cbCliente.Text ;
      cdsEmpresaDIVERSOS2.AsString := DATAHJ.Text ;
      cdsEmpresaDIVERSOS3.AsString := cbCliente.Text;
      seque:= cdsEmpresaCODIGO_CONTA.AsInteger;
      seque:= seque+1;
      cdsEmpresaCODIGO_CONTA.AsInteger := seque;
      cdsEmpresa.ApplyUpdates(0);

    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_IMP, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DMSaude.cdsExameNUMERO.AsString := IntToStr(dm.c_6_genid.Fields[0].AsInteger);
    mesmoNum := DMSaude.cdsExameNUMERO.AsString;

    dm.c_6_genid.Close;

    end;

    if(pAntes = '')then
    pAntes := cbCliente.Text ;


    //DMSaude.cdsExameNUMERO.AsString := (cdsEmpresaDIVERSOS2.AsString + '-' + IntToStr(cdsEmpresaCODIGO_CONTA.AsInteger));

  end;


  dmSaude.cdsExameDATASOLICITACAO.AsString := dt1.Text ;
  data2 := JvDBDateTimePicker2.Date;
  dmSaude.cdsExameCodCliente.AsInteger := cdsClienteBuscaCodCliente.asInteger;
  dmSaude.cdsExameNOMECLIENTE.AsString := cdsClienteBuscaNomeCliente.asString;
  dmSaude.cdsExameDATAPREVISTAENTREGA.AsDateTime := JvDBDateTimePicker2.Date;
  dmSaude.cdsExameTIPOEXAME.AsString := cbExame.Text;
  dmSaude.cdsExameCONVENIO.AsString := cdsClienteBuscaGRUPO_CLIENTE.AsString;
  dmSaude.cdsExameSITUACAO.AsString := 'NÃO COLETADO';
  
  if ((DBText1.Caption = 'PCMSO')or(DBText1.Caption = 'ASH')) then
  begin
    dmSaude.cdsExameDATASISTEMA.AsDateTime := Today;
  end;

  if (cdsq.Active) then
  cdsq.Close;
  cdsq.Params[0].AsString := cbExame.Text;
  cdsq.open;

  DecimalSeparator := '.';

  if (dmSaude.cdsExameCOBRANCA.AsString = '2') then
  dmSaude.cdsExameVALOR.AsString := cdsqOUTROS.AsString; //cdsexameOUTROS.AsString;  // 50 % valor
  if (dmSaude.cdsExameCOBRANCA.AsString = '3') then
  dmSaude.cdsExameVALOR.AsString :=  cdsqDIVERSOS.AsString; //cdsexameDIVERSOS.AsString; // 100% valor


  if (not procMedico.Active) then
     procMedico.Open;
  procMedico.Locate('NOME_REPRFOR', cbMedico.Text,[loCaseInsensitive]);
  dmSaude.cdsExameMEDICOSOLICITANTE.AsInteger := procMedicoCOD_REPRFOR.AsInteger;


  if (DtSrc.State in [dsInsert]) then
  begin
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(LABEXAMECOD, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DMSaude.cdsExameCODEXAME.AsInteger := dm.c_6_genid.Fields[0].AsInteger;


  //  if (DBText1.Caption = 'PARTICULAR') then
   // begin
      if(exame = 1) then
      begin
        origem := DMSaude.cdsExameCODEXAME.AsInteger; //dm.c_6_genid.Fields[0].AsInteger;
      end;

      DMSaude.cdsExameORIGEM.AsInteger := origem;

      DMSaude.sqlUltimo.Close;
      DMSaude.sqlUltimo.Open;
      DMSaude.sqlUltimoORIGEM.AsInteger;

      codcliente := DMSaude.cdsExameCODCLIENTE.AsInteger;

      cliente := DMSaude.sqlUltimoCodCliente.AsInteger;
      ultimo := DMSaude.sqlUltimoORIGEM.AsInteger;
      if(ultimo = 0) then
      begin
        ultimo := origem;
      end;
  //  end;
                     // outra pessoa
    if((cbCliente.Text = pAntes) and (origem <> ultimo)) then
   // if((cbCliente.Text = cdsEmpresaDIVERSOS3.AsString) and (origem <> ultimo)) then
   // if((codcliente = cliente) and (origem <> ultimo)) then
    begin
      seque:= cdsEmpresaCODIGO_CONTA.AsInteger;
      seque:= seque+1;
      cdsEmpresaCODIGO_CONTA.AsInteger := seque;
      cdsEmpresa.ApplyUpdates(0);

      //DMSaude.cdsExameNUMERO.AsString := (cdsEmpresaDIVERSOS2.AsString + '-' + IntToStr(cdsEmpresaCODIGO_CONTA.AsInteger));
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_IMP, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DMSaude.cdsExameNUMERO.AsString := IntToStr(dm.c_6_genid.Fields[0].AsInteger);
    mesmoNum := DMSaude.cdsExameNUMERO.AsString;
    end;


    dm.c_6_genid.Close;
    exame := exame + 1;
  end;
  DecimalSeparator := ',';

  numero := mesmoNum;
  DMSaude.cdsExameNUMERO.AsString := numero;

  if (DBText1.Caption = 'PARTICULAR') then
  begin
     if(numero = '') then
     begin
       if dm.c_6_genid.Active then
       begin
         dm.c_6_genid.Close;
         dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_IMP, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
         dm.c_6_genid.Open;
         DMSaude.cdsExameNUMERO.AsString := IntToStr(dm.c_6_genid.Fields[0].AsInteger);
         mesmoNum := DMSaude.cdsExameNUMERO.AsString;
       end;
       dm.c_6_genid.Close;
       exame := exame + 1;
     end;
  end;

  DMSaude.cdsExameINCLUIU.AsString := fLaboratorio.UserLab.CurrentUser.UserName;
  DMSaude.cdsExameIMPRESSO.AsString := 'NÃO';

  {
  fLaboratorio.cdsE.Close;
  if not fLaboratorio.cdsE.Active then
     fLaboratorio.cdsE.Open;
  fLaboratorio.cdsE.Refresh;
  }
  //fLaboratorio.btnatu.Click;
  inherited;
  Label11.Caption := IntToStr(DMSaude.cdsExame.RecordCount);

  cdsEx.Close;
  cdsEx.Params[0].AsInteger := DMSaude.cdsExameORIGEM.AsInteger;
  cdsEx.Open;
  Label12.Caption := IntToStr(cdsEx.RecordCount);

  btnVER.Click;

end;

procedure TfLabSolicitaExame.btnProcurarClick(Sender: TObject);
begin
  inherited;

  {
  if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE ' +
    'FROM CLIENTES WHERE STATUS = 0 ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;

 }
   if((usuario = 'Carmen')or(usuario = 'adm'))then
   begin

  fLabExameLocaliza := TfLabExameLocaliza.Create(Application);
  try
    fLabExameLocaliza.ShowModal;
    if (dmSaude.cdsExame.Active) then
      dmSaude.cdsExame.Close;
    dmSaude.cdsExame.Params[0].AsInteger := fLabExameLocaliza.codExame;
    dmSaude.cdsExame.open;
    if ( not DMSaude.cdsExame.IsEmpty) then
    BEGIN
      DMSaude.cdsExame.Edit;
      cdsClienteBusca.Locate('CODCLIENTE',DMSaude.cdsExameCODCLIENTE.AsInteger,[loPartialKey]);
      cdsMedico.Locate('COD_REPRFOR',DMSaude.cdsExameMEDICOSOLICITANTE.AsInteger,[loPartialKey]);
      cdsexame.Locate('DESCRICAO', DMSaude.cdsExameTIPOEXAME.AsString,[loCaseInsensitive]);
    END;

  finally
    fLabExameLocaliza.Free;
  end;
 end;

end;

procedure TfLabSolicitaExame.FormShow(Sender: TObject);
begin
  inherited;
  pode := 'n';
  data1 := Today;
  data2 := Today;
 // JvDBDateTimePicker1.Date := Today;
  JvDBDateTimePicker2.Date := Today;
  usuario := fLaboratorio.UserLab.CurrentUser.UserName;
  Label6.Caption := fLaboratorio.UserLab.CurrentUser.UserName;

  if(usuario = 'Carmen')then
  pode := 's';
  if(usuario = 'regiane')then
  pode := 's';

  if((usuario = 'Carmen')or(usuario = 'regiane'))then
  begin
    if (cdsexame.Active) then
    begin
      cdsexame.Close;
      cdsexame.Params[0].AsString := 'EXAMES';
      cdsexame.CommandText := 'select * from DADOS_COMBOS where USO =' + QuotedStr('EXAMES')+' and unico = 1 '  ;
      cdsexame.Open;
    end;
  end;

  if(pode = 'n')then
  begin
    if (cdsexame.Active) then
    begin
      cdsexame.Close;
      cdsexame.Params[0].AsString := 'EXAMES';
      cdsexame.CommandText := 'select * from DADOS_COMBOS where USO =' + QuotedStr('EXAMES')+' order by DESCRICAO'  ;
      cdsexame.Open;
    end;
  end;

  if (not cdsMedico.Active) then
    cdsMedico.Open;

  if(not DMSaude.cdsExame.Active) then
  begin
    DMSaude.cdsExame.Close;
    DMSaude.cdsExame.Params[0].Clear;
  end;
  cbCliente.SetFocus;

  DBRadioGroup1.ItemIndex := 0;

end;

procedure TfLabSolicitaExame.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (cdsexame.Active) then
      cdsexame.Close;
  if (cdsMedico.Active) then
    cdsMedico.Close;

end;

procedure TfLabSolicitaExame.btnImpClick(Sender: TObject);
var
  atualizar: string;
  TD: TTransactionDesc;
  quantos : integer;
begin
  if (DBText1.Caption <> 'PARTICULAR') then
  begin
    MessageDlg('Somente para Particular Gera Recibo !', mtWarning, [mbOK], 0);
  end;
  if (DBText1.Caption = 'PARTICULAR') then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.sqlsisAdimin.StartTransaction(TD);
    atualizar := '';
    atualizar := 'update LABEXAME set IMPRESSO = ' + QuotedStr('SIM');
    atualizar := atualizar + ' , DATASISTEMA = ';
    atualizar := atualizar + QuotedStr(FormatDateTime('mm/dd/yyyy',DATAHJ.Date));
    atualizar := atualizar + ' , RECEBEU = ';
    atualizar := atualizar + QuotedStr(fLaboratorio.UserLab.CurrentUser.UserName);
    atualizar := atualizar + ' where NUMERO = ';
    atualizar := atualizar + QuotedStr(DMSaude.cdsExameNUMERO.Text) ;
    atualizar := atualizar + ' and VALOR <> ';
    atualizar := atualizar + QuotedStr('0') ;
    DM.sqlsisAdimin.ExecuteDirect(atualizar);
    DM.sqlsisAdimin.Commit(TD);

    DMSaude.cdsExame.ApplyUpdates(0);

    if( DATAHJ.Text <> datadia) then
    begin
      DATAHJ.Text := datadia;
    end;

    quantos := DMSaude.cdsExame.RecordCount;

   // inherited;

    if(quantos < 21) then
    begin
      VCLReport1.FileName := str_relatorio + 'recibo_exames.rep';
      VCLReport1.Title := str_relatorio + 'recibo_exames.rep';
    end;

    if(quantos > 20) then
    begin
      VCLReport1.FileName := str_relatorio + 'recibo_exames30.rep';
      VCLReport1.Title := str_relatorio + 'recibo_exames30.rep';
    end;


    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('TITULAR').Value := cbCliente.Text;
    VCLReport1.Report.Params.ParamByName('DTA1').Value := DATAHJ.Text;
    VCLReport1.Report.Params.ParamByName('numeros').Value := numero;
    //VCLReport1.Report.Params.ParamByName('VIA').Value := ' 1ª Via';
    VCLReport1.Execute;
    DMSaude.cdsExame.Close;
    cdsVER.Close;
    cbCliente.Text := '';
    btnIncluir.Enabled := False;
    btnProcurar.Enabled := False;
    btnImp.Enabled := False;
    btnImp30.Enabled := False;
    origem := 0;
  end;
end;

procedure TfLabSolicitaExame.DBRadioGroup1Change(Sender: TObject);
begin
  //inherited;
{ if(DBRadioGroup1.ItemIndex = 1) then
   if (cdsexame.Active) then
      cdsexame.Close;
//  cdsexame.Params[0].AsString := 'EXAMES';
  cdsexame.CommandText := 'select * from DADOS_COMBOS where USO =' + QuotedStr('EXAMES') + ' and UNICO = '+ QuotedStr('0') ;
  cdsexame.Open;
}
end;

procedure TfLabSolicitaExame.btnExcluirClick(Sender: TObject);
var atualizar , str : string;
    TD: TTransactionDesc;
    contar : integer;
begin
  if(DMSaude.cdsExameIMPRESSO.Text = 'SIM')then
  Begin
    MessageDlg('Não pode Excluir Exames Com Recibo !', mtWarning, [mbOK], 0);
    exit;
  end;

  if(DMSaude.cdsExameSITUACAO.Text = 'EXCLUIDO')then
  Begin
    MessageDlg('Exame já Exluido!', mtWarning, [mbOK], 0);
    exit;
  end;

 // inherited;
  // aqui
     try
       TD.IsolationLevel := xilREADCOMMITTED;
       DM.sqlsisAdimin.StartTransaction(TD);
       atualizar := '';
       atualizar := 'update LABEXAME  set DEVOLUCAO = ' + QuotedStr(FloatToStr(0)) ;
       atualizar := atualizar + ', VALOR = ' + QuotedStr(FloatToStr(0)) ;
       atualizar := atualizar + ', SITUACAO = ' + QuotedStr('EXCLUIDO') ;
       atualizar := atualizar + ' , DATADEV = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',DATAHJ.Date));
       atualizar := atualizar + ' , CANCELA = ' + QuotedStr(fLaboratorio.UserLab.CurrentUser.UserName);
       atualizar := atualizar + ' where CODEXAME = ';
       atualizar := atualizar + QuotedStr(DMSaude.cdsExameCODEXAME.Text) ;
       atualizar := atualizar + ' and SITUACAO <> ';
       atualizar := atualizar + QuotedStr('EXCLUIDO') ;
       DM.sqlsisAdimin.ExecuteDirect(atualizar);
       DM.sqlsisAdimin.Commit(TD);

      // DMSaude.cdsExame.Edit;
      // DMSaude.cdsExameSITUACAO.AsString := 'EXCLUIDO' ;

       MessageDlg('Exame ' + DMSaude.cdsExameTIPOEXAME.AsString + ' Excluido', mtInformation, [mbOK], 0);

       DMSaude.cdsExame.ApplyUpdates(0);
     except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Exame Ja Excluido', mtInformation, [mbOK], 0);
     end;
     
     cdsEx.Close;
     cdsEx.Params[0].AsInteger := DMSaude.cdsExameORIGEM.AsInteger;
     cdsEx.Open;
     Label12.Caption := IntToStr(cdsEx.RecordCount);

     if (Label11.Caption = Label12.Caption) then
     begin
       btnIncluir.Enabled := False;
       MessageDlg('Numero de Recibo Excluido', mtInformation, [mbOK], 0);
     end;

   btnVER.Click;
end;

procedure TfLabSolicitaExame.cbSerieClick(Sender: TObject);
begin
 // inherited;

    if(cbSerie.Text = '')then
   begin

   if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE , INSCESTADUAL ' +
    'FROM CLIENTES WHERE STATUS = 0 and GRUPO_CLIENTE = ' + QuotedStr('PARTICULAR') + 'ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;
  cbCliente.ItemIndex := 0;

  end;

   if(cbSerie.Text <> '')then
   begin

   if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE , INSCESTADUAL ' +
    'FROM CLIENTES WHERE STATUS = 0 and GRUPO_CLIENTE = ' + QuotedStr(cbSerie.Text) + 'ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;
  cbCliente.ItemIndex := 0;
  end;

   if(cbSerie.Text <> 'ASH')then
   begin

   if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE , INSCESTADUAL ' +
    'FROM CLIENTES WHERE STATUS = 0 and GRUPO_CLIENTE = ' + QuotedStr(cbSerie.Text) + 'ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;
  cbCliente.ItemIndex := -1;
  cbRG.ItemIndex := -1;
  end;

end;



procedure TfLabSolicitaExame.btnImp30Click(Sender: TObject);

var
  atualizar: string;
  TD: TTransactionDesc;
begin
  if (DBText1.Caption = 'PARTICULAR') then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.sqlsisAdimin.StartTransaction(TD);
    atualizar := '';
    atualizar := 'update LABEXAME set IMPRESSO = ' + QuotedStr('SIM');
    atualizar := atualizar + ' where NUMERO = ';
    atualizar := atualizar + QuotedStr(DMSaude.cdsExameNUMERO.Text) ;
    DM.sqlsisAdimin.ExecuteDirect(atualizar);
    DM.sqlsisAdimin.Commit(TD);

    DMSaude.cdsExame.ApplyUpdates(0);


    if( DATAHJ.Text <> datadia) then
    begin
      DATAHJ.Text := datadia;
    end;

    // inherited;
    VCLReport1.FileName := str_relatorio + 'recibo_exames30.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('TITULAR').Value := cbCliente.Text;
    VCLReport1.Report.Params.ParamByName('DTA1').Value := DATAHJ.Text;
    VCLReport1.Report.Params.ParamByName('numeros').Value := numero;
    //VCLReport1.Report.Params.ParamByName('VIA').Value := ' 1ª Via';
    VCLReport1.Execute;
    DMSaude.cdsExame.Close;
    cbCliente.Text := '';
    btnIncluir.Enabled := False;
    btnProcurar.Enabled := False;
    btnImp.Enabled := False;
    btnImp30.Enabled := False;
    origem := 0;
  end;

end;

procedure TfLabSolicitaExame.btnSairClick(Sender: TObject);
begin
  inherited;
  origem := 0;
  fLaboratorio.btnatu.Click;

end;

procedure TfLabSolicitaExame.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
//begin
 // inherited;
begin
  if Column.Field = DMSaude.cdsExameSITUACAO then
   if DMSaude.cdsExameSITUACAO.AsString = 'NÃO COLETADO' then
   begin
     jvDBGrid1.Canvas.Font.Color := clBlue;
     jvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = DMSaude.cdsExameSITUACAO then
   if DMSaude.cdsExameSITUACAO.AsString = 'EXCLUIDO' then
   begin
     jvDBGrid1.Canvas.Font.Color := clRed;
     jvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
end;

procedure TfLabSolicitaExame.JvDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
//begin
 // inherited;
begin
  if Column.Field = cdsVERSITUACAO then
   if cdsVERSITUACAO.AsString = 'NÃO COLETADO' then
   begin
     jvDBGrid2.Canvas.Font.Color := clBlue;
     jvDBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = cdsVERSITUACAO then
   if cdsVERSITUACAO.AsString = 'EXCLUIDO' then
   begin
     jvDBGrid2.Canvas.Font.Color := clRed;
     jvDBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
end;

procedure TfLabSolicitaExame.btnVERClick(Sender: TObject);
begin
 // inherited;
      cdsVER.Close;
      cdsVER.Params[0].AsInteger := origem;
      cdsVER.Open;
      cdsVER.Last;
end;

end.
