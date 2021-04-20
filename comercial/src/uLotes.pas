unit uLotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DBClient, Provider, DB, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, Grids, DBGrids, Mask, DBCtrls,
  JvExControls, JvLabel, JvExDBGrids, JvDBGrid;

type
  TfLotes = class(TfPai)
    sdslote: TSQLDataSet;
    dsplotes: TDataSetProvider;
    cdslotes: TClientDataSet;
    sdsloteCODLOTE: TIntegerField;
    sdsloteLOTE: TStringField;
    sdsloteCODPRODUTO: TIntegerField;
    sdsloteDATAFABRICACAO: TDateField;
    sdsloteDATAVENCIMENTO: TDateField;
    sdsloteESTOQUE: TFloatField;
    cdslotesCODLOTE: TIntegerField;
    cdslotesLOTE: TStringField;
    cdslotesCODPRODUTO: TIntegerField;
    cdslotesDATAFABRICACAO: TDateField;
    cdslotesDATAVENCIMENTO: TDateField;
    cdslotesESTOQUE: TFloatField;
    sdslotePRODUTO: TStringField;
    cdslotesPRODUTO: TStringField;
    DBEdit1: TDBEdit;
    sdsloteCODPRO: TStringField;
    cdslotesCODPRO: TStringField;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    btnProdutoProcura: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    sdslotePRECO: TFloatField;
    cdslotesPRECO: TFloatField;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    JvLabel1: TJvLabel;
    DBGrid1: TJvDBGrid;
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLotes: TfLotes;

implementation

uses UDm, ufprocura_prod, uVendas, uCompra, uEntra_Sai_estoque,
  sCtrlResize;

{$R *.dfm}

procedure TfLotes.btnProdutoProcuraClick(Sender: TObject);
begin
  inherited;
  IF (dtSrc.State = dsInsert) Then
  Begin
    if (fProcura_prod.cds_proc.Active) then
      fProcura_prod.cds_proc.Close;
    var_F := 'Lotes';
    fProcura_prod.btnIncluir.Visible := true;
    fProcura_prod.Panel1.Visible := true;
    fProcura_prod.Panel2.Visible := false;
    fProcura_prod.BitBtn1.Click;
    fProcura_prod.ShowModal;
  end;
  DBEdit2.SetFocus;
end;

procedure TfLotes.btnProcurarClick(Sender: TObject);
begin
  inherited;
  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  fProcura_prod.btnIncluir.Visible := true;
  fProcura_prod.Panel1.Visible := true;
  fProcura_prod.Panel2.Visible := false;
  fProcura_prod.BitBtn1.Click;
  if fProcura_prod.ShowModal = mrOk then
  begin
    IF (cdslotes.Active) then
      cdsLotes.Close;
    cdslotes.Params[0].AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
    cdsLotes.Open;
  end;
end;

procedure TfLotes.FormCreate(Sender: TObject);
begin
//  inherited;
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
end;

procedure TfLotes.btnGravarClick(Sender: TObject);
begin
 if cdslotesLOTE.AsString = '' then
 begin
   MessageDlg('Informe o Lote', mtError, [mbOK], 0);
   DBEdit2.SetFocus;
   exit;
 end;

 if DBEdit3.Text = '  /  /  ' then
 begin
   MessageDlg('Informe a data de Fabricação', mtError, [mbOK], 0);
   DBEdit3.SetFocus;
   exit;
 end;

 if DBEdit4.Text = '  /  /  ' then
 begin
   MessageDlg('Informe a data de Vencimento', mtError, [mbOK], 0);
   DBEdit4.SetFocus;
   exit;
 end;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_LOTE, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cdslotesCODLOTE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;
  inherited;

end;

procedure TfLotes.btnSairClick(Sender: TObject);
begin
  dm.LOTENF := cdslotesLOTE.AsString;
  dm.LOTEQTDE := cdslotesESTOQUE.Value;
  inherited;
  close;

end;

procedure TfLotes.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if var_F = 'venda' then
  begin
    cdslotesCODPRODUTO.AsInteger := fVendas.cds_Mov_detCODPRODUTO.AsInteger;
    cdslotesCODPRO.AsString := fVendas.cds_Mov_detCODPRO.AsString;
    cdslotesPRODUTO.Value := fVendas.cds_Mov_detPRODUTO.Value;
    cdslotesDATAFABRICACAO.AsDateTime := Now;
    cdslotesDATAVENCIMENTO.AsDateTime := Now;
  end;

  if var_F = 'compra' then
  begin
    cdslotesCODPRODUTO.AsInteger := fCompra.cds_Mov_detCODPRODUTO.AsInteger;
    cdslotesCODPRO.AsString := fCompra.cds_Mov_detCODPRO.AsString;
    cdslotesPRODUTO.Value := fCompra.cds_Mov_detPRODUTO.Value;
    cdslotesDATAFABRICACAO.AsDateTime := Now;
    cdslotesDATAVENCIMENTO.AsDateTime := Now;
  end;

  if var_F = 'procura' then
  begin
    cdslotesCODPRODUTO.AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
    cdslotesCODPRO.AsString := fProcura_prod.cds_procCODPRO.AsString;
    cdslotesPRODUTO.Value := fProcura_prod.cds_procPRODUTO.Value;
    cdslotesDATAFABRICACAO.AsDateTime := Now;
    cdslotesDATAVENCIMENTO.AsDateTime := Now;    
  end;

  if var_F = 'estoque' then
  begin
    cdslotesCODPRODUTO.AsInteger := fEntra_Sai_estoque.cds_Mov_detCODPRODUTO.AsInteger;
    cdslotesCODPRO.AsString := fEntra_Sai_estoque.cds_Mov_detCODPRO.AsString;
    cdslotesPRODUTO.Value := fEntra_Sai_estoque.cds_Mov_detPRODUTO.Value;
    cdslotesDATAFABRICACAO.AsDateTime := Now;
    cdslotesDATAVENCIMENTO.AsDateTime := Now;
  end;

  DBEdit1.SetFocus;
end;

procedure TfLotes.DBEdit1Exit(Sender: TObject);
begin
  inherited;
 if ((var_f <> 'venda') and (var_f <> 'compra') and (var_f <> 'produto')) then
  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
  begin
    if DBEdit1.Text='' then
       btnProdutoProcura.Click;
    if DBEdit1.Field.OldValue<>DBEdit1.Field.NewValue then
    begin
      if dm.scds_produto_proc.Active then
        dm.scds_produto_proc.Close;
      dm.scds_produto_proc.Params[0].Clear;
      dm.scds_produto_proc.Params[1].Clear;
      dm.scds_produto_proc.Params[2].AsString:=DBEdit1.Text;
      dm.scds_produto_proc.Open;
      if dm.scds_produto_proc.IsEmpty then
      begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        btnProdutoProcura.Click;
        exit;
      end;
      cdslotesCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      cdslotesCODPRO.AsString := dm.scds_produto_procCODPRO.AsString;
      cdslotesPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
    end;
    dm.scds_produto_proc.Close;
  end;
end;

procedure TfLotes.FormShow(Sender: TObject);
begin
  //inherited;
  sCtrlResize.CtrlResize(TForm(fLotes));  
  if not cdslotes.IsEmpty then
    DBGrid1.SetFocus;
end;

procedure TfLotes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if var_F = 'venda' then
  IF (fVendas.cds_Mov_det.State in [dsInsert, dsEdit]) then
  begin
    if var_F = 'venda' then
    begin
      if (cdslotesESTOQUE.AsFloat > 0) then
      begin
       fVendas.cds_Mov_detLOTE.AsString := cdslotesLOTE.AsString;
       fVendas.cds_Mov_detDTAFAB.AsDateTime := cdslotesDATAFABRICACAO.AsDateTime;
       fVendas.cds_Mov_detDTAVCTO.AsDateTime := cdslotesDATAVENCIMENTO.AsDateTime;
       fVendas.cds_Mov_detPRECO.AsFloat := cdslotesPRECO.AsFloat;
       if (cdslotesESTOQUE.AsInteger > 0) then
         estoq := cdslotesESTOQUE.AsInteger;
       close;
      end
      else
      begin
       MessageDlg('Não há estoque deste Lote.', mtWarning, [mbOK], 0);
       fVendas.dbeProduto.Text := '';
       close;
      end;
    end;
  end;
  if var_F = 'compra' then
  begin
    if cdslotesLOTE.AsString <> '' then
    begin
      fCompra.cds_Mov_detLOTE.AsString := cdslotesLOTE.AsString;
      fCompra.cds_Mov_detDTAFAB.AsDateTime := cdslotesDATAFABRICACAO.AsDateTime;
      fCompra.cds_Mov_detDTAVCTO.AsDateTime := cdslotesDATAVENCIMENTO.AsDateTime;
      close;
    end
    else
    begin
     fCompra.dbeProduto.Text := '';
     close;
    end;
  end;

  if var_F = 'procura' then
  begin
    if cdslotesLOTE.AsString <> '' then
    begin
      fCompra.cds_Mov_detLOTE.AsString := cdslotesLOTE.AsString;
      fCompra.cds_Mov_detDTAFAB.AsDateTime := cdslotesDATAFABRICACAO.AsDateTime;
      fCompra.cds_Mov_detDTAVCTO.AsDateTime := cdslotesDATAVENCIMENTO.AsDateTime;
      close;
    end
    else
    begin
     MessageDlg('o Lote tem que ter uma quantidade', mtError, [mbOK], 0);
     est_compra := cdslotesESTOQUE.AsInteger;
     fProcura_prod.Edit3.Text := '';
     close;
    end;
  end;

  if var_F = 'procura_venda' then
  begin
    if cdslotesLOTE.AsString <> '' then
    begin
      fVendas.cds_Mov_detLOTE.AsString := cdslotesLOTE.AsString;
      fVendas.cds_Mov_detDTAFAB.AsDateTime := cdslotesDATAFABRICACAO.AsDateTime;
      fVendas.cds_Mov_detDTAVCTO.AsDateTime := cdslotesDATAVENCIMENTO.AsDateTime;
      fVendas.cds_Mov_detPRECO.AsFloat := cdslotesPRECO.AsFloat;
      close;
    end
    else
    begin
     MessageDlg('o Lote tem que ter uma quantidade', mtError, [mbOK], 0);
     estoq := cdslotesESTOQUE.AsInteger;
     fProcura_prod.Edit3.Text := '';
     close;
    end;
  end;

  if var_F = 'procura_estoque' then
  begin
    if cdslotesLOTE.AsString <> '' then
    begin
      fEntra_Sai_estoque.cds_Mov_detLOTE.AsString := cdslotesLOTE.AsString;
      fEntra_Sai_estoque.cds_Mov_detDTAFAB.AsDateTime := cdslotesDATAFABRICACAO.AsDateTime;
      fEntra_Sai_estoque.cds_Mov_detDTAVCTO.AsDateTime := cdslotesDATAVENCIMENTO.AsDateTime;
      estoq1 := cdslotesESTOQUE.AsInteger;
      close;
    end
    else
    begin
     MessageDlg('o Lote tem que ter uma quantidade', mtError, [mbOK], 0);
     estoq1 := cdslotesESTOQUE.AsInteger;
     fProcura_prod.Edit3.Text := '';
     close;
    end;
  end;

  if var_F = 'estoque' then
  begin
     fEntra_Sai_estoque.cds_Mov_detLOTE.AsString := cdslotesLOTE.AsString;
     fEntra_Sai_estoque.cds_Mov_detDTAFAB.AsDateTime := cdslotesDATAFABRICACAO.AsDateTime;
     fEntra_Sai_estoque.cds_Mov_detDTAVCTO.AsDateTime := cdslotesDATAVENCIMENTO.AsDateTime;
     close;
  end;
  inherited;
end;

end.
