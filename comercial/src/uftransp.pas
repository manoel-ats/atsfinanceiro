unit uftransp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  DBCtrls, Mask, FMTBcd, SqlExpr, JvExControls, JvLabel;

type
  Tftransp = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    BitBtn1: TBitBtn;
    sqlForn: TSQLQuery;
    JvLabel1: TJvLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftransp: Tftransp;

implementation

uses UDm, uProcurar, sCtrlResize;

{$R *.dfm}

procedure Tftransp.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure Tftransp.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure Tftransp.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.proc_transp);
  try
    fProcurar.btnImprimir.Visible := true;
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMETRANSP';
    if fProcurar.ShowModal=mrOk then
    begin
      if dm.cdsTransp.Active then
        dm.cdsTransp.Close;
      dm.cdsTransp.Params[0].AsInteger := dm.proc_transpCODTRANSP.AsInteger;
      dm.cdsTransp.Open;
    end;
  finally
    dm.proc_transp.Close;
    fProcurar.Free;
  end;
end;

procedure Tftransp.btnGravarClick(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsInsert] then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_TRANSP, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DM.cdsTranspCODTRANSP.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;

end;

procedure Tftransp.BitBtn1Click(Sender: TObject);
var sql:string;
begin
  inherited;
  if (sqlForn.Active) then
     sqlForn.Close;
  sqlForn.SQL.Clear;
  sqlForn.SQL.Add('select nomefornecedor from fornecedor ' +
    'where udf_collateBr(nomefornecedor) = udf_CollateBr(' +
    QuotedStr(DBEdit1.Text)+ ')');
  sqlForn.Open;
  if (sqlForn.IsEmpty) then
  begin
    sql := 'INSERT INTO FORNECEDOR (CODFORNECEDOR, NOMEFORNECEDOR, RAZAOSOCIAL,'+
      'TIPOFIRMA, SEGMENTO, REGIAO, DATACADASTRO, CODUSUARIO, STATUS) VALUES(' +
      'GEN_ID(GEN_FOR,1),' + QuotedStr(DBEdit1.Text) + ', ' + QuotedStr(DBEdit1.Text) +
      ', 0, 3, 2, ' +
      QuotedStr('01/01/01') + ', 1, 1)';
    dm.sqlsisAdimin.ExecuteDirect(sql);
    MessageDlg('Fornecedor cadastrado com sucesso.', mtInformation, [mbOK], 0);
  end
  else
    MessageDlg('Fornecedor ja cadastrado.', mtWarning, [mbOK], 0);
end;

procedure Tftransp.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure Tftransp.FormShow(Sender: TObject);
begin
//  inherited;
  sCtrlResize.CtrlResize(TForm(ftransp));
end;

end.
