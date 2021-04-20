unit uProdutoCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  DBCtrls, dxCore, dxButton, EDBFind, Mask, FMTBcd, SqlExpr, JvExStdCtrls,
  JvCombobox, JvDBSearchComboBox;

type
  TfProdutoCadastro = class(TfPai)
    DBText2: TDBText;
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
    Label10: TLabel;
    Label11: TLabel;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    GroupBox2: TGroupBox;
    DBEdit11: TDBEdit;
    Label18: TLabel;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label26: TLabel;
    Panel1: TPanel;
    Chk_lote: TCheckBox;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    Panel2: TPanel;
    Chk_rateio: TCheckBox;
    dst_familia: TDataSource;
    dstMarca: TDataSource;
    dstCategoria: TDataSource;
    DBEdit19: TDBEdit;
    Label27: TLabel;
    sds_ClaFiscal: TSQLDataSet;
    DtSrc_cm: TDataSource;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    dxButton3: TdxButton;
    Button1: TButton;
    dxButton4: TdxButton;
    cbMarca: TJvDBSearchComboBox;
    rgEmUso: TCheckBox;
    SpeedButton1: TBitBtn;
    SpeedButton2: TBitBtn;
    SpeedButton3: TBitBtn;
    SpeedButton6: TBitBtn;
    btnRateio: TBitBtn;
    SpeedButton7: TBitBtn;
    DBRadioGroup2: TDBRadioGroup;
    cbTipo: TComboBox;
    Label28: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnRateioClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Chk_loteClick(Sender: TObject);
    procedure Chk_rateioClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure cbMarcaChange(Sender: TObject);
    procedure rgEmUsoClick(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Arredondar(valor: Double): integer;
  end;

var
  fProdutoCadastro: TfProdutoCadastro;
  familia : string;   
  codprod1:integer;

implementation

uses uComercial, UDm, ufprocura_prod, uMarcas_Grupos, uFamilia, uCategoria,
  uContaRateio, uClassificacaoFiscal, uCodigoTerceiros, uUsoCadastro,
  ufListaProd, uProduto_Mat_prima, sCtrlResize;

{$R *.dfm}

procedure TfProdutoCadastro.FormCreate(Sender: TObject);
begin
 // inherited;

  // Preenche as combobox - Classificacao Fiscal e CST
  if (not sds_ClaFiscal.Active) then
     sds_ClaFiscal.Open;
  while not sds_ClaFiscal.Eof do
  begin
    if (sds_ClaFiscal.Fields[3].AsString = 'ClassificaFiscal') then
      DBComboBox2.Items.Add(sds_ClaFiscal.Fields[0].AsString);
    if (sds_ClaFiscal.Fields[3].AsString = 'CST') then
      DBComboBox3.Items.Add(sds_ClaFiscal.Fields[0].AsString);
    sds_ClaFiscal.Next;
  end;

//*****************************************************
// abre as tabelas Marca, familia e comissão

  if (not DM.cds_Marca.Active) then
    DM.cds_Marca.Open;
  cbMarca.Text := '';

  if (not DM.cds_familia.Active) then
    DM.cds_familia.Open;

  if dm.cds_cm.Active then
    dm.cds_cm.Close;
  dm.cds_cm.Params[0].Clear;
  dm.cds_cm.Params[1].AsInteger := 9999999;
  dm.cds_cm.Open;

end;

procedure TfProdutoCadastro.btnProcurarClick(Sender: TObject);
begin
  bitBtn1.Enabled := True;
  bitBtn2.Enabled := True;
  varonde := 'cad_produto';
  inherited;
    fProcura_prod.btnIncluir.Visible := False;
    fProcura_prod.Panel2.Visible := False;
    fProcura_prod.Panel1.Visible := True;    
    fProcura_prod.ShowModal;
    if (codprodxa > 0) then
    begin
      try
        //If (codprodxa = 0) then
          //exit;
        Dm.cds_Produto.Close;
        Dm.cds_Produto.Params[0].AsInteger := codprodxa;
        Dm.cds_Produto.Open;
        dm.cds_produto.Edit;
        dm.cds_produtoESTOQUEATUAL.AsFloat := fProcura_prod.cds_procESTOQUEATUAL.AsFloat;
        dm.cds_produtoVALORUNITARIOATUAL.AsFloat := fProcura_prod.cds_procPRECO_COMPRA.AsFloat;
        //dm.cds_produtoPRECOMEDIO.AsFloat := fProcura_prod.cds_procPRECOMEDIO.AsFloat;
        //dm.cds_produtoVALOR_PRAZO.AsFloat := fProcura_prod.cds_procPRECO_VENDA.AsFloat;
        dm.cds_produto.Post;
        cbMarca.Text := dm.cds_produtoMARCA.AsString;
        dm.cds_produto.Edit;
        if (dm.cds_produtoLOTES.AsString = 'S') then
          Chk_lote.Checked := True
        else
          Chk_lote.Checked := False;

       if (dm.cds_produtoUSA.AsString = 'N') then
         rgEmUso.Checked := False
       else
         rgEmUso.Checked := True;

        if (dm.cds_produtoTIPO.AsString = 'SERV') then
          cbTipo.ItemIndex := 3
        else if (dm.cds_produtoTIPO.AsString = 'COMPRA') then
          cbTipo.ItemIndex := 1
        else if (dm.cds_produtoTIPO.AsString = 'VENDA') then
          cbTipo.ItemIndex := 2
        else
          cbTipo.ItemIndex := 0;

        dm.cds_produto.Post;
      except
        MessageDlg('Erro na consulta ...', mtWarning, [mbOK], 0);
      end;
    end;
    fProcura_prod.btnIncluir.Visible := True;
    if not dm.cds_produto.IsEmpty then
    begin
      if Dm.cds_produtoRATEIO.AsString = 'S' then
      begin
        Chk_rateio.Checked := True;
        btnRateio.Enabled := True;
      end
      else
        btnRateio.Enabled := False;

      if Dm.cds_produtoLOTES.AsString = 'S' then
        Chk_lote.Checked := True
    end;
    varonde := '';

    if DM.cds_familia.Active then
      DM.cds_familia.Close;
    dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
      'where MARCA = ' + QuotedStr(cbMarca.Text);
    DM.cds_familia.Open;
    if DM.cds_categoria.Active then
      DM.cds_categoria.Close;
    DM.cds_categoria.Params[0].Clear;
    DM.cds_categoria.Params[1].Clear;
    DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
    DM.cds_categoria.Open;

end;

procedure TfProdutoCadastro.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dm.cds_produtoTIPO.AsString := 'PROD';
  // Deixo o campo USA = NULL quando o produto é utilizado e N qdo não 
  rgEmUso.Checked := True;
  Button1.SetFocus;
  dbEdit1.SetFocus;
  cbMarca.Text := '';
  if (DM.cds_Marca.Active) then
    DM.cds_Marca.Close;
  DM.cds_Marca.Open;
  cbMarca.Text := '';
end;

procedure TfProdutoCadastro.btnGravarClick(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_PROD, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dm.cds_produtoCODPRODUTO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    IF (DBEdit2.Text = '') Then
      dm.cds_produtoCODPRO.AsString := IntToStr(dm.c_6_genidCODIGO.AsInteger);
    codprod1 := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;

  case DBRadioGroup2.ItemIndex of
    0 : dm.cds_produtoTIPOPRECOVENDA.AsString := 'M'; // Preço Médio
    1 : dm.cds_produtoTIPOPRECOVENDA.AsString := 'U'; // Ultimo Preco
    2 : dm.cds_produtoTIPOPRECOVENDA.AsString := 'F'; // Preco Fixo
  end;
  if (cbMarca.Text <> '') then
    dm.cds_produtoMARCA.AsString := cbMarca.Text;
    
  IF (Chk_lote.Checked = true) then
    dm.cds_produtoLOTES.AsString := 'S';
  IF (Chk_lote.Checked = false) then
    dm.cds_produtoLOTES.AsString := 'N';

  IF (Chk_rateio.Checked = true) then
    dm.cds_produtoRATEIO.AsString := 'S';
  IF (Chk_rateio.Checked = false) then
    dm.cds_produtoRATEIO.AsString := 'N';

  if (rgEmUso.Checked = False) then
    dm.cds_produtoUSA.AsString := 'N'
  else
    dm.cds_produtoUSA.Clear;

  case (cbTipo.ItemIndex) of
    0 : dm.cds_produtoTIPO.AsString := 'PROD';
    1 : dm.cds_produtoTIPO.AsString := 'COMPRA';
    2 : dm.cds_produtoTIPO.AsString := 'VENDA';
    3 : dm.cds_produtoTIPO.AsString := 'SERV';
  end;

  inherited;

{  if varForm = 'Procura' then
     fProcura.editProc.Text := dm.cds_produtoPRODUTO.AsString;
}

end;

procedure TfProdutoCadastro.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfProdutoCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  PRODUTO_DESC := DM.cds_produtoPRODUTO.AsString;
  inherited;
  if dm.cds_cm.Active then
    dm.cds_cm.Close;
  if (varonde = 'compra') then
  begin
    if (cbMarca.Text <> '') then
      fProcura_prod.cbMarca.Text := '';
    fProcura_prod.BitBtn1.Click;
  end;
  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  bitBtn1.Enabled := False;
  bitBtn2.Enabled := False;
end;

procedure TfProdutoCadastro.FormShow(Sender: TObject);
begin
  inherited;
  // if (dm.cds_produto.IsEmpty) then
  //   btnIncluir.Click;
  sCtrlResize.CtrlResize(TForm(fProdutoCadastro));
  if (not dm.cds_produto.IsEmpty) then
  begin
    if (dm.cds_produtoTIPO.AsString = 'SERV') then
      cbTipo.ItemIndex := 3
    else if (dm.cds_produtoTIPO.AsString = 'COMPRA') then
      cbTipo.ItemIndex := 1
    else if (dm.cds_produtoTIPO.AsString = 'VENDA') then
      cbTipo.ItemIndex := 2
    else
      cbTipo.ItemIndex := 0;

    if (dm.cds_produtoUSA.AsString = 'N') then
      rgEmUso.Checked := False
    else
      rgEmUso.Checked := True;
    if (dm.cds_produtoLOTES.AsString = 'S') then
      Chk_lote.Checked := True
    else
      Chk_lote.Checked := False;
  end;

  if (not dm.cds_familia.Active) then
    dm.cds_familia.Open;

  if DM.cds_categoria.Active then
    DM.cds_categoria.Close;
  DM.cds_categoria.Params[0].AsString := 'todos';
  DM.cds_categoria.Params[1].Clear;
  DM.cds_categoria.Params[2].Clear;
  DM.cds_categoria.Open;

 codprod1 := 0;
end;

procedure TfProdutoCadastro.DBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
  if DM.cds_categoria.Active then
    DM.cds_categoria.Close;
  DM.cds_categoria.Params[0].Clear;
  DM.cds_categoria.Params[1].Clear;
  DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
  DM.cds_categoria.Open;
end;

procedure TfProdutoCadastro.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then exit;

  fMarcas_Grupos:=TfMarcas_Grupos.Create(Application);
  try
   fMarcas_Grupos.ShowModal;
  finally
   fMarcas_Grupos.Free;
   DBLookupComboBox2.SetFocus;
  end;
end;

procedure TfProdutoCadastro.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then exit;

  fFamilia:=TfFamilia.Create(Application);
  try
    fFamilia.cbMarca.Text := '';
    fFamilia.ShowModal;
    if DM.cds_familia.Active then
      DM.cds_familia.Close;
    if (dm.GrupoMarca <> '') then
    begin
      if (cbMarca.Text = '') then
        dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS '
      else
        dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
         'where MARCA = ' + QuotedStr(cbMarca.Text);
    end
    else
      dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS';
    DM.cds_familia.Open;
  finally
   fFamilia.Free;
   DBLookupComboBox2.SetFocus;
  end;
end;

procedure TfProdutoCadastro.SpeedButton3Click(Sender: TObject);
begin
  inherited;

  if DtSrc.DataSet.State in [dsInactive] then exit;

  familia := DBLookupComboBox2.Text;
  if familia = '' then
  begin
    MessageDlg('Pôr favor escolha uma familia ...', mtWarning, [mbOK], 0);
    DBLookupComboBox2.SetFocus;
    exit;
  end;
  fCategoria := TfCategoria.Create(Application);
  try
    if (fCategoria.cds_familia.Active) then
      fCategoria.cds_familia.Close;
    if (dm.GrupoMarca <> '') then
    begin
      if (cbMarca.Text = '') then
        fCategoria.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS '
      else
        fCategoria.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
          'where MARCA = ' + QuotedStr(cbMarca.Text);
    end
    else
    fCategoria.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS';
    fCategoria.cds_familia.Open;
    if DM.cds_categoria.Active then
      DM.cds_categoria.Close;
    DM.cds_categoria.Params[0].Clear;
    DM.cds_categoria.Params[1].Clear;
    DM.cds_categoria.Params[2].AsInteger := dm.cds_familiaCOD_FAMILIA.AsInteger;
    DM.cds_categoria.Open;
    fCategoria.ComboBox1.Text := familia;
    fCategoria.ShowModal;
  finally
   fCategoria.Free;
   if (DBEdit7.Enabled = True) then
     DBEdit7.SetFocus;
  end;

  if DM.cds_categoria.Active then
    DM.cds_categoria.Close;
  DM.cds_categoria.Params[0].Clear;
  DM.cds_categoria.Params[1].Clear;
  DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
  DM.cds_categoria.Open;
    
end;

procedure TfProdutoCadastro.btnRateioClick(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then
     exit;

  if Chk_rateio.Checked = False then exit;
     
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;
  conta_ccusto := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  conta_produto := dm.cds_produtoCONTA_DESPESA.asString;
  fContaRateio.ShowModal;
end;

procedure TfProdutoCadastro.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then exit;

  var_tipo := 'ClassificaFiscal';
  fClassificacaoFiscal := TfClassificacaoFiscal.Create(Application);
  try
    fClassificacaoFiscal.ShowModal;
  finally
    fClassificacaoFiscal.Free;
  end;
  if (sds_ClaFiscal.Active) then
     sds_ClaFiscal.Close;
  sds_ClaFiscal.Open;
  DBComboBox2.Items.Clear;
  while not sds_ClaFiscal.Eof do
  begin
    if (sds_ClaFiscal.Fields[3].AsString = 'ClassificaFiscal') then
      DBComboBox2.Items.Add(sds_ClaFiscal.Fields[0].AsString);
    sds_ClaFiscal.Next;
  end;
  DBComboBox2.SetFocus;
end;

procedure TfProdutoCadastro.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  var_tipo := 'CST';

  if DtSrc.DataSet.State in [dsInactive] then exit;

  fClassificacaoFiscal := TfClassificacaoFiscal.Create(Application);
  try
    fClassificacaoFiscal.ShowModal;
  finally
    fClassificacaoFiscal.Free;
  end;
  if (sds_ClaFiscal.Active) then
     sds_ClaFiscal.Close;
  sds_ClaFiscal.Open;
  DBComboBox3.Items.Clear;
  while not sds_ClaFiscal.Eof do
  begin
    if (sds_ClaFiscal.Fields[3].AsString = 'CST') then
      DBComboBox3.Items.Add(sds_ClaFiscal.Fields[0].AsString);
    sds_ClaFiscal.Next;
  end;
  DBComboBox3.SetFocus;
end;

procedure TfProdutoCadastro.Chk_loteClick(Sender: TObject);
begin
  inherited;

  if DtSrc.DataSet.State in [dsInactive] then
  begin
     Chk_lote.Checked := false;
     exit;
  end;

  if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.Edit;

end;

procedure TfProdutoCadastro.Chk_rateioClick(Sender: TObject);
begin
  inherited;

  if DtSrc.DataSet.State in [dsInactive] then
  begin
     Chk_rateio.Checked := false;
     exit;
  end;

  if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.Edit;

  if Chk_rateio.Checked = True then
    btnRateio.Enabled := True;

end;

procedure TfProdutoCadastro.dxButton1Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then exit;

  if DtSrc.DataSet.State in [dsInsert] then
    btnGravar.Click;

  fCodigoTerceiros := TfCodigoTerceiros.create(Application);
  try
    fCodigoTerceiros.ShowModal;
  finally
    fCodigoTerceiros.Free;
  end;
end;

procedure TfProdutoCadastro.dxButton2Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then exit;

  if DtSrc.DataSet.State in [dsInsert] then
    btnGravar.Click;

  fUsoCadastro := TfUsoCadastro.create(Application);
  try
    fUsoCadastro.ShowModal;
  finally
    fUsoCadastro.Free;
  end;
end;

procedure TfProdutoCadastro.DBEdit13Exit(Sender: TObject);
var valor : double;
begin
  inherited;
  if (DtSrc.State in [dsInsert, dsEdit]) then
  begin

    if (dm.cds_produtoMARGEM.AsFloat > 0) then
    begin
      valor := dm.cds_produtoVALORUNITARIOATUAL.AsFloat *
      ((dm.cds_produtoMARGEM.AsFloat/100)+1);
      DecimalSeparator := '.';
      dm.cds_produtoVALOR_PRAZO.AsFloat := arredondar(valor);
    end;
    DecimalSeparator := ',';
 end;   
end;

procedure TfProdutoCadastro.DBEdit17Exit(Sender: TObject);
var valor : double;
begin
  inherited;
  if (DtSrc.State in [dsInsert, dsEdit]) then
  begin
    valor := dm.cds_produtoVALORUNITARIOATUAL.AsFloat +
      (dm.cds_produtoVALORUNITARIOATUAL.AsFloat * (dm.cds_produtoMARGEM.AsFloat/100));
    DecimalSeparator := '.';
    //dm.cds_produtoVALOR_PRAZO.AsFloat := arredondar(valor);
    dm.cds_produtoVALOR_PRAZO.AsFloat := valor;
    DecimalSeparator := ',';
  end;
end;

procedure TfProdutoCadastro.DBEdit19Exit(Sender: TObject);
var valor : double;
begin
  inherited;
  if (dm.cds_produto.State in [dsEdit, dsInsert]) then
  begin
    if ((dm.cds_produtoVALOR_PRAZO.IsNull) or (dm.cds_produtoVALORUNITARIOATUAL.IsNull)) then
      exit;
    if ((dm.cds_produtoVALOR_PRAZO.AsFloat > 0) and (dm.cds_produtoVALORUNITARIOATUAL.AsFloat > 0)) then
    begin
      valor := (dm.cds_produtoVALOR_PRAZO.AsFloat-dm.cds_produtoVALORUNITARIOATUAL.AsFloat);
      valor := (valor/dm.cds_produtoVALORUNITARIOATUAL.AsFloat);
      VALOR := (VALOR * 100);
      if (dbedit17.Text = '') then
      begin
        dm.cds_produtoMARGEM.AsFloat := valor;
      end;
      if (dbedit17.Text <> '') then
      begin
        if (((valor - dm.cds_produtoMARGEM.AsFloat) > 1) OR ((dm.cds_produtoMARGEM.AsFloat - valor) > 1)) then
          dm.cds_produtoMARGEM.AsFloat := valor;
      end;
    end;
  end;
end;

function TfProdutoCadastro.Arredondar(valor: Double): integer;
begin
 if Trunc(Valor) <> valor then
   Result:= trunc(valor)+1
 else
   Result:= trunc(valor);
end;

procedure TfProdutoCadastro.dxButton3Click(Sender: TObject);
begin
  inherited;
  fListaProd:=TfListaProd.Create(Application);
  try
    codprod := dm.cds_produtoCODPRO.AsString;
    fListaProd.ShowModal;
  finally
    fListaProd.Free;
  end;
end;

procedure TfProdutoCadastro.dxButton4Click(Sender: TObject);
begin
  inherited;
  fProduto_Mat_Prima := TfProduto_Mat_Prima.Create(Application);
  try
    fProduto_Mat_Prima.ShowModal;
  finally
    fProduto_Mat_Prima.Free;
  end;

end;

procedure TfProdutoCadastro.cbMarcaChange(Sender: TObject);
begin
  inherited;
  if (cbMarca.Text = '') then
    exit;
  if (DtSrc.State in [dsBrowse]) then
    dm.cds_produto.Edit;
  if (dtSrc.State in [dsEdit, dsInsert]) then
    dm.cds_produtoMARCA.AsString := cbMarca.Text;

  if (dm.GrupoMarca <> '') then
  begin
    if DM.cds_familia.Active then
      DM.cds_familia.Close;
    dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
      'where MARCA = ' + QuotedStr(cbMarca.Text);
    DM.cds_familia.Open;
    if DM.cds_categoria.Active then
      DM.cds_categoria.Close;
    DM.cds_categoria.Params[0].Clear;
    DM.cds_categoria.Params[1].Clear;
    DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
    DM.cds_categoria.Open;
  end
  else begin
    if DM.cds_familia.Active then
      DM.cds_familia.Close;
    dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ';
    DM.cds_familia.Open;
    if DM.cds_categoria.Active then
      DM.cds_categoria.Close;
    DM.cds_categoria.Params[0].Clear;
    DM.cds_categoria.Params[1].Clear;
    DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
    DM.cds_categoria.Open;
  end;
end;

procedure TfProdutoCadastro.rgEmUsoClick(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse, dsInactive]) then
    DtSrc.DataSet.Edit;
end;

procedure TfProdutoCadastro.cbTipoChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
end;

procedure TfProdutoCadastro.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Dm.cds_Produto.Close;
  fProcura_prod.cds_proc.Prior;
  Dm.cds_Produto.Params[0].AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;;
  Dm.cds_Produto.Open;
end;

procedure TfProdutoCadastro.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Dm.cds_Produto.Close;
  fProcura_prod.cds_proc.Next;
  Dm.cds_Produto.Params[0].AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;;
  Dm.cds_Produto.Open;
end;

end.
