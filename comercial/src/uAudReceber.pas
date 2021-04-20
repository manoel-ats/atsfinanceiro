unit uAudReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, StdCtrls, Buttons, Mask,rplabelitem;

type
  TfAudReceber = class(TForm)
    BitBtn1: TBitBtn;
    repContasReceber: TVCLReport;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    edCodCCusto: TComboBox;
    dataAu: TMaskEdit;
    btnSair: TBitBtn;
    MaskEdit1: TMaskEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAudReceber: TfAudReceber;

implementation

uses UDm;

{$R *.dfm}

procedure TfAudReceber.BitBtn1Click(Sender: TObject);
var  codalmox : String;
  data1, centro :TRpLabel;
begin
  if (edCodCCusto.Text = 'ASH') then
  codalmox := '51';
  if (edCodCCusto.Text = 'PCMSO') then
  codalmox := '52';
  if (edCodCCusto.Text = 'PARTICULAR') then
  codalmox := '53';

  repContasReceber.FileName := str_relatorio + 'rel_aud_contasreceber.rep';

  data1:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel2'));
  centro:= TRpLabel(repContasReceber.Report.FindComponent('TRpLabel18'));


    // Centro custo
  if((edCodCCusto.Text <> '')or(edCodCCusto.Text = '') ) then
  begin
    centro.Text := edCodCCusto.Text;
  end;

  //data
  if (dataAu.text <> '  /  /  ')then
  begin
  data1.Text := dataAu.Text;
  end;


  repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repContasReceber.Title := repContasReceber.FileName;
  repContasReceber.Report.Params.ParamByName('DIA').Value := formatdatetime('dd/mm/yy', StrToDate(dataAu.Text));
  repContasReceber.Report.Params.ParamByName('DIA1').Value := formatdatetime('dd/mm/yy', StrToDate(MaskEdit1.Text));  
  repContasReceber.Report.Params.ParamByName('CODALMOX').Value := codalmox ;
  repContasReceber.Execute;

end;

procedure TfAudReceber.btnSairClick(Sender: TObject);
begin
  close;
end;

end.
