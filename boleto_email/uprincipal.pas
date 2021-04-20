unit uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, DB, SqlExpr, FMTBcd, StdCtrls, Provider, DBClient,
  RLBoleto, Buttons,jpeg, RLFilters, RLPDFFilter, ComCtrls, ExtCtrls,
  RLPreviewForm, RLHTMLFilter, RLRichFilter;

type
  TForm1 = class(TForm)
    sqlboleto: TSQLConnection;
    cdsBoleto: TClientDataSet;
    dspBoleto: TDataSetProvider;
    sdsBoleto: TSQLDataSet;
    RLBTitulo1: TRLBTitulo;
    cdsBoletoDATADOC: TDateField;
    cdsBoletoDATAPROCESSAMENTO: TDateField;
    cdsBoletoCODCLIENTE: TIntegerField;
    cdsBoletoCNPJ: TStringField;
    cdsBoletoIE: TStringField;
    cdsBoletoENDERECO: TStringField;
    cdsBoletoBAIRRO: TStringField;
    cdsBoletoVALOR: TFloatField;
    cdsBoletoAGENCIA: TStringField;
    cdsBoletoDIGITOAGENCIA: TStringField;
    cdsBoletoCONTA: TStringField;
    cdsBoletoDIGITOCONTA: TStringField;
    cdsBoletoDATAREC: TDateField;
    cdsBoletoNUMERO: TStringField;
    cdsBoletoCIDADE: TStringField;
    cdsBoletoUF: TStringField;
    cdsBoletoCEP: TStringField;
    cdsBoletoTIPO: TSmallintField;
    cdsBoletoEMPRESA: TStringField;
    cdsBoletoCNPJ_CPF: TStringField;
    cdsBoletoINST1: TStringField;
    cdsBoletoINST2: TStringField;
    cdsBoletoNUMTITULO: TStringField;
    sdsBoletoDATADOC: TDateField;
    sdsBoletoDATAPROCESSAMENTO: TDateField;
    sdsBoletoCODCLIENTE: TIntegerField;
    sdsBoletoCNPJ: TStringField;
    sdsBoletoIE: TStringField;
    sdsBoletoENDERECO: TStringField;
    sdsBoletoBAIRRO: TStringField;
    sdsBoletoVALOR: TFloatField;
    sdsBoletoAGENCIA: TStringField;
    sdsBoletoDIGITOAGENCIA: TStringField;
    sdsBoletoCONTA: TStringField;
    sdsBoletoDIGITOCONTA: TStringField;
    sdsBoletoDATAREC: TDateField;
    sdsBoletoNUMERO: TStringField;
    sdsBoletoCIDADE: TStringField;
    sdsBoletoUF: TStringField;
    sdsBoletoCEP: TStringField;
    sdsBoletoTIPO: TSmallintField;
    sdsBoletoEMPRESA: TStringField;
    sdsBoletoCNPJ_CPF: TStringField;
    sdsBoletoINST1: TStringField;
    sdsBoletoINST2: TStringField;
    sdsBoletoNUMTITULO: TStringField;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    comboConta: TComboBox;
    sqlconta: TSQLDataSet;
    sqlcontaNUMERO_CONTA: TStringField;
    sqlcontaDIGITO_CONTA: TStringField;
    sdsBoletoDESCPRODUTO: TStringField;
    cdsBoletoDESCPRODUTO: TStringField;
    sdsBoletoNOMECLIENTE: TStringField;
    sdsBoletoCARTEIRA: TStringField;
    sdsBoletoCODIGO_CEDENTE: TStringField;
    sdsBoletoRA: TStringField;
    cdsBoletoNOMECLIENTE: TStringField;
    cdsBoletoCARTEIRA: TStringField;
    cdsBoletoCODIGO_CEDENTE: TStringField;
    cdsBoletoRA: TStringField;
    rlprvwstp1: TRLPreviewSetup;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    sdsBoletoE_MAIL: TStringField;
    cdsBoletoE_MAIL: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RLPreviewSetup1AfterPrint(Sender: TObject);
    procedure rlprvwstp1Send(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;
  var dbxconec: TStringList;
  str_relatorio : String;

var
  Form1: TForm1;

implementation

uses RLCob748, BoletoLayout,SendMailOptions;

//uses //BoletoLayout;



{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var  nQtdeBoletos: Integer;
     nI: Integer;
begin

  if (cdsBoleto.Active) then
     cdsBoleto.Close;
   cdsBoleto.Params[0].AsString := comboConta.Text;
   cdsBoleto.Open;

  Panel1.Visible := True;
  Repaint;

  nQtdeBoletos := 1;
  ProgressBar1.Max := nQtdeBoletos;
  ProgressBar1.Position := 0;
  ProgressBar1.Visible := True;
   nI := 1;
  while not (cdsBoleto.Eof) do
  begin

   ProgressBar1.Position := nI;


    //Dados do Cedente
    RLBTitulo1.LocalPagamento := 'PAGÁVEL PREFERENCIALMENTE NAS COOPERATIVAS DE CRÉDITO DO SICREDI';
    RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo := '748';
    RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := IntToStr(cdsBoletoAGENCIA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := IntToStr(cdsBoletoDIGITOAGENCIA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.NumeroConta :=  comboConta.Text ; //IntToStr(cdsBoletoCONTA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.DigitoConta := IntToStr(cdsBoletoDIGITOCONTA.AsInteger);
    RLBTitulo1.Cedente.CodigoCedente := IntToStr(cdsBoletoCONTA.AsInteger);
    RLBTitulo1.Cedente.DigitoCodigoCedente := IntToStr(cdsBoletoDIGITOCONTA.AsInteger);
    RLBTitulo1.Carteira := '';
    RLBTitulo1.Cedente.ContaBancaria.Convenio := '';
    RLBTitulo1.Cedente.ContaBancaria.NomeCliente := cdsBoletoEMPRESA.AsString;
    RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
    RLBTitulo1.Cedente.NumeroCPFCGC := cdsBoletoCNPJ_CPF.AsString;
    RLBTitulo1.Cedente.Nome := cdsBoletoEMPRESA.AsString;

    //dados do sacado
    RLBTitulo1.Sacado.Nome := cdsBoletoNOMECLIENTE.AsString;
    case (cdsBoletoTIPO.AsInteger) of
      0: RLBTitulo1.Sacado.TipoInscricao := tiPessoaFisica;
      1: RLBTitulo1.Sacado.TipoInscricao := tiPessoaJuridica;
    end;
    RLBTitulo1.Sacado.NumeroCPFCGC := cdsBoletoCNPJ.AsString;
    RLBTitulo1.Sacado.Endereco.Rua := cdsBoletoENDERECO.AsString;
    RLBTitulo1.Sacado.Endereco.CEP := cdsBoletoCEP.AsString;
    RLBTitulo1.Sacado.Endereco.Cidade := cdsBoletoCIDADE.AsString;
    RLBTitulo1.Sacado.Endereco.Estado := cdsBoletoUF.AsString;

    //dados da cobranca
    RLBTitulo1.NossoNumero := cdsBoletoNUMTITULO.AsString;
    RLBTitulo1.ValorDocumento := cdsBoletoVALOR.Value;
    RLBTitulo1.DataDocumento := cdsBoletoDATAPROCESSAMENTO.AsDateTime;
    RLBTitulo1.DataVencimento := cdsBoletoDATAREC.AsDateTime;   // DATA VENCIMENTO
    RLBTitulo1.NumeroDocumento := cdsBoletoNUMTITULO.AsString;

    //instrução
    RLBTitulo1.Instrucoes.Text := cdsBoletoINST1.AsString;

    RLBTitulo1.Referencia := cdsBoletoDESCPRODUTO.AsString;


    //LayoutBoleto.ger

    cdsBoleto.Next;

    ProgressBar1.Visible := False;
    Repaint;
    end;


   RLBTitulo1.Visualizar;
   Panel1.Visible := False;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  sqlboleto.LoadParamsFromIniFile('dbxconnections.ini');
  sqlboleto.LibraryName := 'dbexpUIBfire15.dll';
  sqlboleto.VendorLib := 'FBCLIENT.DLL';
  dbxconec := TStringList.Create;
  try
    dbxconec.LoadFromFile('dbxconnections.ini');
    str_relatorio := dbxconec[14];
    str_relatorio := copy(str_relatorio,16,length(str_relatorio));
  finally
    dbxconec.Free;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  if sqlconta.Active then
    sqlconta.Close;
  sqlconta.Open;
  sqlconta.First;
  while not sqlconta.Eof do
  begin
    Comboconta.Items.Add(sqlcontaNUMERO_CONTA.AsString);
    sqlconta.Next;
  end;
  sqlconta.Close;
end;

procedure TForm1.RLPreviewSetup1AfterPrint(Sender: TObject);
begin
  {
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
    try
      sqlboleto.StartTransaction(TD);
      sqlboleto.ExecuteDirect('Update RECEBIMENTO set BL = 1'+
      'where DP = 1 ');
 //     'where DP = 1  AND udf_digits(titulo) = ' + QUOTEDSTR(RLBTitulo1.NossoNumero));
      sqlboleto.Commit(TD);
    except
      sqlboleto.Rollback(TD);
    end;
  }

  LayoutBoleto.LayoutBoleto.SaveToFile('C:\home\jogo.pdf');

end;

procedure TForm1.rlprvwstp1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
  FormSendMailOptions.EditDestinatarios.Text := cdsBoletoNOMECLIENTE.AsString;
end;

end.
