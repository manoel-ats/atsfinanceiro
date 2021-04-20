unit uDetalhe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Buttons, Menus, FMTBcd, SqlExpr,
  Provider, DBClient, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, JvEdit,
  JvDBSearchEdit, ExtCtrls, EDBFind;

type
  TfDetalhe = class(TForm)
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    btnGravar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    BuscarSocio1: TMenuItem;
    btnSair: TBitBtn;
    btnCancelar: TBitBtn;
    DBEdit7: TDBEdit;
    JvDBSearchEdit1: TJvDBSearchEdit;
    JvDBSearchEdit4: TJvDBSearchComboBox;
    dsProcedimento: TDataSource;
    cds: TClientDataSet;
    cdsCODPRODUTO: TIntegerField;
    cdsVALORUNITARIOATUAL: TFloatField;
    cdsESTOQUEREPOSICAO: TFloatField;
    cdsPRODUTO: TStringField;
    cdsCONTA_DESPESA: TStringField;
    cdsCONTA_RECEITA: TStringField;
    cdsCONTA_ESTOQUE: TStringField;
    cdsVALOR_PRAZO: TFloatField;
    cdsCODPRO: TStringField;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    Label1: TLabel;
    JvDBSearchEdit2: TJvDBSearchEdit;
    Label2: TLabel;
    JvDBSearchComboBox1: TJvDBSearchComboBox;
    sqlcli: TSQLDataSet;
    sqlcliCODCLIENTE: TIntegerField;
    sqlcliNOMECLIENTE: TStringField;
    sqlcliRA: TStringField;
    dspCli: TDataSetProvider;
    cdsCli: TClientDataSet;
    cdsCliCODCLIENTE: TIntegerField;
    cdsCliNOMECLIENTE: TStringField;
    cdsCliRA: TStringField;
    dsCli: TDataSource;
    btnLancar_socio: TBitBtn;
    BitBtn1: TBitBtn;
    AlterarProcedimento1: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    codcliente: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    RadioP: TRadioGroup;
    RadioS: TRadioGroup;
    dbeProduto: TDBEdit;
    EvDBFind1: TEvDBFind;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnLancar_socioClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioPClick(Sender: TObject);
    procedure RadioSClick(Sender: TObject);
    procedure JvDBSearchEdit4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDetalhe: TfDetalhe;

implementation

uses uCompra, UDm;

{$R *.dfm}

procedure TfDetalhe.btnGravarClick(Sender: TObject);
begin
  if(fCompra.DtSrc.State in [dsEdit]) then
  begin
    if (fCompra.cds_ccusto.Locate('NOME',fCompra.ComboBox1.Text, [loCaseInsensitive])) then
      fCompra.cds_MovimentoCODALMOXARIFADO.AsInteger := StrToInt(fCompra.cds_ccustoCODIGO.AsString)
    else
      fCompra.cds_MovimentoCODALMOXARIFADO.AsInteger:= fCompra.ccustoCompras;

  // se ja tiver finalizado não altera
  if dm.scds_compra_proc.Active then
     dm.scds_compra_proc.Close;
  dm.scds_compra_proc.Params[0].AsInteger := fCompra.cds_MovimentoCODMOVIMENTO.AsInteger;
  dm.scds_compra_proc.Open;

  if(not dm.scds_compra_proc.IsEmpty) then
  begin
    MessageDlg('Lançamento Finalizada, não é possivel executar a alteração.', mtWarning, [mbOk], 0);
    fCompra.DtSrc.DataSet.Cancel;
    fCompra.DtSrc1.DataSet.Cancel;
    exit;
  end;

  fCompra.cds_Mov_det.Edit ;

  if(dsCli.State in [dsBrowse]) then
  begin
    if(cdsCliCODCLIENTE.AsInteger <> 0)then
      fCompra.cds_Mov_detCODCLIENTE.AsInteger := cdsCliCODCLIENTE.AsInteger;
      fCompra.cds_Mov_detNOMECLIENTE.AsString := cdsCliNOMECLIENTE.AsString;
      fCompra.cds_Mov_detCONTROLE.AsInteger := cdsCliCODCLIENTE.AsInteger;
      fCompra.cds_Mov_detRA.AsString :=  cdsCliRA.AsString;
  end;

  if(dsProcedimento.State in [dsBrowse]) then
  begin
    fCompra.cds_Mov_detCODPRODUTO.AsString := cdsCODPRODUTO.AsString;
    fCompra.cds_Mov_detPRODUTO.AsString := cdsPRODUTO.AsString;
  end;

  fCompra.cds_Mov_det.ApplyUpdates(0);

  fCompra.DtSrc.DataSet.Cancel;
  btnCancelar.Visible := False;
  btnGravar.Visible := False;


  end;
end;

procedure TfDetalhe.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfDetalhe.btnCancelarClick(Sender: TObject);
begin
  fCompra.DtSrc1.DataSet.Cancel;
  fCompra.DtSrc.DataSet.Cancel;
  btnGravar.Visible := False;
end;

procedure TfDetalhe.btnLancar_socioClick(Sender: TObject);
begin
  fCompra.DtSrc.Edit;
  RadioS.ItemIndex := 1;
  if (cdsCli.Active) then
  begin
   cdsCli.Close;
  end;
  cdsCli.Open;
  JvDBSearchEdit2.SetFocus;
end;

procedure TfDetalhe.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfDetalhe.BitBtn1Click(Sender: TObject);
begin
  RadioP.ItemIndex := 1;
  if (cds.Active) then
  begin
   cds.Close;
  end;
  cds.Open;
  JvDBSearchEdit1.SetFocus;
  fCompra.DtSrc1.Edit;
end;

procedure TfDetalhe.RadioPClick(Sender: TObject);
begin
  if(RadioP.ItemIndex = 1) then
  begin
    BitBtn1.Click;
  end;
  if(RadioP.ItemIndex = 0) then
  begin
    if (cds.Active) then
    begin
      cds.Close;
      JvDBSearchEdit1.Text := '';
      JvDBSearchEdit4.Text := '';
    end;
  end;
end;

procedure TfDetalhe.RadioSClick(Sender: TObject);
begin
  if(RadioS.ItemIndex = 1) then
  begin
    btnLancar_socio.Click;
  end;
  if(RadioS.ItemIndex = 0) then
  begin
    if (cdsCli.Active) then
    begin
      cdsCli.Close;
      JvDBSearchEdit2.Text := '';
      JvDBSearchComboBox1.Text := '';
    end;
  end;
end;

procedure TfDetalhe.JvDBSearchEdit4Exit(Sender: TObject);
begin
 fCompra.cds_Mov_detHISTORICO.Text :=  JvDBSearchEdit4.Text;
end;

end.
