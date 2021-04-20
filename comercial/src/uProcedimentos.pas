unit uProcedimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DBClient, Provider, DB, SqlExpr, Menus, 
  StdCtrls, Buttons, ExtCtrls, MMJPanel, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls, Mask, DBCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvExStdCtrls, JvCheckBox, JvCombobox, JvDBSearchComboBox, XPMenu;

type
  TfProcedimentos = class(TfPai)
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsCODPRODUTO: TIntegerField;
    cdsVALORUNITARIOATUAL: TFloatField;
    cdsESTOQUEREPOSICAO: TFloatField;
    cdsPRODUTO: TStringField;
    cdsCONTA_DESPESA: TStringField;
    cdsCONTA_RECEITA: TStringField;
    cdsCONTA_ESTOQUE: TStringField;
    JvDBGrid1: TJvDBGrid;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    Label6: TLabel;
    JvDBCalcEdit3: TJvDBCalcEdit;
    cdsVALOR_PRAZO: TFloatField;
    cdsCODPRO: TStringField;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    sdsProcConta: TSQLDataSet;
    sdsProcContaCONTA: TStringField;
    sdsProcContaNOME: TStringField;
    cdsPRO_COD: TStringField;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    rgAsh: TJvCheckBox;
    rgPcmso: TJvCheckBox;
    cdsTIPO: TStringField;
    JvDBSearchEdit2: TJvDBSearchComboBox;
    JvDBSearchComboBox1: TJvDBSearchComboBox;
    Label9: TLabel;
    Label10: TLabel;
    cdsLOTES: TStringField;
    cdsFAMILIA: TStringField;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    Panel1: TPanel;
    cdsCOD_COMISSAO: TIntegerField;
    r1: TCheckBox;
    r2: TCheckBox;
    r3: TCheckBox;
    btnprev: TButton;
    rgPrev: TJvCheckBox;
    Panel2: TPanel;
    Label13: TLabel;
    r4: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure rgAshClick(Sender: TObject);
    procedure DtSrcDataChange(Sender: TObject; Field: TField);
    procedure rgPcmsoClick(Sender: TObject);
    procedure btnprevClick(Sender: TObject);
  private
    procedure mostraRadioGroup;
    { Private declarations }
  public
    { Public declarations }
    contaProc : string;
  end;

var
  fProcedimentos: TfProcedimentos;

implementation

uses UDm;

{$R *.dfm}

procedure TfProcedimentos.FormShow(Sender: TObject);
begin
 // inherited;
  cds.Open;
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PRODUTODESPESA';
  dm.cds_parametro.Open;
  contaProc := dm.cds_parametroDADOS.AsString;
end;

procedure TfProcedimentos.btnGravarClick(Sender: TObject);
var insereCPC : string;
begin
  if ((rgAsh.Checked = True) and (rgPcmso.Checked = False)) then
    cdsTIPO.AsString := 'ASH';
  if ((rgPcmso.Checked = True) and (rgAsh.Checked = False)) then
    cdsTIPO.AsString := 'PCMSO';
  if ((rgAsh.Checked = True) and (rgPcmso.Checked = True)) then
    cdsTIPO.AsString := 'AMBOS';

  if (r1.Checked = True) then
    cdsCOD_COMISSAO.AsInteger := 1;
  if (r2.Checked = True) then
    cdsCOD_COMISSAO.AsInteger := 2;
  if (r3.Checked = True) then
    cdsCOD_COMISSAO.AsInteger := 3;


  if (rgPrev.Checked = True) then
    cdsLOTES.AsString := '1';

  if (cds.State in [dsInsert]) then
  begin
    try
      cdsCODPRODUTO.AsInteger := StrToInt(DbEdit2.Text);
    except
      MessageDlg('Número do Título inválido.' + #10#13 +
        'Use somente números.' , mtError, [mbOK], 0);
      dbEdit2.SetFocus;
      Exit;
    end;
    if (sdsProcConta.Active) then
      sdsProcConta.Params[0].AsString := contaProc + '.' + dbEdit2.Text;
    sdsProcConta.Open;
    if (not sdsProcConta.IsEmpty) then
    begin
      MessageDlg('Esta conta já está em uso pelo produto :' + #10#13 +
        sdsProcContaNOME.AsString , mtError, [mbOK], 0);
      dbEdit2.SetFocus;
      Exit;
    end
    else begin
      try
        insereCPC := 'insert into plano (codigo, conta, nome, contapai, ' ;
        insereCPC := insereCPC + 'codReduzido, consolida) values (gen_id(gen_plano_c, 1) ,';
        insereCPC := insereCPC + QuotedStr(contaProc + '.' + dbEdit2.Text) + ', ';
        insereCPC := insereCPC + QuotedStr(cdsPRODUTO.AsString) + ', ';
        insereCPC := insereCPC + QuotedStr(contaProc) + ', ';
        insereCPC := insereCPC + QuotedStr(cdsCODPRO.AsString) + ', ';
        insereCPC := insereCPC + QuotedStr('S') + ')';
        dm.sqlsisAdimin.ExecuteDirect(insereCPC);
      except
        MessageDlg(' Conta não gravada ! ' + #10#13 +
        ' Verifique o nome, o sistema não ' + #10#13 +
        ' permite nomes repetidos.' , mtError, [mbOK], 0);
      end;
      cdsCONTA_DESPESA.AsString := contaProc + '.' + dbEdit2.Text;
    end;
  end;
  {                           // INCLUIR LISTA PREVISÃO DE EXAMES  btn incluir previsão
  if (cds.State in [dsEdit]) then
  begin
    try
      insereCPC := 'update PRODUTOS set LOTES = ';
      insereCPC := insereCPC + QuotedStr('1') ;
     // insereCPC := insereCPC + QuotedStr(contaProc + '.' + dbEdit2.Text) + ', ';

     // insereCPC := insereCPC + ' nome = ' + QuotedStr(cdsPRODUTO.AsString) + ', ';
    //  insereCPC := insereCPC + ' codReduzido = ' + QuotedStr(cdsCODPRO.AsString);
      insereCPC := insereCPC + ' where codproduto = ' + QuotedStr(cdsCODPRODUTO.AsString);
      dm.sqlsisAdimin.ExecuteDirect(insereCPC);
    except
      MessageDlg('Erro para incluir Procedimento , ' + #10#13 +
      '  verifique o nome, o sistema não ' + #10#13 +
      '.' , mtError, [mbOK], 0);
    end;
   cds.Refresh;
  end;
  }

  if (cds.State in [dsEdit]) then
  begin
    try
      insereCPC := 'update plano set conta = ';
      insereCPC := insereCPC + QuotedStr(dbEdit5.Text) + ', ';
     // insereCPC := insereCPC + QuotedStr(contaProc + '.' + dbEdit2.Text) + ', ';

      insereCPC := insereCPC + ' nome = ' + QuotedStr(cdsPRODUTO.AsString) + ', ';
      insereCPC := insereCPC + ' codReduzido = ' + QuotedStr(cdsCODPRO.AsString);
      insereCPC := insereCPC + ' where conta = ' + QuotedStr(contaProc + '.' + dbEdit2.Text);
      dm.sqlsisAdimin.ExecuteDirect(insereCPC);
    except
      MessageDlg('Erro para atualizar a Conta, ' + #10#13 +
      '  verifique o nome, o sistema não ' + #10#13 +
      'permite nomes repetidos.' , mtError, [mbOK], 0);
    end;
    cdsCONTA_DESPESA.AsString := contaProc + '.' + dbEdit2.Text;
  end;

  inherited;
end;

procedure TfProcedimentos.JvDBGrid1CellClick(Column: TColumn);
begin
  inherited;
  mostraRadioGroup;
end;

procedure TfProcedimentos.JvDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  mostraRadioGroup;
end;

procedure TfProcedimentos.mostraRadioGroup;
begin
  if (not cds.IsEmpty) then
  begin
    if (cdsTIPO.AsString = 'ASH') then
    begin
      rgAsh.Checked := True;
      rgPcmso.Checked := False;
    end;
    if (cdsTIPO.AsString = 'PCMSO') then
    begin
      rgPcmso.Checked := True;
      rgAsh.Checked := False;
    end;
    if (cdsTIPO.AsString = 'AMBOS') then
    begin
      rgAsh.Checked := True;
      rgPcmso.Checked := True;
    end;

    if (cdsCOD_COMISSAO.AsInteger = 1) then
    begin
      r1.Checked := True;
      r2.Checked := False;
      r3.Checked := False;
    end;
    if (cdsCOD_COMISSAO.AsInteger = 2) then
    begin
      r1.Checked := False;
      r2.Checked := True;
      r3.Checked := False;
    end;
    if (cdsCOD_COMISSAO.AsInteger = 3) then
    begin
      r1.Checked := False;
      r2.Checked := False;
      r3.Checked := True;
    end;

    if (cdsLOTES.AsString = '1') then
    begin
      rgPrev.Checked := True;
    end
    else
     rgPrev.Checked := False;
  end;

end;

procedure TfProcedimentos.JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  mostraRadioGroup;
end;

procedure TfProcedimentos.JvDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  mostraRadioGroup;
end;

procedure TfProcedimentos.rgAshClick(Sender: TObject);
begin
  inherited;
  if (cds.State in [dsBrowse]) then
    cds.Edit;
end;

procedure TfProcedimentos.DtSrcDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  mostraRadioGroup;
end;

procedure TfProcedimentos.rgPcmsoClick(Sender: TObject);
begin
  inherited;
  if (cds.State in [dsBrowse]) then
    cds.Edit;
end;
procedure TfProcedimentos.btnprevClick(Sender: TObject);
var insereP , prod : string;
    t : integer;
begin
 // inherited;

    if (cds.State in [dsBrowse]) then
    cds.Edit;

    if (r1.Checked = True) then   // 1 ano
    begin
      t := 1;
    end;

    if (r2.Checked = True) then   // 2 anos
        begin
      t := 2;
    end;

    if (r3.Checked = True) then   // 3 anos
    begin
      t := 3;
    end;

    if (r4.Checked = True) then   // 6 meses
    begin
      t := 4;
    end;

  prod := cdsPRODUTO.AsString;
  if (cds.State in [dsEdit]) then
  begin
    try
      insereP := 'update PRODUTOS set LOTES = ';
      insereP := insereP + QuotedStr('1') ;
      insereP := insereP + ', COD_COMISSAO = ';
      insereP := insereP + IntToStr(t) ;
      insereP := insereP + ' where codproduto = ' + QuotedStr(cdsCODPRODUTO.AsString);
      dm.sqlsisAdimin.ExecuteDirect(insereP);
    except
      MessageDlg('Erro para incluir Procedimento , ' + #10#13 +
      '  verifique o nome, o sistema não ' + #10#13 +
      '.' , mtError, [mbOK], 0);
    end;
   cds.Refresh;
   JvDBSearchEdit2.Text := prod;
   MessageDlg('Exames incluido', mtInformation, [mbOK], 0);
  end;
end;

end.
