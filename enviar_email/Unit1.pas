unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, TFlatGaugeUnit, IdMessage, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  IdUDPBase, IdUDPClient, IdSNMP, ComCtrls, DBXpress, DB, SqlExpr, FMTBcd,
  Provider, DBClient, Mask, DBCtrls;

type
  TForm1 = class(TForm)
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    FlatGauge1: TFlatGauge;
    BitBtn1: TBitBtn;
    Label86: TLabel;
    edtAssunto: TEdit;
    Label73: TLabel;
    Memo1: TMemo;
    ListBox1: TListBox;
    BitBtn2: TBitBtn;
    odAnexos: TOpenDialog;
    cbxConfirmaLeitura: TCheckBox;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

 var dbxconec: TStringList;
  str_relatorio : String;
var
  Form1: TForm1;


implementation

uses UDm, UDmSaude;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var xAnexo, contador : Integer;

begin
//  fEnviarEmail.Cursor := crHourGlass;
  Refresh;
{
var contador : integer;
begin
  ProgressBar1.Max := 10000 ;
  for contador := 0 to 10000  do
  ProgressBar1.Position := contador;
end;

 }
           FlatGauge1.MaxValue := 1000;
           ProgressBar1.Max := 10000 ;
           // dados da mensagem

           // e-mail do remetente
           IdMessage1.From.Address := 'financeiro@saudeholambra.com.br';

           // e-mail do destinatário
           IdMessage1.Recipients.EMailAddresses := 'manoel_meta@yahoo.com.br';

           // Assunto
           IdMessage1.Subject := edtAssunto.Text;

           // Cabeçalho da mensagem
           IdMessage1.Body.Add('');//linha em branco espaço
           IdMessage1.Body.Add(('Senhores Pais :')+ ' '+('responsavel'));
           IdMessage1.Body.Add('');//linha em branco espaço
           IdMessage1.Body.Add(('O Aluno(a):')+ ' '+('FormCadastroAlunoConsulta.scdsAlunoNOME.AsString'));
           IdMessage1.Body.Add('');//linha em branco espaço


           //Tratando os arquivos anexos
           for xAnexo := 0 to ListBox1.Items.Count-1 do
           TIdAttachment.create(idmessage1.MessageParts, TFileName(ListBox1.Items.Strings[xAnexo]));

           if cbxConfirmaLeitura.Checked then
           IdMessage1.ReceiptRecipient.Text := IdMessage1.From.Text; // Auto Resposta

           // Corpo da mensagem  Memo
           // Corpo da mensagem
           // IdMessage1.Body.Add(DBComboBox4.Text);
           IdMessage1.Body.Add(Memo1.Text);
           //fim da mensagem
           //Configuração do IdSMTP SMTP
           IdSMTP1.Host :=  dm.cds_empresaSMTP.AsString;
           // Port do Provedor =  25
           IdSMTP1.Port :=  dm.cds_empresaPORTA.AsInteger;
           // Login do usuário
           IdSMTP1.Username := dm.cds_empresaE_MAIL.AsString;
           // Password Senha do usuário
           IdSMTP1.Password := dm.cds_empresaSENHA.AsString;
               IdSMTP1.Connect;
               IdSMTP1.Authenticate; //Faz a autenticação
               IdSMTP1.Send(IdMessage1); //Envia a mensagem
             IdSMTP1.Disconnect;

               for contador := 0 to 10000  do
         ProgressBar1.Position := contador;
               for contador := 0 to 10000  do
         FlatGauge1.Progress := contador;

             IdMessage1.Clear;
//          end;

        FlatGauge1.Progress := FlatGauge1.Progress + 1;

//      end;

//  end;

  FlatGauge1.Progress := 0;
//  fEnviarEmail.Cursor := crDefault;
  Refresh;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  if odAnexos.Execute then
  ListBox1.Items.Add(odAnexos.FileName);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
{
  sqlboleto.LoadParamsFromIniFile('dbxconnections.ini');
  sqlboleto.LibraryName := 'dbexpUIBfire15.dll';
  sqlboleto.VendorLib := 'FBCLIENT.DLL';
  dbxconec := TStringList.Create;
  try
    dbxconec.LoadFromFile('dbxconnections.ini');
    str_relatorio := dbxconec[14];
    str_relatorio := copy(str_relatorio,16,length(str_relatorio));
  finally
    dbxconec.Free;
  end;
 } 
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  if (DM.cds_empresa.Active) then
     dm.cds_empresa.Close;
   dm.cds_empresa.Open;

  if (DMSaude.cdsCliente.Active) then
     DMSaude.cdsCliente.Close;
   DMSaude.cdsCliente.Open;


end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var email,responsavel:string;
begin
//  fEnviarEmail.Cursor := crHourGlass;
  Refresh;

  {
  if (FormCadastroAlunoConsulta.scdsAluno.Active) then
  begin
      FormCadastroAlunoConsulta.scdsAluno.First;
      FlatGauge1.MaxValue := FormCadastroAlunoConsulta.scdsAluno.RecordCount;
      FormCadastroAlunoConsulta.scdsAluno.DisableControls;
      while not FormCadastroAlunoConsulta.scdsAluno.Eof do
      begin

        if (FormCadastroAlunoConsulta.DBGrid1.SelectedRows.CurrentRowSelected = True) then
        begin


   }
     if (DMSaude.cdsCliente.Active) then
     DMSaude.cdsCliente.Close;
    DMSaude.cdsCliente.Open;
    DMSaude.cdsCliente.First;


           if (not Dm.cds_empresa.Active) then
             Dm.cds_empresa.Open;
           // dados da mensagem
           // e-mail do remetente
           IdMessage1.From.Address := Dm.cds_empresaE_MAIL.AsString;
           // e-mail do destinatário
         {
           if (FormCadastroAlunoConsulta.scdsAlunoCOMUNICAMAE.AsString <> '') then
              email:= FormCadastroAlunoConsulta.scdsAlunoCOMUNICAMAE.AsString;
           if (FormCadastroAlunoConsulta.scdsAlunoCOMUNICAPAI.AsString <> '') then
              if email <> '' then
                email:= email + ',' + FormCadastroAlunoConsulta.scdsAlunoCOMUNICAPAI.AsString
              else
          }
            email:= 'manoel_meta@yahoo.com.br'; //DMSaude.cdsClienteCOMUNICAALUNO.AsString;

           IdMessage1.Recipients.EMailAddresses := email;
           // Assunto
           IdMessage1.Subject := edtAssunto.Text;
           // Cabeçalho da mensagem
           IdMessage1.Body.Add('ADADADAD');
           IdMessage1.Body.Add('');//linha em braco espaço
         {
           if (FormCadastroAlunoConsulta.scdsAlunoMAE.AsString <> '') then
             responsavel:= FormCadastroAlunoConsulta.scdsAlunoMAE.AsString;
           if (FormCadastroAlunoConsulta.scdsAlunoPAI.AsString <> '') then
              if responsavel <> '' then
                responsavel:= responsavel + ' e ' + FormCadastroAlunoConsulta.scdsAlunoPAI.AsString
              else
                responsavel:= FormCadastroAlunoConsulta.scdsAlunoPAI.AsString;
         }
           IdMessage1.Body.Add(('Senhores Pais :')+ ' '+(responsavel));
           IdMessage1.Body.Add('');//linha em branco espaço
           IdMessage1.Body.Add(('O Associado(a):')+ ' '+( DMSaude.cdsClienteNOMECLIENTE.AsString));
           IdMessage1.Body.Add('');//linha em branco espaço
           // Corpo da mensagem  Memo
           // Corpo da mensagem
           // IdMessage1.Body.Add(DBComboBox4.Text);
           IdMessage1.Body.Add(Memo1.Text);
           //fim da mensagem
           //Configuração do IdSMTP SMTP
           IdSMTP1.Host := DM.cds_empresaSMTP.AsString;
           // Port do Provedor =  25
           IdSMTP1.Port := DM.cds_empresaPORTA.AsInteger;
           // Login do usuário
           IdSMTP1.Username := DM.cds_empresaE_MAIL.AsString;
           // Password Senha do usuário
           IdSMTP1.Password := DM.cds_empresaSENHA.AsString;
           try
             try
               IdSMTP1.Connect;
               IdSMTP1.Authenticate; //Faz a autenticação
               IdSMTP1.Send(IdMessage1); //Envia a mensagem
               MessageDlg('Email enviado com sucesso para, ' + DMSaude.cdsClienteNOMECLIENTE.AsString, mtWarning, [mbOK], 0);
             except
               showmessage('Verifar campos do Associado(a) ' + DMSaude.cdsClienteNOMECLIENTE.AsString +
               ' dados com ERRO'); //Mensagem de erro
             end;
           finally
             IdSMTP1.Disconnect;
             IdMessage1.Clear;
          end;
       //end;
       // FlatGauge1.Progress := FlatGauge1.Progress + 1;
      //  FormCadastroAlunoConsulta.scdsAluno.Next;
     // end;
      //FormCadastroAlunoConsulta.scdsAluno.First;
 // end;
 // FormCadastroAlunoConsulta.scdsAluno.EnableControls;
 // FlatGauge1.Progress := 0;
 // fEnviarEmail.Cursor := crDefault;
  Refresh;

end;

end.
