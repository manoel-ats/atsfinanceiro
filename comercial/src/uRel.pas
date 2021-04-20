unit uRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, Buttons, ExtCtrls, rpcompobase,
  rpvclreport, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, DB;

type
  TfRel = class(TForm)
    GroupBox1: TGroupBox;
    cbMes: TComboBox;
    Label1: TLabel;
    dta1: TJvDatePickerEdit;
    dta2: TJvDatePickerEdit;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    rep: TVCLReport;
    GroupBox2: TGroupBox;
    btnClienteProcura: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit1: TEdit;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edSemana: TEdit;
    edMes: TEdit;
    edAno: TEdit;
    BitBtn2: TBitBtn;
    cbProduto: TCheckBox;
    cbSubGrupo: TCheckBox;
    BitBtn6: TBitBtn;
    Edit2: TJvDBSearchComboBox;
    dsForn: TDataSource;
    BitBtn7: TBitBtn;
    btnSair: TBitBtn;
    GroupBox6: TGroupBox;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    GroupBox7: TGroupBox;
    BitBtn8: TBitBtn;
    Edit5: TEdit;
    dbComboBoxComprador: TJvDBSearchComboBox;
    CheckBox3: TCheckBox;
    procedure cbMesChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRel: TfRel;

implementation

uses uUtils, UDm, uProcurar;


{$R *.dfm}

procedure TfRel.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);  
  dta1.Text := periodo.PeriodoIni;
  dta2.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

procedure TfRel.BitBtn3Click(Sender: TObject);
begin
  Rep.Filename := str_relatorio + 'comprasFornecedorProduto.rep';
  Rep.Title := Rep.Filename;
  Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(Dta1.Text);
  Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(Dta2.Text);
  if (Edit1.Text <> '') then
    Rep.Report.Params.ParamByName('PRO1').Value := Edit1.Text
  else
    Rep.Report.Params.ParamByName('PRO1').Value := '9999999';
  if (Edit3.Text <> '') then
    Rep.Report.Params.ParamByName('PRODUTO').Value := Edit3.Text
  else
    Rep.Report.Params.ParamByName('PRODUTO').Value := 'TODOS PRODUTOS';
  rep.execute;
end;

procedure TfRel.BitBtn5Click(Sender: TObject);
begin
  Rep.Filename := str_relatorio + 'comprasFornecedor.rep';
  Rep.Title := Rep.Filename;
  Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(Dta1.Text);
  Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(Dta2.Text);
  if (Edit1.Text <> '') then
    Rep.Report.Params.ParamByName('PRO1').Value := Edit1.Text
  else
    Rep.Report.Params.ParamByName('PRO1').Value := '9999999';

  rep.execute;
end;

procedure TfRel.BitBtn4Click(Sender: TObject);
begin
  Rep.Filename := str_relatorio + 'comprasFornecedorPedido.rep';
  Rep.Title := Rep.Filename;
  Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(Dta1.Text);
  Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(Dta2.Text);
  if (Edit1.Text <> '') then
    Rep.Report.Params.ParamByName('PRO1').Value := Edit1.Text
  else
    Rep.Report.Params.ParamByName('PRO1').Value := '9999999';

  rep.execute;
end;

procedure TfRel.CheckBox1Click(Sender: TObject);
begin
  if (CheckBox1.Checked) then
  begin
    Edit1.Enabled := True;
    Edit2.Enabled := True;
    Edit1.Color := clWindow;
    Edit2.Color := clWindow;
  end
  else begin
    Edit1.Text := '';
    Edit2.Text := '';
    Edit1.Enabled := False;
    Edit2.Enabled := False;
    Edit1.Color := cl3DLight;
    Edit2.Color := cl3DLight;
  end;
end;

procedure TfRel.CheckBox2Click(Sender: TObject);
begin
  if (CheckBox2.Checked) then
  begin
    Edit3.Enabled := True;
    Edit4.Enabled := True;
    Edit3.Color := clWindow;
    Edit4.Color := clWindow;
  end
  else begin
    Edit3.Text := '';
    Edit4.Text := '';
    Edit3.Enabled := False;
    Edit4.Enabled := False;
    Edit3.Color := cl3DLight;
    Edit4.Color := cl3DLight;
  end;
end;

procedure TfRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if dm.scds_forn_proc.Active then
      dm.scds_forn_proc.Close;
    dm.scds_forn_proc.Params[0].Clear;
    dm.scds_forn_proc.Params[1].Clear;
    dm.scds_forn_proc.Params[2].AsInteger:=StrToInt(Edit1.Text);
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    dm.scds_forn_proc.Open;
    if dm.scds_forn_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      exit;
    end;
    Edit1.Text :=  IntToStr(dm.scds_forn_procCODFORNECEDOR.AsInteger);
    Edit2.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].Clear;
    dm.scds_produto_proc.Params[1].Clear;
    dm.scds_produto_proc.Params[2].AsString := Edit3.Text;
    dm.scds_produto_proc.Open;
    if dm.scds_produto_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      exit;
    end;
    Edit3.Text := dm.scds_produto_procCODPRO.AsString;
    Edit4.Text := dm.scds_produto_procPRODUTO.AsString;
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfRel.BitBtn2Click(Sender: TObject);
begin
  if (cbProduto.Checked) then
  begin
    if (edSemana.Text <> '') then
    begin
      if (edAno.Text = '') then
      begin
        ShowMessage ('Informe o Ano desejado.');
        Exit;
      end;
      rep.Filename := str_relatorio + 'vendasSemanaProduto.rep';
      Rep.Title := Rep.Filename;
      rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      rep.Report.Params.ParamByName('PSEM').Value := EdSemana.Text;
      rep.Report.Params.ParamByName('PANO').Value := EdAno.Text;
      rep.Execute;
      exit;
    end
    Else if (edMes.Text <> '') then
    begin
      if (edAno.Text = '') then
      begin
        ShowMessage ('Informe o Ano desejado.');
        Exit;
      end;
      rep.Filename := str_relatorio + 'vendasMesProduto.rep';
      Rep.Title := Rep.Filename;
      rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      rep.Report.Params.ParamByName('MESAN').Value := EdMes.Text;
      rep.Report.Params.ParamByName('PANO').Value := EdAno.Text;
      rep.Execute;
      exit;
    end
    Else begin
      if (edAno.Text = '') then
      begin
        ShowMessage ('Informe o Ano desejado.');
        Exit;
      end;
      rep.Filename := str_relatorio + 'comprasMesPorProduto.rep';
      Rep.Title := Rep.Filename;
      rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      rep.Report.Params.ParamByName('PANO').Value := EdAno.Text;
      rep.Execute;
      exit;
    end;
    exit;
  end;
  if (cbSubGrupo.Checked) then
  begin
    if (edSemana.Text <> '') then
    begin
      if (edAno.Text = '') then
      begin
        ShowMessage ('Informe o Ano desejado.');
        Exit;
      end;
      if (edAno.Text = '') then
      begin
        ShowMessage ('Informe o Ano desejado.');
        Exit;
      end;
      rep.Filename := str_relatorio + 'vendassemana.rep';
      Rep.Title := Rep.Filename;
      rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      rep.Report.Params.ParamByName('PSEM').Value := EdSemana.Text;
      rep.Report.Params.ParamByName('PANO').Value := EdAno.Text;
      rep.Execute;
      exit;
    end;
    if (edMes.Text <> '') then
    begin
      if (edAno.Text = '') then
      begin
        ShowMessage ('Informe o Ano desejado.');
        Exit;
      end;
      rep.Filename := str_relatorio + 'vendasmes.rep';
      Rep.Title := Rep.Filename;
      rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      rep.Report.Params.ParamByName('MESAN').Value := EdMes.Text;
      rep.Report.Params.ParamByName('PANO').Value := EdAno.Text;
      rep.Execute;
      exit;
    end;
  end;
end;

procedure TfRel.BitBtn6Click(Sender: TObject);
begin
  Rep.Filename := str_relatorio + 'citrus_relCompra.rep';
  Rep.Title := Rep.Filename;
  Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  Rep.Report.Params.ParamByName('PDATA1').Value := StrToDate(Dta1.Text);
  Rep.Report.Params.ParamByName('PDATA2').Value := StrToDate(Dta2.Text);
  if (Edit1.Text <> '') then
    Rep.Report.Params.ParamByName('PFORNECEDOR').Value := Edit1.Text
  else
    Rep.Report.Params.ParamByName('PFORNECEDOR').Value := '0';
  rep.execute;
end;

procedure TfRel.FormCreate(Sender: TObject);
begin
  if dm.scds_forn_proc.Active then
    dm.scds_forn_proc.Close;
  dm.scds_forn_proc.Params[0].asString := '%';
  dm.scds_forn_proc.Params[1].Clear;
  dm.scds_forn_proc.Params[2].clear;
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Open;
  Edit2.Text := '';
  if (dm.moduloUsado = 'CITRUS') then
  begin
    bitBtn6.Visible := True;
  end;
end;

procedure TfRel.Edit2Change(Sender: TObject);
begin
  Edit1.Text := IntToStr(dm.scds_forn_procCODFORNECEDOR.asInteger);
end;

procedure TfRel.BitBtn7Click(Sender: TObject);
begin
  Rep.Filename := str_relatorio + 'compraProduto.rep';
  Rep.Title := Rep.Filename;
  Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(Dta1.Text);
  Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(Dta2.Text);
  if (Edit1.Text <> '') then
    Rep.Report.Params.ParamByName('PRO1').Value := Edit1.Text
  else
    Rep.Report.Params.ParamByName('PRO1').Value := 9999999;
  rep.execute;
end;

procedure TfRel.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfRel.Edit5Exit(Sender: TObject);
begin
  if (Edit5.Text = '') then exit;

  if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
  dm.scds_usuario_proc.Params[0].Clear;
  dm.scds_usuario_proc.Params[1].AsInteger := StrToInt(Edit5.Text);
  dm.scds_usuario_proc.Open;
  if dm.scds_usuario_proc.IsEmpty then begin
    MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
    [mbOk], 0);
    btnClienteProcura.Click;
    exit;
  end;
  Edit5.Text := IntToStr(dm.scds_usuario_procCODUSUARIO.AsInteger);
  dbComboBoxComprador.Text := dm.scds_usuario_procNOMEUSUARIO.AsString;
end;

procedure TfRel.BitBtn8Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'COMPRADOR';
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
  try
    if fProcurar.ShowModal=mrOk then
    begin
      Edit5.Text := IntToStr(dm.scds_usuario_ProcCODusuario.AsInteger);
      dbComboBoxComprador.Text := dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
  finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
  end;

end;

procedure TfRel.BitBtn10Click(Sender: TObject);
begin
  try
    Rep.Filename := str_relatorio + 'comissao_compra.rep';
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    Rep.Report.Params.ParamByName('DATA1').Value := Dta1.Date;
    Rep.Report.Params.ParamByName('DATA2').Value := Dta2.Date;
    if (Edit5.Text <> '') then
      Rep.Report.Params.ParamByName('PFUN').Value := StrToInt(Edit5.Text)
    else
      Rep.Report.Params.ParamByName('PFUN').Value := 0;
  except
  end;
  Rep.Execute;

end;

procedure TfRel.CheckBox3Click(Sender: TObject);
begin
  if (CheckBox3.Checked) then
  begin
    Edit5.Enabled := True;
    dbComboBoxComprador.Enabled := True;
    //btnClienteProcura.Enabled := True;
    BitBtn8.Enabled := True;
    Edit5.Color := clWindow;
    dbComboBoxComprador.Color := clWindow;
  end
  else begin
    Edit5.Text := '';
    dbComboBoxComprador.Text := '';
    Edit5.Enabled := False;
    dbComboBoxComprador.Enabled := False;
    //btnClienteProcura.Enabled := False;
    BitBtn8.Enabled := False;
    Edit5.Color := cl3DLight;
    dbComboBoxComprador.Color := cl3DLight;
  end;

end;

end.
