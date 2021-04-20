unit uGerar_Dados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  Mask, JvExStdCtrls, JvEdit, JvDBSearchEdit, DBCtrls, Grids, DBGrids,DBXpress,
  rpcompobase, rpvclreport ,rplabelitem ;

type
  TfGerar_Dados = class(TForm)
    edCodCliente: TEdit;
    edCliente: TJvDBSearchEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    meDta5: TMaskEdit;
    meDta6: TMaskEdit;
    BitBtn1: TBitBtn;
    btnLimpa: TBitBtn;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cdsClienteBusca: TClientDataSet;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    dsConferir: TDataSource;
    cdsConferir: TClientDataSet;
    dspConferir: TDataSetProvider;
    sqlConferir: TSQLDataSet;
    DBGrid2: TDBGrid;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    cdsDmens: TClientDataSet;
    dspDmens: TDataSetProvider;
    sqlDmens: TSQLDataSet;
    DataSource2: TDataSource;
    DBGrid3: TDBGrid;
    bt_relDmed: TBitBtn;
    VCLReport1: TVCLReport;
    ClientDataSet1: TClientDataSet;
    DataSetProvider2: TDataSetProvider;
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
    sqlDmensCODCLIENTE: TIntegerField;
    sqlDmensRA: TStringField;
    sqlDmensRAZAOSOCIAL: TStringField;
    sqlDmensCPF_SOCIO: TStringField;
    sqlDmensVAL: TFloatField;
    sqlDmensFAIXA: TIntegerField;
    sqlDmensNOMECLIENTE: TStringField;
    sqlDmensMES_VCTO: TIntegerField;
    sqlDmensMES_PAGTO: TIntegerField;
    sqlDmensVLR_PAGO_MES: TFloatField;
    sqlDmensVLR_MENSAL: TFloatField;
    sqlDmensCODMOVIMENTO: TIntegerField;
    sqlDmensCODVENDA: TIntegerField;
    cdsDmensCODCLIENTE: TIntegerField;
    cdsDmensRA: TStringField;
    cdsDmensRAZAOSOCIAL: TStringField;
    cdsDmensCPF_SOCIO: TStringField;
    cdsDmensVAL: TFloatField;
    cdsDmensFAIXA: TIntegerField;
    cdsDmensNOMECLIENTE: TStringField;
    cdsDmensMES_VCTO: TIntegerField;
    cdsDmensMES_PAGTO: TIntegerField;
    cdsDmensVLR_PAGO_MES: TFloatField;
    cdsDmensVLR_MENSAL: TFloatField;
    cdsDmensCODMOVIMENTO: TIntegerField;
    cdsDmensCODVENDA: TIntegerField;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn5: TBitBtn;
    dsdmt: TDataSource;
    cdsdmt: TClientDataSet;
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
    DataSource4: TDataSource;
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
    DataSource5: TDataSource;
    BitBtn8: TBitBtn;
    DBGrid5: TDBGrid;
    BitBtn9: TBitBtn;
    sqlREE: TSQLDataSet;
    dspREE: TDataSetProvider;
    cdsREE: TClientDataSet;
    dsREE: TDataSource;
    sqlREERAZAOSOCIAL: TStringField;
    sqlREENOMECLIENTE: TStringField;
    sqlREECOD_CLIENTE: TIntegerField;
    sqlREEREEMBOLSO: TFloatField;
    sqlREEVALOR: TFloatField;
    cdsREERAZAOSOCIAL: TStringField;
    cdsREENOMECLIENTE: TStringField;
    cdsREECOD_CLIENTE: TIntegerField;
    cdsREEREEMBOLSO: TFloatField;
    cdsREEVALOR: TFloatField;
    cdsTR: TClientDataSet;
    dspTR: TDataSetProvider;
    sqlTR: TSQLDataSet;
    cdsBR: TClientDataSet;
    dspBR: TDataSetProvider;
    sqlBR: TSQLDataSet;
    Checkpdf: TCheckBox;
    sqlTRRAZAOSOCIAL: TStringField;
    cdsTRRAZAOSOCIAL: TStringField;
    sqlTRRA: TStringField;
    cdsTRRA: TStringField;
    BitBtn10: TBitBtn;
    cdsVs: TClientDataSet;
    dspVs: TDataSetProvider;
    sqlVs: TSQLDataSet;
    BitBtn11: TBitBtn;
    cdsEX: TClientDataSet;
    DataSetProvider4: TDataSetProvider;
    SQLDataSet4: TSQLDataSet;
    SQLDataSet4CODCLIENTE: TIntegerField;
    SQLDataSet4RA: TStringField;
    SQLDataSet4RAZAOSOCIAL: TStringField;
    SQLDataSet4CPF: TStringField;
    SQLDataSet4NOMECLIENTE: TStringField;
    SQLDataSet4VLR_MENSAL: TFloatField;
    SQLDataSet4CLIR: TIntegerField;
    SQLDataSet4NOMEFORNECEDORR: TStringField;
    SQLDataSet4TIPOFIRMA: TStringField;
    SQLDataSet4CNPJR: TStringField;
    SQLDataSet4NOMER: TStringField;
    SQLDataSet4VALORR: TFloatField;
    SQLDataSet4VALORRN: TFloatField;
    SQLDataSet4VALORRP: TFloatField;
    SQLDataSet4VALOR_TOTAL: TFloatField;
    SQLDataSet4CLIRP: TIntegerField;
    SQLDataSet4NOMERP: TStringField;
    SQLDataSet4VALORRP1: TFloatField;
    SQLDataSet4VALOR_RECIBO: TFloatField;
    cdsEXCODCLIENTE: TIntegerField;
    cdsEXRA: TStringField;
    cdsEXRAZAOSOCIAL: TStringField;
    cdsEXCPF: TStringField;
    cdsEXNOMECLIENTE: TStringField;
    cdsEXVLR_MENSAL: TFloatField;
    cdsEXCLIR: TIntegerField;
    cdsEXNOMEFORNECEDORR: TStringField;
    cdsEXTIPOFIRMA: TStringField;
    cdsEXCNPJR: TStringField;
    cdsEXNOMER: TStringField;
    cdsEXVALORR: TFloatField;
    cdsEXVALORRN: TFloatField;
    cdsEXVALORRP: TFloatField;
    cdsEXVALOR_TOTAL: TFloatField;
    cdsEXCLIRP: TIntegerField;
    cdsEXNOMERP: TStringField;
    cdsEXVALORRP1: TFloatField;
    cdsEXVALOR_RECIBO: TFloatField;
    BitBtn12: TBitBtn;
    Memo1: TMemo;
    BitBtn13: TBitBtn;
    sql14: TSQLDataSet;
    dsp14: TDataSetProvider;
    cds14: TClientDataSet;
    StringField3: TStringField;
    StringField4: TStringField;
    sql14RAZAOSOCIAL: TStringField;
    sql14RA: TStringField;
    sql14COMPLEMENTO: TStringField;
    sqlBRPRECO: TFloatField;
    sqlBRPAGO: TFloatField;
    sqlBRPR: TFloatField;
    sqlBRREEMBOLSO: TFloatField;
    sqlBRCONTROLE: TSmallintField;
    sqlBRCOD_COMISSAO: TIntegerField;
    sqlBRNOMEFORNECEDOR: TStringField;
    sqlBRRAZAOSOCIAL: TStringField;
    sqlBRTIPOFIRMA: TIntegerField;
    sqlBRCNPJ: TStringField;
    sqlBRVALORUNITARIOATUAL: TFloatField;
    sqlBRPRECOCUSTO: TFloatField;
    sqlBRNOMECLIENTE: TStringField;
    sqlBRCLI_CPF: TStringField;
    sqlBRRA: TStringField;
    sqlBRCOMPLEMENTO: TStringField;
    cdsBRPRECO: TFloatField;
    cdsBRPAGO: TFloatField;
    cdsBRPR: TFloatField;
    cdsBRREEMBOLSO: TFloatField;
    cdsBRCONTROLE: TSmallintField;
    cdsBRCOD_COMISSAO: TIntegerField;
    cdsBRNOMEFORNECEDOR: TStringField;
    cdsBRRAZAOSOCIAL: TStringField;
    cdsBRTIPOFIRMA: TIntegerField;
    cdsBRCNPJ: TStringField;
    cdsBRVALORUNITARIOATUAL: TFloatField;
    cdsBRPRECOCUSTO: TFloatField;
    cdsBRNOMECLIENTE: TStringField;
    cdsBRCLI_CPF: TStringField;
    cdsBRRA: TStringField;
    cdsBRCOMPLEMENTO: TStringField;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    sqlVsRAZAOSOCIAL: TStringField;
    sqlVsRA: TStringField;
    sqlVsCOMPLEMENTO: TStringField;
    cdsVsRAZAOSOCIAL: TStringField;
    cdsVsRA: TStringField;
    cdsVsCOMPLEMENTO: TStringField;
    sqlVn: TSQLDataSet;
    dspVn: TDataSetProvider;
    cdsVn: TClientDataSet;
    sqlVnRAZAOSOCIAL: TStringField;
    sqlVnRA: TStringField;
    sqlVnCOMPLEMENTO: TStringField;
    cdsVnRAZAOSOCIAL: TStringField;
    cdsVnRA: TStringField;
    cdsVnCOMPLEMENTO: TStringField;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    sqlTRs: TSQLDataSet;
    dspTRs: TDataSetProvider;
    cdsTRs: TClientDataSet;
    sqlTRsRAZAOSOCIAL: TStringField;
    sqlTRsRA: TStringField;
    sqlTRsCOMPLEMENTO: TStringField;
    cdsTRsRAZAOSOCIAL: TStringField;
    cdsTRsRA: TStringField;
    cdsTRsCOMPLEMENTO: TStringField;
    sqlTRn: TSQLDataSet;
    dspTRn: TDataSetProvider;
    cdsTRn: TClientDataSet;
    sqlTRnRAZAOSOCIAL: TStringField;
    sqlTRnRA: TStringField;
    sqlTRnCOMPLEMENTO: TStringField;
    cdsTRnRAZAOSOCIAL: TStringField;
    cdsTRnRA: TStringField;
    cdsTRnCOMPLEMENTO: TStringField;
    sqlConferirPRECO: TFloatField;
    sqlConferirPAGO: TFloatField;
    sqlConferirPR: TFloatField;
    sqlConferirREEMBOLSO: TFloatField;
    sqlConferirCONTROLE: TSmallintField;
    sqlConferirCOD_COMISSAO: TIntegerField;
    sqlConferirNOMEFORNECEDOR: TStringField;
    sqlConferirTIPOFIRMA: TIntegerField;
    sqlConferirCNPJ: TStringField;
    sqlConferirVALORUNITARIOATUAL: TFloatField;
    sqlConferirPRECOCUSTO: TFloatField;
    sqlConferirRA: TStringField;
    sqlConferirRAZAOSOCIAL: TStringField;
    sqlConferirNOMECLIENTE: TStringField;
    sqlConferirCLI_CPF: TStringField;
    sqlConferirSITUACAOESCOLAR: TStringField;
    sqlConferirSEXO: TStringField;
    sqlConferirDATANASC: TDateField;
    cdsConferirPRECO: TFloatField;
    cdsConferirPAGO: TFloatField;
    cdsConferirPR: TFloatField;
    cdsConferirREEMBOLSO: TFloatField;
    cdsConferirCONTROLE: TSmallintField;
    cdsConferirCOD_COMISSAO: TIntegerField;
    cdsConferirNOMEFORNECEDOR: TStringField;
    cdsConferirTIPOFIRMA: TIntegerField;
    cdsConferirCNPJ: TStringField;
    cdsConferirVALORUNITARIOATUAL: TFloatField;
    cdsConferirPRECOCUSTO: TFloatField;
    cdsConferirRA: TStringField;
    cdsConferirRAZAOSOCIAL: TStringField;
    cdsConferirNOMECLIENTE: TStringField;
    cdsConferirCLI_CPF: TStringField;
    cdsConferirSITUACAOESCOLAR: TStringField;
    cdsConferirSEXO: TStringField;
    cdsConferirDATANASC: TDateField;
    cdsClienteBuscaRAZAOSOCIAL: TStringField;
    cdsClienteBuscaRA: TStringField;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    procedure edClienteExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure bt_relDmedClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   sqlR : String ;
  end;

var
  fGerar_Dados: TfGerar_Dados;

implementation

uses UDm, UDmSaude;

{$R *.dfm}

procedure TfGerar_Dados.edClienteExit(Sender: TObject);
begin
  edCodCliente.Text := IntToStr(cdsClienteBuscaRA.asInteger);
//  Edit1.Text := IntToStr(cdsClienteBuscaCODCLIENTE.asInteger);
end;

procedure TfGerar_Dados.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfGerar_Dados.FormShow(Sender: TObject);
begin
    cdsClienteBusca.Open;
  //  edCliente.Text := '';
  //  edCodCliente.Text := '';
end;

procedure TfGerar_Dados.BitBtn2Click(Sender: TObject);
begin
   if cdsConferir.Active then
    cdsConferir.Close;
sqlR := 'select  sum(preco)as preco , sum(pago) as pago , sum(pr) as pr ,sum(reembolso) as reembolso, controle , ' +
  ' cod_comissao ,nomefornecedor,razaosocial , tipofirma , cnpj , sum(valorunitarioatual)as valorunitarioatual , ' +
  ' sum(precocusto)as precocusto , nomecliente , cli_cpf ,ra ,situacaoescolar , sexo ,  datanasc' +
  ' FROM D_2012(';


   sqlR := sqlR + QuotedStr(DBEdit1.Text) + ',';

     // Data Recebimento
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ')';

   sqlR := sqlR + ' group by  ra ,razaosocial, controle , cod_comissao,  nomefornecedor,  tipofirma ,  cnpj , ' +
                  ' valorunitarioatual,  nomecliente, cli_cpf , situacaoescolar , sexo ,  datanasc order by ra ,nomecliente,3 DESC ';

  // sqlR := sqlR + 'order by nomecliente1' ;

   cdsConferir.CommandText := sqlR ;
   cdsConferir.Open;

end;

procedure TfGerar_Dados.BitBtn3Click(Sender: TObject);
 var TD: TTransactionDesc;
begin

 cdsConferir.Open;

  while not (cdsConferir.Eof) do
  begin
    dm.sqlsisAdimin.StartTransaction(TD);
    DecimalSeparator := '.';

                                       // tabela D_2015D 
    sqlR  := ' INSERT INTO D_2015D( preco ,pago,pr , reembolso , controle ,  cod_comissao , ' +
    'nomefornecedor ,razaosocial ,tipofirma ,cnpj , valorunitarioatual , precocusto  , nomecliente, cli_cpf  , ra  , ' +
    ' situacaoescolar , sexo, datanasc  )'+
          ' VALUES (' +
        //  IntToStr(cdsConferirCODPRODUTO.Value) + ',' +  //
          FloatToStr(cdsConferirPRECO.Value) + ','+  //
          FloatToStr(cdsConferirPAGO.Value) + ','+  //
          FloatToStr(cdsConferirPR.Value) + ','+  //
          FloatToStr(cdsConferirREEMBOLSO.Value) + ','+  //
          IntToStr(cdsConferirCONTROLE.Value) + ','+  //
      //    IntToStr(cdsConferirCODRECEBIMENTO.Value) + ','+  //
          IntToStr(cdsConferirCOD_COMISSAO.Value) + ','+  //
          QuotedStr(cdsConferirNOMEFORNECEDOR.AsString) + ','+  //
          QuotedStr(cdsConferirRAZAOSOCIAL.AsString) + ','+  //
          IntToStr(cdsConferirTIPOFIRMA.Value) + ','+  //
          QuotedStr(cdsConferirCNPJ.AsString) + ','+  //
          FloatToStr(cdsConferirVALORUNITARIOATUAL.Value) + ','+  //
          FloatToStr(cdsConferirPRECOCUSTO.Value) + ','+  //
          QuotedStr(cdsConferirNOMECLIENTE.AsString) + ','+  //
          QuotedStr(cdsConferirCLI_CPF.AsString) + ','+  //
          QuotedStr(cdsConferirRA.AsString) + ','+  //
          QuotedStr(cdsConferirSITUACAOESCOLAR.AsString) + ','+
          QuotedStr(cdsConferirSEXO.AsString) + ','+
          QuotedStr(FormatDateTime('mm/dd/yyyy', cdsConferirDATANASC.Value)) +

         ')';
    dm.sqlsisAdimin.ExecuteDirect(sqlR);
    Memo1.Lines.Add(sqlR);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
    cdsConferir.Next;
  end;
end;

procedure TfGerar_Dados.BitBtn4Click(Sender: TObject);
 var TD: TTransactionDesc;
begin

  if cdsDmens.Active then
    cdsDmens.Close;
  cdsDmens.Params[0].AsString := trim(DBEdit1.Text);
  cdsDmens.Open;

  while not (cdsDmens.Eof) do
  begin
    dm.sqlsisAdimin.StartTransaction(TD);
    DecimalSeparator := '.';

    sqlR  := ' INSERT INTO Dmed_Mensalidade (codcliente ,cpf, ra, razaosocial, val, faixa, nomecliente, mes_vcto,' +
          '  mes_pagto ,vlr_pago_mes,vlr_mensal, codmovimento, codvenda )'+
          ' VALUES (' +
          IntToStr(cdsDmensCODCLIENTE.Value) + ',' +  //
          QuotedStr(cdsDmensCPF_SOCIO.AsString) + ','+  //
          QuotedStr(cdsDmensRA.AsString) + ','+  //
          QuotedStr(cdsDmensRAZAOSOCIAL.AsString) + ','+  //
          FloatToStr(cdsDmensVAL.Value) + ',' +
          IntToStr(cdsDmensFAIXA.AsInteger) + ','+  //
          QuotedStr(cdsDmensNOMECLIENTE.AsString) + ','+  //
          IntToStr(cdsDmensMES_VCTO.AsInteger) + ','+  //
          IntToStr(cdsDmensMES_PAGTO.AsInteger) + ','+  //
          FloatToStr(cdsDmensVLR_PAGO_MES.Value) + ',' +
          FloatToStr(cdsDmensVLR_MENSAL.Value) + ',' +
          QuotedStr(cdsDmensCODMOVIMENTO.AsString) + ','+  //
          QuotedStr(cdsDmensCODVENDA.AsString) +

         ')';
    dm.sqlsisAdimin.ExecuteDirect(sqlR);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
    cdsDmens.Next;
  end;

end;

procedure TfGerar_Dados.bt_relDmedClick(Sender: TObject);
var TD: TTransactionDesc;
    ra , nome :TRpLabel;
begin
 {
  cdsV.Open;
  while not (cdsV.Eof) do
  begin

   if (cdsBR.Active) then
    cdsBR.Close;
   sqlR := 'select  sum(preco)as preco , sum(pago) as pago , sum(pr) as pr ,sum(reembolso) as reembolso, controle ,  cod_comissao ,' +
    'nomefornecedor,razaosocial , tipofirma , cnpj , sum(valorunitarioatual) as valorunitarioatual ,sum(precocusto)as precocusto , nomecliente , cli_cpf ,ra ,complemento '+
    'from D_2012(';
   sqlR := sqlR + QuotedStr(cdsVRAZAOSOCIAL.AsString) + ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ')';

   sqlR := sqlR +'group by  ra ,razaosocial, controle , cod_comissao,  nomefornecedor,  tipofirma ,  cnpj ,  valorunitarioatual,  nomecliente, cli_cpf ,complemento ' +
   ' order by ra ,nomecliente,3 DESC ';

   cdsBR.CommandText := sqlR ;
   cdsBR.Open;


   VCLReport1.FileName := str_relatorio + 'D_2012D.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;

   ra:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel15'));
   nome:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));

   if (medta5.Text <> '') then
   begin
     ra.Text := cdsVRA.AsString;
     nome.Text := cdsVRAZAOSOCIAL.AsString ;
   end;

   IF(Checkpdf.Checked = TRUE) THEN
   BEGIN
    VCLReport1.SaveToPDF('C:\HOME\DMED_2013_VAREJAO\' + cdsVRA.Value +'V_DMED.pdf');
   END ELSE
   VCLReport1.Execute;
   VCLReport1.Title := cdsVRA.Value ;
 }
   ////


{       /////////////
      dm.sqlsisAdimin.StartTransaction(TD);
      DecimalSeparator := '.';



 sqlR  := ' INSERT INTO D_2012TABLEA (preco , pago , pr , ' +
    'reembolso, controle ,  cod_comissao ,' +
    'nomefornecedor,razaosocial , tipofirma , cnpj , valorunitarioatual , ' +
    'precocusto , nomecliente , cli_cpf ,ra ,complemento )'+

          ' VALUES (' +

          FloatToStr(cdsBRPRECO.Value) + ','+  //
          FloatToStr(cdsBRPAGO.Value) + ','+  //
          FloatToStr(cdsBRPR.Value) + ','+  //
          FloatToStr(cdsBRREEMBOLSO.Value) + ','+  //
          IntToStr(cdsBRCONTROLE.Value) + ','+  //
          IntToStr(cdsBRCOD_COMISSAO.Value) + ','+  //
          QuotedStr(cdsBRNOMEFORNECEDOR.AsString) + ','+  //
          QuotedStr(cdsBRRAZAOSOCIAL.AsString) + ','+  //
          IntToStr(cdsBRTIPOFIRMA.Value) + ','+  //
          QuotedStr(cdsBRCNPJ.AsString) + ','+  //
          FloatToStr(cdsBRVALORUNITARIOATUAL.Value) + ','+  //
          FloatToStr(cdsBRPRECOCUSTO.Value) + ','+  //
          QuotedStr(cdsBRNOMECLIENTE.AsString) + ','+  //
          QuotedStr(cdsBRCLI_CPF.AsString) + ','+  //
          QuotedStr(cdsBRRA.AsString) + ','+  //
       //   QuotedStr(cdsConferirRAZAOSOCIAL.AsString) + ','+  //
       //   QuotedStr(cdsConferirCLI_CPF.AsString) + ','+  //
       //   QuotedStr(cdsConferirSITUACAOESCOLAR.AsString) + ','+
       //   QuotedStr(FormatDateTime('mm/dd/yyyy', cdsConferirDATANASC.Value)) + ','+
          QuotedStr(cdsBRCOMPLEMENTO.AsString) +
         ')';
      dm.sqlsisAdimin.ExecuteDirect(sqlR);
      dm.sqlsisAdimin.Commit(TD);
      DecimalSeparator := ',';
 }
   /////////////

   ////

 //  cdsV.Next;

//  end;




end;

procedure TfGerar_Dados.BitBtn6Click(Sender: TObject);
 var TD: TTransactionDesc;
     sqlR : string;
begin

  cdsClienteBusca.Open;
  while not (cdsClienteBusca.Eof) do
  begin

  if(cdsConferir.Active) then
    cdsConferir.Close;

   sqlR := 'select  sum(preco)as preco , sum(pago) as pago , sum(pr) as pr ,sum(reembolso) as reembolso, controle , ' +
  ' cod_comissao ,nomefornecedor,razaosocial , tipofirma , cnpj , sum(valorunitarioatual)as valorunitarioatual , ' +
  ' sum(precocusto)as precocusto , nomecliente , cli_cpf ,ra ,situacaoescolar , sexo ,  datanasc' +
  ' FROM D_2012(';


   sqlR := sqlR + QuotedStr(DBEdit1.Text) + ',';

     // Data Recebimento
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ')';

   sqlR := sqlR + ' group by  ra ,razaosocial, controle , cod_comissao,  nomefornecedor,  tipofirma ,  cnpj , ' +
                  ' valorunitarioatual,  nomecliente, cli_cpf , situacaoescolar , sexo ,  datanasc order by ra ,nomecliente,3 DESC ';

  // sqlR := sqlR + 'order by nomecliente1' ;

   cdsConferir.CommandText := sqlR ;



  {
  cdsConferir.Params[0].AsString := cdsClienteBuscaRAZAOSOCIAL.AsString;
  cdsConferir.Params[1].AsDate := StrToDate(medta5.Text);
  cdsConferir.Params[2].AsDate := StrToDate(medta6.Text);
  }
  cdsConferir.Open;


    while not (cdsConferir.Eof) do
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      DecimalSeparator := '.';

    sqlR  := ' INSERT INTO D_2015D( preco ,pago,pr , reembolso , controle ,  cod_comissao , ' +
    'nomefornecedor ,razaosocial ,tipofirma ,cnpj , valorunitarioatual , precocusto  , nomecliente, cli_cpf  , ra  , ' +
    ' situacaoescolar , sexo, datanasc  )'+
          ' VALUES (' +
        //  IntToStr(cdsConferirCODPRODUTO.Value) + ',' +  //
          FloatToStr(cdsConferirPRECO.Value) + ','+  //
          FloatToStr(cdsConferirPAGO.Value) + ','+  //
          FloatToStr(cdsConferirPR.Value) + ','+  //
          FloatToStr(cdsConferirREEMBOLSO.Value) + ','+  //
          IntToStr(cdsConferirCONTROLE.Value) + ','+  //
      //    IntToStr(cdsConferirCODRECEBIMENTO.Value) + ','+  //
          IntToStr(cdsConferirCOD_COMISSAO.Value) + ','+  //
          QuotedStr(cdsConferirNOMEFORNECEDOR.AsString) + ','+  //
          QuotedStr(cdsConferirRAZAOSOCIAL.AsString) + ','+  //
          IntToStr(cdsConferirTIPOFIRMA.Value) + ','+  //
          QuotedStr(cdsConferirCNPJ.AsString) + ','+  //
          FloatToStr(cdsConferirVALORUNITARIOATUAL.Value) + ','+  //
          FloatToStr(cdsConferirPRECOCUSTO.Value) + ','+  //
          QuotedStr(cdsConferirNOMECLIENTE.AsString) + ','+  //
          QuotedStr(cdsConferirCLI_CPF.AsString) + ','+  //
          QuotedStr(cdsConferirRA.AsString) + ','+  //
          QuotedStr(cdsConferirSITUACAOESCOLAR.AsString) + ','+
          QuotedStr(cdsConferirSEXO.AsString) + ','+
          QuotedStr(FormatDateTime('mm/dd/yyyy', cdsConferirDATANASC.Value)) +

         ')';

      dm.sqlsisAdimin.ExecuteDirect(sqlR);
      dm.sqlsisAdimin.Commit(TD);
      DecimalSeparator := ',';
      cdsConferir.Next;
    end;

  cdsClienteBusca.Next;
  end;
    MessageDlg('Importação Finalizada', mtInformation, [mbOK], 0);
  end;
procedure TfGerar_Dados.BitBtn7Click(Sender: TObject);
 var TD: TTransactionDesc;
begin

  cdsClienteBusca.Open;
  while not (cdsClienteBusca.Eof) do
  begin

  if cdsDmens.Active then
    cdsDmens.Close;
  cdsDmens.Params[0].AsString := cdsClienteBuscaRAZAOSOCIAL.AsString;
  cdsDmens.Open;

  while not (cdsDmens.Eof) do
  begin
    dm.sqlsisAdimin.StartTransaction(TD);
    DecimalSeparator := '.';

    sqlR  := ' INSERT INTO Dmed_Mensalidade (codcliente ,cpf, ra, razaosocial, val, faixa, nomecliente, mes_vcto,' +
          '  mes_pagto ,vlr_pago_mes,vlr_mensal, codmovimento, codvenda )'+
          ' VALUES (' +
          IntToStr(cdsDmensCODCLIENTE.Value) + ',' +  //
          QuotedStr(cdsDmensCPF_SOCIO.AsString) + ','+  //
          QuotedStr(cdsDmensRA.AsString) + ','+  //
          QuotedStr(cdsDmensRAZAOSOCIAL.AsString) + ','+  //
          FloatToStr(cdsDmensVAL.Value) + ',' +
          IntToStr(cdsDmensFAIXA.AsInteger) + ','+  //
          QuotedStr(cdsDmensNOMECLIENTE.AsString) + ','+  //
          IntToStr(cdsDmensMES_VCTO.AsInteger) + ','+  //
          IntToStr(cdsDmensMES_PAGTO.AsInteger) + ','+  //
          FloatToStr(cdsDmensVLR_PAGO_MES.Value) + ',' +
          FloatToStr(cdsDmensVLR_MENSAL.Value) + ',' +
          QuotedStr(cdsDmensCODMOVIMENTO.AsString) + ','+  //
          QuotedStr(cdsDmensCODVENDA.AsString) +

         ')';
    dm.sqlsisAdimin.ExecuteDirect(sqlR);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
    cdsDmens.Next;
  end;
 cdsClienteBusca.Next;
end;
end;
procedure TfGerar_Dados.BitBtn5Click(Sender: TObject);
begin
   cdsdmt.Close;
   if (cdsdmt.Active) then
    cdsdmt.Close;
   cdsdmt.Params[0].AsString := DBEdit1.Text;
   sqlR := 'SELECT * FROM DMED_MENSALIDADE where razaosocial = :titular';
  // sqlR := sqlR + QuotedStr() ;

   cdsdmt.CommandText := sqlR ;
   cdsdmt.Open;
end;

procedure TfGerar_Dados.BitBtn8Click(Sender: TObject);
begin
  cdsdmt.ApplyUpdates(0);
end;

procedure TfGerar_Dados.BitBtn9Click(Sender: TObject);
 var TD: TTransactionDesc;
begin

  cdsClienteBusca.Open;
  while not (cdsClienteBusca.Eof) do
  begin

  if(cdsREE.Active) then
    cdsREE.Close;
  cdsREE.Params[0].AsString := cdsClienteBuscaRAZAOSOCIAL.AsString;
  cdsREE.Open;


    while not (cdsREE.Eof) do
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      DecimalSeparator := '.';

      sqlR  := ' INSERT INTO LAN_DMED (COD_CLIENTE,' +
            ' NOMECLIENTE1,PRECO ,RAZAOSOCIAL)'+
            ' VALUES (' +
            IntToStr(cdsREECOD_CLIENTE.Value) + ',' +  //
            QuotedStr(cdsREENOMECLIENTE.AsString) + ','+  //
            FloatToStr(cdsREEREEMBOLSO.Value) + ','+
            QuotedStr(cdsREERAZAOSOCIAL.AsString) +
           ')';
      dm.sqlsisAdimin.ExecuteDirect(sqlR);
      dm.sqlsisAdimin.Commit(TD);
      DecimalSeparator := ',';
      cdsREE.Next;
    end;

  cdsClienteBusca.Next;
  end;

end;

procedure TfGerar_Dados.BitBtn10Click(Sender: TObject);
var    ra , nome :TRpLabel;
begin
  cdsTR.Open;
  while not (cdsTR.Eof) do
  begin

   if (cdsBR.Active) then
    cdsBR.Close;
   sqlR := 'select  sum(preco)as preco , sum(pago) as pago , sum(pr) as pr ,sum(reembolso) as reembolso, controle ,  cod_comissao ,' +
    ' nomefornecedor,razaosocial , tipofirma , cnpj , sum(valorunitarioatual) as valorunitarioatual ,sum(precocusto)as precocusto , ' +
    ' nomecliente , cli_cpf ,ra ,complemento , SITUACAOESCOLAR , SEXO , datanasc  ' +
    'from D_2012(';
   sqlR := sqlR + QuotedStr(cdsTRRAZAOSOCIAL.AsString) + ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ')';

   sqlR := sqlR +'group by  ra ,razaosocial, controle , cod_comissao,  nomefornecedor,  tipofirma ,  cnpj ,  valorunitarioatual, ' +
   ' nomecliente, cli_cpf ,complemento , SITUACAOESCOLAR , SEXO , datanasc ' +
   ' order by ra ,nomecliente,3 DESC ';

   cdsBR.CommandText := sqlR ;
   cdsBR.Open;

   VCLReport1.FileName := str_relatorio + 'D_2012D.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;

   ra:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel15'));
   nome:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));

   if (medta5.Text <> '') then
   begin
     ra.Text := cdsTRRA.AsString;
     nome.Text := cdsTRRAZAOSOCIAL.AsString ;
   end;

   VCLReport1.FileName := str_relatorio + 'D_2012D.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;



   IF(Checkpdf.Checked = TRUE) THEN
   BEGIN
    VCLReport1.SaveToPDF('C:\HOME\DMED_2014\' + cdsTRRA.Value +'DMED.pdf');
   END ELSE            VCLReport1.Execute;
   VCLReport1.Title := cdsTRRA.Value ;





   cdsTR.Next;

  end;
  MessageDlg('Gerado com Sucesso', mtInformation, [mbOK], 0);

{  cdsTR.Open;
  while not (cdsTR.Eof) do
  begin

   if (cdsBR.Active) then
    cdsBR.Close;
   sqlR := 'SELECT * FROM REL_DMED_11(';
   sqlR := sqlR + QuotedStr(cdsTRRAZAOSOCIAL.AsString) + ')';

   cdsBR.CommandText := sqlR ;
   cdsBR.Open;

   VCLReport1.FileName := str_relatorio + 'dmed_2011.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;

   IF(Checkpdf.Checked = TRUE) THEN
   BEGIN
    VCLReport1.SaveToPDF('C:\teste_rel_dmed\' + cdsVRA.Value +'V_DMED.pdf');
   END ELSE
   VCLReport1.Execute;
 //  VCLReport1.Title := cdsTRRA.Value ;

   cdsTR.Next;

  end;
 }
end;

procedure TfGerar_Dados.BitBtn11Click(Sender: TObject);
 var TD: TTransactionDesc;
begin

  cdsBR.Open;
  while not (cdsBR.Eof) do
  begin

    if(cdsEX.Active) then
    cdsEX.Close;
  //  cdsEx.Params[0].AsString := cdsBRRAZAOSOCIAL.AsString;
    cdsEX.Open;

    while not(cdsEX.Eof) do
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      DecimalSeparator := '.';

      sqlR := 'INSERT INTO EXPORTA_DMED (CODCLIENTE,RA,RAZAOSOCIAL,CPF,NOMECLIENTE,TIPO_DEPENDENTE,' +
            'VLR_MENSAL,CLIR,NOMEFORNECEDORR,TIPOFIRMA,CNPJR,NOMER,'+
            'VALORR ,VALORRN,VALORRP,VALOR_TOTAL,CLIRP,NOMERP,VALORRP1,VALOR_RECIBO )' +
            ' VALUES (' +
            IntToStr(cdsEXCODCLIENTE.Value) + ',' +  //
            QuotedStr(cdsEXRA.AsString) + ','+  //
            QuotedStr(cdsEXRAZAOSOCIAL.AsString) + ','+  //
            QuotedStr(cdsEXCPF.AsString) + ','+  //
            QuotedStr(cdsEXNOMECLIENTE.AsString) + ','+  //
           // QuotedStr(cdsEXTIPO_DEPENDENTE.AsString) + ','+  //
            QuotedStr('04') + ','+
            FloatToStr(cdsEXVLR_MENSAL.Value) + ','+
            IntToStr(cdsEXCLIR.Value) + ','+  //
            QuotedStr(cdsEXNOMEFORNECEDORR.AsString) + ','+  //
            QuotedStr(cdsEXTIPOFIRMA.AsString) + ','+  //
            QuotedStr(cdsEXCNPJR.AsString) + ','+  //
            QuotedStr(cdsEXNOMER.AsString) + ','+  //
            FloatToStr(cdsEXVALORR.Value) + ','+
            FloatToStr(cdsEXVALORRN.Value) + ','+
            FloatToStr(cdsEXVALORRP.Value) + ','+
            FloatToStr(cdsEXVALOR_TOTAL.Value) + ','+
            QuotedStr(cdsEXCLIRP.AsString) + ','+  //
            QuotedStr(cdsEXNOMERP.AsString) + ','+
            FloatToStr(cdsEXVALORRP1.Value) + ','+
            FloatToStr(cdsEXVALOR_RECIBO.Value) +
           ')';

      dm.sqlsisAdimin.ExecuteDirect(sqlR);
      dm.sqlsisAdimin.Commit(TD);
      DecimalSeparator := ',';
      cdsEX.Next;
    end;
    cdsBR.Next;
  end;

end;


procedure TfGerar_Dados.BitBtn12Click(Sender: TObject);
 var TD: TTransactionDesc;
begin

    if(cdsEX.Active) then
    cdsEX.Close;
    cdsEx.Params[0].AsString := trim(DBEdit1.Text);
    cdsEX.Open;

    while not(cdsEX.Eof) do
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      DecimalSeparator := '.';

      sqlR := 'INSERT INTO EXPORTA_DMED (CODCLIENTE,RA,RAZAOSOCIAL,CPF,NOMECLIENTE,TIPO_DEPENDENTE,' +
            'VLR_MENSAL,CLIR,NOMEFORNECEDORR,TIPOFIRMA,CNPJR,NOMER,'+
            'VALORR ,VALORRN,VALORRP,VALOR_TOTAL,CLIRP,NOMERP,VALORRP1,VALOR_RECIBO )' +
            ' VALUES (' +
            IntToStr(cdsEXCODCLIENTE.Value) + ',' +  //
            QuotedStr(cdsEXRA.AsString) + ','+  //
            QuotedStr(cdsEXRAZAOSOCIAL.AsString) + ','+  //
            QuotedStr(cdsEXCPF.AsString) + ','+  //
            QuotedStr(cdsEXNOMECLIENTE.AsString) + ','+  //
           // QuotedStr(cdsEXTIPO_DEPENDENTE.AsString) + ','+  //
            QuotedStr('04') + ','+
            FloatToStr(cdsEXVLR_MENSAL.Value) + ','+
            IntToStr(cdsEXCLIR.Value) + ','+  //
            QuotedStr(cdsEXNOMEFORNECEDORR.AsString) + ','+  //
            QuotedStr(cdsEXTIPOFIRMA.AsString) + ','+  //
            QuotedStr(cdsEXCNPJR.AsString) + ','+  //
            QuotedStr(cdsEXNOMER.AsString) + ','+  //
            FloatToStr(cdsEXVALORR.Value) + ','+
            FloatToStr(cdsEXVALORRN.Value) + ','+
            FloatToStr(cdsEXVALORRP.Value) + ','+
            FloatToStr(cdsEXVALOR_TOTAL.Value) + ','+
            QuotedStr(cdsEXCLIRP.AsString) + ','+  //
            QuotedStr(cdsEXNOMERP.AsString) + ','+
            FloatToStr(cdsEXVALORRP1.Value) + ','+
            FloatToStr(cdsEXVALOR_RECIBO.Value) +
           ')';

      dm.sqlsisAdimin.ExecuteDirect(sqlR);
      dm.sqlsisAdimin.Commit(TD);
      DecimalSeparator := ',';
      cdsEX.Next;
    end;



end;

procedure TfGerar_Dados.BitBtn13Click(Sender: TObject);
 var TD: TTransactionDesc;
begin

{
  cdsV.Open;
  while not (cdsV.Eof) do
  begin

  if(cdsConferir.Active) then
    cdsConferir.Close;
  cdsConferir.Params[0].AsString := cdsClienteBuscaRAZAOSOCIAL.AsString;
  cdsConferir.Params[1].AsDate := StrToDate(medta5.Text);
  cdsConferir.Params[2].AsDate := StrToDate(medta6.Text);
  cdsConferir.Open;


    while not (cdsConferir.Eof) do
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      DecimalSeparator := '.';

    sqlR  := ' INSERT INTO D_2012TABLEA ( codproduto ,preco ,pago,pr , reembolso , controle , codrecebimento , cod_comissao , ' +
    'nomefornecedor ,tipofirma ,cnpj , valorunitarioatual ,  precocusto , ra ,razaosocial , nomecliente , cli_cpf , ' +
    ' situacaoescolar ,  datanasc, sexo  )'+    //
          ' VALUES (' +
          IntToStr(cdsConferirCODPRODUTO.Value) + ',' +  //
          FloatToStr(cdsConferirPRECO.Value) + ','+  //
          FloatToStr(cdsConferirPAGO.Value) + ','+  //
          FloatToStr(cdsConferirPR.Value) + ','+  //
          FloatToStr(cdsConferirREEMBOLSO.Value) + ','+  //
          IntToStr(cdsConferirCONTROLE.Value) + ','+  //
          IntToStr(cdsConferirCODRECEBIMENTO.Value) + ','+  //
          IntToStr(cdsConferirCOD_COMISSAO.Value) + ','+  //
          QuotedStr(cdsConferirNOMEFORNECEDOR.AsString) + ','+  //
          IntToStr(cdsConferirTIPOFIRMA.Value) + ','+  //
          QuotedStr(cdsConferirCNPJ.AsString) + ','+  //
          FloatToStr(cdsConferirVALORUNITARIOATUAL.Value) + ','+  //
          FloatToStr(cdsConferirPRECOCUSTO.Value) + ','+  //
          QuotedStr(cdsConferirRA.AsString) + ','+  //
          QuotedStr(cdsConferirRAZAOSOCIAL.AsString) + ','+  //
          QuotedStr(cdsConferirNOMECLIENTE.AsString) + ','+  //
          QuotedStr(cdsConferirCLI_CPF.AsString) + ','+  //
          QuotedStr(cdsConferirSITUACAOESCOLAR.AsString) + ','+
          QuotedStr(FormatDateTime('mm/dd/yyyy', cdsConferirDATANASC.Value)) + ','+
          QuotedStr(cdsConferirSEXO.AsString) +
         ')';
      dm.sqlsisAdimin.ExecuteDirect(sqlR);
      dm.sqlsisAdimin.Commit(TD);
      DecimalSeparator := ',';
      cdsConferir.Next;
    end;

  cdsClienteBusca.Next;
  end;
  }
end;

procedure TfGerar_Dados.BitBtn14Click(Sender: TObject);
var TD: TTransactionDesc;
    ra , nome :TRpLabel;
begin

  cdsVs.Open;
  while not (cdsVs.Eof) do
  begin

   if (cdsBR.Active) then
    cdsBR.Close;
   sqlR := 'select  sum(preco)as preco , sum(pago) as pago , sum(pr) as pr ,sum(reembolso) as reembolso, controle ,  cod_comissao ,' +
    'nomefornecedor,razaosocial , tipofirma , cnpj , sum(valorunitarioatual) as valorunitarioatual ,sum(precocusto)as precocusto , nomecliente , cli_cpf ,ra ,complemento '+
    'from D_2012(';
   sqlR := sqlR + QuotedStr(cdsVsRAZAOSOCIAL.AsString) + ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ')';

   sqlR := sqlR +'group by  ra ,razaosocial, controle , cod_comissao,  nomefornecedor,  tipofirma ,  cnpj ,  valorunitarioatual,  nomecliente, cli_cpf ,complemento ' +
   ' order by ra ,nomecliente,3 DESC ';

   cdsBR.CommandText := sqlR ;
   cdsBR.Open;


   VCLReport1.FileName := str_relatorio + 'D_2012D_MENOR.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;

   ra:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel15'));
   nome:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));

   if (medta5.Text <> '') then
   begin
     ra.Text := cdsVsRA.AsString;
     nome.Text := cdsVsRAZAOSOCIAL.AsString ;
   end;

   IF(Checkpdf.Checked = TRUE) THEN
   BEGIN
   // VCLReport1.SaveToPDF('C:\HOME\DMED_2014_VAREJAO_S\' + cdsVsRA.Value +'V_DMED.pdf');
   VCLReport1.SaveToPDF('C:\HOME\DMED_2014_VAREJAO_S\' + cdsVsRA.Value +'DMED.pdf');
   END ELSE
   VCLReport1.Execute;
   VCLReport1.Title := cdsVsRA.Value ;


   cdsVs.Next;

  end;
 MessageDlg('Gerado com Sucesso', mtInformation, [mbOK], 0);
end;

procedure TfGerar_Dados.BitBtn15Click(Sender: TObject);
var TD: TTransactionDesc;
    ra , nome :TRpLabel;
begin

  cdsVn.Open;
  while not (cdsVn.Eof) do
  begin

   if (cdsBR.Active) then
    cdsBR.Close;
   sqlR := 'select  sum(preco)as preco , sum(pago) as pago , sum(pr) as pr ,sum(reembolso) as reembolso, controle ,  cod_comissao ,' +
    'nomefornecedor,razaosocial , tipofirma , cnpj , sum(valorunitarioatual) as valorunitarioatual ,sum(precocusto)as precocusto , nomecliente , cli_cpf ,ra ,complemento '+
    'from D_2012(';
   sqlR := sqlR + QuotedStr(cdsVnRAZAOSOCIAL.AsString) + ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ')';

   sqlR := sqlR +'group by  ra ,razaosocial, controle , cod_comissao,  nomefornecedor,  tipofirma ,  cnpj ,  valorunitarioatual,  nomecliente, cli_cpf ,complemento ' +
   ' order by ra ,nomecliente,3 DESC ';

   cdsBR.CommandText := sqlR ;
   cdsBR.Open;


   VCLReport1.FileName := str_relatorio + 'D_2012D_MENOR.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;

   ra:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel15'));
   nome:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));

   if (medta5.Text <> '') then
   begin
     ra.Text := cdsVnRA.AsString;
     nome.Text := cdsVnRAZAOSOCIAL.AsString ;
   end;

   IF(Checkpdf.Checked = TRUE) THEN
   BEGIN
   // VCLReport1.SaveToPDF('C:\HOME\DMED_2014_VAREJAO_N\' + cdsVnRA.Value +'V_DMED.pdf');
   VCLReport1.SaveToPDF('C:\HOME\DMED_2014_VAREJAO_N\' + cdsVnRA.Value +'DMED.pdf');
   END ELSE
   VCLReport1.Execute;
   VCLReport1.Title := cdsVnRA.Value ;


   cdsVn.Next;

  end;
    MessageDlg('Gerado com Sucesso', mtInformation, [mbOK], 0);
end;

procedure TfGerar_Dados.BitBtn16Click(Sender: TObject);
var    ra , nome :TRpLabel;
begin
  cdsTRs.Open;
  while not (cdsTRs.Eof) do
  begin

   if (cdsBR.Active) then
    cdsBR.Close;
   sqlR := 'select  sum(preco)as preco , sum(pago) as pago , sum(pr) as pr ,sum(reembolso) as reembolso, controle ,  cod_comissao ,' +
    ' nomefornecedor,razaosocial , tipofirma , cnpj , sum(valorunitarioatual) as valorunitarioatual ,sum(precocusto)as precocusto , ' +
    ' nomecliente , cli_cpf ,ra ,complemento , SITUACAOESCOLAR , SEXO , datanasc  ' +
    'from D_2012(';
   sqlR := sqlR + QuotedStr(cdsTRsRAZAOSOCIAL.AsString) + ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ')';

   sqlR := sqlR +'group by  ra ,razaosocial, controle , cod_comissao,  nomefornecedor,  tipofirma ,  cnpj ,  valorunitarioatual, ' +
   ' nomecliente, cli_cpf ,complemento , SITUACAOESCOLAR , SEXO , datanasc ' +
   ' order by ra ,nomecliente,3 DESC ';

   cdsBR.CommandText := sqlR ;
   cdsBR.Open;

   VCLReport1.FileName := str_relatorio + 'D_2012D_MENOR.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;

   ra:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel15'));
   nome:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));

   if (medta5.Text <> '') then
   begin
     ra.Text := cdsTRsRA.AsString;
     nome.Text := cdsTRsRAZAOSOCIAL.AsString ;
   end;

   VCLReport1.FileName := str_relatorio + 'D_2012D_MENOR.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;



   IF(Checkpdf.Checked = TRUE) THEN
   BEGIN
    VCLReport1.SaveToPDF('C:\HOME\DMED_2014_S\' + cdsTRsRA.Value +'DMED.pdf');
   END ELSE            VCLReport1.Execute;
   VCLReport1.Title := cdsTRsRA.Value ;
 
   cdsTRs.Next;

  end;
  MessageDlg('Gerado com Sucesso', mtInformation, [mbOK], 0);
end;

procedure TfGerar_Dados.BitBtn17Click(Sender: TObject);
var    ra , nome :TRpLabel;
begin
  cdsTRn.Open;
  while not (cdsTRn.Eof) do
  begin

   if (cdsBR.Active) then
    cdsBR.Close;
   sqlR := 'select  sum(preco)as preco , sum(pago) as pago , sum(pr) as pr ,sum(reembolso) as reembolso, controle ,  cod_comissao ,' +
    ' nomefornecedor,razaosocial , tipofirma , cnpj , sum(valorunitarioatual) as valorunitarioatual ,sum(precocusto)as precocusto , ' +
    ' nomecliente , cli_cpf ,ra ,complemento , SITUACAOESCOLAR , SEXO , datanasc  ' +
    'from D_2012(';
   sqlR := sqlR + QuotedStr(cdsTRnRAZAOSOCIAL.AsString) + ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ')';

   sqlR := sqlR +'group by  ra ,razaosocial, controle , cod_comissao,  nomefornecedor,  tipofirma ,  cnpj ,  valorunitarioatual, ' +
   ' nomecliente, cli_cpf ,complemento , SITUACAOESCOLAR , SEXO , datanasc ' +
   ' order by ra ,nomecliente,3 DESC ';

   cdsBR.CommandText := sqlR ;
   cdsBR.Open;

   VCLReport1.FileName := str_relatorio + 'D_2012D_MENOR.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;

   ra:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel15'));
   nome:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));

   if (medta5.Text <> '') then
   begin
     ra.Text := cdsTRnRA.AsString;
     nome.Text := cdsTRnRAZAOSOCIAL.AsString ;
   end;

   VCLReport1.FileName := str_relatorio + 'D_2012D_MENOR.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;



   IF(Checkpdf.Checked = TRUE) THEN
   BEGIN
    VCLReport1.SaveToPDF('C:\HOME\DMED_2014_N\' + cdsTRnRA.Value +'DMED.pdf');
   END ELSE            VCLReport1.Execute;
   VCLReport1.Title := cdsTRnRA.Value ;

   cdsTRn.Next;

  end;
  MessageDlg('Gerado com Sucesso', mtInformation, [mbOK], 0);
end;

procedure TfGerar_Dados.BitBtn18Click(Sender: TObject);
var
  deleta : String;
  TD: TTransactionDesc;
begin
  deleta := 'Delete from D_2015D ';
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dm.sqlsisAdimin.ExecuteDirect(deleta);
    dm.sqlsisAdimin.Commit(TD);

    MessageDlg('Registros excluído com sucesso.', mtError, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para excluir, exclusão não efetuada.', mtError, [mbOK], 0);
  end;
end;

procedure TfGerar_Dados.BitBtn19Click(Sender: TObject);
var ra , nome :TRpLabel;
begin

   VCLReport1.FileName := str_relatorio + 'D_2012D.rep';

   VCLReport1.Title := str_relatorio + 'D_2012D.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;

 //  ra:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel15'));
 //  nome:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));

 //  if (edCliente.text <> '') then
 //  begin
 //    ra.Text := Edit11.Text;
 //    nome.Text := edCliente.text ;
 //  end;

//  VCLReport1.SaveToPDF('C:\home\rel_dmed_2012\' + Edit11.Text +'C_DMED.pdf');

   ra:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel15'));
   nome:= TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));
  
   VCLReport1.Execute;
end;

end.


