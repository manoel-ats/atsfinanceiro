unit uProdFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DBCtrls, Grids, DBGrids, StdCtrls, Mask, DB, Menus,
  XPMenu, Buttons, ExtCtrls, MMJPanel, FMTBcd, DBClient, Provider, SqlExpr;

type
  TfProdFornecedor = class(TfPai)
    DBEdit1: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    sdsCODLISTAPRECO: TIntegerField;
    sdsUNIDADE: TStringField;
    sdsCODPRODUTO: TIntegerField;
    sdsCODFORNECEDOR: TIntegerField;
    sdsPRODUTO: TStringField;
    sdsCODIGO: TStringField;
    sdsPRECOLISTA: TFloatField;
    cdsCODLISTAPRECO: TIntegerField;
    cdsUNIDADE: TStringField;
    cdsCODPRODUTO: TIntegerField;
    cdsCODFORNECEDOR: TIntegerField;
    cdsPRODUTO: TStringField;
    cdsCODIGO: TStringField;
    cdsPRECOLISTA: TFloatField;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    codFornecedor : integer;
    { Public declarations }
  end;

var
  fProdFornecedor: TfProdFornecedor;

implementation

uses UDm, ufprocura_prod, sCtrlResize;

{$R *.dfm}

procedure TfProdFornecedor.btnIncluirClick(Sender: TObject);
begin
  inherited;
  Dbedit1.SetFocus;
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CODLISTA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cdsCODLISTAPRECO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;

end;

procedure TfProdFornecedor.FormShow(Sender: TObject);
begin
  inherited;
   sCtrlResize.CtrlResize(TForm(fProdFornecedor));
   if (cds.Active) then
     cds.Close;
   cds.Params[0].AsInteger := codFornecedor;
   cds.Open;
end;

procedure TfProdFornecedor.BitBtn1Click(Sender: TObject);
var sql, sql1: string;
begin
  inherited;
  fProcura_prod.btnIncluir.Visible := true;
  if (procprod <> 'PROC_PROD_COMPLETO') then
  begin
    fProcura_prod.Panel1.Visible := false;
    fProcura_prod.Panel2.Visible := true;
    fProcura_prod.BitBtn1.Click;
  end
  else
  begin
    fProcura_prod.Panel2.Visible := false;
    fProcura_prod.Panel1.Visible := true;
    if (fProcura_prod.cds_proc.Active) then
      fProcura_prod.cds_proc.Close;
  end;
  varonde := 'cadfornecedor';
  var_F := 'cadfornecedor';
  fProcura_prod.ShowModal;

  if dm.scds_produto_proc.Active then
    dm.scds_produto_proc.Close;
  dm.scds_produto_proc.Params[0].Clear;
  dm.scds_produto_proc.Params[1].AsInteger := codprodxa;
  dm.scds_produto_proc.Params[2].Clear;
  dm.scds_produto_proc.Open;

  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  if cds.State in [dsInsert] then
    DBEdit1.SetFocus;
  if cds.State in [dsBrowse] then
    btnIncluir.SetFocus;
end;

procedure TfProdFornecedor.DBEdit1Exit(Sender: TObject);
begin
  inherited;
 if dbedit1.Text='' then exit;
  if (cds.State in [dsInsert, dsEdit]) then
  begin
    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].Clear;
    dm.scds_produto_proc.Params[1].Clear;
    dm.scds_produto_proc.Params[2].AsString:=dbedit1.Text;
    dm.scds_produto_proc.Open;
    if dm.scds_produto_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      bitbtn1.Click;
      exit;
    end;
    cdsCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
    cdsCODIGO.AsString := dm.scds_produto_procCODPRO.AsString;
    cdsPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
    cdsUNIDADE.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
    cdsCODFORNECEDOR.AsInteger := fProdFornecedor.codFornecedor;
    dm.scds_produto_proc.Close;
    Dbedit3.SetFocus;
  end;
end;

procedure TfProdFornecedor.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if (btnGravar.Visible = True) then
    btnGravar.SetFocus;
end;

procedure TfProdFornecedor.FormCreate(Sender: TObject);
begin
//  inherited;

end;

end.
