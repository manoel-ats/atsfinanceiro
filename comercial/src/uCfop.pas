unit uCfop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DBClient, Provider, DB, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, Mask, DBCtrls, Grids, DBGrids;

type
  TfCfop = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    BitBtn12: TBitBtn;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCfop: TfCfop;

implementation

uses UDm;

{$R *.dfm}

procedure TfCfop.FormCreate(Sender: TObject);
begin
  inherited;
  if not dm.cds_cfop.Active then
    dm.cds_cfop.Open;
end;

procedure TfCfop.FormDestroy(Sender: TObject);
begin
  inherited;
  if dm.cds_cfop.Active then
    dm.cds_cfop.Close;
end;

procedure TfCfop.FormShow(Sender: TObject);
begin
  inherited;
  dbedit1.Enabled := True;
  dbedit2.Enabled := True;
end;

procedure TfCfop.BitBtn12Click(Sender: TObject);
var stra: string;
begin
  inherited;
  if (dbEdit1.Text = '') then
  begin
    dm.cds_cfop.Cancel;
    dm.cds_cfop.Filtered := False;
    exit;
  end;
  stra := dbEdit1.Text;
  dm.cds_cfop.Cancel;
  if (dm.cds_cfop.Filtered = True) then
    dm.cds_cfop.Filtered := False;
  dm.cds_cfop.Filter := 'CFCOD = ''' + stra + '*''';
  if (stra <> '') then
    dm.cds_cfop.Filtered := True
  else
    dm.cds_cfop.Filtered := False;
end;

procedure TfCfop.BitBtn1Click(Sender: TObject);
var stra: string;
begin
  inherited;
  if (dbEdit2.Text = '') then
  begin
    dm.cds_cfop.Cancel;  
    dm.cds_cfop.Filtered := False;
    exit;
  end;
  stra := dbEdit2.Text;
  dm.cds_cfop.Cancel;
  if (dm.cds_cfop.Filtered = True) then
    dm.cds_cfop.Filtered := False;
  dm.cds_cfop.Filter := 'CFNOME = ''' + stra + '*''';
  if (stra <> '') then
    dm.cds_cfop.Filtered := True
  else
    dm.cds_cfop.Filtered := False;
end;

procedure TfCfop.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Excluir := 'S';
  Alterar := 'S';
  Cancelar := 'S';
  Procurar :=  'S';
  inherited;

end;

end.
