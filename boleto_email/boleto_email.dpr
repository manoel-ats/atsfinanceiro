program boleto_email;

uses
  Forms,
  uprincipal in 'uprincipal.pas' {Form1},
  BoletoLayout in 'BoletoLayout.pas',
  RLBoleto in 'RLBoleto.pas',
  RLCob748 in 'RLCob748.pas',
  SendMailOptions in 'SendMailOptions.pas' {FormSendMailOptions},
  SendMail in 'SendMail.pas',
  SelfPrintDefs in 'SelfPrintDefs.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormSendMailOptions, FormSendMailOptions);
  Application.Run;
end.
