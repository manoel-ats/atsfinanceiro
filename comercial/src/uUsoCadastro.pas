unit uUsoCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBCtrls, Grids, DBGrids, Mask, DBClient, Provider, SqlExpr;

type
  TfUsoCadastro = class(TfPai)
    sds_uso: TSQLDataSet;
    sds_usoCOD_PRODUTO: TIntegerField;
    sds_usoCOD_USO: TIntegerField;
    sds_usoDESCRICAO: TStringField;
    sds_usoANO_DE: TIntegerField;
    sds_usoANO_ATE: TIntegerField;
    dsp_uso: TDataSetProvider;
    cds_uso: TClientDataSet;
    cds_usoCOD_PRODUTO: TIntegerField;
    cds_usoCOD_USO: TIntegerField;
    cds_usoDESCRICAO: TStringField;
    cds_usoANO_DE: TIntegerField;
    cds_usoANO_ATE: TIntegerField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBText2: TDBText;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUsoCadastro: TfUsoCadastro;

implementation

uses uComercial, UDm, uProdutoCadastro, sCtrlResize;

{$R *.dfm}

procedure TfUsoCadastro.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.Text := 'A';
  DBEdit1.SetFocus;
  DBEdit1.Text := '';
end;

procedure TfUsoCadastro.FormCreate(Sender: TObject);
begin
//  inherited;
   if cds_uso.Active then
     cds_uso.Close;
   cds_uso.Params[0].Clear;
   cds_uso.Params[0].AsInteger := dm.cds_produtoCODPRODUTO.AsInteger;
   cds_uso.Open;
end;

procedure TfUsoCadastro.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (cds_uso.State in [dsInsert]) then
    btnGravar.SetFocus;
end;

procedure TfUsoCadastro.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfUsoCadastro.btnGravarClick(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_USOPROD, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_usoCOD_USO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    cds_usoCOD_PRODUTO.AsInteger := dm.cds_produtoCODPRODUTO.AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;

end;

procedure TfUsoCadastro.FormShow(Sender: TObject);
begin
//  inherited;
   sCtrlResize.CtrlResize(TForm(fUsoCadastro));
   if (cds_uso.IsEmpty) then
     btnIncluir.Click
   else
     btnIncluir.SetFocus;
end;

end.
