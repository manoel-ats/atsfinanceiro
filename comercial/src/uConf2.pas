unit uConf2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, FMTBcd, DB, SqlExpr, Provider, DBClient,
  Grids, DBGrids,DBXpress, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, ComCtrls;

type
  TfConf2 = class(TForm)
    BitBtn1: TBitBtn;
    dsConferir: TDataSource;
    cdsConferir: TClientDataSet;
    dspConferir: TDataSetProvider;
    sqlConferir: TSQLDataSet;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    cdsRec: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
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
    SQLDataSet1RA: TStringField;
    SQLDataSet1NOMECLIENTE: TStringField;
    SQLDataSet1VALORTITULO: TFloatField;
    SQLDataSet1CODRECEBIMENTO: TIntegerField;
    cdsRecRA: TStringField;
    cdsRecNOMECLIENTE: TStringField;
    cdsRecVALORTITULO: TFloatField;
    cdsRecCODRECEBIMENTO: TIntegerField;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ProgressBar3: TProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    medta7: TJvDatePickerEdit;
    medta8: TJvDatePickerEdit;
    Label11: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    btnconf: TBitBtn;
    sqlConL: TSQLDataSet;
    dspConfL: TDataSetProvider;
    cdsConfL: TClientDataSet;
    sqlConLTIT: TStringField;
    sqlConLRA: TStringField;
    sqlConLCODEMP: TStringField;
    sqlConLEMISSAO: TDateField;
    sqlConLVENCE: TDateField;
    sqlConLASSOCTITULAR: TStringField;
    sqlConLCODTITULAR: TStringField;
    sqlConLASSOCDEPENDENTE: TStringField;
    sqlConLEMPRESA: TStringField;
    sqlConLCODDEPENDENTE: TStringField;
    cdsConfLTIT: TStringField;
    cdsConfLRA: TStringField;
    cdsConfLCODEMP: TStringField;
    cdsConfLEMISSAO: TDateField;
    cdsConfLVENCE: TDateField;
    cdsConfLASSOCTITULAR: TStringField;
    cdsConfLCODTITULAR: TStringField;
    cdsConfLASSOCDEPENDENTE: TStringField;
    cdsConfLEMPRESA: TStringField;
    cdsConfLCODDEPENDENTE: TStringField;
    dbgConfL: TDBGrid;
    dsConfL: TDataSource;
    sqlConferirASSOCTITULAR: TStringField;
    sqlConferirCODTITULAR: TStringField;
    sqlConferirVLRREC: TFloatField;
    sqlConferirCODREC: TIntegerField;
    cdsConferirASSOCTITULAR: TStringField;
    cdsConferirCODTITULAR: TStringField;
    cdsConferirVLRREC: TFloatField;
    cdsConferirCODREC: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure btnconfClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fConf2: TfConf2;

implementation

uses UDm, uUtils;

{$R *.dfm}

procedure TfConf2.BitBtn1Click(Sender: TObject);
var        sqlR : String ;
begin
   if cdsConferir.Active then
    cdsConferir.Close;
 //  sqlR := 'SELECT RA ,nomecliente , valor , numerobordero ' +
 //   'FROM VALOR_NA_VENDA1(';



   sqlR := 'SELECT codtitular , assoctitular, sum(vlrrec)as vlrrec , codrec ' +
    'FROM LANCA(';
     // Data Recebimento
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta7.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta8.Text)))+ ')';
   sqlR := sqlR + 'group by codtitular , assoctitular,  codrec ' ;
   sqlR := sqlR + 'order by codtitular ' ;

   cdsConferir.CommandText := sqlR ;
   cdsConferir.Open;
   BitBtn3.Click;
   BitBtn4.Click;

end;

procedure TfConf2.BitBtn3Click(Sender: TObject);
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

    sqlR  := ' INSERT INTO VALOR_NA_VENDAD1 (RA , NOMECLIENTE ,VALOR, NUMEROBORDERO )'+
          ' VALUES (' +
          QuotedStr(cdsConferirCODTITULAR.AsString) + ','+  //
          QuotedStr(cdsConferirASSOCTITULAR.AsString) + ','+  //
          FloatToStr(cdsConferirVLRREC.Value) + ','+  //
          IntToStr(cdsConferirCODREC.AsInteger) +
         ')';
    dm.sqlsisAdimin.ExecuteDirect(sqlR);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
    cdsConferir.Next;
    ProgressBar1.Position := ProgressBar1.Position + 1;

  end;
end;

procedure TfConf2.BitBtn4Click(Sender: TObject);
var        sqlR : String ;
begin
   if cdsRec.Active then
    cdsRec.Close;
   sqlR := 'SELECT RA ,NOMECLIENTE ,VALORTITULO , CODRECEBIMENTO ' +
    'FROM VALOR_NO_RECEBIMENTO1(';

     // Data Recebimento
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ')';

   sqlR := sqlR + 'order by ra' ;

   cdsRec.CommandText := sqlR ;
   cdsRec.Open;
   BitBtn5.Click;
   BitBtn6.Click;

end;

procedure TfConf2.BitBtn5Click(Sender: TObject);
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

    sqlR  := ' INSERT INTO VALOR_NO_RECEBIMENTOD1 (RA , NOMECLIENTE ,VALORTITULO, CODRECEBIMENTO )'+
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

procedure TfConf2.BitBtn6Click(Sender: TObject);
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

procedure TfConf2.FormClose(Sender: TObject; var Action: TCloseAction);
var  TD: TTransactionDesc;
begin
  if not cdsConferir.IsEmpty then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM VALOR_NO_RECEBIMENTOD1');
    dm.sqlsisAdimin.Commit(TD);
  end;

  if not cdsConferir.IsEmpty then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM VALOR_NA_VENDAD1');
    dm.sqlsisAdimin.Commit(TD);
  end;


end;

procedure TfConf2.ComboBox1Change(Sender: TObject);
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

procedure TfConf2.btnconfClick(Sender: TObject);
var        sqlR : String ;
begin
   dbgConfL.Visible := True;

   if cdsConfL.Active then
    cdsConfL.Close;
   sqlR := 'SELECT tit ,  ra , codemp , emissao , vence , assoctitular ,   codtitular , ' +
           ' assocdependente,     empresa ,    coddependente ' +
    'FROM LANCAPROCSAUDEPROC_CONF (';


  //   dta1, dta2, dtav1 ,dtav2,  cliente,  clienteproc , contadebito, fornecedor ,codccusto )


   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta7.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta8.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ',';
   sqlR := sqlR + '0' + ',';
   sqlR := sqlR + '0' + ',';
   sqlR := sqlR + '0' + ',';
   sqlR := sqlR + '0' + ',';
   sqlR := sqlR + '52' + ')';

   sqlR := sqlR + 'order by ra' ;

   cdsConfL.CommandText := sqlR ;
   cdsConfL.Open;


end;

procedure TfConf2.FormShow(Sender: TObject);
begin
  dbgConfL.Visible := False;
end;

end.
