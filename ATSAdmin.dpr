program ATSAdmin;

uses
  Forms,
  uatualiza in 'uatualiza.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ATS-Admin';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
