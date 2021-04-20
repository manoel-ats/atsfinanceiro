unit uCadDA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, rpcompobase, rpvclreport;

type
  TfCadDA = class(TForm)
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    VCLReport1: TVCLReport;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadDA: TfCadDA;

implementation

uses UDm;

{$R *.dfm}

procedure TfCadDA.BitBtn1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'debitoauBB.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('BANCO').Value := ComboBox1.Text;
  VCLReport1.Report.Params.ParamByName('GRUPO').Value := ComboBox2.Text;
  VCLReport1.Execute;
end;

end.
