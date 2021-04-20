unit ufCpAltera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids, Mask, DBCtrls,
  JvExStdCtrls, JvCombobox, JvDBSearchComboBox, JvEdit, JvDBSearchEdit;

type
  TfCpAltera = class(TfPai)
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    sdsCODPAGAMENTO: TIntegerField;
    sdsTITULO: TStringField;
    sdsEMISSAO: TDateField;
    sdsDATAVENCIMENTO: TDateField;
    sdsDATAPAGAMENTO: TDateField;
    sdsCAIXA: TSmallintField;
    sdsCONTACREDITO: TIntegerField;
    sdsSTATUS: TStringField;
    sdsFORMAPAGAMENTO: TStringField;
    sdsDATABAIXA: TDateField;
    sdsHISTORICO: TStringField;
    sdsCODALMOXARIFADO: TSmallintField;
    sdsN_DOCUMENTO: TStringField;
    sdsVALORRECEBIDO: TFloatField;
    sdsJUROS: TFloatField;
    sdsDESCONTO: TFloatField;
    sdsPERDA: TFloatField;
    sdsFUNRURAL: TFloatField;
    sdsVALOR_PRIM_VIA: TFloatField;
    sdsVALOR_RESTO: TFloatField;
    sdsVALORTITULO: TFloatField;
    sdsPARCELAS: TIntegerField;
    sdsVIA: TStringField;
    cdsCODPAGAMENTO: TIntegerField;
    cdsTITULO: TStringField;
    cdsEMISSAO: TDateField;
    cdsDATAVENCIMENTO: TDateField;
    cdsDATAPAGAMENTO: TDateField;
    cdsCAIXA: TSmallintField;
    cdsCONTACREDITO: TIntegerField;
    cdsSTATUS: TStringField;
    cdsFORMAPAGAMENTO: TStringField;
    cdsDATABAIXA: TDateField;
    cdsHISTORICO: TStringField;
    cdsCODALMOXARIFADO: TSmallintField;
    cdsN_DOCUMENTO: TStringField;
    cdsVALORRECEBIDO: TFloatField;
    cdsJUROS: TFloatField;
    cdsDESCONTO: TFloatField;
    cdsPERDA: TFloatField;
    cdsFUNRURAL: TFloatField;
    cdsVALOR_PRIM_VIA: TFloatField;
    cdsVALOR_RESTO: TFloatField;
    cdsVALORTITULO: TFloatField;
    cdsPARCELAS: TIntegerField;
    cdsVIA: TStringField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
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
    DBEdit8: TDBEdit;
    DBGrid1: TDBGrid;
    sdsVALORPAG: TFloatField;
    cdsVALORPAG: TFloatField;
    Label24: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    ComboBox1: TComboBox;
    cbConta: TComboBox;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    sdsRA: TStringField;
    sdsNOMECLIENTE: TStringField;
    cdsRA: TStringField;
    cdsNOMECLIENTE: TStringField;
    Label12: TLabel;
    fgrupo: TBitBtn;
    Label14: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cdsClienteBusca: TClientDataSet;
    cdsClienteBuscaCODCLIENTE: TIntegerField;
    cdsClienteBuscaNOMECLIENTE: TStringField;
    cdsClienteBuscaRA: TStringField;
    DataSource1: TDataSource;
    DBEdit11: TDBEdit;
    sdsCODCLIENTE: TIntegerField;
    cdsCODCLIENTE: TIntegerField;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    JvDBSearchEdit1: TJvDBSearchEdit;
    JvDBSearchEdit2: TJvDBSearchEdit;
    Panel1: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    CtrlB1: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fgrupoClick(Sender: TObject);
    procedure JvDBSearchEdit1Exit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCpAltera: TfCpAltera;

implementation

uses UDm, uUtils, sCtrlResize, UProcuraGrupoT, UDmSaude;

{$R *.dfm}

procedure TfCpAltera.BitBtn1Click(Sender: TObject);
begin
  inherited;
  btnGravar.Click;
end;

procedure TfCpAltera.btnGravarClick(Sender: TObject);
var
  utilcrtitulo : Tutils;
  statusCrTitulo : TUtils;
begin
  cdsFORMAPAGAMENTO.AsString := (statusCrTitulo.pegaForma(ComboBox1.Text));
  if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
    cdsCAIXA.Value := dm.cds_7_contas.Fields[0].asInteger;
  //cdsSTATUS.AsString := '7-';
  //cds.Post;
  JvDBSearchEdit1.Text := '';
  JvDBSearchEdit2.Text := '';
  if (cds.State in [dsInsert, dsEdit]) then
  inherited;
  cds.Refresh; 
end;

procedure TfCpAltera.FormCreate(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
  // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;
  while not dm.cds_7_contas.Eof do
  begin
    cbConta.Items.Add(dm.cds_7_contas.Fields[2].asString);
    dm.cds_7_contas.Next;
  end;
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    combobox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;
end;

procedure TfCpAltera.FormShow(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
   // inherited;
  if (cdsClienteBusca.Active) then
  begin
   cdsClienteBusca.Close;
  end;
  cdsClienteBusca.Open;
  JvDBSearchEdit1.Text := '';
  JvDBSearchEdit2.Text := '';

   sCtrlResize.CtrlResize(TForm(fCpAltera));
   if (not cds.IsEmpty) then
   begin
     if (cdsFORMAPAGAMENTO.AsString <> '') then
     begin
        utilcrtitulo := Tutils.Create;
        ComboBox1.ItemIndex := utilcrtitulo.retornaForma(cdsFORMAPAGAMENTO.asString);
     end;
     if (not cdsCAIXA.IsNull) then
     begin
       if (not DM.c_1_planoc.Active) then
         dm.c_1_planoc.Open;
       dm.c_1_planoc.Locate('CODIGO',IntToStr(cdsCAIXA.AsInteger),[loCaseInsensitive]);
       cbConta.Text := dm.c_1_planocNOME.Text;
     end;
   end;
end;

procedure TfCpAltera.fgrupoClick(Sender: TObject);
var    grupo : string;
begin
  if (cds.State in [dsBrowse]) then
  cds.Edit;
  
  grupo := 'ASH';
  fProcuraGrupoT := TfProcuraGrupoT.Create(Application);
  if ( grupo = 'ASH') then  begin
  fProcuraGrupoT.Color := clSkyBlue;
  end;
  if DMSaude.procgrupoT.Active then
    DMSaude.procgrupoT.Close;
     DMSaude.procgrupoT.Params[0].AsString := grupo;
     DMSaude.procgrupoT.Open;
   try
     fProcuraGrupoT.ShowModal;
    Edit1.Text := DMSaude.procgrupoTRA.AsString;
    Edit2.Text := IntToStr(DMSaude.procgrupoTCODCLIENTE.asInteger);
    DBEdit11.Text := IntToStr(DMSaude.procgrupoTCODCLIENTE.asInteger);
    JvDBSearchEdit1.Text := DMSaude.procgrupoTRA.AsString;
    JvDBSearchEdit2.Text := DMSaude.procgrupoTNOMECLIENTE.AsString;
   finally
    fProcuraGrupoT.Free;
  end;
end;
procedure TfCpAltera.JvDBSearchEdit1Exit(Sender: TObject);
begin
  inherited;
  cdsClienteBusca.Locate('RA',Edit1.Text,[loCaseInsensitive]);
end;

procedure TfCpAltera.DBGrid1CellClick(Column: TColumn);
var    grupo : string;
begin
 { if (cds.State in [dsBrowse]) then
  cds.Edit;

  grupo := 'ASH';
  fProcuraGrupoT := TfProcuraGrupoT.Create(Application);
  if ( grupo = 'ASH') then  begin
  fProcuraGrupoT.Color := clSkyBlue;
  end;
  if DMSaude.procgrupoT.Active then
    DMSaude.procgrupoT.Close;
     DMSaude.procgrupoT.Params[0].AsString := grupo;
     DMSaude.procgrupoT.Open;
   try
     fProcuraGrupoT.ShowModal;
    Edit1.Text := DMSaude.procgrupoTRA.AsString;
    //Edit2.Text := IntToStr(DMSaude.procgrupoTCODCLIENTE.asInteger);

    cdsCODCLIENTE.Text := IntToStr(DMSaude.procgrupoTCODCLIENTE.asInteger);

    //  DBEdit11.Text := IntToStr(DMSaude.procgrupoTCODCLIENTE.asInteger);
    JvDBSearchEdit1.Text := DMSaude.procgrupoTRA.AsString;
    JvDBSearchEdit2.Text := DMSaude.procgrupoTNOMECLIENTE.AsString;
   finally
    fProcuraGrupoT.Free;
  end;
}
end;

procedure TfCpAltera.btnCancelarClick(Sender: TObject);
begin
  JvDBSearchEdit1.Text := '';
  JvDBSearchEdit2.Text := '';
  inherited;

end;

end.
