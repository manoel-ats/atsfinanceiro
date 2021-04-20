unit ubanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  DBCtrls, Grids, DBGrids, Mask, FMTBcd, DBClient, Provider, SqlExpr;

type
  Tfbanco = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbanco: Tfbanco;
  codbanco : Integer;
  nomebanco: string;  

implementation

uses UDm;

{$R *.dfm}

procedure Tfbanco.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure Tfbanco.FormShow(Sender: TObject);
begin
  inherited;
  if (not dm.cdsBanco.Active) then
    dm.cdsBanco.Open;
end;

procedure Tfbanco.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure Tfbanco.btnGravarClick(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsInsert] then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_BANCO, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dm.cdsBancoCODBANCO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;  
  inherited;
  btnIncluir.SetFocus;
end;

procedure Tfbanco.btnSairClick(Sender: TObject);
begin
  inherited;
  codbanco :=  dm.cdsBancoCODBANCO.value;
  nomebanco := dm.cdsBancoBANCO.AsString;
end;

end.
