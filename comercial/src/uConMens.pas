unit uConMens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, rpcompobase, rpvclreport, ComCtrls;

type
  TfConMens = class(TForm)
    Label1: TLabel;
    MaskEdit3: TJvDatePickerEdit;
    MaskEdit4: TJvDatePickerEdit;
    BitBtn1: TBitBtn;
    VCLReport1: TVCLReport;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConMens: TfConMens;

implementation

uses UDm ;

{$R *.dfm}

procedure TfConMens.BitBtn1Click(Sender: TObject);
var  Save_Cursor:TCursor;
begin
 // Save_Cursor := Screen.Cursor;
 // Screen.Cursor := crHourGlass;
 // Label4.Caption := 'Aguarde Gerando Consulta ......';
  if(ComboBox1.ItemIndex = 0)then

  VCLReport1.Filename := str_relatorio + 'socios_mensalidades.rep'
  else
  VCLReport1.Filename := str_relatorio + 'socios_mensalidadesP.rep';

  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  VCLReport1.Report.Params.ParamByName('DATAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit3.Text));
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit4.Text));


  if(ComboBox1.ItemIndex = 0)then

  VCLReport1.Report.Params.ParamByName('GRUPO').Value := 'ASH'
  else
  VCLReport1.Report.Params.ParamByName('GRUPO').Value := 'PCMSO';



  VCLReport1.Execute;

 // Screen.Cursor := Save_Cursor;
 // Label4.Caption := 'Seleciono O Periodo e Consulte';
end;

procedure TfConMens.BitBtn2Click(Sender: TObject);
var  Save_Cursor:TCursor;
begin
 // Save_Cursor := Screen.Cursor;
 // Screen.Cursor := crHourGlass;
 // Label4.Caption := 'Aguarde Gerando Consulta ......';
  if(ComboBox1.ItemIndex = 0)then

  VCLReport1.Filename := str_relatorio + 'socios_com_mensaASH.rep'
  else
  VCLReport1.Filename := str_relatorio + 'socios_com_mensaPCMSO.rep';

  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  VCLReport1.Report.Params.ParamByName('DATAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit3.Text));
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit4.Text));


  if(ComboBox1.ItemIndex = 0)then

  VCLReport1.Report.Params.ParamByName('GRUPO').Value := 'ASH'
  else
  VCLReport1.Report.Params.ParamByName('GRUPO').Value := 'PCMSO';



  VCLReport1.Execute;


end;

end.
