unit uConf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, FMTBcd, DB, SqlExpr, Provider, DBClient,
  Grids, DBGrids,DBXpress, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, ComCtrls;

type
  TfConf = class(TForm)
    BitBtn1: TBitBtn;
    dsConferir: TDataSource;
    cdsConferir: TClientDataSet;
    dspConferir: TDataSetProvider;
    sqlConferir: TSQLDataSet;
    sqlConferirRA: TStringField;
    sqlConferirNOMECLIENTE: TStringField;
    sqlConferirVALOR: TFloatField;
    sqlConferirNUMEROBORDERO: TIntegerField;
    cdsConferirRA: TStringField;
    cdsConferirNOMECLIENTE: TStringField;
    cdsConferirVALOR: TFloatField;
    cdsConferirNUMEROBORDERO: TIntegerField;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    cdsRec: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1RA: TStringField;
    SQLDataSet1NOMECLIENTE: TStringField;
    SQLDataSet1VALORTITULO: TFloatField;
    SQLDataSet1CODRECEBIMENTO: TIntegerField;
    cdsRecRA: TStringField;
    cdsRecNOMECLIENTE: TStringField;
    cdsRecVALORTITULO: TFloatField;
    cdsRecCODRECEBIMENTO: TIntegerField;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    BitBtn6: TBitBtn;
    cdsErro: TClientDataSet;
    dspErro: TDataSetProvider;
    dsErro: TDataSource;
    sqlErro: TSQLDataSet;
    sqlErroRA: TStringField;
    sqlErroNOMECLIENTE: TStringField;
    sqlErroVALOR: TFloatField;
    sqlErroNUMEROBORDERO: TIntegerField;
    sqlErroRA_1: TStringField;
    sqlErroNOMECLIENTE_1: TStringField;
    sqlErroVALORTITULO: TFloatField;
    sqlErroCODRECEBIMENTO: TIntegerField;
    cdsErroRA: TStringField;
    cdsErroNOMECLIENTE: TStringField;
    cdsErroVALOR: TFloatField;
    cdsErroNUMEROBORDERO: TIntegerField;
    cdsErroRA_1: TStringField;
    cdsErroNOMECLIENTE_1: TStringField;
    cdsErroVALORTITULO: TFloatField;
    cdsErroCODRECEBIMENTO: TIntegerField;
    DBGrid3: TDBGrid;
    meDta5: TJvDatePickerEdit;
    meDta6: TJvDatePickerEdit;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    ProgressBar3: TProgressBar;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    medta7: TJvDatePickerEdit;
    medta8: TJvDatePickerEdit;
    SQLDataSet2: TSQLDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    IntegerField1: TIntegerField;
    BitBtn2: TBitBtn;
    cdsC: TClientDataSet;
    dspC: TDataSetProvider;
    sqlc: TSQLDataSet;
    Memo1: TMemo;
    DBGrid4: TDBGrid;
    dsC: TDataSource;
    sqlcRA: TStringField;
    sqlcCODIGO: TStringField;
    sqlcTITULAR: TStringField;
    sqlcCODREC: TIntegerField;
    sqlcVAL_VENDA: TFloatField;
    sqlcVAL_RECEBIMENTO: TFloatField;
    cdsCRA: TStringField;
    cdsCCODIGO: TStringField;
    cdsCTITULAR: TStringField;
    cdsCCODREC: TIntegerField;
    cdsCVAL_VENDA: TFloatField;
    cdsCVAL_RECEBIMENTO: TFloatField;
    ComboBox1: TComboBox;
    Label11: TLabel;
    ComboBox2: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fConf: TfConf;

implementation

uses UDm, uUtils;

{$R *.dfm}

procedure TfConf.BitBtn1Click(Sender: TObject);
var        sqlR : String ;
begin
   if cdsConferir.Active then
    cdsConferir.Close;
    sqlR := 'SELECT RA ,nomecliente , valor , numerobordero ' +
           'FROM VALOR_NA_VENDA(';

     // Data Vencimento
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta7.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta8.Text)))+ ')';

   sqlR := sqlR + 'order by ra' ;

   cdsConferir.CommandText := sqlR ;
   cdsConferir.Open;
   BitBtn3.Click;
   BitBtn4.Click;

end;

procedure TfConf.BitBtn3Click(Sender: TObject);
 var TD: TTransactionDesc;
     sqlR : String;

begin

  cdsConferir.Open;
  ProgressBar1.Max := cdsConferir.RecordCount;
  ProgressBar1.Min := 0;
  ProgressBar1.Position := 0;
  while not (cdsConferir.Eof) do
  begin
    dm.sqlsisAdimin.StartTransaction(TD);
    DecimalSeparator := '.';

    sqlR  := ' INSERT INTO VALOR_NA_VENDAD (RA , NOMECLIENTE ,VALOR, NUMEROBORDERO )'+
          ' VALUES (' +
          QuotedStr(cdsConferirRA.AsString) + ','+  //
          QuotedStr(cdsConferirNOMECLIENTE.AsString) + ','+  //
          FloatToStr(cdsConferirVALOR.Value) + ','+  //
          IntToStr(cdsConferirNUMEROBORDERO.AsInteger) +
         ')';
    dm.sqlsisAdimin.ExecuteDirect(sqlR);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
    cdsConferir.Next;
    ProgressBar1.Position := ProgressBar1.Position + 1;

  end;
end;

procedure TfConf.BitBtn4Click(Sender: TObject);
var        sqlR : String ;
begin
   if cdsRec.Active then
    cdsRec.Close;
   sqlR := 'SELECT RA ,NOMECLIENTE ,VALORTITULO , CODRECEBIMENTO ' +
    'FROM VALOR_NO_RECEBIMENTO(';

     // Data Vencimento
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ')';

   sqlR := sqlR + 'order by ra' ;

   cdsRec.CommandText := sqlR ;
   cdsRec.Open;
   BitBtn5.Click;
   BitBtn6.Click;

end;

procedure TfConf.BitBtn5Click(Sender: TObject);
 var TD: TTransactionDesc;
     sqlR : String;
begin
  cdsRec.Open;
  ProgressBar2.Max := cdsRec.RecordCount;
  ProgressBar2.Min := 0;
  ProgressBar2.Position := 0;
  while not (cdsRec.Eof) do
  begin
    dm.sqlsisAdimin.StartTransaction(TD);
    DecimalSeparator := '.';

    sqlR  := ' INSERT INTO VALOR_NO_RECEBIMENTOD (RA , NOMECLIENTE ,VALORTITULO, CODRECEBIMENTO )'+
          ' VALUES (' +
          QuotedStr(cdsRecRA.AsString) + ','+  //
          QuotedStr(cdsRecNOMECLIENTE.AsString) + ','+  //
          FloatToStr(cdsRecVALORTITULO.Value) + ','+  //
          IntToStr(cdsRecCODRECEBIMENTO.AsInteger) +
         ')';
    dm.sqlsisAdimin.ExecuteDirect(sqlR);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
    cdsRec.Next;
    ProgressBar2.Position := ProgressBar2.Position + 1;
    

end;
end;

procedure TfConf.BitBtn6Click(Sender: TObject);
begin
   if (cdsErro.Active) then
    cdsErro.Close;
   cdsErro.Open;
   ProgressBar3.Max := cdsErro.RecordCount;
   ProgressBar3.Min := 0;
   ProgressBar3.Position := 0;
   ProgressBar3.Position := ProgressBar3.Position + 1;
   MessageDlg('Processo Concluido ,'+#13+#10+'Verifique no grid se houve alguma Difernça. ', mtConfirmation, [mbOK], 0);
end;

procedure TfConf.FormClose(Sender: TObject; var Action: TCloseAction);
var  TD: TTransactionDesc;
begin
  if not cdsConferir.IsEmpty then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM VALOR_NO_RECEBIMENTOD');
    dm.sqlsisAdimin.Commit(TD);
  end;

  if not cdsConferir.IsEmpty then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM VALOR_NA_VENDAD');
    dm.sqlsisAdimin.Commit(TD);
  end;


end;

procedure TfConf.BitBtn2Click(Sender: TObject);
var        sqlR : String ;
begin
   if cdsConferir.Active then
    cdsConferir.Close;

   sqlR := 'SELECT RA , titular  as nomecliente , val_venda as valor , codrec as numerobordero ' +
           'FROM CONF(';

   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta7.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta8.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ')';

   sqlR := sqlR + 'order by ra' ;

   cdsConferir.CommandText := sqlR ;
   cdsConferir.Open;
   BitBtn3.Click;
   BitBtn4.Click;


{                 // dessa maneira so uso a procedure Não excluir 
var  conferir : String ;
begin   // dessa maneira so uso a procedure
   if cdsC.Active then
    cdsC.Close;
   conferir  := 'SELECT ra ,codigo, titular , codrec , val_venda , val_recebimento ' +
                'FROM CONF(';

     // Data Vencimento
   conferir  := conferir  + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta7.Text)))+ ',';
   conferir  := conferir  + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta8.Text)))+ ',';
   conferir  := conferir  + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   conferir  := conferir  + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ')';


   conferir  := conferir ;

   cdsC.CommandText := conferir  ;
   cdsC.Open;
  }




end;

procedure TfConf.ComboBox1Change(Sender: TObject);
var util : TUtils;
begin
  util := TUtils.Create;
  util.PeriodoIni := ComboBox1.Text;
  medta7.Text := util.PeriodoIni;
  util.PeriodoFim := ComboBox1.Text;
  medta8.Text := util.PeriodoFim;

  ComboBox2.ItemIndex := ComboBox1.ItemIndex + 1;
  util.PeriodoIni := ComboBox2.Text;
     medta5.Text := util.PeriodoIni;
  util.PeriodoFim := ComboBox2.Text;
     medta6.Text := util.PeriodoFim ;


end;

end.
