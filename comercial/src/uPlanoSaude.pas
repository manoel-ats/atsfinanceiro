unit uPlanoSaude;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxCore, dxButton, Buttons, ExtCtrls, MMJPanel, Menus,
  EOneInst, FMTBcd, SqlExpr, Provider, DB, DBClient, rpcompobase,
  rpvclreport, UCBase, ActnList, ComCtrls;

type
  TfPlanoSaude = class(TForm)
    MMJPanel2: TMMJPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    MMJPanel1: TMMJPanel;
    btColaboradores: TdxButton;
    btCadastroASH: TdxButton;
    btCadastroPCMSO: TdxButton;
    btBuscaGuia: TdxButton;
    btGeraGuia: TdxButton;
    btContratado: TdxButton;
    MMJPanel3: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Acessos1: TMenuItem;
    Backup1: TMenuItem;
    Parmetros1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    SobreoSistema1: TMenuItem;
    PopupMenu1: TPopupMenu;
    ContasPagar2: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    AssociadosCtrlU1: TMenuItem;
    ss1: TMenuItem;
    FAIXAASH1: TMenuItem;
    CadastroAssociadoASH1: TMenuItem;
    EvOneInstance1: TEvOneInstance;
    CadastrosPCMSO1: TMenuItem;
    FunesFuncionarios1: TMenuItem;
    FaixaPlanoPCMSO1: TMenuItem;
    CadastroAssociadoPCMSO2: TMenuItem;
    Cadstros1: TMenuItem;
    Diagnosticos2: TMenuItem;
    Hospitais2: TMenuItem;
    anestesias1: TMenuItem;
    ipoConsulta2: TMenuItem;
    ValorExame1: TMenuItem;
    cds_parametro: TClientDataSet;
    cds_parametroDESCRICAO: TStringField;
    cds_parametroPARAMETRO: TStringField;
    cds_parametroCONFIGURADO: TStringField;
    cds_parametroDADOS: TStringField;
    cds_parametroD1: TStringField;
    cds_parametroD2: TStringField;
    cds_parametroD3: TStringField;
    cds_parametroD4: TStringField;
    cds_parametroD5: TStringField;
    cds_parametroD6: TStringField;
    cds_parametroD7: TStringField;
    cds_parametroD8: TStringField;
    cds_parametroD9: TStringField;
    cds_parametroINSTRUCOES: TStringField;
    dsp: TDataSetProvider;
    sds_parametro: TSQLDataSet;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroDADOS: TStringField;
    sds_parametroD1: TStringField;
    sds_parametroD2: TStringField;
    sds_parametroD3: TStringField;
    sds_parametroD4: TStringField;
    sds_parametroD5: TStringField;
    sds_parametroD6: TStringField;
    sds_parametroD7: TStringField;
    sds_parametroD8: TStringField;
    sds_parametroD9: TStringField;
    sds_parametroINSTRUCOES: TStringField;
    Colaboradores1: TMenuItem;
    AssociadosASH1: TMenuItem;
    VCLReport1: TVCLReport;
    VCLReport2: TVCLReport;
    AsseDepASH1: TMenuItem;
    Sobre1: TMenuItem;
    VCLReport3: TVCLReport;
    EmpreFuncPCMSO1: TMenuItem;
    VCLReport4: TVCLReport;
    btEditarGuia: TdxButton;
    MudanadeFaixa1: TMenuItem;
    dxButton8: TdxButton;
    btCadastroParticular: TdxButton;
    dxButton10: TdxButton;
    dxButton11: TdxButton;
    GerarGuia1: TMenuItem;
    BuscarGuiaCtrlB1: TMenuItem;
    EditarGuiaCtrlE1: TMenuItem;
    RelatiosEmpresas1: TMenuItem;
    AsseDepOrdem1: TMenuItem;
    AssociadosporFaixa1: TMenuItem;
    AssociadosVotam1: TMenuItem;
    N2: TMenuItem;
    CadastrarUsuario1: TMenuItem;
    rocarSenha1: TMenuItem;
    rocarUsuario1: TMenuItem;
    UserControlSaude: TUserControl;
    Botoes: TActionList;
    aCadastro_ASH: TAction;
    bCadastroPcmso: TAction;
    Contratado1: TMenuItem;
    cColaboradores: TAction;
    dContratado: TAction;
    eGerarGuia: TAction;
    fBuscarGuia: TAction;
    gEditarGuia: TAction;
    hCadastroParticular: TAction;
    iCadastrarUsuario: TAction;
    jTrocarSenha: TAction;
    jTrocarUsuario: TAction;
    N3: TMenuItem;
    N4: TMenuItem;
    CadastrarUsuario2: TMenuItem;
    rocarSenha2: TMenuItem;
    trocarUsuarioLogOff1: TMenuItem;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    StatusBar1: TStatusBar;
    N5: TMenuItem;
    Historico1: TMenuItem;
    Nascidos1: TMenuItem;
    IncluidonoPeriodo1: TMenuItem;
    ExcluidosnoPeriodo1: TMenuItem;
    IdadeSexo1: TMenuItem;
    CodigoIBGE1: TMenuItem;
    ExportaSite1: TMenuItem;
    NovosSocios1: TMenuItem;
    MaiorsemCPF1: TMenuItem;
    AssocDebitoAutomatico1: TMenuItem;
    Label4: TLabel;
    MenorTitularSemCPF1: TMenuItem;
    SemCCO1: TMenuItem;
    UmSocioporFaixa1: TMenuItem;
    EmpresasCompleto1: TMenuItem;
    SequenciaRemessa1: TMenuItem;
    Setor1: TMenuItem;
    AtendimentoASO1: TMenuItem;
    AdmissionalAudiometria1: TMenuItem;
    procedure SpeedButton3Click(Sender: TObject);
    procedure ss1Click(Sender: TObject);
    procedure FAIXAASH1Click(Sender: TObject);
    procedure CadastroAssociadoASH1Click(Sender: TObject);
    procedure FunesFuncionarios1Click(Sender: TObject);
    procedure FaixaPlanoPCMSO1Click(Sender: TObject);
    procedure CadastroAssociadoPCMSO2Click(Sender: TObject);
    procedure Diagnosticos2Click(Sender: TObject);
    procedure Hospitais2Click(Sender: TObject);
    procedure anestesias1Click(Sender: TObject);
    procedure ipoConsulta2Click(Sender: TObject);
    procedure ValorExame1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Colaboradores1Click(Sender: TObject);
    procedure AssociadosASH1Click(Sender: TObject);
    procedure AsseDepASH1Click(Sender: TObject);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure EmpreFuncPCMSO1Click(Sender: TObject);
    procedure btGeraGuiaClick(Sender: TObject);
    procedure btBuscaGuiaClick(Sender: TObject);
    procedure btEditarGuiaClick(Sender: TObject);
    procedure MudanadeFaixa1Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure btCadastroParticularClick(Sender: TObject);
    procedure dxButton10Click(Sender: TObject);
    procedure dxButton11Click(Sender: TObject);
    procedure RelatiosEmpresas1Click(Sender: TObject);
    procedure AsseDepOrdem1Click(Sender: TObject);
    procedure AssociadosporFaixa1Click(Sender: TObject);
    procedure AssociadosVotam1Click(Sender: TObject);
    procedure Contratado1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Nascidos1Click(Sender: TObject);
    procedure IncluidonoPeriodo1Click(Sender: TObject);
    procedure ExcluidosnoPeriodo1Click(Sender: TObject);
    procedure IdadeSexo1Click(Sender: TObject);
    procedure CodigoIBGE1Click(Sender: TObject);
    procedure ExportaSite1Click(Sender: TObject);
    procedure NovosSocios1Click(Sender: TObject);
    procedure MaiorsemCPF1Click(Sender: TObject);
    procedure AssocDebitoAutomatico1Click(Sender: TObject);
    procedure MenorTitularSemCPF1Click(Sender: TObject);
    procedure SemCCO1Click(Sender: TObject);
    procedure UmSocioporFaixa1Click(Sender: TObject);
    procedure EmpresasCompleto1Click(Sender: TObject);
    procedure SequenciaRemessa1Click(Sender: TObject);
    procedure Setor1Click(Sender: TObject);
    procedure AtendimentoASO1Click(Sender: TObject);
    procedure AdmissionalAudiometria1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
      function GetVersion: string;
  end;

var
  fPlanoSaude: TfPlanoSaude;

implementation

uses uClientePlano, uPlanoFaixa, uCombo, UDmSaude, ufuncionario,
     uFornecedorCadastroSaude, uFiltroGuia, uFaixaMudanca, uDM,
  uLancaProcSaude, uLancaProcSaudeProc, uListaClieDep,uRelPcmo,uVotam,
  ufaturamento, uresumointernacao, udemonstrativo, uIdadeSexo, UIbge,
  uCadDA, ufNumrem, uRaso, uRelAA;

{$R *.dfm}

procedure TfPlanoSaude.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

procedure TfPlanoSaude.ss1Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'TIPO DEPENDENTE';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'TIPO DEPENDENTE';
  fCombo.Label1.Caption := 'TIPO DEPENDENTE';
  fCombo.Label2.Caption := 'TIPO DEPENDENTE';
  fCombo.Label8.Visible := false;
  fCombo.DBRadioGroup1.Visible := false;
  fCombo.DBEdit5.Visible := false;
  FCombo.Label5.Caption := 'ANS';
  fCombo.DBGrid1.Columns[2].Title.Caption :='ANS';
  fCombo.DBGrid1.Columns[3].Visible := false;
  fCombo.DBGrid1.Columns[4].Visible := false;
  fCombo.Color := clSkyBlue;
  fCombo.MMJPanel2.Background.StartColor := clSkyBlue;
  fCombo.MMJPanel1.Background.EndColor := clSkyBlue;

  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;

end;

procedure TfPlanoSaude.FAIXAASH1Click(Sender: TObject);
begin
  fPlanoFaixa:=TfPlanoFaixa.Create(Application);
  if DMSaude.cdsFaixa.Active then
    DMSaude.cdsFaixa.Close;
  DMSaude.cdsFaixa.Params[0].AsString := 'ASH';
  DMSaude.cdsFaixa.Open;
  faixa := 'ASH';
  fPlanoFaixa.Label1.Caption := 'PLANO FAIXA ASH';
  fPlanoFaixa.Label2.Caption := 'PLANO FAIXA ASH';
  fPlanoFaixa.Label4.Caption := 'IDADE MIN';
  fPlanoFaixa.Label5.Caption := 'IDADE MAX';
  fPlanoFaixa.DBGrid1.Columns[2].Title.Caption :='IDADE MIN';
  fPlanoFaixa.DBGrid1.Columns[3].Title.Caption :='IDADE MAX';
  fPlanoFaixa.Color := clSkyBlue;
  fPlanoFaixa.MMJPanel2.Background.StartColor := clSkyBlue;
  fPlanoFaixa.MMJPanel1.Background.EndColor := clSkyBlue;
  try
    fPlanoFaixa.ShowModal;
  finally
    fPlanoFaixa.Free;
  end;
end;

procedure TfPlanoSaude.CadastroAssociadoASH1Click(Sender: TObject);
begin
//  fCLientePlano:=TfCLientePlano.Create(Application);
  grupo := 'ASH';
  fClientePlano.MMJPanel2.Background.StartColor := clSkyBlue ;
  fClientePlano.MMJPanel1.Background.EndColor := clSkyBlue ;
  fClientePlano.Color := clSkyBlue ;
  fClientePlano.Label1.Caption := 'ASH';
  fClientePlano.Label2.Caption := 'ASH';
  fClientePlano.Label38.Visible := False;
  fClientePlano.Label39.Visible := false;
  fClientePlano.DBEdit33.Visible := False;
  fClientePlano.btnDependente.Caption := 'F5-DEPENDENTE';

  ///apos usercontrol
   fClientePlano.Label15.Visible := True;
   fClientePlano.DBEdit13.Visible := True;
   fClientePlano.Label16.Visible := True;
   fClientePlano.DBEdit14.Visible := True;
   fClientePlano.Label17.Visible := True;
   fClientePlano.DBEdit15.Visible := True;
   fClientePlano.Label8.Visible := True;
   fClientePlano.DBEdit6.Visible := True;
   fClientePlano.Label7.Visible := True;
   fClientePlano.DBEdit5.Visible := True;
   fClientePlano.Label5.Visible := True;
   fClientePlano.DBEdit3.Visible := True;
   DMSaude.cdsClienteCNPJ.EditMask := '000.000.000-00;1;_';
   fClientePlano.Label14.Caption := 'CPF';
   fClientePlano.Label13.Caption := 'RG';
   fClientePlano.DBEdit20.Visible := True;
   fClientePlano.Label32.Visible := True;
   fClientePlano.Label33.Visible := True;
   fClientePlano.Label34.Visible := True;
   fClientePlano.Label35.Visible := True;
   fClientePlano.Label36.Visible := True;
   fClientePlano.DBEdit31.Visible := True;
   fClientePlano.DBEdit32.Visible := True;
   fClientePlano.Label37.Visible := True;
   fClientePlano.GroupBox1.Visible := True;
   fClientePlano.GroupBox2.Visible := True;
   fClientePlano.GroupBox3.Visible := True;
   fClientePlano.btnDependente.Visible := True;
   fClientePlano.DBEdit17.Visible := True;
   fClientePlano.DBEdit18.Visible := True;
   fClientePlano.DBEdit19.Visible := True;

   fClientePlano.DBEdit36.Visible := True;
   fClientePlano.DBEdit37.Visible := True;
   ///fClientePlano.Label44.Visible := True;
   ///fClientePlano.Label45.Visible := True;

   fClientePlano.GroupBox3.Visible := True;
   fClientePlano.DBEdit38.Visible := True;
   fClientePlano.BitBtn2.Visible := True;
   fClientePlano.dbedtEXIST_COBERT.Visible := True;
   fClientePlano.DBEdit16.Visible := True;
   fClientePlano.lbl1.Visible := True;
   fClientePlano.Label43.Visible := True;
   fClientePlano.Label18.Visible := True;
   fClientePlano.lbl2.Visible := True;
   fClientePlano.dbeditCNS.Visible := True;
   fClientePlano.Label46.Visible := True;
   fClientePlano.Label47.Visible := True;
   fClientePlano.DBEdit39.Visible := True;
   fClientePlano.DBEdit53.Visible:= True;
   fClientePlano.Label63.Visible := True;
   fClientePlano.BitBtn4.Visible := True;
   fClientePlano.BitBtn5.Visible := True;

//  try
    fCLientePlano.ShowModal;
 // finally
//    fCLientePlano.Free;
//  end;
  Label3.Caption := UserControlSaude.CurrentUser.UserName;
  StatusBar1.Panels[1].Text := UserControlSaude.CurrentUser.UserName;
//  StatusBar1.Panels<0>.Text:=DateToStr(now);
//  StatusBar1.Panels<1>.Text:=TimeToStr(now);
end;

procedure TfPlanoSaude.FunesFuncionarios1Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'FUNCAO FUNCIONARIO';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'FUNCAO FUNCIONARIO';
  fCombo.Color := clMoneyGreen;
  fCombo.Label1.Caption := 'FUNÇÃO FUNCIONARIO';
  fCombo.Label2.Caption := 'FUNÇÃO FUNCIONARIO';
  fCombo.Label5.Visible := false;
  fCombo.DBRadioGroup1.Visible := false;
  fCombo.DBEdit3.Visible := false;
  fCombo.Label8.Visible := false;
  fCombo.DBEdit5.Visible := false;

  fCombo.DBGrid1.Columns[2].Visible := false;
  fCombo.DBGrid1.Columns[3].Visible := false;
  fCombo.DBGrid1.Columns[4].Visible := false;


  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
end;

procedure TfPlanoSaude.FaixaPlanoPCMSO1Click(Sender: TObject);
begin
if DMSaude.cdsFaixa.Active then
    DMSaude.cdsFaixa.Close;
     DMSaude.cdsFaixa.Params[0].AsString := 'PCMSO';
     DMSaude.cdsFaixa.Open;
  fPlanoFaixa:=TfPlanoFaixa.Create(Application);
  faixa := 'PCMSO';
  fPlanoFaixa.Label1.Caption := 'PLANO FAIXA PCMSO';
  fPlanoFaixa.Label2.Caption := 'PLANO FAIXA PCMSO';
  fPlanoFaixa.Color := clMoneyGreen;
  try
   fPlanoFaixa.ShowModal;
 finally
   fPlanoFaixa.Free;
  end;
end;

procedure TfPlanoSaude.CadastroAssociadoPCMSO2Click(Sender: TObject);
begin
//  fCLientePlano:=TfCLientePlano.Create(Application);
   grupo := 'PCMSO';
   fClientePlano.Label1.Caption := 'PCMSO';
   fClientePlano.Label2.Caption := 'PCMSO';
   fClientePlano.MMJPanel2.Background.StartColor := clTeal ;
   fClientePlano.MMJPanel1.Background.EndColor := clTeal ;
   fClientePlano.Color := clMoneyGreen;
//  try
   fClientePlano.Label15.Visible := false;
   fClientePlano.DBEdit13.Visible := false;
   fClientePlano.Label16.Visible := false;
   fClientePlano.DBEdit14.Visible := false;
   fClientePlano.Label17.Visible := false;
   fClientePlano.DBEdit15.Visible := false;
   fClientePlano.Label8.Visible := false;
   fClientePlano.DBEdit6.Visible := false;
   fClientePlano.Label7.Visible := false;
   fClientePlano.DBEdit5.Visible := false;
   fClientePlano.Label5.Visible := false;
   fClientePlano.DBEdit3.Visible := false;
   DMSaude.cdsClienteCNPJ.EditMask := '00.000.000/0000-00;1;_';
   fClientePlano.Label14.Caption := 'CNPJ';
   fClientePlano.Label13.Caption := 'INS.EST';
   fClientePlano.DBEdit20.Visible := false;
   fClientePlano.GroupBox2.Visible := false;
   fClientePlano.Label32.Visible := false;

   fClientePlano.Label33.Visible := True;
   fClientePlano.Label34.Visible := false;
   fClientePlano.Label35.Visible := false;
   fClientePlano.Label36.Visible := false;
   fClientePlano.DBEdit31.Visible := false;
   fClientePlano.DBEdit32.Visible := false;
   fClientePlano.Label37.Visible := False;
   fClientePlano.Label38.Visible := False;
   fClientePlano.DBEdit33.Visible := False;
   fClientePlano.DBEdit36.Visible := False;
   fClientePlano.DBEdit37.Visible := False;
   fClientePlano.Label44.Visible := False;
   fClientePlano.Label45.Visible := False;
   fClientePlano.Label18.Visible := False;
   fClientePlano.DBEdit16.Visible := False;
   fClientePlano.Label43.Visible := False;
   fClientePlano.Label39.Visible := True;
   fClientePlano.Label41.Visible := False;
 //  fClientePlano.Label23.Visible := False;
   fClientePlano.DBEdit34.Visible := False;
//   fClientePlano.DBEdit21.Visible := False;
   fClientePlano.GroupBox2.Visible := False;
   fClientePlano.GroupBox3.Visible := False;
   fClientePlano.DBEdit38.Visible := False;
   fClientePlano.BitBtn2.Visible := False;
   fClientePlano.dbedtEXIST_COBERT.Visible := False;
   fClientePlano.lbl1.Visible := False;
   fClientePlano.lbl2.Visible := False;
   fClientePlano.dbeditCNS.Visible := False;
   fClientePlano.Label46.Visible := False;
   fClientePlano.Label47.Visible := False;
   fClientePlano.DBEdit39.Visible := True;
   fClientePlano.btnDependente.Caption := 'F5-FUNCIONARIOS';
   fClientePlano.DBEdit53.Visible:= false;
   fClientePlano.Label63.Visible := False;
   fClientePlano.BitBtn4.Visible := false;
   fClientePlano.BitBtn5.Visible := false;
   fClientePlano.Label65.Visible := False;
   fClientePlano.DBEdit55.Visible:= false;
   
   fCLientePlano.ShowModal;

// finally
//   fCLientePlano.Free;
//  end;
end;

procedure TfPlanoSaude.Diagnosticos2Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'DIAGNOSTICOS';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  fCombo.Label1.Caption := 'DIAGNÓSTICOS';
  fCombo.Label2.Caption := 'DIAGNÓSTICOS';
  uso := 'DIAGNOSTICOS';
  fCombo.DBRadioGroup1.Visible := false;
  fCombo.Label5.Visible := false;
  fCombo.DBEdit5.Visible := false;
  fCombo.Label8.Visible := false;
  fCombo.DBEdit3.Visible := false;
  fCombo.DBGrid1.Columns[4].Visible := false;
  fCombo.DBGrid1.Columns[2].Visible := false;
  fCombo.DBGrid1.Columns[3].Visible := false;

  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
end;

procedure TfPlanoSaude.Hospitais2Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'HOSPITAIS';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'HOSPITAIS';
  fCombo.Label1.Caption := 'HOSPITAIS E CLÍNICAS';
  fCombo.Label2.Caption := 'HOSPITAIS E CLÍNICAS';
  fCombo.DBRadioGroup1.Visible := false;
  fCombo.Label5.Visible := false;
  fCombo.DBEdit3.Visible := false;
  fCombo.DBGrid1.Columns[2].Visible := false;
  fCombo.DBGrid1.Columns[3].Visible := false;

  fCombo.Label8.Visible := false;
  fCombo.DBEdit5.Visible := false;
  fCombo.DBGrid1.Columns[4].Visible := false;

  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
end;

procedure TfPlanoSaude.anestesias1Click(Sender: TObject);
begin

if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'VENCIMENTO';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'VENCIMENTO';
  fCombo.Label1.Caption := 'VENCIMENTO';
  fCombo.Label2.Caption := 'VENCIMENTO';
  fCombo.Label4.Caption := 'DATA VENCIMENTO : 00/00/0000';
  fCombo.Label5.Caption := 'USO';
  fCombo.DBRadioGroup1.Visible := false;
  fCombo.DBGrid1.Columns[3].Visible := false;
  fCombo.Label8.Visible := false;
//  fCombo.DBEdit5.Visible := false;
  fCombo.DBGrid1.Columns[4].Visible := false;
  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
end;

procedure TfPlanoSaude.ipoConsulta2Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'TIPO CONSULTA';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'TIPO CONSULTA';
  fCombo.Label1.Caption := 'CONSULTAS';
  fCombo.Label2.Caption := 'CONSULTAS';
  fCombo.DBRadioGroup1.Visible := false;
  fCombo.Label5.Visible := false;
  fCombo.DBEdit3.Visible := false;
  fCombo.DBGrid1.Columns[2].Visible := false;
  fCombo.DBGrid1.Columns[3].Visible := false;
  fCombo.Label8.Visible := false;
  fCombo.DBEdit5.Visible := false;
  fCombo.DBGrid1.Columns[4].Visible := false;
  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
end;

procedure TfPlanoSaude.ValorExame1Click(Sender: TObject);
begin
  if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'EXAMES';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'EXAMES';
  fCombo.Label1.Caption := 'EXAMES';
  fCombo.Label2.Caption := 'EXAMES';
  FCombo.Label5.Caption := 'PCMSO';
  fCombo.DBGrid1.Columns[2].Title.Caption :='PCMSO';
  FCombo.Label8.Caption := 'PARTICULAR';
  fCombo.DBGrid1.Columns[3].Title.Caption :='PARTICULAR';
  fCombo.DBGrid1.Columns[4].Title.Caption :='1-Sim 2-não';
  //fCombo.DBGrid1.Columns[3].Visible := false;
//  fCombo.Label6.Visible := false;
 // fCombo.DBEdit4.Visible := false;

   try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
end;

procedure TfPlanoSaude.FormCreate(Sender: TObject);
begin
  Label4.Caption := ' ATS - SAUDE  versão: ' + GetVersion;
 {
  if not cds_parametro.Active then
     cds_parametro.Open;
  cds_parametro.Locate('PARAMETRO', 'VIDEO',[loPartialKey]);
  videoW := cds_parametroD1.AsString;
  videoH := cds_parametroD2.AsString;

  if videoW <> '' then
  begin
   ScreenWidth := StrToInt(videoW);
   ScreenHeight := StrToInt(videoH);
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;
  end;
  }
end;

procedure TfPlanoSaude.Colaboradores1Click(Sender: TObject);
begin
  fFuncionario:=TfFuncionario.Create(Application);
   try
   fFuncionario.ShowModal;
 finally
   fFuncionario.Free;
  end;
end;

procedure TfPlanoSaude.AssociadosASH1Click(Sender: TObject);
begin
//VCLReport1.Execute;
  VCLReport1.Filename := str_relatorio + 'rel_cliente_ash.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;

end;

procedure TfPlanoSaude.AsseDepASH1Click(Sender: TObject);
begin
 //VCLReport2.Execute;
  VCLReport1.Filename := str_relatorio + 'rel_cli_dep_ash.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;

end;

procedure TfPlanoSaude.SobreoSistema1Click(Sender: TObject);
begin
 //VCLReport3.Execute;
  VCLReport1.Filename := str_relatorio + 'rel_cliente_pcmso.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.EmpreFuncPCMSO1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'rel_emp_func_pcmso.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('RAZAO').Value := 'TODOS AS EMPRESAS ATIVAS CADASTRADOS NO SISTEMA HJ';
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.btGeraGuiaClick(Sender: TObject);
begin
  //fXmlAns:=TfXmlAns.Create(Application);
   try
  // fXmlAns.ShowModal;
 finally
  // fXmlAns.Free;
  end;
end;

procedure TfPlanoSaude.btBuscaGuiaClick(Sender: TObject);
begin
  filtroGuia:=TfiltroGuia.Create(Application);
  try
  filtroGuia.Color := clskyblue ;
  filtroGuia.BitBtn3.Visible := False;
  filtroGuia.BitBtn2.Enabled := False;
  filtroGuia.Label4.Caption := 'Busca' ;
  filtroGuia.ShowModal;
  finally
  filtroGuia.Free;
  end;
end;

procedure TfPlanoSaude.btEditarGuiaClick(Sender: TObject);
begin
  filtroGuia:=TfiltroGuia.Create(Application);
  try
  filtroGuia.Color := clskyblue ;
  filtroGuia.BitBtn2.Visible := False;
  filtroGuia.BitBtn3.Enabled := False;
  filtroGuia.Label4.Caption := 'Editar' ;
  filtroGuia.ShowModal;
  finally
  filtroGuia.Free;
  end;
end;

procedure TfPlanoSaude.MudanadeFaixa1Click(Sender: TObject);
begin
  fFaixaMudanca := TfFaixaMudanca.Create(Application);
  try
    fFaixaMudanca.ShowModal;
  finally
    fFaixaMudanca.Free;
  end;

end;

procedure TfPlanoSaude.dxButton8Click(Sender: TObject);
begin
  fresumointernacao := Tfresumointernacao.Create(Application);
  try
    fresumointernacao.ShowModal;
  finally
    fresumointernacao.Free;
  end;

end;

procedure TfPlanoSaude.btCadastroParticularClick(Sender: TObject);
begin
// fCLientePlano:=TfCLientePlano.Create(Application);
  grupo := 'PARTICULAR';
//  try
   fClientePlano.Label15.Visible := false;
   fClientePlano.DBEdit13.Visible := false;
   fClientePlano.Label16.Visible := false;
   fClientePlano.DBEdit14.Visible := false;
   fClientePlano.Label17.Visible := false;
   fClientePlano.DBEdit15.Visible := false;
   fClientePlano.Label8.Visible := false;
   fClientePlano.DBEdit6.Visible := false;
   fClientePlano.Label7.Visible := false;
   fClientePlano.DBEdit5.Visible := false;
   fClientePlano.Label5.Visible := false;
   fClientePlano.DBEdit3.Visible := false;
   fClientePlano.Label14.Caption := 'CPF';
   fClientePlano.Label13.Caption := 'RG';
   fClientePlano.DBEdit20.Visible := false;
   fClientePlano.GroupBox2.Visible := false;
   fClientePlano.GroupBox3.Visible := false;
   fClientePlano.btnDependente.Visible := false;
   fClientePlano.Label32.Visible := false;
   // Plano Faixa
   fClientePlano.Label19.Visible := true;
   fClientePlano.DBEdit2.Visible := true;
   fClientePlano.Label37.Visible := False;
   fClientePlano.Label38.Visible := False;
   fClientePlano.Label33.Visible := True;
   fClientePlano.Label35.Visible := False;
   fClientePlano.Label36.Visible := False;
   fClientePlano.DBEdit32.Visible := false;
   fClientePlano.DBEdit31.Visible := false;
   fClientePlano.Label39.Visible := false;
   fClientePlano.MMJPanel2.Background.StartColor := clMaroon ;
   fClientePlano.MMJPanel1.Background.EndColor := clMaroon ;
   fClientePlano.Color := clBtnface;
   fClientePlano.lbl2.Visible := True;
   fClientePlano.dbeditCNS.Visible := True;
   fClientePlano.DBEdit38.Visible := False;

   fCLientePlano.ShowModal;
//  finally
//  fCLientePlano.Free;
//  end;
end;

procedure TfPlanoSaude.dxButton10Click(Sender: TObject);
begin
  ffaturamento := Tffaturamento.Create(Application);
  try
    ffaturamento.ShowModal;
  finally
    ffaturamento.Free;
  end;

end;

procedure TfPlanoSaude.dxButton11Click(Sender: TObject);
begin
  fdemonstrativo := Tfdemonstrativo.Create(Application);
  try
    fdemonstrativo.ShowModal;
  finally
    fdemonstrativo.Free;
  end;
end;

procedure TfPlanoSaude.RelatiosEmpresas1Click(Sender: TObject);
begin
  fRelPcmo:=TfRelPcmo.Create(Application);
  try
    fRelPcmo.ShowModal;
  finally
    fRelPcmo.Free;
  end;
end;

procedure TfPlanoSaude.AsseDepOrdem1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'rel_cli_dep_ash_ORDEM.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.AssociadosporFaixa1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'associados_faixa.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.AssociadosVotam1Click(Sender: TObject);
begin
  fVotam:=TfVotam.Create(Application);
  fVotam.BitBtn3.Visible := False;
  fVotam.BitBtn4.Visible := False;
  fVotam.BitBtn5.Visible := False;
  try
    fVotam.ShowModal;
  finally
    fVotam.Free;
  end;

end;

procedure TfPlanoSaude.Contratado1Click(Sender: TObject);
begin
   fFornecedorCadastroSaude:=TfFornecedorCadastroSaude.Create(Application);
   try
   fFornecedorCadastroSaude.ShowModal;
 finally
   fFornecedorCadastroSaude.Free;
   end;
end;

procedure TfPlanoSaude.SpeedButton1Click(Sender: TObject);
begin
 UserControlSaude.Logoff;
end;

procedure TfPlanoSaude.Nascidos1Click(Sender: TObject);
begin
   fVotam:=TfVotam.Create(Application);
   fVotam.JvDateEdit3.Visible := False;
   fVotam.Label4.Visible := False;
   fVotam.Label5.Visible := False;
   fVotam.Label6.Visible := False;
   fVotam.BitBtn1.Visible := False;
   fVotam.BitBtn2.Visible := False;
   fVotam.BitBtn4.Visible := False;
   fVotam.BitBtn5.Visible := False;
   try
   fVotam.ShowModal;
   finally
   fVotam.Free;
   end;
end;

procedure TfPlanoSaude.IncluidonoPeriodo1Click(Sender: TObject);
begin
   fVotam:=TfVotam.Create(Application);
   fVotam.JvDateEdit3.Visible := False;
   fVotam.Label1.Caption := ' Incluidos' ;
   fVotam.Label4.Visible := False;
   fVotam.Label5.Visible := False;
   fVotam.Label6.Visible := False;
   fVotam.BitBtn1.Visible := False;
   fVotam.BitBtn2.Visible := False;
   fVotam.BitBtn3.Visible := False;
   fVotam.BitBtn5.Visible := False;
   try
   fVotam.ShowModal;
   finally
   fVotam.Free;
   end;
end;

procedure TfPlanoSaude.ExcluidosnoPeriodo1Click(Sender: TObject);
begin
   fVotam:=TfVotam.Create(Application);
   fVotam.JvDateEdit3.Visible := False;
   fVotam.Label1.Caption := ' Excluidos' ;
   fVotam.Label4.Visible := False;
   fVotam.Label5.Visible := False;
   fVotam.Label6.Visible := False;
   fVotam.BitBtn1.Visible := False;
   fVotam.BitBtn2.Visible := False;
   fVotam.BitBtn3.Visible := False;
   fVotam.BitBtn4.Visible := False;
   try
   fVotam.ShowModal;
   finally
   fVotam.Free;
   end;
end;

procedure TfPlanoSaude.IdadeSexo1Click(Sender: TObject);
begin
  fIdadeSexo:=TfIdadeSexo.Create(Application);
  try
   fIdadeSexo.ShowModal;
  finally
  fIdadeSexo.Free;
  end;
end;

procedure TfPlanoSaude.CodigoIBGE1Click(Sender: TObject);
begin
  fIbge:=TfIbge.Create(Application);
  try
   fIbge.ShowModal;
  finally
  fIbge.Free;
  end;
end;

procedure TfPlanoSaude.ExportaSite1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'exporta.rep';
  VCLReport1.SaveToCSV ('C:\'+'exporta1.sql');
end;

procedure TfPlanoSaude.NovosSocios1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'novos_socios.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.MaiorsemCPF1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'sem_cpf.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.AssocDebitoAutomatico1Click(Sender: TObject);
begin
  fCadDA:=TfCadDA.Create(Application);
  try
   fCadDA.ShowModal;
  finally
  fCadDA.Free;
  end;
end;



function TfPlanoSaude.GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);

end;

procedure TfPlanoSaude.MenorTitularSemCPF1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'sem_cpf_titular.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.SemCCO1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'sem_sus.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.UmSocioporFaixa1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'socio_faixa.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.EmpresasCompleto1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'clientePCMSO.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfPlanoSaude.SequenciaRemessa1Click(Sender: TObject);
begin
  fNumrem:=TfNumrem.Create(Application);
  try
   fNumrem.ShowModal;
  finally
  fNumrem.Free;
  end;
end;

procedure TfPlanoSaude.Setor1Click(Sender: TObject);
begin
if DMSaude.cdsCombo.Active then
    DMSaude.cdsCombo.Close;
     DMSaude.cdsCombo.Params[0].AsString := 'SETOR FUNCIONARIO';
     DMSaude.cdsCombo.Open;
  fCombo:=TfCombo.Create(Application);
  uso := 'SETOR FUNCIONARIO';
  fCombo.Color := clMoneyGreen;
  fCombo.Label1.Caption := 'SETOR FUNCIONARIO';
  fCombo.Label2.Caption := 'SETOR FUNCIONARIO';
  fCombo.Label5.Visible := false;
  fCombo.DBRadioGroup1.Visible := false;
  fCombo.DBEdit3.Visible := false;
  fCombo.Label8.Visible := false;
  fCombo.DBEdit5.Visible := false;

  fCombo.DBGrid1.Columns[2].Visible := false;
  fCombo.DBGrid1.Columns[3].Visible := false;
  fCombo.DBGrid1.Columns[4].Visible := false;
  fCombo.DBGrid1.Columns[5].Visible := false;
  fCombo.DBGrid1.Columns[6].Visible := false;
  fCombo.DBGrid1.Columns[7].Visible := false;
  fCombo.DBGrid1.Columns[8].Visible := false;
  fCombo.DBGrid1.Columns[9].Visible := false;
  fCombo.DBGrid1.Columns[10].Visible := false;
  try
   fCombo.ShowModal;
 finally
   fCombo.Free;
  end;
end;

procedure TfPlanoSaude.AtendimentoASO1Click(Sender: TObject);
begin
  fRaso:=TfRaso.Create(Application);
  try
   fRaso.ShowModal;
  finally
  fRaso.Free;
  end;
end;

procedure TfPlanoSaude.AdmissionalAudiometria1Click(Sender: TObject);
begin

  fRelAA:=TfRelAA.Create(Application);
  try
   fRelAA.ShowModal;
  finally
  fRelAA.Free;
  end;

end;

end.
