unit uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, DB, SqlExpr, FMTBcd, StdCtrls, Provider, DBClient,
  RLBoleto, Buttons,jpeg, RLFilters, RLPDFFilter, ComCtrls, ExtCtrls,
  RLPreviewForm, Mask, DBCtrls, TFlatGaugeUnit, ToolEdit, JvExMask,
  JvToolEdit,DateUtils;

type
  TForm1 = class(TForm)
    sqlboleto: TSQLConnection;
    cdsBoleto: TClientDataSet;
    dspBoleto: TDataSetProvider;
    sdsBoleto: TSQLDataSet;
    RLBTitulo1: TRLBTitulo;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    comboConta: TComboBox;
    sqlconta: TSQLDataSet;
    sqlcontaNUMERO_CONTA: TStringField;
    sqlcontaDIGITO_CONTA: TStringField;
    RLPreviewSetup1: TRLPreviewSetup;
    sdsBoletoDATADOC: TDateField;
    sdsBoletoDATAPROCESSAMENTO: TDateField;
    sdsBoletoCODCLIENTE: TIntegerField;
    sdsBoletoNOMECLIENTE: TStringField;
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
    sdsBoletoCARTEIRA: TStringField;
    sdsBoletoCODIGO_CEDENTE: TStringField;
    sdsBoletoDESCPRODUTO: TStringField;
    sdsBoletoRA: TStringField;
    sdsBoletoE_MAIL: TStringField;
    cdsBoletoDATADOC: TDateField;
    cdsBoletoDATAPROCESSAMENTO: TDateField;
    cdsBoletoCODCLIENTE: TIntegerField;
    cdsBoletoNOMECLIENTE: TStringField;
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
    cdsBoletoCARTEIRA: TStringField;
    cdsBoletoCODIGO_CEDENTE: TStringField;
    cdsBoletoDESCPRODUTO: TStringField;
    cdsBoletoRA: TStringField;
    cdsBoletoE_MAIL: TStringField;
    RLPDFFilter1: TRLPDFFilter;
    registros: TSQLDataSet;
    registrosCOUNT: TIntegerField;
    lbl1: TLabel;
    dbedtCOUNT: TDBEdit;
    ds1: TDataSource;
    lbl2: TLabel;
    lbl3: TLabel;
    btn1: TButton;
    BitBtn2: TBitBtn;
    label8: TLabel;
    FlatGauge1: TFlatGauge;
    DateEdit1: TDateEdit;
    cds_empresa: TClientDataSet;
    cds_empresaEMPRESA: TStringField;
    cds_empresaRAZAO: TStringField;
    cds_empresaCNPJ_CPF: TStringField;
    cds_empresaENDERECO: TStringField;
    cds_empresaLOGRADOURO: TStringField;
    cds_empresaBAIRRO: TStringField;
    cds_empresaCIDADE: TStringField;
    cds_empresaUF: TStringField;
    cds_empresaCEP: TStringField;
    cds_empresaDDD: TStringField;
    cds_empresaFONE: TStringField;
    cds_empresaFONE_1: TStringField;
    cds_empresaFONE_2: TStringField;
    cds_empresaFAX: TStringField;
    cds_empresaE_MAIL: TStringField;
    cds_empresaWEB: TStringField;
    cds_empresaLOGOTIPO: TGraphicField;
    sds_empresaCODIGO: TIntegerField;
    cds_empresaTIPO: TStringField;
    cds_empresaIE_RG: TStringField;
    cds_empresaSLOGAN: TStringField;
    cds_empresaOUTRAS_INFO: TStringField;
    dsp_empresa: TDataSetProvider;
    sds_Empresa: TSQLDataSet;
    sdsEMPRESA: TStringField;
    sdsRAZAO: TStringField;
    sdsCNPJ_CPF: TStringField;
    sdsENDERECO: TStringField;
    sdsLOGRADOURO: TStringField;
    sdsBAIRRO: TStringField;
    sdsCIDADE: TStringField;
    sdsUF: TStringField;
    sdsCEP: TStringField;
    sdsDDD: TStringField;
    sdsFONE: TStringField;
    sdsFONE_1: TStringField;
    sdsFONE_2: TStringField;
    sdsFAX: TStringField;
    sdsE_MAIL: TStringField;
    sdsWEB: TStringField;
    sdsLOGOTIPO: TGraphicField;
    sdsCODIGO: TIntegerField;
    sdsTIPO: TStringField;
    sdsIE_RG: TStringField;
    sds_EmpresaSLOGAN: TStringField;
    sds_EmpresaOUTRAS_INFO: TStringField;
    lbl4: TLabel;
    sds_EmpresaCODIGO_CONTA: TIntegerField;
    sds_EmpresaDIVERSOS1: TStringField;
    sds_EmpresaDIVERSOS2: TStringField;
    sds_EmpresaDIVERSOS3: TStringField;
    sds_EmpresaANOLETIVO: TIntegerField;
    sds_EmpresaMEDIA_ESCOLA: TFloatField;
    sds_EmpresaPORTA: TIntegerField;
    sds_EmpresaSMTP: TStringField;
    sds_EmpresaSENHA: TStringField;
    cds_empresaCODIGO_CONTA: TIntegerField;
    cds_empresaDIVERSOS1: TStringField;
    cds_empresaDIVERSOS2: TStringField;
    cds_empresaDIVERSOS3: TStringField;
    cds_empresaANOLETIVO: TIntegerField;
    cds_empresaMEDIA_ESCOLA: TFloatField;
    cds_empresaPORTA: TIntegerField;
    cds_empresaSMTP: TStringField;
    cds_empresaSENHA: TStringField;
    Edit2: TEdit;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    sdsBoletoN_CONTRATO: TStringField;
    sdsBoletoCPF_D: TStringField;
    sdsBoletoCC: TStringField;
    cdsBoletoN_CONTRATO: TStringField;
    cdsBoletoCPF_D: TStringField;
    cdsBoletoCC: TStringField;
    Edit3: TEdit;
    sdsBoletoGERADEBITOAU: TStringField;
    sdsBoletoTIPOD: TSmallintField;
    cdsBoletoGERADEBITOAU: TStringField;
    cdsBoletoTIPOD: TSmallintField;
    sqlR: TSQLDataSet;
    dspR: TDataSetProvider;
    cdsR: TClientDataSet;
    sqlRDATADOC: TDateField;
    sqlRDATAPROCESSAMENTO: TDateField;
    sqlRCODCLIENTE: TIntegerField;
    sqlRNOMECLIENTE: TStringField;
    sqlRCNPJ: TStringField;
    sqlRIE: TStringField;
    sqlRENDERECO: TStringField;
    sqlRBAIRRO: TStringField;
    sqlRVALOR: TFloatField;
    sqlRAGENCIA: TStringField;
    sqlRDIGITOAGENCIA: TStringField;
    sqlRCONTA: TStringField;
    sqlRDIGITOCONTA: TStringField;
    sqlRDATAREC: TDateField;
    sqlRNUMERO: TStringField;
    sqlRCIDADE: TStringField;
    sqlRUF: TStringField;
    sqlRCEP: TStringField;
    sqlRTIPO: TSmallintField;
    sqlREMPRESA: TStringField;
    sqlRCNPJ_CPF: TStringField;
    sqlRINST1: TStringField;
    sqlRINST2: TStringField;
    sqlRNUMTITULO: TStringField;
    sqlRCARTEIRA: TStringField;
    sqlRCODIGO_CEDENTE: TStringField;
    sqlRDESCPRODUTO: TStringField;
    sqlRRA: TStringField;
    sqlRE_MAIL: TStringField;
    sqlRN_CONTRATO: TStringField;
    sqlRCPF_D: TStringField;
    sqlRCC: TStringField;
    sqlRGERADEBITOAU: TStringField;
    sqlRTIPOD: TSmallintField;
    cdsRDATADOC: TDateField;
    cdsRDATAPROCESSAMENTO: TDateField;
    cdsRCODCLIENTE: TIntegerField;
    cdsRNOMECLIENTE: TStringField;
    cdsRCNPJ: TStringField;
    cdsRIE: TStringField;
    cdsRENDERECO: TStringField;
    cdsRBAIRRO: TStringField;
    cdsRVALOR: TFloatField;
    cdsRAGENCIA: TStringField;
    cdsRDIGITOAGENCIA: TStringField;
    cdsRCONTA: TStringField;
    cdsRDIGITOCONTA: TStringField;
    cdsRDATAREC: TDateField;
    cdsRNUMERO: TStringField;
    cdsRCIDADE: TStringField;
    cdsRUF: TStringField;
    cdsRCEP: TStringField;
    cdsRTIPO: TSmallintField;
    cdsREMPRESA: TStringField;
    cdsRCNPJ_CPF: TStringField;
    cdsRINST1: TStringField;
    cdsRINST2: TStringField;
    cdsRNUMTITULO: TStringField;
    cdsRCARTEIRA: TStringField;
    cdsRCODIGO_CEDENTE: TStringField;
    cdsRDESCPRODUTO: TStringField;
    cdsRRA: TStringField;
    cdsRE_MAIL: TStringField;
    cdsRN_CONTRATO: TStringField;
    cdsRCPF_D: TStringField;
    cdsRCC: TStringField;
    cdsRGERADEBITOAU: TStringField;
    cdsRTIPOD: TSmallintField;
    BitBtn3: TBitBtn;
    SQLDataSet1: TSQLDataSet;
    DateField1: TDateField;
    DateField2: TDateField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    DateField3: TDateField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    SmallintField1: TSmallintField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    SmallintField2: TSmallintField;
    DataSetProvider1: TDataSetProvider;
    cdsboleto1: TClientDataSet;
    cdsboleto1DATADOC: TDateField;
    cdsboleto1DATAPROCESSAMENTO: TDateField;
    cdsboleto1CODCLIENTE: TIntegerField;
    cdsboleto1NOMECLIENTE: TStringField;
    cdsboleto1CNPJ: TStringField;
    cdsboleto1IE: TStringField;
    cdsboleto1ENDERECO: TStringField;
    cdsboleto1BAIRRO: TStringField;
    cdsboleto1VALOR: TFloatField;
    cdsboleto1AGENCIA: TStringField;
    cdsboleto1DIGITOAGENCIA: TStringField;
    cdsboleto1CONTA: TStringField;
    cdsboleto1DIGITOCONTA: TStringField;
    cdsboleto1DATAREC: TDateField;
    cdsboleto1NUMERO: TStringField;
    cdsboleto1CIDADE: TStringField;
    cdsboleto1UF: TStringField;
    cdsboleto1CEP: TStringField;
    cdsboleto1TIPO: TSmallintField;
    cdsboleto1EMPRESA: TStringField;
    cdsboleto1CNPJ_CPF: TStringField;
    cdsboleto1INST1: TStringField;
    cdsboleto1INST2: TStringField;
    cdsboleto1NUMTITULO: TStringField;
    cdsboleto1CARTEIRA: TStringField;
    cdsboleto1CODIGO_CEDENTE: TStringField;
    cdsboleto1DESCPRODUTO: TStringField;
    cdsboleto1RA: TStringField;
    cdsboleto1E_MAIL: TStringField;
    cdsboleto1N_CONTRATO: TStringField;
    cdsboleto1CPF_D: TStringField;
    cdsboleto1CC: TStringField;
    cdsboleto1GERADEBITOAU: TStringField;
    cdsboleto1TIPOD: TSmallintField;
    sdsBoletoCODRECEBIMENTO: TIntegerField;
    cdsBoletoCODRECEBIMENTO: TIntegerField;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    btnCorrigir: TBitBtn;
    Panel3: TPanel;
    Label4: TLabel;
    btn2: TBitBtn;
    btnGerarRemessa: TButton;
    RLBRemessa1: TRLBRemessa;
    sqlEmpresa: TSQLDataSet;
    sqlEmpresaANOLETIVO: TStringField;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaANOLETIVO: TStringField;
    sqlEmpresa1: TSQLDataSet;
    dspEmpresa1: TDataSetProvider;
    cdsEmpresa1: TClientDataSet;
    sqlEmpresa1SEQUE: TIntegerField;
    sqlEmpresa1GEROU: TIntegerField;
    sqlEmpresa1CODIGO_CONTA: TIntegerField;
    sqlEmpresa1DATABOLETO: TDateField;
    cdsEmpresa1SEQUE: TIntegerField;
    cdsEmpresa1GEROU: TIntegerField;
    cdsEmpresa1CODIGO_CONTA: TIntegerField;
    cdsEmpresa1DATABOLETO: TDateField;
    sqlBanco: TSQLDataSet;
    sqlBancoNUMERO_CONTA: TStringField;
    sqlBancoSEQUENCIA_ARQUIVO: TIntegerField;
    sqlBancoDIA_GEROU_ARQUIVO: TDateField;
    sqlBancoSEQUENCIA_DIA: TIntegerField;
    sqlBancoGERANDO_ARQUIVO: TIntegerField;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;
    cdsBancoNUMERO_CONTA: TStringField;
    cdsBancoSEQUENCIA_ARQUIVO: TIntegerField;
    cdsBancoDIA_GEROU_ARQUIVO: TDateField;
    cdsBancoSEQUENCIA_DIA: TIntegerField;
    cdsBancoGERANDO_ARQUIVO: TIntegerField;
    JvDateEdit1: TJvDateEdit;
    edit1: TEdit;
    label6: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure comboContaChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnCorrigirClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnGerarRemessaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
       TD: TTransactionDesc;
  end;
  var dbxconec: TStringList;
  str_relatorio : String;

var
  Form1: TForm1;

implementation

uses BoletoLayout;   

{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
//
// Remove caracteres de uma string deixando apenas numeros
//
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var  nQtdeBoletos: Integer;
     nI ,n : Integer;
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
  n := 0;
  while not (cdsBoleto.Eof) do
  begin

   ProgressBar1.Position := nI;
   n := n + 1;

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

    RLBTitulo1.Preparar;

     lbl2.Caption := IntToStr(n);
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
   if registros.Active then
    registros.Close;
  registros.Open;

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
  comboConta.ItemIndex := 1;

  if cds_empresa.Active then
    cds_empresa.Close;
  cds_empresa.Open;

   if (cdsBanco.Active) then
    cdsBanco.Close;
  cdsBanco.Params[0].AsString := comboConta.Text;
  cdsBanco.Open;
  Edit1.Text :=  IntToStr(cdsBancoSEQUENCIA_ARQUIVO.AsInteger);

  JvDateEdit1.Date := today;
  
end;

procedure TForm1.btn1Click(Sender: TObject);
var  nQtdeBoletos: Integer;
     nI , n : Integer;
     SR: TSearchRec;
     I: integer;
begin
  {
    if(comboConta.Text = '15350') then
    begin
      I := FindFirst('C:\home\boletos_ash\*.*', faAnyFile, SR);
      while I = 0 do
      begin
        if (SR.Attr and faDirectory) <> faDirectory then
        if not DeleteFile('C:\home\boletos_ash\' + SR.Name) then ShowMessage('Não foi possível excluir C:\home\boletos_ash\' + SR.Name);
        I := FindNext(SR);
      end;
    end;
  }
    if(comboConta.Text = '15400') then
    begin
      I := FindFirst('C:\home\boletos_pcmso\*.*', faAnyFile, SR);
      while I = 0 do
      begin
        if (SR.Attr and faDirectory) <> faDirectory then
        if not DeleteFile('C:\home\boletos_pcmso\' + SR.Name) then ShowMessage('Não foi possível excluir C:\home\boletos_pcmso\' + SR.Name);
        I := FindNext(SR);
      end;
    end;

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
   n := 0;
  while not (cdsBoleto.Eof) do
  begin

   ProgressBar1.Position := nI;
    n := n + 1;

    //Dados do Cedente


    RLBTitulo1.LocalPagamento := 'PAGÁVEL PREFERENCIALMENTE NAS COOPERATIVAS DE CRÉDITO DO SICREDI';
    RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo := '748';
    RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := IntToStr(cdsBoletoAGENCIA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := IntToStr(cdsBoletoDIGITOAGENCIA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.NumeroConta :=  comboConta.Text ; //IntToStr(cdsBoletoCONTA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.DigitoConta := IntToStr(cdsBoletoDIGITOCONTA.AsInteger);
    RLBTitulo1.Cedente.CodigoCedente := IntToStr(cdsBoletoCONTA.AsInteger);
    RLBTitulo1.Cedente.DigitoCodigoCedente := IntToStr(cdsBoletoDIGITOCONTA.AsInteger);
    RLBTitulo1.Carteira := '1';
    RLBTitulo1.Cedente.ContaBancaria.Convenio := '1';
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

    if(comboConta.Text = '15400') then
      RLBTitulo1.GerarPDF('C:\home\boletos_ash\'+ cdsBoletoRA.AsString +'BOLETO.pdf','autor do boleto')
    else
    RLBTitulo1.GerarPDF('C:\home\boletos_pcmso\'+ cdsBoletoRA.AsString +'BOLETO.pdf','autor do boleto');

    ///RLBTitulo1.Preparar;

    lbl2.Caption := IntToStr(n);
    cdsBoleto.Next;

    ProgressBar1.Visible := False;
    Repaint;
  end;



   Panel1.Visible := False;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
   ACedenteTipoInscricao, ASacadoTipoInscricao, aTitulosTipoOcorrencia,
   aTitulosEspecieDocumento,aTitulosAceite, NomArquivo, Registro , tipodoc : string;
   cTotalTitulos: Currency;
   NumeroRegistro, numeroTitulo, numerodoc ,seque ,seque1: integer;
   valorpendente : double;
   arquivo : TextFile;
begin
   if (cdsR.Active) then
     cdsR.Close;
   cdsR.Params[0].AsString := comboConta.Text;
   cdsR.Open;

   if (cds_empresa.Active) then
      cds_Empresa.Close;
      cds_Empresa.Open;

      if(cds_Empresa.State in [dsEdit , dsBrowse ]) then
      begin
      cds_Empresa.Edit;

      if (comboConta.Text = '15350')then
      begin
        // DEBITO CONTA ASH
        seque:= cds_empresaCODIGO_CONTA.AsInteger;
        seque:= seque+1;
        cds_empresaCODIGO_CONTA.AsInteger := seque;
        cds_Empresa.ApplyUpdates(-1);
        Edit2.Text := cds_empresaCODIGO_CONTA.AsString;
      end
      else
        begin
          // DEBITO CONTA PCMSO
          seque1:= cds_empresaPORTA.AsInteger;
          seque1:= seque1+1;
          cds_empresaPORTA.AsInteger := seque1;
          cds_Empresa.ApplyUpdates(-1);
          Edit2.Text := cds_empresaPORTA.AsString;
        end;
     end;
     cds_empresa.Close;
   cds_empresa.Open;

   {** daqui pra baixo gero o arquivo remessa}
   if (comboConta.Text = '15350') then
   begin
     NomArquivo := 'EC629'+FormatDateTime('ddmm',StrToDateTime(DateEdit1.Text))+'.txt';
     AssignFile(Arquivo,Edit3.Text + NomArquivo);
   end
   else begin
     NomArquivo := 'EC640'+FormatDateTime('ddmm',StrToDateTime(DateEdit1.Text))+'.txt';
     AssignFile(Arquivo,Edit3.Text + NomArquivo);
   end;
   Rewrite(Arquivo);
   Registro := '';

   Append(Arquivo);
   Rewrite(arquivo);


  if (comboConta.Text = '15350')then
  begin
    Registro := ('A'+ // 001 - 001
                   '1'+ // 002 - 002
                   Formatar('629',20)+ // Codigo atribuido pelo banco ASH
                   Formatar(cds_empresaEMPRESA.AsString,20,true,' ')+ // 023 - 42  Nome da empresa
                   '748' +
                   Formatar('BANCO SICREDI',20,true,' ') +
                   FormatDateTime('yyyymmdd',StrToDateTime(DateEdit1.Text))+
                   Formatar(Edit2.Text,6,False,'0') + // Sequencia do Arquivo
                   '05' + // versao do arquivo
                   Formatar('DÉBITO AUTOMATICO',17)+
                   Formatar('',52)); //99 - 150 Reservado (uso Banco) A 010 Brancos

    writeln(Arquivo, Registro);
  end
  else
    begin
      Registro := ('A'+ // 001 - 001
                   '1'+ // 002 - 002
                   Formatar('640',20)+ // Codigo atribuido pelo banco PCMSO
                   Formatar(cds_empresaEMPRESA.AsString,20,true,' ')+ // 023 - 42  Nome da empresa
                   '748' +
                   Formatar('BANCO SICREDI',20,true,' ') +
                   FormatDateTime('yyyymmdd',StrToDateTime(DateEdit1.Text))+
                   Formatar(Edit2.Text,6,False,'0') +

                   '05' + // versao do arquivo
                   Formatar('DÉBITO AUTOMATICO',17)+
                   Formatar('',52)); //99 - 150 Reservado (uso Banco) A 010 Brancos
      writeln(Arquivo, Registro);
   end;


     // GERAR REGISTRO-HEADER DA REMESSA    quando era so do ASH
    {
    Registro := ('A'+ // 001 - 001
                   '1'+ // 002 - 002
                    Formatar('629',20)+ // Codigo atribuido pelo banco ASH
                   Formatar(cds_empresaEMPRESA.AsString,20,true,' ')+ // 023 - 42  Nome da empresa
                   '748' +
                   Formatar('BANCO SICREDI',20,true,' ') +
                   FormatDateTime('yyyymmdd',StrToDateTime(DateEdit1.Text))+
                   Formatar(Edit2.Text,6,False,'0') +
                   '05' + // versao do arquivo
                   Formatar('DÉBITO AUTOMATICO',17)+
                   Formatar('',52)); //99 - 150 Reservado (uso Banco) A 010 Brancos
     writeln(Arquivo, Registro);
    }
    NumeroRegistro := 2;

    Label8.Caption := '';
    Label8.Caption := 'Gerando Remessa...';
    Refresh;
    FlatGauge1.MaxValue := cdsR.RecordCount;

     valorpendente := 0 ;
     cdsR.First;
     while not cdsR.Eof do
     begin

       // GERAR REGISTRO DETALHE  - SEGMENTO C
         {
           Registro := 'C';
           Registro := Registro + Formatar(cdsBoletoCODCLIENTE.AsString,25,false,'0');
           Registro := Registro + Formatar(cdsBoletoAGENCIA.AsString,4,false,'0');
        Registro := Registro + Formatar(cdsBoletoCODCLIENTE.AsString,25,false,'0');  // ??????
           Registro := Registro + FormatDateTime('ddmmyyyy',StrToDateTime(DateEdit2.Text));
           Registro := Registro + Formatar('',97);// 53 - 149 Reservado (uso Banco)   Brancos

           Registro := Registro + Formatar('',11);//230 –240	Reservado (uso Banco)	A	011		Brancos
           NumeroRegistro := NumeroRegistro + 1;
           numeroTitulo := numeroTitulo + 1;
           numerodoc := numerodoc + 1;
           writeln(Arquivo, Registro);

         }

         //GERAR REGISTRO E

           Registro := 'E'; // 001 - 001
           Registro := Registro + Formatar(RemoveChar(cdsRCPF_D.AsString),25,false,'0') ;//
           Registro := Registro + Formatar(cdsRAGENCIA.AsString,4,false,'0');
           Registro := Registro + Formatar(RemoveChar(cdsRCC.AsString),14,True,' ') ;//
           Registro := Registro + FormatDateTime('yyyymmdd',StrToDateTime(cdsRDATAREC.AsString));
           Registro := Registro + FormatCurr('000000000000000',cdsRVALOR.AsFloat * 100);
           Registro := Registro + '03'; // 68 - 69
           Registro := Registro + Formatar('',59);// 070 - 128	Reservado (uso Banco x EMPRESA )
           Registro := Registro + 'X' ;// 068- 069

           if(cdsRTIPOD.Value = 2)then
           begin
             Registro := Registro + '2' ;//  130-130
             Registro := Registro + Formatar(RemoveChar(cdsRCPF_D.AsString),15,false,'0') ;//
           end
           else begin
             Registro := Registro + '1' ;//  130-130
             Registro := Registro + Formatar(RemoveChar(cdsRCPF_D.AsString),15,false,'0') ;//
           end ;
           Registro := Registro + Formatar('',04);//
           Registro := Registro + '0' ;//  150 - 150
           writeln(Arquivo, Registro);
           NumeroRegistro := NumeroRegistro + 1;
           FlatGauge1.Progress := FlatGauge1.Progress + 1;
           valorpendente :=  valorpendente + cdsRVALOR.AsFloat ;
           cdsR.Next;
     end;

        NumeroRegistro := NumeroRegistro - 1;

        // TRAILER  REGISTRO 'Z'


         Registro :=  'Z' ; //  001 - 001
         NumeroRegistro := NumeroRegistro + 1;
         Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // 02 - 07	Quantidade de registros do lote	N	006
         Registro := Registro + FormatCurr('00000000000000000',valorpendente * 100);  // 08 - 24
         Registro := Registro + Formatar('',126) ;// 025 - 150	Reservado (uso Banco)
         writeln(Arquivo, Registro);

       // TRAILER DE ARQUIVO REMESSA

       /// Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO


      ///  writeln(Arquivo, Registro);
        CloseFile(arquivo);
        FlatGauge1.Progress := 0;
        label8.Caption := '';
        label8.Caption := 'Remessa gerada com SUCESSO...';

                                    /////// fim do Arquivo Remessa \\\\\\\\\\\
        Refresh;
end;

procedure TForm1.comboContaChange(Sender: TObject);
begin
  if (comboConta.Text = '15350')then
  begin
    Edit1.Visible := False;
    Edit3.Visible := True;
  end;
  if (comboConta.Text = '15400')then
  begin
    Edit3.Visible := False;
    Edit1.Visible := True;
  end;  
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var  nQtdeBoletos: Integer;
     nI ,n : Integer;
begin

  if (cdsBoleto1.Active) then
     cdsBoleto1.Close;
   cdsBoleto1.Params[0].AsString := comboConta.Text;
   cdsBoleto1.Open;

  Panel1.Visible := True;
  Repaint;

  nQtdeBoletos := 1;
  ProgressBar1.Max := nQtdeBoletos;
  ProgressBar1.Position := 0;
  ProgressBar1.Visible := True;
  nI := 1;
  n := 0;
  while not (cdsBoleto1.Eof) do
  begin

   ProgressBar1.Position := nI;
   n := n + 1;

    //Dados do Cedente

    RLBTitulo1.LocalPagamento := 'PAGÁVEL PREFERENCIALMENTE NAS COOPERATIVAS DE CRÉDITO DO SICREDI';
    RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo := '748';
    RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := IntToStr(cdsBoleto1AGENCIA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := IntToStr(cdsBoleto1DIGITOAGENCIA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.NumeroConta :=  comboConta.Text ; //IntToStr(cdsBoletoCONTA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.DigitoConta := IntToStr(cdsBoleto1DIGITOCONTA.AsInteger);
    RLBTitulo1.Cedente.CodigoCedente := IntToStr(cdsBoleto1CONTA.AsInteger);
    RLBTitulo1.Cedente.DigitoCodigoCedente := IntToStr(cdsBoleto1DIGITOCONTA.AsInteger);
    RLBTitulo1.Carteira := '';
    RLBTitulo1.Cedente.ContaBancaria.Convenio := '';
    RLBTitulo1.Cedente.ContaBancaria.NomeCliente := cdsBoleto1EMPRESA.AsString;
    RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
    RLBTitulo1.Cedente.NumeroCPFCGC := cdsBoleto1CNPJ_CPF.AsString;
    RLBTitulo1.Cedente.Nome := cdsBoleto1EMPRESA.AsString;

    //dados do sacado
    RLBTitulo1.Sacado.Nome := cdsBoleto1NOMECLIENTE.AsString;
    case (cdsBoleto1TIPO.AsInteger) of
      0: RLBTitulo1.Sacado.TipoInscricao := tiPessoaFisica;
      1: RLBTitulo1.Sacado.TipoInscricao := tiPessoaJuridica;
    end;
    RLBTitulo1.Sacado.NumeroCPFCGC := cdsBoleto1CNPJ.AsString;
    RLBTitulo1.Sacado.Endereco.Rua := cdsBoleto1ENDERECO.AsString;
    RLBTitulo1.Sacado.Endereco.CEP := cdsBoleto1CEP.AsString;
    RLBTitulo1.Sacado.Endereco.Cidade := cdsBoleto1CIDADE.AsString;
    RLBTitulo1.Sacado.Endereco.Estado := cdsBoleto1UF.AsString;

    //dados da cobranca
    RLBTitulo1.NossoNumero := cdsBoleto1NUMTITULO.AsString;
    RLBTitulo1.ValorDocumento := cdsBoleto1VALOR.Value;
    RLBTitulo1.DataDocumento := cdsBoleto1DATAPROCESSAMENTO.AsDateTime;
    RLBTitulo1.DataVencimento := cdsBoleto1DATAREC.AsDateTime;   // DATA VENCIMENTO
    RLBTitulo1.NumeroDocumento := cdsBoleto1NUMTITULO.AsString;

    //instrução

    RLBTitulo1.Instrucoes.Text := cdsBoleto1INST1.AsString;

    RLBTitulo1.Referencia := cdsBoleto1DESCPRODUTO.AsString;

    RLBTitulo1.Preparar;

     lbl2.Caption := IntToStr(n);
    cdsBoleto1.Next;

    ProgressBar1.Visible := False;
    Repaint;
  end;


   RLBTitulo1.Visualizar;
   Panel1.Visible := False;


end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var     SR: TSearchRec;
     I: integer;
begin

    if(comboConta.Text = '15350') then
    begin
      I := FindFirst('C:\home\boletos_ash\*.*', faAnyFile, SR);
      while I = 0 do
      begin
        if (SR.Attr and faDirectory) <> faDirectory then
        if not DeleteFile('C:\home\boletos_ash\' + SR.Name) then ShowMessage('Não foi possível excluir C:\home\boletos_ash\' + SR.Name);
        I := FindNext(SR);
      end;
    end;
end;

procedure TForm1.btnCorrigirClick(Sender: TObject);
begin
  cds_empresa.ApplyUpdates(0);
  btnCorrigir.Enabled := False;
end;

procedure TForm1.btn2Click(Sender: TObject);
var  nQtdeBoletos: Integer;
     nI , tipo : Integer ;
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
    RLBTitulo1.Carteira := '1'; // cdsBoletoCARTEIRA.AsString;                             // 02/01/17
    RLBTitulo1.Cedente.ContaBancaria.Convenio := '1'; // cdsBoletoCODIGO_CEDENTE.AsString; // 02/01/17
    RLBTitulo1.Cedente.ContaBancaria.NomeCliente := cdsBoletoEMPRESA.AsString;
    RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
    RLBTitulo1.Cedente.NumeroCPFCGC := cdsBoletoCNPJ_CPF.AsString;
    RLBTitulo1.Cedente.Nome := cdsBoletoEMPRESA.AsString;

    //dados do sacado
    //codcliente := cdsBoletoCODCLIENTE.AsInteger;

    /////RLBTitulo1.Sacado.Codigo := cdsBoletoCODCLIENTE.AsInteger;


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
    RLBTitulo1.NossoNumero :=  cdsBoletoNUMTITULO.AsString;
    RLBTitulo1.ValorDocumento := cdsBoletoVALOR.Value;
    RLBTitulo1.DataDocumento := cdsBoletoDATAPROCESSAMENTO.AsDateTime;
    RLBTitulo1.DataVencimento := cdsBoletoDATAREC.AsDateTime;   // DATA VENCIMENTO
    RLBTitulo1.NumeroDocumento := cdsBoletoNUMTITULO.AsString;


    //instrução
    RLBTitulo1.Instrucoes.Text := cdsBoletoINST1.AsString;

    RLBTitulo1.Referencia := cdsBoletoDESCPRODUTO.AsString;

    RLBTitulo1.Preparar;
    cdsBoleto.Next;

    ProgressBar1.Visible := False;
    Repaint;
    end;


   RLBTitulo1.Visualizar;
   Panel1.Visible := False;


end;

procedure TForm1.btnGerarRemessaClick(Sender: TObject);
var
  nQtdeBoletos, nI , me , seque , sequeA ,s : Integer;
  ano, mes, dia : word;
  A , EXT , AN: string ;
  Txt : TextFile;
  hj :  TDateTime;
begin
  if (cdsBoleto.Active) then
     cdsBoleto.Close;
   cdsBoleto.Params[0].AsString := comboConta.Text;
   cdsBoleto.Open;

  if (cdsBanco.Active) then
    cdsBanco.Close;
  cdsBanco.Params[0].AsString := comboConta.Text;
  cdsBanco.Open;

  hj := cdsBancoDIA_GEROU_ARQUIVO.Value;

  sqlboleto.StartTransaction(TD);
  if (hj <> JvDateEdit1.Date )then
  begin
    sqlboleto.ExecuteDirect('Update BANCO set GERANDO_ARQUIVO = 0  , SEQUENCIA_DIA = 0 , DIA_GEROU_ARQUIVO = '
                            + QuotedStr(FormatDateTime('mm/dd/yyyy', today))
                            + 'where NUMERO_CONTA = '+ QuotedStr(comboConta.Text)

    );
    //cdsBanco.Close;
    sqlboleto.Commit(TD);
  end;


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
    RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo := '748';
    RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := IntToStr(cdsBoletoAGENCIA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := IntToStr(cdsBoletoDIGITOAGENCIA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.NumeroConta :=  comboConta.Text ; //IntToStr(cdsBoletoCONTA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.DigitoConta := IntToStr(cdsBoletoDIGITOCONTA.AsInteger);
    RLBTitulo1.Cedente.CodigoCedente := IntToStr(cdsBoletoCONTA.AsInteger);
    RLBTitulo1.Cedente.DigitoCodigoCedente := IntToStr(cdsBoletoDIGITOCONTA.AsInteger);

    RLBTitulo1.Carteira := '1'; //cdsBoletoCARTEIRA.AsString;                             // 02/01/17
    RLBTitulo1.Cedente.ContaBancaria.Convenio := '1'; //cdsBoletoCODIGO_CEDENTE.AsString; // 02/01/17

    RLBTitulo1.Cedente.ContaBancaria.NomeCliente := cdsBoletoEMPRESA.AsString;
    RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
    RLBTitulo1.Cedente.NumeroCPFCGC := cdsBoletoCNPJ_CPF.AsString;
    RLBTitulo1.Cedente.Nome := cdsBoletoEMPRESA.AsString;

    //dados do sacado

    RLBTitulo1.Sacado.Nome := cdsBoletoNOMECLIENTE.AsString;
    /////RLBTitulo1.Sacado.Codigo := cdsBoletoCODCLIENTE.AsInteger;
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

    decodedate(Date, ano, mes, dia);
    an := FormatDateTime('yy',Date);  

    RLBTitulo1.TipoOcorrencia := toRemessaRegistrar;
    RLBTitulo1.EspecieDocumento := edDuplicataMercantil;
    RLBTitulo1.NossoNumero := an + '2' + cdsBoletoNUMTITULO.AsString; // aqui colocar o ANO + numero 2  mudar em 2018
    RLBTitulo1.ValorDocumento := cdsBoletoVALOR.Value;
    RLBTitulo1.DataDocumento := cdsBoletoDATAPROCESSAMENTO.AsDateTime;
    RLBTitulo1.DataVencimento := cdsBoletoDATAREC.AsDateTime;   // DATA VENCIMENTO
    RLBTitulo1.NumeroDocumento := cdsBoletoNUMTITULO.AsString;

    // Instruções
    RLBTitulo1.Instrucoes.Text := cdsBoletoINST1.AsString;

    // Inserindo o boleto na remessa
    RLBRemessa1.Titulos.Add(RLBTitulo1);

    cdsBoleto.Next;
  //  ProgressBar1.Position := ProgressBar1.Position +1;

  end;

  RLBRemessa1.DataArquivo := Date; //É a data que o arquivo está sendo gerado
  RLBRemessa1.LayoutArquivo := laCNAB400; { Layout do arquivo, é necessário ver com o banco qual é o indicado.
                                            CNAB400 é o mais comum. }
 // decodedate(Date, ano, mes, dia);

  me := mes ;
  A:=IntToStr(me);
  if( A = '10' ) then
    A := 'O';
  if( A = '11' ) then
    A := 'N';
  if( A = '12' ) then
    A := 'D';

  EXT := '.CRM';

   cdsBanco.Close;
   if not (cdsBanco.Active) then
     cdsBanco.Open;

   if(cdsBanco.State in [dsEdit , dsBrowse ]) then
     cdsBanco.Edit;
     seque := cdsBancoSEQUENCIA_DIA.AsInteger;
     seque := seque+1;
     cdsBancoSEQUENCIA_DIA.AsInteger := seque;
     //cdsBanco.ApplyUpdates(-1);
     cdsBanco.Close;

   //TD.TransactionID := 1;
   //TD.IsolationLevel := xilREADCOMMITTED;
    sqlboleto.StartTransaction(TD);
    try

      sqlboleto.ExecuteDirect('Update BANCO SET SEQUENCIA_DIA =' + IntToStr(seque) + ' where numero_conta =' + QuotedStr(comboConta.Text) );
      sqlboleto.Commit(TD);
    except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      sqlboleto.Rollback(TD);
    end;
    end;

  if not (cdsBanco.Active) then
    cdsBanco.Open;
  if (cdsBancoGERANDO_ARQUIVO.Value <> 0 )then

   EXT := '.RM' + IntToStr(seque);

   cdsBanco.Close;

   RLBRemessa1.NomeArquivo := FormatDateTime('15400' + A  + 'dd' ,Date)+ EXT ; { Apenas o nome do arquivo, alguns bancos estipulam regras e outros não }



   // Sequencia do arquivo

   if not (cdsBanco.Active) then
     cdsBanco.Open;

   if(cdsBanco.State in [dsEdit , dsBrowse ]) then
   cdsBanco.Edit;
   sequeA := cdsBancoSEQUENCIA_ARQUIVO.AsInteger;
   sequeA := sequeA + 1;
   cdsBancoSEQUENCIA_ARQUIVO.AsInteger := sequeA;
   //cdsBanco.ApplyUpdates(-1);
   Edit1.Text :=  IntToStr(cdsBancoSEQUENCIA_ARQUIVO.AsInteger);
   cdsBanco.Close;

   //TD.TransactionID := 2;
   //TD.IsolationLevel := xilREADCOMMITTED;

    sqlboleto.StartTransaction(TD);
    try
      sqlboleto.ExecuteDirect('Update BANCO SET SEQUENCIA_ARQUIVO =' + IntToStr(sequeA) + 'where numero_conta =' + QuotedStr(comboConta.Text) );
      sqlboleto.Commit(TD);
    except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      sqlboleto.Rollback(TD);
    end;
    end;



  { Sequencia númerica de quandos arquivos já foram gerados para este banco }
  RLBRemessa1.NumeroArquivo := sequeA;
  // RLBRemessa1.NumeroArquivo := 1;


  RLBRemessa1.TipoMovimento := tmRemessa;

  RLBRemessa1.NomeArquivo := ExtractFileDir(Application.ExeName)+'\'+'arquivos\'+RLBRemessa1.NomeArquivo; // Apenas colocando um caminho para o arquivo

  if RLBRemessa1.GerarRemessa then
    MessageDlg('O arquivo foi gerado com sucesso.'#13+RLBRemessa1.NomeArquivo,mtInformation,[mbOK],0);

 { MARCAR QUAIS BOLETOS FORAM GERADOS NO ARQUIVO }


   //TD.TransactionID := 3;
   //TD.IsolationLevel := xilREADCOMMITTED;
    sqlboleto.StartTransaction(TD);
    try

      sqlboleto.ExecuteDirect('Update RECEBIMENTO SET GERARQREM = 1 , DATAGERARQREM = '+ QuotedStr(FormatDateTime('mm/dd/yyyy', now )) + ' '+
      'where DP = 1 ');
       sqlboleto.Commit(TD);
    except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      sqlboleto.Rollback(TD);
    end;
    end;
                                     //  AQUI ERRADO
    if not (cdsBanco.Active) then
    cdsBanco.Open;
    if(cdsBancoGERANDO_ARQUIVO.AsInteger = 0 )then
    begin
        //TD.TransactionID := 4;
        //TD.IsolationLevel := xilREADCOMMITTED;
        sqlboleto.StartTransaction(TD);
      try

          sqlboleto.ExecuteDirect('Update BANCO set GERANDO_ARQUIVO = 1 where numero_conta =' + QuotedStr(comboConta.Text) );

          sqlboleto.Commit(TD);
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          sqlboleto.Rollback(TD);
        end;
      end;

    end;
    btnGerarRemessa.Enabled := False;

end;

end.
