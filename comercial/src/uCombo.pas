unit uCombo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  Mask, DBCtrls, Grids, DBGrids, EDBFind, uPai, XPMenu ;

type
  TfCombo = class(TfPai)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EvDBFind1: TEvDBFind;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    DBRadioGroup1: TDBRadioGroup;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCombo: TfCombo;
  uso: string;
implementation

uses UDmSaude, UDm;


{$R *.dfm}

procedure TfCombo.btnIncluirClick(Sender: TObject);
begin
  DBEdit1.SetFocus;
  inherited;
    DMSaude.cdsComboUSO.AsString := uso;
  if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DADOS_ComboS, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DMSaude.cdsComboCODDADOS.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;      

end;

procedure TfCombo.FormShow(Sender: TObject);
begin
  inherited;
  EvDBFind1.SetFocus;
end;

end.
