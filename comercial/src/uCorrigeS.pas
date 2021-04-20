unit uCorrigeS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DB, DBClient, Grids, DBGrids,
  StdCtrls, Buttons, Mask, DBCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit,
  rpcompobase, rpvclreport, JvExMask, JvToolEdit, JvBaseEdits, DBLocal,
  DBLocalS;

type
  TfCorrigeS = class(TForm)
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    dsdmt: TDataSource;
    cdsdmt: TClientDataSet;
    cdsdmtCODCLIENTE: TIntegerField;
    cdsdmtRA: TStringField;
    cdsdmtRAZAOSOCIAL: TStringField;
    cdsdmtVAL: TFloatField;
    cdsdmtFAIXA: TIntegerField;
    cdsdmtNOMECLIENTE: TStringField;
    cdsdmtMES_VCTO: TIntegerField;
    cdsdmtMES_PAGTO: TIntegerField;
    cdsdmtVLR_PAGO_MES: TFloatField;
    cdsdmtVLR_MENSAL: TFloatField;
    cdsdmtCODMOVIMENTO: TIntegerField;
    cdsdmtCODVENDA: TIntegerField;
    cdsdmtCPF: TStringField;
    dspdmt: TDataSetProvider;
    sqldmt: TSQLDataSet;
    sqldmtCODCLIENTE: TIntegerField;
    sqldmtRA: TStringField;
    sqldmtRAZAOSOCIAL: TStringField;
    sqldmtVAL: TFloatField;
    sqldmtFAIXA: TIntegerField;
    sqldmtNOMECLIENTE: TStringField;
    sqldmtMES_VCTO: TIntegerField;
    sqldmtMES_PAGTO: TIntegerField;
    sqldmtVLR_PAGO_MES: TFloatField;
    sqldmtVLR_MENSAL: TFloatField;
    sqldmtCODMOVIMENTO: TIntegerField;
    sqldmtCODVENDA: TIntegerField;
    sqldmtCPF: TStringField;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    cdsClienteBusca: TClientDataSet;
    cdsClienteBuscaCODCLIENTE: TIntegerField;
    cdsClienteBuscaNOMECLIENTE: TStringField;
    cdsClienteBuscaRAZAOSOCIAL: TStringField;
    cdsClienteBuscaRA: TStringField;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    edCliente: TJvDBSearchEdit;
    DBEdit1: TDBEdit;
    edCodCliente: TEdit;
    BitBtn3: TBitBtn;
    VCLReport1: TVCLReport;
    cdsSoma: TClientDataSet;
    dspSoma: TDataSetProvider;
    sqlSoma: TSQLDataSet;
    DBEdit2: TDBEdit;
    DataSource2: TDataSource;
    DBEdit3: TDBEdit;
    Edit9: TJvEdit;
    JvCalcEdit1: TJvCalcEdit;
    Edit1: TEdit;
    SQLDataSet2: TSQLDataSet;
    SQLDataSet2CODCLIENTE: TIntegerField;
    SQLDataSet2RA: TStringField;
    SQLDataSet2RAZAOSOCIAL: TStringField;
    SQLDataSet2CPF: TStringField;
    SQLDataSet2NOMECLIENTE: TStringField;
    SQLDataSet2VLR_MENSAL: TFloatField;
    SQLDataSet2CLIR: TIntegerField;
    SQLDataSet2NOMEFORNECEDORR: TStringField;
    SQLDataSet2CNPJR: TStringField;
    SQLDataSet2NOMER: TStringField;
    SQLDataSet2VALORR: TFloatField;
    SQLDataSet2VALORRN: TFloatField;
    SQLDataSet2VALORRP: TFloatField;
    SQLDataSet2VALOR_TOTAL: TFloatField;
    SQLDataSet2CLIRP: TIntegerField;
    SQLDataSet2NOMERP: TStringField;
    SQLDataSet2VALORRP1: TFloatField;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CODCLIENTE: TIntegerField;
    ClientDataSet1RA: TStringField;
    ClientDataSet1RAZAOSOCIAL: TStringField;
    ClientDataSet1CPF: TStringField;
    ClientDataSet1NOMECLIENTE: TStringField;
    ClientDataSet1VLR_MENSAL: TFloatField;
    ClientDataSet1CLIR: TIntegerField;
    ClientDataSet1NOMEFORNECEDORR: TStringField;
    ClientDataSet1CNPJR: TStringField;
    ClientDataSet1NOMER: TStringField;
    ClientDataSet1VALORR: TFloatField;
    ClientDataSet1VALORRN: TFloatField;
    ClientDataSet1VALORRP: TFloatField;
    ClientDataSet1VALOR_TOTAL: TFloatField;
    ClientDataSet1CLIRP: TIntegerField;
    ClientDataSet1NOMERP: TStringField;
    ClientDataSet1VALORRP1: TFloatField;
    DataSetProvider2: TDataSetProvider;
    dsFaixa: TDataSource;
    DBGrid2: TDBGrid;
    sqlFaixa: TSQLClientDataSet;
    sqlHist: TSQLClientDataSet;
    DBGrid3: TDBGrid;
    dsHist: TDataSource;
    sqlSomaVAL: TFloatField;
    sqlSomaVLR_PAGO_MES: TFloatField;
    sqlSomaVLR_MENSAL: TFloatField;
    cdsSomaVAL: TFloatField;
    cdsSomaVLR_PAGO_MES: TFloatField;
    cdsSomaVLR_MENSAL: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edit10: TJvEdit;
    Label3: TLabel;
    DBGrid4: TDBGrid;
    cdsFator: TClientDataSet;
    DataSetProvider3: TDataSetProvider;
    SQLDataSet3: TSQLDataSet;
    SQLDataSet3COD_CLIENTE: TIntegerField;
    SQLDataSet3COD_FORNECEDOR: TIntegerField;
    SQLDataSet3NOMEFORNECEDOR: TStringField;
    SQLDataSet3TIPOFIRMA: TSmallintField;
    SQLDataSet3CNPJ: TStringField;
    SQLDataSet3DESCRICAO: TStringField;
    SQLDataSet3CODPRO: TStringField;
    SQLDataSet3PRODUTO: TStringField;
    SQLDataSet3NUMEROBORDERO: TIntegerField;
    SQLDataSet3CODVENDA1: TIntegerField;
    SQLDataSet3NOMECLIENTE1: TStringField;
    SQLDataSet3PRECO: TFloatField;
    SQLDataSet3RAZAOSOCIAL: TStringField;
    SQLDataSet3VALOR_RECIBO: TFloatField;
    cdsFatorCOD_CLIENTE: TIntegerField;
    cdsFatorCOD_FORNECEDOR: TIntegerField;
    cdsFatorNOMEFORNECEDOR: TStringField;
    cdsFatorTIPOFIRMA: TSmallintField;
    cdsFatorCNPJ: TStringField;
    cdsFatorDESCRICAO: TStringField;
    cdsFatorCODPRO: TStringField;
    cdsFatorPRODUTO: TStringField;
    cdsFatorNUMEROBORDERO: TIntegerField;
    cdsFatorCODVENDA1: TIntegerField;
    cdsFatorNOMECLIENTE1: TStringField;
    cdsFatorPRECO: TFloatField;
    cdsFatorRAZAOSOCIAL: TStringField;
    cdsFatorVALOR_RECIBO: TFloatField;
    DataSource3: TDataSource;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure edClienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCorrigeS: TfCorrigeS;

implementation

uses UDm, UDmSaude, ufcrSaude;

{$R *.dfm}

procedure TfCorrigeS.BitBtn1Click(Sender: TObject);
var sqlR , sqlRFA, sqlSoma: string ;
begin
   cdsdmt.Close;
   if (cdsdmt.Active) then
    cdsdmt.Close;
   cdsdmt.Params[0].AsString := DBEdit1.Text;
   sqlR := 'SELECT * FROM DMED_MENSALIDADE_S where razaosocial = :titular';
   cdsdmt.CommandText := sqlR ;
   cdsdmt.Open;

   cdsSoma.Close;
   if (cdsSoma.Active) then
    cdsSoma.Close;
   cdsSoma.Params[0].AsString := DBEdit1.Text;
   sqlSoma := 'SELECT sum(VAL)as VAL ,sum(VLR_PAGO_MES)as VLR_PAGO_MES  ,sum(VLR_MENSAL)as VLR_MENSAL FROM DMED_MENSALIDADE_S where razaosocial = :titular';
   cdsSoma.CommandText := sqlSoma ;
   cdsSoma.Open;

    if (cdsFator.Active) then
    cdsFator.Close;
   cdsFator.Params[0].AsString := DBEdit1.Text;
   sqlRFA := 'SELECT * FROM DMED_MENSALIDADE_S where razaosocial = :titular';
   cdsdmt.CommandText := sqlRFA ;
   cdsFator.Open;



  // JvCalcEdit1.Value := StrToFloat(Edit9.Text) + StrToFloat(DBEdit3.Text) + StrToFloat(Edit10.Text);


end;

procedure TfCorrigeS.BitBtn2Click(Sender: TObject);
begin
  cdsdmt.ApplyUpdates(0);
end;

procedure TfCorrigeS.edClienteExit(Sender: TObject);
begin
  edCodCliente.Text := IntToStr(cdsClienteBuscaRA.asInteger);
end;

procedure TfCorrigeS.FormShow(Sender: TObject);

begin
    cdsClienteBusca.Open;
    edCliente.Text := nomesocio ;
    DBEdit1.Text := nomesocio ;
    Edit9.Text := val_reembolso;
    Edit10.Text := val_fator ;
    Edit1.Text := nomesocio ;
    sqlFaixa.Open;
    sqlHist.Open;
    BitBtn1.Click;

end;

procedure TfCorrigeS.BitBtn3Click(Sender: TObject);
VAR sqlR  : STRING;
begin
   if ClientDataSet1.Active then
    ClientDataSet1.Close;
   sqlR := 'SELECT * FROM REL_DMED_11(';
   sqlR := sqlR + QuotedStr(DBEdit1.Text) + ')';

   ClientDataSet1.CommandText := sqlR ;
   ClientDataSet1.Open;

   VCLReport1.FileName := str_relatorio + 'dmed_2011.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;
   VCLReport1.Execute;
   
end;

procedure TfCorrigeS.BitBtn4Click(Sender: TObject);
begin
  cdsFator.ApplyUpdates(0);
end;

end.
