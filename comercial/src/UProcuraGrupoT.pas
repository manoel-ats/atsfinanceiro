unit UProcuraGrupoT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Buttons, EDBFind, DBCtrls;

type
  TfProcuraGrupoT = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    EvDBFind1: TEvDBFind;
    Label1: TLabel;
    DBText1: TDBText;
    EvDBFind2: TEvDBFind;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EvDBFind1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProcuraGrupoT: TfProcuraGrupoT;

implementation

uses UDmSaude;

{$R *.dfm}

procedure TfProcuraGrupoT.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TfProcuraGrupoT.FormShow(Sender: TObject);

begin
  EvDBFind2.SetFocus;

end;

procedure TfProcuraGrupoT.EvDBFind1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 close;
 end;
end;

procedure TfProcuraGrupoT.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

end.
