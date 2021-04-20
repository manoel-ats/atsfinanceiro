unit ufNumrem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, FMTBcd, DB, StdCtrls, Mask, DBCtrls, SqlExpr,
  Provider, DBClient, Buttons;

type
  TfNumrem = class(TForm)
    cds: TClientDataSet;
    dsp: TDataSetProvider;
    sql: TSQLDataSet;
    sqlCODIGO_CONTA: TIntegerField;
    sqlPORTA: TIntegerField;
    cdsCODIGO_CONTA: TIntegerField;
    cdsPORTA: TIntegerField;
    ds: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNumrem: TfNumrem;

implementation

uses UDm;

{$R *.dfm}

procedure TfNumrem.FormShow(Sender: TObject);
begin
  if(cds.Active) then
  cds.Close;
  cds.Open;
end;

procedure TfNumrem.BitBtn1Click(Sender: TObject);
begin
  if  MessageDlg('Confirma A correção da sequencia para Nº ' + DBEdit2.Text 
      ,         mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;

  cds.ApplyUpdates(0);

  cds.Refresh;
end;

end.
