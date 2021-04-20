unit uRel_CR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, rpcompobase, rpvclreport, FMTBcd, ComCtrls,
  ExtCtrls, DB, DBClient, Provider, SqlExpr, RLBoleto, DBXpress, Mask;

type
  TfRel_CR1 = class(TForm)
    btnImprimir: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    VCLReport1: TVCLReport;
    BitBtn4: TBitBtn;
    RLBTitulo1: TRLBTitulo;
    sds_cr: TSQLDataSet;
    sds_crCODRECEBIMENTO: TIntegerField;
    sds_crCODIGO_DE_BARRAS: TStringField;
    sds_crBL: TIntegerField;
    sds_crIMAGE_COD_BARRAS: TGraphicField;
    dsp_cr: TDataSetProvider;
    cds_cr: TClientDataSet;
    cds_crCODRECEBIMENTO: TIntegerField;
    cds_crCODIGO_DE_BARRAS: TStringField;
    cds_crBL: TIntegerField;
    cds_crIMAGE_COD_BARRAS: TGraphicField;
    cds_cli: TSQLDataSet;
    cds_cliCODBANCO: TSmallintField;
    cds_banco: TSQLDataSet;
    cds_bancoCODBANCO: TSmallintField;
    cds_bancoBANCO: TStringField;
    cds_bancoNOMEBANCO: TStringField;
    cds_bancoCARTEIRA: TStringField;
    cds_bancoCODIGO_CEDENTE: TStringField;
    cds_bancoCODIGO_EMPRESA: TStringField;
    cds_bancoCODIGO_AGENCIA: TStringField;
    cds_bancoDIGITO_AGENCIA: TStringField;
    cds_bancoNUMERO_CONTA: TStringField;
    cds_bancoDIGITO_CONTA: TStringField;
    cds_bancoCODIGO_PLANO: TIntegerField;
    cds_bancoINSTRUCAO1: TStringField;
    cds_bancoINSTRUCAO2: TStringField;
    cds_bancoINSTRUCAO3: TStringField;
    cds_bancoINSTRUCAO4: TStringField;
    cds_bancoCEDENTE: TStringField;
    cds_bancoNCONVENIO: TIntegerField;
    cds_Empresa: TSQLDataSet;
    cds_EmpresaEMPRESA: TStringField;
    cds_EmpresaRAZAO: TStringField;
    cds_EmpresaCNPJ_CPF: TStringField;
    cds_EmpresaENDERECO: TStringField;
    cds_EmpresaLOGRADOURO: TStringField;
    cds_EmpresaBAIRRO: TStringField;
    cds_EmpresaCIDADE: TStringField;
    cds_EmpresaUF: TStringField;
    cds_EmpresaCEP: TStringField;
    cds_EmpresaDDD: TStringField;
    cds_EmpresaFONE: TStringField;
    cds_EmpresaFONE_1: TStringField;
    cds_EmpresaFONE_2: TStringField;
    cds_EmpresaFAX: TStringField;
    cds_EmpresaE_MAIL: TStringField;
    cds_EmpresaWEB: TStringField;
    cds_EmpresaLOGOTIPO: TGraphicField;
    cds_EmpresaSLOGAN: TStringField;
    cds_EmpresaOUTRAS_INFO: TStringField;
    cds_EmpresaCODIGO: TIntegerField;
    cds_EmpresaTIPO: TStringField;
    cds_EmpresaIE_RG: TStringField;
    cds_EmpresaCODIGO_CONTA: TIntegerField;
    Panel1: TPanel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    BitBtn5: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
  private
    procedure Marcatitulos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRel_CR1: TfRel_CR1;

implementation

uses UDm, ufcr, gbCobranca, uImpr_Boleto;

{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
var
  F: integer;
  S: string;
begin
  S := '';
  for F := 1 To Length(Texto) Do
  begin
    if (Texto[F] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, F, 1);
    end;
  end;
  result := S;
end;

function ZeroEsquerda(const I: integer; const Casas: byte): string;
var
  Ch: Char;
begin
  Result := IntToStr(I);
  if Length(Result) > Casas then
  begin
    Ch := '*';
    Result := '';
  end
  else
    Ch := '0';
  while Length(Result) < Casas do
    Result := Ch + Result;
end;

procedure TfRel_CR1.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfRel_CR1.btnImprimirClick(Sender: TObject);
begin
  sqlGrupoCR := '';
  if not fcrproc.scdsCr_proc.Active then
  begin
   MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
   exit;
  end;
  sqlGrupoCR := ' order by rec.NOMECLIENTE, rec.CODCLIENTE, rec.TITULO, '
            + ' rec.DATAVENCIMENTO, rec.EMISSAO, rec.CODRECEBIMENTO';
  sqlGrupoCR := impCR + SqlCr + sqlGrupoCR;
  fcrproc.repContasReceber.FileName := str_relatorio + 'RelContasReceber.rep';
  fcrproc.repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  fcrproc.repContasReceber.Report.DataInfo.Items[0].SQL:= sqlGrupoCR;
  fcrproc.repContasReceber.Execute;
end;

procedure TfRel_CR1.BitBtn2Click(Sender: TObject);
var
  testo_update : string;
  TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  // marco as Duplicatas a serem impressas
  fcrproc.scdsCr_proc.DisableControls;
  fcrproc.scdsCr_proc.First;
  While not fcrproc.scdsCr_proc.Eof do
  begin
    if (fcrproc.scdsCr_procDUP_REC_NF.AsString = 'S') then
    begin
      testo_update := '';
      testo_update := 'update RECEBIMENTO set DP = 1 ' ;
      testo_update := testo_update + 'where CODRECEBIMENTO = ';
      testo_update := testo_update + IntToStr(fcrproc.scdsCr_procCODRECEBIMENTO.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(testo_update);
    end;
    fcrproc.scdsCr_proc.Next;
  end;
  dm.sqlsisAdimin.Commit(TD);
  //======================================================
  fcrproc.scdsCr_proc.EnableControls;
  fcrproc.scdsCr_proc.First;  
  if (not fcrproc.scdsCr_proc.Active) then
  begin
   MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
   exit;
  end;
  if ((fcrproc.scdsCr_procSTATUS.AsString <> '12') and (fcrproc.scdsCr_procSTATUS.AsString <> '9-')) then
  begin
   MessageDlg('O Status deve ser "12-Duplica Banco" para este relatório !', mtWarning, [mbOK], 0);
   exit;
  end;
  
{  if (fcrproc.medta3.Text <> datastr) then
  begin
    fcrproc.repRelDuplicata.Report.Params.ParamByName('PDTA1').Value :=
               formatdatetime('dd/mm/yy', StrToDate(fcrproc.medta3.Text));
  end;
  if (fcrproc.medta4.Text <> datastr) then
  begin
    fcrproc.repRelDuplicata.Report.Params.ParamByName('PDTA2').Value :=
               formatdatetime('dd/mm/yy', StrToDate(fcrproc.medta4.Text));
  end;   }
  fcrproc.repRelDuplicata.FileName := str_relatorio + 'rel_duplicata_enviada.rep';
  fcrproc.repRelDuplicata.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  fcrproc.repRelDuplicata.Execute;
end;

procedure TfRel_CR1.BitBtn1Click(Sender: TObject);
begin
  Marcatitulos;
  BitBtn4.Click;
  VCLReport1.Filename := str_relatorio + 'boleto_BB.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfRel_CR1.BitBtn3Click(Sender: TObject);
begin
  Marcatitulos;

  fcrproc.VCLReport1.Filename := str_relatorio + 'recibo.rep';
  fcrproc.VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  if (not fcrproc.scdsCr_proc.Active) then
  begin
   MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
   exit;
  end;
  fcrproc.VCLReport1.Report.Params.ParamByName('CODVENDA').Value := 0;
  if fcrproc.edCodCliente.Text <> '' then
    fcrproc.VCLReport1.Report.Params.ParamByName('CODID').Value := StrToInt(fcrproc.edCodCliente.Text)
  else
    fcrproc.VCLReport1.Report.Params.ParamByName('CODID').Value := 9999999;
  fcrproc.VCLReport1.Report.Params.ParamByName('N_COPIAS').Value :=StrToInt(Edit2.Text);
  fcrproc.VCLReport1.Execute;
end;

procedure TfRel_CR1.BitBtn4Click(Sender: TObject);
var
  n_titulo : Integer;
  n_titulo1 : String;
begin
   fcrproc.scdsCr_proc.DisableControls;
   fcrproc.scdsCr_proc.First;
   While not fcrproc.scdsCr_proc.Eof do
   begin
    if (fcrproc.scdsCr_procDUP_REC_NF.AsString = 'S') then
    begin
      {** abro o cadastro do cliente e pego o codbanco}
      if cds_cli.Active then
         cds_cli.Close;
      cds_cli.Params[0].AsInteger := fcrproc.scdsCr_procCODCLIENTE.AsInteger;
      cds_cli.Open;
      {** abro o banco e pego os dados da conta}
      if cds_banco.Active then
         cds_banco.Close;
      cds_banco.Params[0].AsInteger := cds_cliCODBANCO.AsInteger;
      cds_banco.Open;

      if cds_cr.Active then
         cds_cr.Close;
      cds_cr.Params[0].Clear;
      cds_cr.Params[0].Value := fcrproc.scdsCr_procTITULO.AsString;
      cds_cr.Open;
      cds_cr.Edit;
      //Dados do Cedente
      RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo := cds_bancoCODIGO_EMPRESA.AsString;
      RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := cds_bancoCODIGO_AGENCIA.AsString;
      RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := cds_bancoDIGITO_AGENCIA.AsString;
      RLBTitulo1.Cedente.ContaBancaria.NumeroConta := cds_bancoNUMERO_CONTA.AsString;
      RLBTitulo1.Cedente.ContaBancaria.DigitoConta := cds_bancoDIGITO_CONTA.AsString;
      RLBTitulo1.Cedente.CodigoCedente := cds_bancoNUMERO_CONTA.AsString;
      RLBTitulo1.Cedente.DigitoCodigoCedente := cds_bancoDIGITO_CONTA.AsString;
      RLBTitulo1.Carteira := cds_bancoCARTEIRA.AsString;
      RLBTitulo1.Cedente.ContaBancaria.Convenio := cds_bancoCODIGO_CEDENTE.AsString;
      //dados da cobranca
      n_titulo := StrToInt(RemoveChar(fcrproc.scdsCr_procTITULO.AsString));
      n_titulo1 := ZeroEsquerda(n_titulo,10);
      RLBTitulo1.NossoNumero := cds_bancoCODIGO_CEDENTE.AsString + n_titulo1;
      RLBTitulo1.ValorDocumento := fcrproc.scdsCr_procVALORTITULO.AsFloat;
      //RLBTitulo1.DataDocumento := fcrEscolas.scdsCr_procEMISSAO.Value;
      RLBTitulo1.DataVencimento := fcrproc.scdsCr_procDATAVENCIMENTO.Value;
      {** Falta preencher 0 numero documento}
      //RLBTitulo1.NumeroDocumento := Trim(Edit3.Text);
      RLBTitulo1.Visualizar;
      cds_cr.ApplyUpdates(0);
    end;
    fcrproc.scdsCr_proc.Next;
  end;
  fcrproc.scdsCr_proc.EnableControls;
  cds_cli.close;
  cds_banco.close;
  cds_cr.close;

end;

procedure TfRel_CR1.FormShow(Sender: TObject);
begin
  tipo_empresa := '0';
end;

procedure TfRel_CR1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  testo_update : string;
begin

 { Manoel - comentei esse update pois agora o campo BL é usado para marcar os Boletos ja impressos 23/02/09
   anes o Edson usava para o Montessori Artur 
  testo_update := '';
  testo_update := 'update RECEBIMENTO set BL = null, ' +
   'CODIGO_DE_BARRAS = '+ '''' + '''' +
   ', IMAGE_COD_BARRAS = null' + //'''' + '''' +
   ' where BL = 1';
  dm.sqlsisAdimin.ExecuteDirect(testo_update);
  //fcrproc.btnProcurar.Click;
}
  testo_update := '';
  testo_update := 'update RECEBIMENTO set DP = null where DP = 1';
  dm.sqlsisAdimin.ExecuteDirect(testo_update);
  fcrproc.btnProcurar.Click;

end;

procedure TfRel_CR1.Marcatitulos;
var
  TD: TTransactionDesc;
  testo_update : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  // marco as Duplicatas a serem impressas
  fcrproc.scdsCr_proc.DisableControls;
  fcrproc.scdsCr_proc.First;
  While not fcrproc.scdsCr_proc.Eof do
  begin
    if (fcrproc.scdsCr_procDUP_REC_NF.AsString = 'S') then
    begin
      testo_update := '';
      testo_update := 'update RECEBIMENTO set DP = 1 ' ;
      testo_update := testo_update + 'where CODRECEBIMENTO = ';
      testo_update := testo_update + IntToStr(fcrproc.scdsCr_procCODRECEBIMENTO.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(testo_update);
    end;
    fcrproc.scdsCr_proc.Next;
  end;
  dm.sqlsisAdimin.Commit(TD);
  fcrproc.scdsCr_proc.EnableControls;
end;

procedure TfRel_CR1.BitBtn5Click(Sender: TObject);
var
  testo_update : string;
  TD: TTransactionDesc;
begin
  if (dm.moduloUsado = 'SAUDE') then
  begin
    BitBtn4.Click;
    VCLReport1.Filename := str_relatorio + 'boleto_BB.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Execute;
  end
  else begin
    if (not fcrproc.scdsCr_proc.Active) then
    begin
      MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
      exit;
    end;
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    // marco as Duplicatas a serem impressas
    fcrProc.scdsCr_proc.DisableControls;
    fcrProc.scdsCr_proc.First;
    While not fcrProc.scdsCr_proc.Eof do
    begin
      if (fcrProc.scdsCr_procDUP_REC_NF.AsString = 'S') then
      begin
        testo_update := '';
        testo_update := 'update RECEBIMENTO set DP = 1 ' ;
        testo_update := testo_update + 'where CODRECEBIMENTO = ';
        testo_update := testo_update + IntToStr(fcrProc.scdsCr_procCODRECEBIMENTO.AsInteger);
        dm.sqlsisAdimin.ExecuteDirect(testo_update);
      end;
      fcrProc.scdsCr_proc.Next;
    end;
    dm.sqlsisAdimin.Commit(TD);
    //======================================================
    fcrProc.scdsCr_proc.EnableControls;
    fcrProc.scdsCr_proc.First;
    fImpr_Boleto := TfImpr_Boleto.Create(Application);
    fImpr_Boleto.edBoleto.Visible := True;
    fImpr_boleto.lblBoleto.Visible := True;
    try
     fImpr_Boleto.codVendaBoleto := fcrProc.scdsCr_procCODVENDA.AsInteger;
     fImpr_boleto.strBoletoBrasil := 'SELECT VEN.CODCLIENTE, udf_Collatebr(ENDE.LOGRADOURO) as LOGRADOURO' +
       ' ,udf_Collatebr(ENDE.CIDADE) as CIDADE ,udf_Collatebr(ENDE.BAIRRO) as BAIRRO' +
       ' ,ENDE.UF ,ENDE.CEP ,VEN.EMISSAO ,VEN.DATAVENCIMENTO,VEN.VALOR_RESTO' +
       ' ,ven.TITULO ,udf_Collatebr(CLI.RAZAOSOCIAL) as RAZAOSOCIAL , udf_Collatebr(CLI.NOMECLIENTE) as NOMECLIENTE ' +
       ',VEN.CODRECEBIMENTO'+
       ' ,CLI.CNPJ,CLI.TIPOFIRMA,CLI.CPF,CLI.INSCESTADUAL ,CLI.RG ,CLI.RA' +
       ' FROM RECEBIMENTO VEN INNER JOIN CLIENTES CLI ON CLI.CODCLIENTE = VEN.CODCLIENTE' +
       ' LEFT JOIN  ENDERECOCLIENTE ENDE ON ENDE.CODCLIENTE = CLI.CODCLIENTE ' +
       ' WHERE DP = 1 AND ((CODVENDA = :PVENDA) OR (:PVENDA = 0))' +
       '  GROUP BY VEN.CODCLIENTE, udf_Collatebr(ENDE.LOGRADOURO),udf_Collatebr(ENDE.CIDADE),udf_Collatebr(ENDE.BAIRRO)'+
       ' ,ENDE.UF,ENDE.CEP,VEN.EMISSAO,VEN.DATAVENCIMENTO,VEN.VALOR_RESTO,VEN.TITULO '+
       ' ,VEN.DESCONTO,udf_Collatebr(CLI.RAZAOSOCIAL), udf_Collatebr(CLI.NOMECLIENTE) ,CLI.CNPJ,CLI.TIPOFIRMA,CLI.CPF,CLI.RA'+
       ',VEN.CODRECEBIMENTO'+
       ' ,CLI.INSCESTADUAL,CLI.RG  order by CLI.RA';
      fImpr_Boleto.ShowModal;
    finally
     fImpr_Boleto.Free;
    end;
  end;
end;

end.
