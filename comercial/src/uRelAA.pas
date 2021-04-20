unit uRelAA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, StdCtrls, Buttons, Mask, JvExMask,
  JvToolEdit;

type
  TfRelAA = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    BitBtn1: TBitBtn;
    VCLReport1: TVCLReport;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelAA: TfRelAA;

implementation

uses UDm;

{$R *.dfm}

procedure TfRelAA.BitBtn1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'ADMI_AUD.rep';  
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DATAINI').Value := JvDateEdit1.Text;
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := JvDateEdit2.Text;
  VCLReport1.Execute;
end;

end.
