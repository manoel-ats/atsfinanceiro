unit SendMailOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, ExtCtrls, Mask, Buttons, RLFilters, RLMetaFile,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP,IdSSLOpenSSL, Variants, IdIOHandler,
  IdIOHandlerSocket;

type
  TFormSendMailOptions = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    GroupBoxFormato: TGroupBox;
    BitBtnEnviar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    EditDestinatarios: TEdit;
    EditAssunto: TEdit;
    RadioButtonEXE: TRadioButton;
    RadioButtonPDF: TRadioButton;
    RadioButtonRTF: TRadioButton;
    RadioButtonHTM: TRadioButton;
    CheckBoxAbrir: TCheckBox;
    PanelOpcoes: TPanel;
    PanelSubmit: TPanel;
    BitBtn1: TBitBtn;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    IdIOHandlerSocket1: TIdIOHandlerSocket;
    BitBtn2: TBitBtn;
    procedure BitBtnEnviarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Pages:TRLGraphicStorage;
    class procedure CreateShowAndFree(aPages:TRLGraphicStorage);
  end;

var
  FormSendMailOptions: TFormSendMailOptions;

implementation

uses
  SendMail, SelfPrintDefs, uprincipal;

{$R *.DFM}

procedure MakeSelfPrint(const aBaseFileName,aResultFileName:string; aPages:TRLGraphicStorage);
var
  StreamWrite:TFileStream;
  StreamRead :TFileStream;
  Header     :TSelfPrintHeader;
begin
  StreamWrite:=TFileStream.Create(aResultFileName,fmCreate);
  try
    StreamRead:=TFileStream.Create(aBaseFileName,fmOpenRead);
    try
      StreamWrite.CopyFrom(StreamRead,StreamRead.Size);
      Header.Offset:=StreamRead.Size;
    finally
      StreamRead.Free;
    end;
    aPages.SaveToStream(StreamWrite);
    Header.Signature:=SelfSignature;
    Header.Content  :=ContentRaw;
    StreamWrite.Write(Header,SizeOf(Header));
  finally
    StreamWrite.Free;
  end;
end;

{ TFormMailOptions }

class procedure TFormSendMailOptions.CreateShowAndFree(aPages:TRLGraphicStorage);
var
  pdf,rtf,htm,ftr:TRLCustomSaveFilter;
  s,preview,tmpfile,tmpext:string;
  go:boolean;
  i:integer;
begin
  with TFormSendMailOptions.Create(nil) do
    try
      Pages           :=aPages;
      EditAssunto.Text:=Pages.Title;
      // procura no diretório corrente
      GetDir(0,s);
      preview:=IncludeTrailingBackslash(s)+SelfFileName;
      // se não achar procura no diretório do executável
      if not FileExists(preview) then
        preview:=IncludeTrailingBackslash(ExtractFilePath(Application.ExeName))+SelfFileName;
      // valida os filtros
      pdf:=SaveFilterByFileName('.pdf');
      rtf:=SaveFilterByFileName('.rtf');
      htm:=SaveFilterByFileName('.htm');
      // habilita botões
      RadioButtonEXE.Enabled:=FileExists(preview);
      RadioButtonPDF.Enabled:=(pdf<>nil);
      RadioButtonRTF.Enabled:=(rtf<>nil);
      RadioButtonHTM.Enabled:=(htm<>nil);
      // seta filtro default
      if not RadioButtonEXE.Enabled then
      begin
        if RadioButtonPDF.Enabled then
          RadioButtonPDF.Checked:=True
        else if RadioButtonRTF.Enabled then
          RadioButtonRTF.Checked:=True
        else if RadioButtonHTM.Enabled then
          RadioButtonHTM.Checked:=True
        else
          RadioButtonEXE.Checked:=False;
      end;
      //
     go:=(ShowModal=mrOk);
      if not go then
        Exit;
      // seleciona filtro
      if RadioButtonPDF.Checked then
        ftr:=pdf
      else if RadioButtonRTF.Checked then
        ftr:=rtf
      else if RadioButtonHTM.Checked then
        ftr:=htm
      else if RadioButtonEXE.Checked then
        ftr:=nil
      else
        Exit;
      if ftr=nil then
        tmpext:='.exe'
      else
        tmpext:=ftr.DefaultExt;
      //
      //tmpfile:=ExpandFileName(ChangeFileExt(EditAssunto.Text+'.',tmpext));
      tmpfile:=ExpandFileName(ChangeFileExt('Boleto'+'.',tmpext));
      try
        // faz selfprint
        if ftr=nil then
          MakeSelfPrint(preview,tmpfile,Pages)
        else
        begin
          // filtra
          ftr.FileName:=tmpfile;
       // 04/07/18 manoel   FilterPages(Pages,ftr);
        end;
        with TSendMail.Create(nil) do
          try

            Subject:= 'Boleto Mensalidade'  ;//EditAssunto.Text;
            Body   :='Boleto Referente a Mensalidade - Associação de Saúde Holambra';
            s:=EditDestinatarios.Text;
            while s<>'' do
            begin
              i:=Pos(';',s);
              if i=0 then
                i:=Length(s)+1;
              Recipients.Add(Copy(s,1,i-1));
              Delete(s,1,i);
            end;
            Attachments.Add(tmpfile);
            EditDialog:=CheckBoxAbrir.Checked;
            Send;
          finally
            Free;
          end;
      finally
        SysUtils.DeleteFile(tmpfile);
      end;
    finally
      Free;
    end;
end;

procedure TFormSendMailOptions.BitBtnEnviarClick(Sender: TObject);
begin
  Close;
  
  ModalResult:=mrOk;
end;

procedure TFormSendMailOptions.BitBtnCancelarClick(Sender: TObject);
begin
  Close;
  ModalResult:=mrCancel;
end;

procedure TFormSendMailOptions.FormCreate(Sender: TObject);
begin
  EditDestinatarios.Text := Form1.cdsBoletoE_MAIL.AsString;
end;

procedure TFormSendMailOptions.BitBtn1Click(Sender: TObject);
var email,responsavel:string;
IdSSLIOHandlerSocket: TIdSSLIOHandlerSocket;

  IdSMTP1: TIdSMTP;
  IdMessage1: TIdMessage;
  CaminhoAnexo: string;

begin
             // instanciação dos objetos
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocket.Create(Self);
  IdSMTP1 := TIdSMTP.Create(Self);
  IdMessage1 := TIdMessage.Create(Self);




           // dados da mensagem
           // e-mail do remetente
           IdMessage1.From.Address := 'manmdsantos@yahoo.com.br';
           // e-mail do destinatário
           email:= Form1.cdsBoletoE_MAIL.AsString ; //

           IdMessage1.Recipients.EMailAddresses := email;
           // Assunto
           IdMessage1.Subject := 'Boleto Mensalidade'; // edtAssunto.Text;
           // Cabeçalho da mensagem
       ////    IdMessage1.Body.Add((DmDados.TableNomeEscolaCIDADE.AsString)+'  '+ (edtData.Text));
           IdMessage1.Body.Add('');//linha em braco espaço
           IdMessage1.Body.Add(('Senhores Pais 2 :')+ ' '+('responsavel'));
           IdMessage1.Body.Add('');//linha em branco espaço
      ////     IdMessage1.Body.Add(('O Aluno(a):')+ ' '+ '(FormCadastroAlunoConsulta.scdsAlunoNOME.AsString))';
           IdMessage1.Body.Add('');//linha em branco espaço
           // Corpo da mensagem  Memo
           // Corpo da mensagem
           IdMessage1.Body.Add(EditDestinatarios.Text);
          // IdMessage1.Body.Add(Memo1.Text);
           IdMessage1.AtachmentEncoding.
           TidAttachments.Add(tmpfile);
           //TIdAttachment.
           //fim da mensagem
         {
           //Configuração do IdSMTP SMTP
           IdSMTP1.Host := 'smtp.mail.yahoo.com'; //'smtp.mail.yahoo.com.br' ; //DmDados.TableNomeEscolaSMTP.AsString;

         //  Form1.cdsBoletoE_MAIL.AsString ;

           IdSMTP1.IOHandler := IdSSLIOHandlerSocket;

           // Port do Provedor =  25
           IdSMTP1.Port := 465 ; //DmDados.TableNomeEscolaPORTA.AsInteger;
           // Login do usuário
           IdSMTP1.Username := 'manmdsantos@yahoo.com.br' ; //DmDados.TableNomeEscolaE_MAIL.AsString;
           // Password Senha do usuário

           IdSMTP1.Password := 'Manman1#49' ; //DmDados.TableNomeEscolaSENHA.AsString;
         }
    // Configuração do SSL
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

    // Configuração do SMTP
    IdSMTP1.IOHandler := IdSSLIOHandlerSocket;
    IdSMTP1.AuthenticationType := atLogin;
    IdSMTP1.Port := 465;
    IdSMTP1.Host := 'smtp.mail.yahoo.com';
    IdSMTP1.Username := 'manmdsantos@yahoo.com.br';
    IdSMTP1.Password := 'Manman1#49';


        try
           try
              IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
              IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

               IdSMTP1.Connect;
               IdSMTP1.Authenticate; //Faz a autenticação
                    // Configuração do SSL


               IdSMTP1.Send(IdMessage1); //Envia a mensagem
              // MessageDlg('Email enviado com sucesso para, ' + Form1.cdsBoletoE_MAIL.AsString + ' , mtWarning, [mbOK], 0);

               MessageDlg('Email enviado com sucesso para, ', mtError, [mbOK], 0);

             except
              On E:Exception do
               MessageDlg('Erro ao enviar a mensagem: ' +
                    E.Message, mtWarning, [mbOK], 0);
             end;
           finally
             IdSMTP1.Disconnect;
             IdMessage1.Clear;
          end;





    end;




procedure TFormSendMailOptions.BitBtn2Click(Sender: TObject);
var
  // objetos necessários para o funcionamento
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocket;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  CaminhoAnexo: string;
begin
  // instanciação dos objetos
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocket.Create(Self);
  IdSMTP := TIdSMTP.Create(Self);
  IdMessage := TIdMessage.Create(Self);

  try
    // Configuração do SSL
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

    // Configuração do SMTP
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    IdSMTP.AuthenticationType := atLogin;
    IdSMTP.Port := 465;
    IdSMTP.Host := 'smtp.mail.yahoo.com';
    IdSMTP.Username := 'manmdsantos@yahoo.com.br';
    IdSMTP.Password := 'Manman1#49';
 
    // Tentativa de conexão e autenticação
    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        MessageDlg('Erro na conexão e/ou autenticação: ' +
                    E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    // Configuração da mensagem
    IdMessage.From.Address := 'manmdsantos@yahoo.com.br';
    IdMessage.From.Name := 'Manoel';
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.EMailAddresses := 'manmdsantos@yahoo.com.br';
    IdMessage.Subject := 'Assunto do e-mail';
    IdMessage.Body.Text := 'Corpo do e-mail';

    // Anexo da mensagem (opcional)
    CaminhoAnexo := 'C:\360783_2014_PEONA.txt';
    if FileExists(CaminhoAnexo) then
      TIdAttachment.Create(IdMessage.MessageParts, CaminhoAnexo);

    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      MessageDlg('Mensagem enviada com sucesso.', mtInformation, [mbOK], 0);
    except
      On E:Exception do
        MessageDlg('Erro ao enviar a mensagem: ' +
                    E.Message, mtWarning, [mbOK], 0);
    end;
  finally
    // liberação dos objetos da memória
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;
end;

procedure TFormSendMailOptions.FormShow(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

end.

