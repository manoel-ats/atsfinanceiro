program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  UDm in '..\comercial\src\UDm.pas' {DM: TDataModule},
  UDmSaude in '..\comercial\src\UDmSaude.pas' {DMSaude: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMSaude, DMSaude);
  Application.Run;
end.
