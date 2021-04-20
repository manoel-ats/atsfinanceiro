unit uFamiliaP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  DBCtrls, Grids, DBGrids, Mask, JvExStdCtrls, JvCombobox,
  JvDBSearchComboBox, JvExControls, JvLabel, FMTBcd, SqlExpr, Provider,
  DBClient;

type
  TfFamiliaP = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    dsMarca: TDataSource;
    JvLabel1: TJvLabel;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1CODDADOS: TIntegerField;
    SQLDataSet1DESCRICAO: TStringField;
    SQLDataSet1USO: TStringField;
    SQLDataSet1OUTROS: TStringField;
    ClientDataSet1CODDADOS: TIntegerField;
    ClientDataSet1DESCRICAO: TStringField;
    ClientDataSet1USO: TStringField;
    ClientDataSet1OUTROS: TStringField;
    DBEdit2: TDBEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure cbMarcaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFamiliaP: TfFamiliaP;
  origem_abriu: String;  

implementation

uses uComercial, UDm, sCtrlResize, UDmSaude;

{$R *.dfm}

procedure TfFamiliaP.btnIncluirClick(Sender: TObject);
begin
  inherited;
   DBEdit1.SetFocus;
   ClientDataSet1USO.AsString := 'PREVISAO';
   if dm.c_6_genid.Active then
     dm.c_6_genid.Close;
   dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DADOS_COMBOS, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
   dm.c_6_genid.Open;
   ClientDataSet1CODDADOS.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
   dm.c_6_genid.Close;

end;

procedure TfFamiliaP.btnGravarClick(Sender: TObject);
begin
  inherited;
  btnIncluir.SetFocus;
end;

procedure TfFamiliaP.FormCreate(Sender: TObject);
begin
  //inherited;
  if ClientDataSet1.Active then
    ClientDataSet1.Close;
  ClientDataSet1.CommandText := 'select CODDADOS, DESCRICAO, USO,  OUTROS from DADOS_COMBOS where USO = '+ QuotedStr('PREVISAO');
  ClientDataSet1.Open;
end;

procedure TfFamiliaP.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfFamiliaP.btnSairClick(Sender: TObject);
begin
  inherited;
 { if origem_abriu = 'planocontas' then
    exit;
  if dm.cds_produto.State = dsbrowse then
    dm.cds_produto.Edit;
  dm.cds_produtoFAMILIA.AsString :=  DM.cds_familiaDESCFAMILIA.AsString;     
 }
end;

procedure TfFamiliaP.cbMarcaChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse, dsInactive]) then
    DtSrc.DataSet.Edit;
end;

procedure TfFamiliaP.FormShow(Sender: TObject);
begin
  inherited;
  sCtrlResize.CtrlResize(TForm(fFamiliaP));
end;

end.
