unit ufechamento_caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, Grids, DBGrids, DB, SqlExpr,
  Provider, DBClient;

type
  TfFechamento_caixa = class(TForm)
    cds: TClientDataSet;
    dsp: TDataSetProvider;
    ds: TDataSource;
    sql: TSQLDataSet;
    sqlCOD_CAIXA: TIntegerField;
    sqlDATA_FIM: TDateField;
    sqlVALOR: TFloatField;
    cdsCOD_CAIXA: TIntegerField;
    cdsDATA_FIM: TDateField;
    cdsVALOR: TFloatField;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFechamento_caixa: TfFechamento_caixa;

implementation

uses UDm;

{$R *.dfm}

procedure TfFechamento_caixa.BitBtn1Click(Sender: TObject);
begin
  cds.ApplyUpdates(0);
end;

procedure TfFechamento_caixa.FormShow(Sender: TObject);
begin
  if(cds.Active)then
  cds.Close;
  cds.Open;
  cds.Edit;
end;

procedure TfFechamento_caixa.BitBtn2Click(Sender: TObject);
begin
  cds.Close;
  close;
end;

end.
