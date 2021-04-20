unit uConfM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Grids, DBGrids, DB, DBClient, Provider,
  SqlExpr;

type
  TfConfM = class(TForm)
    sqlConM: TSQLDataSet;
    sqlConMCOD_CLIENTE: TSmallintField;
    sqlConMCODPRO: TStringField;
    sqlConMPRODUTO: TStringField;
    sqlConMNUMEROBORDERO: TIntegerField;
    sqlConMCODVENDA1: TIntegerField;
    sqlConMRA1: TStringField;
    sqlConMRAZAOSOCIAL: TStringField;
    sqlConMPRECO: TFloatField;
    dspConfM: TDataSetProvider;
    cdsConfM: TClientDataSet;
    cdsConfMCOD_CLIENTE: TSmallintField;
    cdsConfMCODPRO: TStringField;
    cdsConfMPRODUTO: TStringField;
    cdsConfMNUMEROBORDERO: TIntegerField;
    cdsConfMCODVENDA1: TIntegerField;
    cdsConfMRA1: TStringField;
    cdsConfMRAZAOSOCIAL: TStringField;
    cdsConfMPRECO: TFloatField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConfM: TfConfM;

implementation

{$R *.dfm}

procedure TfConfM.FormShow(Sender: TObject);
//var sqlRC : string ;
begin
  {
   if cdsConfM.Active then
   cdsConfM.Close;
   sqlRC := 'SELECT cod_cliente,codpro,produto,numerobordero,codvenda1,ra1,razaosocial, preco ' +

    'FROM conferir_mensalidade(';

   sqlRC := sqlRC + Edit1.Text + ',';

     // Data Recebimento
   sqlRC := sqlRC + QuotedStr(formatdatetime('mm/dd/yy', StrToDate('01/01/11')))+ ',';
   sqlRC := sqlRC + QuotedStr(formatdatetime('mm/dd/yy', StrToDate('31/12/11')))+ ')';

   cdsConfM.CommandText := sqlRC ;
   cdsConfM.Open;
   }
   Label1.Caption := IntToStr(cdsConfM.RecordCount);

end;

end.
