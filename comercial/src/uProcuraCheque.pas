unit uProcuraCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, JvAppStorage, JvAppXMLStorage, JvComponentBase,
  JvFormPlacement, JvExStdCtrls, JvCombobox, Mask, StdCtrls, Grids,
  DBGrids, DB, Provider, DBClient, SqlExpr, Menus, XPMenu, Buttons,
  ExtCtrls, MMJPanel, ImgList, rpcompobase, rpvclreport, JvExMask,
  JvToolEdit, JvExExtCtrls, JvExtComponent, JvCaptionPanel;

type
  TfProcuraCheque = class(TfPai)
    sCP: TSQLDataSet;
    scdsCr_proc: TClientDataSet;
    pCP: TDataSetProvider;
    DBGrid1: TDBGrid;
    JvFormStorage1: TJvFormStorage;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    ImageList1: TImageList;
    VCLReport1: TVCLReport;
    marcartodos1: TMenuItem;
    desmarcartudo1: TMenuItem;
    Label21: TLabel;
    Label22: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    sCPDP: TSmallintField;
    sCPDUP_REC_NF: TStringField;
    sCPDATACONSOLIDA: TDateField;
    sCPCODFORNECEDOR: TIntegerField;
    sCPSTATUS: TStringField;
    sCPFORMAPGTO: TStringField;
    sCPSITUACAOCHEQUE: TStringField;
    sCPVALORRECEBIDO: TFloatField;
    sCPN_DOCUMENTO: TStringField;
    sCPNOMEFORNECEDOR: TStringField;
    sCPNOME: TStringField;
    scdsCr_procDP: TSmallintField;
    scdsCr_procDUP_REC_NF: TStringField;
    scdsCr_procDATACONSOLIDA: TDateField;
    scdsCr_procCODFORNECEDOR: TIntegerField;
    scdsCr_procSTATUS: TStringField;
    scdsCr_procFORMAPGTO: TStringField;
    scdsCr_procSITUACAOCHEQUE: TStringField;
    scdsCr_procVALORRECEBIDO: TFloatField;
    scdsCr_procN_DOCUMENTO: TStringField;
    scdsCr_procNOMEFORNECEDOR: TStringField;
    scdsCr_procNOME: TStringField;
    JvCaptionPanel1: TJvCaptionPanel;
    Label19: TLabel;
    edNumeroDocumento: TEdit;
    Label9: TLabel;
    edCodCliente: TEdit;
    Label10: TLabel;
    edCliente: TEdit;
    BitBtn8: TBitBtn;
    BitBtn1: TBitBtn;
    Label11: TLabel;
    cbConta: TComboBox;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    meDta3: TMaskEdit;
    meDta4: TMaskEdit;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    JvCaptionPanel2: TJvCaptionPanel;
    Label3: TLabel;
    meDta1: TJvDateEdit;
    Label7: TLabel;
    ComboBox1: TComboBox;
    JvCaptionPanel3: TJvCaptionPanel;
    BitBtn11: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    sCPCAIXA: TSmallintField;
    scdsCr_procCAIXA: TSmallintField;
    procedure btnProcurarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edCodClienteExit(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure marcartodos1Click(Sender: TObject);
    procedure desmarcartudo1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure meDta3KeyPress(Sender: TObject; var Key: Char);
  private
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProcuraCheque: TfProcuraCheque;
  SqlTexto, sqlTexto1: String;

implementation

uses UDm, uUtils, uProcurar, sCtrlResize;

{$R *.dfm}

procedure TfProcuraCheque.btnProcurarClick(Sender: TObject);
 Var
 DataStr, sql2,sqlTexto2: String;
 varCpProc : TUtils;
begin
  sqlTexto1 := '';
  sqlTexto := '';
  if scdsCr_proc.Active then
     scdsCr_proc.Close;
   scdsCr_proc.CommandText:='select rec.dp, rec.dup_rec_nf, ' +
     ' rec.DATAVENCIMENTO, rec.DATACONSOLIDA, rec.CODFORNECEDOR, ' +
     ' CASE rec.STATUS WHEN ' + '''5-''' + ' THEN ' + '''PENDENTE''' +
     ' when ' + '''6-''' + ' then ' + '''PENDENTE CONTAB.''' +
     ' when ' + '''7-''' + ' then ' + '''PAGO''' +
     ' when ' + '''8-''' + ' then ' + '''SUSPENSO''' +
     ' END AS STATUS, CASE rec.FORMAPAGAMENTO when ' + '''2''' + ' then ' + '''CHEQUE''' +
     ' when ' + '''3''' + ' then ' + '''CHEQUE-PR?'''+ 'end as FORMAPGTO, rec.SITUACAOCHEQUE,' +
     ' sum(rec.VALORRECEBIDO + FUNRURAL + JUROS) as VALORRECEBIDO, ' +
     ' rec.N_DOCUMENTO, cli.NOMEFORNECEDOR, ' +
     ' plano.NOME, rec.CAIXA from PAGAMENTO rec ' +
     ' inner join FORNECEDOR cli on cli.CODFORNECEDOR=rec.CODFORNECEDOR ' +
     ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ';

   sqlTexto1 := scdsCr_proc.CommandText;

  //==============================================================================
  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data de vencimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta3.Text<>datastr) then
  StrToDate(medta3.Text);
  if (medta4.Text<>datastr) then
  StrToDate(medta4.Text);
  if (medta3.Text<>datastr) then
  if (medta4.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.DATACONSOLIDA between '
    else
      sqlTexto := sqlTexto + ' and rec.DATACONSOLIDA between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta3.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta4.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inv?lida! dd/mm/aa');
     medTa3.SetFocus;
  end;
  end;

  if (cbConta.Text<>'') then
  begin
    if (not dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
    begin
      if dm.cds_parametro.Active then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
      dm.cds_parametro.Open;
      if (dm.cds_7_contas.Active) then
        dm.cds_7_contas.close;
      dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
      dm.cds_7_contas.Open;
      while (not dm.cds_7_contas.IsEmpty) do
      begin
        cbconta.Items.Add(dm.cds_7_contasNOME.AsString);
        dm.cds_7_contas.next;
      end;
      dm.cds_parametro.Close;
    end
    else begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where rec.CAIXA = '
      else
        sqlTexto := sqlTexto + ' and REC.CAIXA = ';
        sqlTexto := sqlTexto + IntToStr(dm.cds_7_contasCODIGO.AsInteger);
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Situa?ao
  //------------------------------------------------------------------------------
  if (ComboBox1.Text <> '') then
  begin
     if sqlTexto = '' then
       sqlTexto := sqlTexto + ' WHERE (rec.SITUACAOCHEQUE = '
     else
       sqlTexto := sqlTexto + ' AND (rec.SITUACAOCHEQUE = ';
     sqlTexto := sqlTexto + QuotedStr(ComboBox1.Text) + ')';
  end
  else
  begin
      //Forma
      if SqlTexto='' then
        SqlTexto := SqlTexto + ' WHERE ((rec.FORMAPAGAMENTO = '
      else
        SqlTexto := SqlTexto + ' AND ((rec.FORMAPAGAMENTO = ';
      SqlTexto := SqlTexto + QuotedStr('2')  + ')' ;
      SqlTexto := SqlTexto + ' OR (rec.FORMAPAGAMENTO = ';
      SqlTexto := SqlTexto + QuotedStr('3')  + ')) and ((rec.SITUACAOCHEQUE IS NULL) ' +
        ' OR (REC.SITUACAOCHEQUE = ' + QuotedStr('') + ')) ';
  end;
  //==============================================================================

    //------------------------------------------------------------------------------
  //Numero Documento
  //------------------------------------------------------------------------------
  if (edNumeroDocumento.Text <> '') then
  begin
    varCpProc := TUtils.create;
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.N_DOCUMENTO  = '
    else
      SqlTexto := SqlTexto + ' AND (rec.N_DOCUMENTO  = ';
    SqlTexto := SqlTexto + QuotedStr(edNumeroDocumento.Text) + ')';
  end;
  //==============================================================================


  //------------------------------------------------------------------------------
  //Fornecedor
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.CODFORNECEDOR = '
    else
      sqlTexto := sqlTexto + ' and rec.CODFORNECEDOR = ';
      sqlTexto := sqlTexto + edCodCliente.Text;
  end;
  //==============================================================================

  sql2 := ' group by rec.DATACONSOLIDA, rec.DATAVENCIMENTO, rec.N_DOCUMENTO, cli.NOMEFORNECEDOR, ' +
          ' rec.CODFORNECEDOR, rec.STATUS, rec.FORMAPAGAMENTO, rec.SITUACAOCHEQUE,' +
          ' rec.dp, rec.dup_rec_nf, plano.NOME, rec.CAIXA';

  scdsCr_proc.CommandText := sqlTexto1 + sqlTexto + sql2;
  scdsCr_proc.Open;
  DBGrid1.SetFocus;

end;

procedure TfProcuraCheque.ChkDBGridCellClick(Column: TColumn);
var
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF')
      and Field.CanModify and not Column.ReadOnly then
  with Field.Dataset do
  begin
    if State = dsBrowse then
      Edit;
    if (scdsCr_procDUP_REC_NF.AsString <> 'S') then
    begin
      //dbGrid1.SelectedRows.CurrentRowSelected := True;
      //dbgrid1.Refresh;
      scdsCr_procDUP_REC_NF.AsString := 'S';
      scdsCr_procDP.AsInteger := 0;
      scdsCr_proc.Post;
    end
    else begin
      scdsCr_procDUP_REC_NF.AsString := '';
      scdsCr_procDP.Clear;;
    end;
  end;
end;

procedure TfProcuraCheque.ChkDBGridColEnter(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
    DBGrid.Options := DBGrid.Options - [dgEditing];
end;

procedure TfProcuraCheque.ChkDBGridColExit(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
    DBGrid.Options := DBGrid.Options + [dgEditing];
end;

procedure TfProcuraCheque.ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
  begin
    // Fill the cell with the background color
    DBGrid.Canvas.FillRect(Rect);
    // Determine the position of the graphic inside the cell
    case Column.Alignment of
      taRightJustify:
        X := Rect.Right - 2 - 16;
      taCenter:
        X := (Rect.Right - Rect.Left - 16) div 2 + Rect.Left;
      else // taLeftJustify:
        X := Rect.Left + 2;
    end;
    Y := (Rect.Bottom - Rect.Top - 16) div 2 + Rect.Top;
    // Determine the image to be used
    // if Field.AsBoolean then Index := 1 else Index := 0;
    if scdsCr_procDUP_REC_NF.AsString <> 'S' then Index := 1 else Index := 0;
    // Draw the graphic
    ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
  end else // Default drawing
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfProcuraCheque.ChkDBGridKeyPress(DBGrid: TDBGrid;
  var Key: Char);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
    if (Key = ' ') and Field.CanModify and
        not DBGrid.Columns[DBGrid.SelectedIndex].ReadOnly then
      with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
        //Field.AsBoolean := not Field.AsBoolean;
      if (scdsCr_procDUP_REC_NF.AsString <> 'S') then
      begin
        scdsCr_procDUP_REC_NF.AsString := 'S';
        scdsCr_procDP.AsInteger := 0;
        scdsCr_proc.Post;
      end
      else begin
        scdsCr_procDUP_REC_NF.AsString := '';
        scdsCr_procDP.Clear;;
      end;
  end;

end;

procedure TfProcuraCheque.DtSrcStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TfProcuraCheque.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  ChkDBGridCellClick(Column);
end;

procedure TfProcuraCheque.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfProcuraCheque.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
 ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfProcuraCheque.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = scdsCr_procSITUACAOCHEQUE then
   if ((scdsCr_procSITUACAOCHEQUE.AsString = 'Sustado') or (scdsCr_procSITUACAOCHEQUE.AsString = 'Devolvido')) then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = scdsCr_procSITUACAOCHEQUE then
   if (scdsCr_procSITUACAOCHEQUE.AsString = 'Compensado') then
   begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
    DataCol, Column, State);
end;

procedure TfProcuraCheque.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfProcuraCheque.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
     scdsCr_proc.IndexFieldNames := Column.FieldName;
end;

procedure TfProcuraCheque.edCodClienteExit(Sender: TObject);
begin
  inherited;
   if edCodCliente.Text = '' then exit;
   if dm.scds_forn_proc.Active then
      dm.scds_forn_proc.Close;
   dm.scds_forn_proc.Params[0].Clear;
   dm.scds_forn_proc.Params[1].Clear;
   dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;   
   dm.scds_forn_proc.Params[2].AsInteger := StrToInt(edCodCliente.Text);
   dm.scds_forn_proc.Open;
     edCliente.Text := dm.scds_forn_procNOMEFORNECEDOR.asString;
   dm.scds_forn_proc.Close;
end;

procedure TfProcuraCheque.BitBtn8Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.create(self,dm.scds_forn_proc);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  fProcurar.BtnProcurar.Click;
  try
    fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
    if fProcurar.ShowModal=mrOk then
    begin
     edCodCliente.Text:=IntToStr(dm.scds_forn_procCODFORNECEDOR.asInteger);
     edCliente.Text:=dm.scds_forn_procNOMEFORNECEDOR.asString;
    end;
  Finally
    dm.scds_forn_proc.close;
    fProcurar.Free;
  end;
end;

procedure TfProcuraCheque.BitBtn1Click(Sender: TObject);
begin
  inherited;
     edCodCliente.Text:= '';
     edCliente.Text:= '';
end;

procedure TfProcuraCheque.BitBtn7Click(Sender: TObject);
begin
  inherited;
  medta3.Clear;
  medta4.Clear;
end;

procedure TfProcuraCheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
   btnProcurar.Click;
 end;
end;

procedure TfProcuraCheque.BitBtn4Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TfProcuraCheque.marcartodos1Click(Sender: TObject);
begin
  inherited;
  if (scdsCr_proc.Active) then
  begin
      scdsCr_proc.First;
      scdsCr_proc.DisableControls;
      while not scdsCr_proc.Eof do
      begin
        if scdsCr_proc.State = dsBrowse then
           scdsCr_proc.Edit;
        scdsCr_procDUP_REC_NF.AsString := 'S';
        scdsCr_proc.Post;
        scdsCr_proc.Next;
      end;
      scdsCr_proc.First;
      scdsCr_proc.EnableControls;
  end;
end;

procedure TfProcuraCheque.desmarcartudo1Click(Sender: TObject);
begin
  inherited;
  if (scdsCr_proc.Active) then
  begin
      scdsCr_proc.First;
      scdsCr_proc.DisableControls;
      while not scdsCr_proc.Eof do
      begin
        if scdsCr_proc.State = dsBrowse then
           scdsCr_proc.Edit;
        scdsCr_procDUP_REC_NF.AsString := '';
        scdsCr_proc.Post;
        scdsCr_proc.Next;
      end;
      scdsCr_proc.First;
      scdsCr_proc.EnableControls;
  end;
end;

procedure TfProcuraCheque.FormShow(Sender: TObject);
var conta_local ,banco_boleto : String;
begin
 //  inherited;
  sCtrlResize.CtrlResize(TForm(fProcuraCheque));
{      //Vejo quais s?o as contas de Receitas para listar no lookupcombobox.
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    conta_local := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;


    if dm.cds_ccusto.Active then
      dm.cds_ccusto.Close;
    dm.cds_ccusto.Params[0].AsString := conta_local;
    dm.cds_ccusto.Open;
    // populo a combobox
    DM.cds_ccusto.First;
    while not DM.cds_ccusto.Eof do
    begin
      edCodCCusto.Items.Add(dm.cds_ccustoNOME.AsString);
      DM.cds_ccusto.Next;
    end;
    edCodCCusto.ItemIndex := 0;
  }
    // Listo as Contas Caixa


end;

procedure TfProcuraCheque.FormCreate(Sender: TObject);
begin
//  inherited;

  // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if (dm.cds_7_contas.Active) then
    dm.cds_7_contas.close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;
  while (not dm.cds_7_contas.Eof) do
  begin
    cbConta.Items.Add(dm.cds_7_contasNOME.AsString);
    dm.cds_7_contas.next;
  end;
end;

procedure TfProcuraCheque.BitBtn11Click(Sender: TObject);
begin
  inherited;
  //Memo1.Lines.Add(scdsCr_proc.CommandText);
  VCLReport1.FileName := str_relatorio + 'situacaoCheque.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.DataInfo.Items[1].SQL:= scdsCr_proc.CommandText;
  VCLReport1.Execute;


end;

procedure TfProcuraCheque.btnIncluirClick(Sender: TObject);
begin
  inherited;
  {if (meDta1.CheckValidDate) then
  begin
    ShowMessage ('Preencha a Data!');
    exit;
  end;}
  scdsCr_proc.DisableControls;
  scdsCr_proc.First;
  While not scdsCr_proc.Eof do
  begin
    if (scdsCr_procDUP_REC_NF.AsString = 'S') then
    begin
      if (scdsCr_proc.State in [dsBrowse]) then
        scdsCr_proc.Edit;
      scdsCr_procSITUACAOCHEQUE.AsString := ComboBox1.Text;
      if (meDta1.Text <> '  /  /    ') then
        scdsCr_procDATACONSOLIDA.AsDateTime := StrToDate(meDta1.Text);
      scdsCr_procDUP_REC_NF.AsString := '';
      scdsCr_proc.Post;
      dm.sqlsisAdimin.ExecuteDirect('update PAGAMENTO set SITUACAOCHEQUE = ' +
        QuotedStr(ComboBox1.Text) + ', DATACONSOLIDA = ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(meDta1.Text))) +
        ' Where N_DOCUMENTO = ' + QuotedStr(scdsCr_procN_DOCUMENTO.AsString) +
        ' and CODFORNECEDOR = ' + IntToStr(scdsCr_procCODFORNECEDOR.asInteger) +
        ' and CAIXA = ' + IntToStr(scdsCr_procCAIXA.asInteger));
    end;
    scdsCr_proc.Next;
  end;
  scdsCr_proc.First;
  //scdsCr_proc.ApplyUpdates(0);
  scdsCr_proc.EnableControls;
end;

procedure TfProcuraCheque.meDta3KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

end.
