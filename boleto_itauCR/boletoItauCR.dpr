program boletoItauCR;

uses
  Forms,
  uprincipal in 'uprincipal.pas' {Form1},
  BoletoLayout in 'BoletoLayout.pas',
  RLBoleto in 'RLBoleto.pas',
  RLCob341 in 'RLCob341.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
