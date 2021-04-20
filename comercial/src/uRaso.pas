unit uRaso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, StdCtrls, Buttons, Mask, JvExMask,
  JvToolEdit;

type
  TfRaso = class(TForm)
    Label2: TLabel;
    JvDateEdit1: TJvDateEdit;
    Label3: TLabel;
    JvDateEdit2: TJvDateEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    VCLReport1: TVCLReport;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRaso: TfRaso;

implementation

uses UDm;

{$R *.dfm}

procedure TfRaso.BitBtn1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'atedaso.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DATAINI').Value := JvDateEdit1.Text;
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := JvDateEdit2.Text;
  VCLReport1.Execute;
end;

end.
