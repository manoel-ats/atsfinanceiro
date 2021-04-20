unit uComboLab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  Mask, DBCtrls, Grids, DBGrids, EDBFind, uPai, FMTBcd, DBClient, Provider,
  SqlExpr, DBXpress, XPMenu;

type
  TfComboLab = class(TfPai)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EvDBFind1: TEvDBFind;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    DBRadioGroup1: TDBRadioGroup;
    Label6: TLabel;
    sdsCombo: TSQLDataSet;
    sdsComboCODDADOS: TIntegerField;
    sdsComboDESCRICAO: TStringField;
    sdsComboUSO: TStringField;
    sdsComboCODIGOS: TStringField;
    sdsComboOUTROS: TStringField;
    sdsComboCODHOS: TIntegerField;
    sdsComboDIVERSOS: TStringField;
    sdsComboDESC1: TStringField;
    sdsComboDESC2: TStringField;
    sdsComboDESC3: TStringField;
    sdsComboDESC4: TStringField;
    sdsComboDESC5: TStringField;
    sdsComboDESC6: TStringField;
    dspCombo: TDataSetProvider;
    cdsCombo: TClientDataSet;
    cdsComboCODDADOS: TIntegerField;
    cdsComboDESCRICAO: TStringField;
    cdsComboUSO: TStringField;
    cdsComboCODIGOS: TStringField;
    cdsComboOUTROS: TStringField;
    cdsComboCODHOS: TIntegerField;
    cdsComboDIVERSOS: TStringField;
    cdsComboDESC1: TStringField;
    cdsComboDESC2: TStringField;
    cdsComboDESC3: TStringField;
    cdsComboDESC4: TStringField;
    cdsComboDESC5: TStringField;
    cdsComboDESC6: TStringField;
    dsCombo: TDataSource;
    sdsComboUNICO: TIntegerField;
    cdsComboUNICO: TIntegerField;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label9: TLabel;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fComboLab: TfComboLab;
  uso: string;
implementation

uses UDmSaude, UDm;


{$R *.dfm}

procedure TfComboLab.btnIncluirClick(Sender: TObject);
begin
  DBEdit1.SetFocus;
  //inherited;
   if not dsCombo.DataSet.Active then
     dsCombo.DataSet.open;
  dsCombo.DataSet.Append;

   cdsComboUSO.AsString := uso;
  if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DADOS_COMBOS, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cdsComboCODDADOS.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;

end;

procedure TfComboLab.FormShow(Sender: TObject);
begin
 // inherited;
  if (cdsCombo.Active) then
  cdsCombo.close;
  cdsCombo.Params[0].AsString := 'EXAMES';
  cdsCombo.Open;
  EvDBFind1.SetFocus;
end;

procedure TfComboLab.FormCreate(Sender: TObject);
begin
 // inherited;

end;

procedure TfComboLab.btnExcluirClick(Sender: TObject);
begin
 // inherited;
  MessageDlg('Não Pode Excluir !!!!!!!', mtWarning, [mbOK], 0);

end;

procedure TfComboLab.btnGravarClick(Sender: TObject);
//begin
 // inherited;
 var TD  : TTransactionDesc;
     str : string;
begin
   // inherited;

   if dsCombo.State in [dsEdit] then
   begin
     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     try
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect('Update DADOS_COMBOS set OUTROS = '+ QuotedStr(DBEdit3.Text) +
       ', DIVERSOS = ' +  QuotedStr(DBEdit5.Text) +
       ' where CODDADOS = ' + QuotedStr(cdsComboCODDADOS.AsString));
       dm.sqlsisAdimin.Commit(TD);
       cdsCombo.ApplyUpdates(0);
     except
       dm.sqlsisAdimin.Rollback(TD);
     end;
   end;

   if dsCombo.State in [dsInsert] then
   begin
     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     try
       dm.sqlsisAdimin.StartTransaction(TD);
       str := 'INSERT INTO DADOS_COMBOS (CODDADOS , DESCRICAO , USO , CODIGOS, OUTROS, DIVERSOS )';
       str := str +  ' VALUES(';
       str := str + IntToStr(cdsComboCODDADOS.AsInteger) + ',';
       str := str + QuotedStr(cdsComboDESCRICAO.AsString) + ',';
       str := str + QuotedStr('EXAMES') + ',';
       str := str + QuotedStr(cdsComboCODIGOS.AsString) + ',';
       str := str + QuotedStr(cdsComboOUTROS.AsString) + ',';
       str := str + QuotedStr(cdsComboDIVERSOS.AsString) ;
       str := str + ')';
       dm.sqlsisAdimin.ExecuteDirect(str);
       dm.sqlsisAdimin.Commit(TD);
     except
       dm.sqlsisAdimin.Rollback(TD);
     end;
   end;

    inherited;

end;

end.
