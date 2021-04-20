unit uGerar_DadosS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  Mask, JvExStdCtrls, JvEdit, JvDBSearchEdit, DBCtrls, Grids, DBGrids,DBXpress,
  rpcompobase, rpvclreport;

type
  TfGerar_DadosS = class(TForm)
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
    DBGrid4: TDBGrid;
    BitBtn8: TBitBtn;
    cdsClienteBuscaCODCLIENTE: TIntegerField;
    cdsClienteBuscaNOMECLIENTE: TStringField;
    cdsClienteBuscaRAZAOSOCIAL: TStringField;
    cdsClienteBuscaRA: TStringField;
    cdsClienteBuscaCNPJ: TStringField;
    cdsClienteBuscaDATARESC: TDateField;
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
    sqlBRCODCLIENTE: TIntegerField;
    sqlBRRA: TStringField;
    sqlBRRAZAOSOCIAL: TStringField;
    sqlBRCPF: TStringField;
    cdsBRCODCLIENTE: TIntegerField;
    cdsBRRA: TStringField;
    cdsBRRAZAOSOCIAL: TStringField;
    cdsBRCPF: TStringField;
    Checkpdf: TCheckBox;
    sqlTRRAZAOSOCIAL: TStringField;
    cdsTRRAZAOSOCIAL: TStringField;
    sqlTRRA: TStringField;
    cdsTRRA: TStringField;
    BitBtn10: TBitBtn;
    cdsV: TClientDataSet;
    DataSetProvider3: TDataSetProvider;
    SQLDataSet3: TSQLDataSet;
    SQLDataSet3RA: TStringField;
    SQLDataSet3RAZAOSOCIAL: TStringField;
    cdsVRA: TStringField;
    cdsVRAZAOSOCIAL: TStringField;
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
    cdsConferirCOD_CLIENTE: TSmallintField;
    cdsConferirCOD_FORNECEDOR: TIntegerField;
    cdsConferirNOMEFORNECEDOR: TStringField;
    cdsConferirCNPJ: TStringField;
    cdsConferirTIPOFIRMA: TSmallintField;
    cdsConferirDESCRICAO: TStringField;
    cdsConferirCODPRO: TStringField;
    cdsConferirPRODUTO: TStringField;
    cdsConferirNUMEROBORDERO: TIntegerField;
    cdsConferirCODVENDA1: TIntegerField;
    cdsConferirRA1: TStringField;
    cdsConferirNOMECLIENTE1: TStringField;
    cdsConferirRAZAOSOCIAL: TStringField;
    cdsConferirPRECO: TFloatField;
    cdsConferirVALOR_RECIBO: TFloatField;
    sqlConferirCOD_CLIENTE: TSmallintField;
    sqlConferirCOD_FORNECEDOR: TIntegerField;
    sqlConferirNOMEFORNECEDOR: TStringField;
    sqlConferirCNPJ: TStringField;
    sqlConferirTIPOFIRMA: TSmallintField;
    sqlConferirDESCRICAO: TStringField;
    sqlConferirCODPRO: TStringField;
    sqlConferirPRODUTO: TStringField;
    sqlConferirNUMEROBORDERO: TIntegerField;
    sqlConferirCODVENDA1: TIntegerField;
    sqlConferirRA1: TStringField;
    sqlConferirNOMECLIENTE1: TStringField;
    sqlConferirRAZAOSOCIAL: TStringField;
    sqlConferirPRECO: TFloatField;
    sqlConferirVALOR_RECIBO: TFloatField;
    sqlDmensDATANASC: TDateField;
    sqlDmensTIPO_DEP: TStringField;
    cdsDmensDATANASC: TDateField;
    cdsDmensTIPO_DEP: TStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
   sqlR : String ;
  end;

var
  fGerar_DadosS: TfGerar_DadosS;

implementation

uses UDm, UDmSaude;

{$R *.dfm}

procedure TfGerar_DadosS.edClienteExit(Sender: TObject);
begin
  edCodCliente.Text := IntToStr(cdsClienteBuscaRA.asInteger);
//  Edit1.Text := IntToStr(cdsClienteBuscaCODCLIENTE.asInteger);
end;

procedure TfGerar_DadosS.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfGerar_DadosS.FormShow(Sender: TObject);
begin
    cdsClienteBusca.Open;
    edCliente.Text := '';
    edCodCliente.Text := '';
end;

procedure TfGerar_DadosS.BitBtn2Click(Sender: TObject);
begin
   if cdsConferir.Active then
    cdsConferir.Close;
   sqlR := 'SELECT RA1 ,cod_cliente ,cod_fornecedor,cnpj ,nomefornecedor,tipofirma , descricao ,codpro, produto, numerobordero , ' +
    'codvenda1 , nomecliente1,RAZAOSOCIAL, preco ,valor_recibo ' +
    'FROM Conferir_S(';

   sqlR := sqlR + DBEdit2.Text + ',';

     // Data Recebimento
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta5.Text)))+ ',';
   sqlR := sqlR + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(medta6.Text)))+ ')';

   sqlR := sqlR + 'order by nomecliente1' ;

   cdsConferir.CommandText := sqlR ;
   cdsConferir.Open;

end;

procedure TfGerar_DadosS.BitBtn3Click(Sender: TObject);
 var TD: TTransactionDesc;
begin

 cdsConferir.Open;

  while not (cdsConferir.Eof) do
  begin
    dm.sqlsisAdimin.StartTransaction(TD);
    DecimalSeparator := '.';

    sqlR  := ' INSERT INTO LAN_DMED_S (COD_CLIENTE,COD_FORNECEDOR,NOMEFORNECEDOR,CNPJ,TIPOFIRMA,DESCRICAO,CODPRO,' +
          ' PRODUTO,NUMEROBORDERO,CODVENDA1,NOMECLIENTE1,PRECO,VALOR_RECIBO,RAZAOSOCIAL  )'+
          ' VALUES (' +
          IntToStr(cdsConferirCOD_CLIENTE.Value) + ',' +  //
          IntToStr(cdsConferirCOD_FORNECEDOR.Value) + ','+  //
          QuotedStr(cdsConferirNOMEFORNECEDOR.AsString) + ','+  //
          QuotedStr(cdsConferirCNPJ.AsString) + ','+  //
          IntToStr(cdsConferirTIPOFIRMA.Value) + ','+  //
          QuotedStr(cdsConferirDESCRICAO.AsString) + ','+  //
          IntToStr(cdsConferirCODPRO.AsInteger) + ','+  //
          QuotedStr(cdsConferirPRODUTO.AsString) + ','+  //
          QuotedStr(cdsConferirNUMEROBORDERO.AsString) + ','+  //
          QuotedStr(cdsConferirCODVENDA1.AsString) + ','+  //
          QuotedStr(cdsConferirNOMECLIENTE1.AsString) + ','+  //
          FloatToStr(cdsConferirPRECO.Value) + ','+  //
          FloatToStr(cdsConferirVALOR_RECIBO.Value) + ','+
          QuotedStr(cdsConferirRAZAOSOCIAL.AsString) +
         ')';
    dm.sqlsisAdimin.ExecuteDirect(sqlR);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
    cdsConferir.Next;
  end;
end;

procedure TfGerar_DadosS.BitBtn4Click(Sender: TObject);
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

    sqlR  := ' INSERT INTO Dmed_Mensalidade_S (codcliente ,cpf, ra, razaosocial, val, faixa, nomecliente, mes_vcto,' +
          '  mes_pagto ,vlr_pago_mes,vlr_mensal, codmovimento, codvenda , datanasc ,tipo_dep )'+
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
          QuotedStr(cdsDmensCODVENDA.AsString) + ',' +
          QuotedStr(formatdatetime('mm/dd/yyyy',cdsDmensDATANASC.Value)) + ',' +
          QuotedStr(cdsDmensTIPO_DEP.AsString) +

         ')';
    dm.sqlsisAdimin.ExecuteDirect(sqlR);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
    cdsDmens.Next;
  end;

end;

procedure TfGerar_DadosS.bt_relDmedClick(Sender: TObject);
begin

  cdsV.Open;
  while not (cdsV.Eof) do
  begin

   if (cdsBR.Active) then
    cdsBR.Close;
   sqlR := 'SELECT * FROM REL_DMED_11_S(';
   sqlR := sqlR + QuotedStr(cdsVRAZAOSOCIAL.AsString) + ')';

   cdsBR.CommandText := sqlR ;
   cdsBR.Open;

   VCLReport1.FileName := str_relatorio + 'dmed_2011_S.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;

   IF(Checkpdf.Checked = TRUE) THEN
   BEGIN
    VCLReport1.SaveToPDF('C:\teste_rel_dmed_S\' + cdsVRA.Value +'DMED.pdf');
   END ELSE
   VCLReport1.Execute;
  // VCLReport1.Title := cdsTRRA.Value ;

   cdsV.Next;

  end;




end;

procedure TfGerar_DadosS.BitBtn6Click(Sender: TObject);
 var TD: TTransactionDesc;
begin

  cdsClienteBusca.Open;
  while not (cdsClienteBusca.Eof) do
  begin

  if(cdsConferir.Active) then
    cdsConferir.Close;
  cdsConferir.Params[0].AsString := cdsClienteBuscaCODCLIENTE.AsString;
  cdsConferir.Params[1].AsDate := StrToDate(medta5.Text);
  cdsConferir.Params[2].AsDate := StrToDate(medta6.Text);
  cdsConferir.Open;


    while not (cdsConferir.Eof) do
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      DecimalSeparator := '.';

      sqlR  := ' INSERT INTO LAN_DMED_S (COD_CLIENTE,COD_FORNECEDOR,NOMEFORNECEDOR,CNPJ,TIPOFIRMA,DESCRICAO,CODPRO,' +
            ' PRODUTO,NUMEROBORDERO,CODVENDA1,NOMECLIENTE1,PRECO ,VALOR_RECIBO ,RAZAOSOCIAL)'+
            ' VALUES (' +
            IntToStr(cdsConferirCOD_CLIENTE.Value) + ',' +  //
            IntToStr(cdsConferirCOD_FORNECEDOR.Value) + ','+  //
            QuotedStr(cdsConferirNOMEFORNECEDOR.AsString) + ','+  //
            QuotedStr(cdsConferirCNPJ.AsString) + ','+  //
            IntToStr(cdsConferirTIPOFIRMA.Value) + ','+  //
            QuotedStr(cdsConferirDESCRICAO.AsString) + ','+  //
            IntToStr(cdsConferirCODPRO.AsInteger) + ','+  //
            QuotedStr(cdsConferirPRODUTO.AsString) + ','+  //
            QuotedStr(cdsConferirNUMEROBORDERO.AsString) + ','+  //
            QuotedStr(cdsConferirCODVENDA1.AsString) + ','+  //
            QuotedStr(cdsConferirNOMECLIENTE1.AsString) + ','+  //
            FloatToStr(cdsConferirPRECO.Value) + ','+
            FloatToStr(cdsConferirVALOR_RECIBO.Value) + ','+
            QuotedStr(cdsConferirRAZAOSOCIAL.AsString) +
           ')';
      dm.sqlsisAdimin.ExecuteDirect(sqlR);
      dm.sqlsisAdimin.Commit(TD);
      DecimalSeparator := ',';
      cdsConferir.Next;
    end;

  cdsClienteBusca.Next;
  end;

  end;
procedure TfGerar_DadosS.BitBtn7Click(Sender: TObject);
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

    sqlR  := ' INSERT INTO Dmed_Mensalidade_S (codcliente ,cpf, ra, razaosocial, val, faixa, nomecliente, mes_vcto,' +
          '  mes_pagto ,vlr_pago_mes,vlr_mensal, codmovimento, codvenda , datanasc ,tipo_dep )'+
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
          QuotedStr(cdsDmensCODVENDA.AsString) + ',' +
          QuotedStr(formatdatetime('mm/dd/yyyy',cdsDmensDATANASC.Value)) + ',' +
          QuotedStr(cdsDmensTIPO_DEP.AsString) +


         ')';
    dm.sqlsisAdimin.ExecuteDirect(sqlR);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
    cdsDmens.Next;
  end;
 cdsClienteBusca.Next;
end;
end;
procedure TfGerar_DadosS.BitBtn5Click(Sender: TObject);
begin
   cdsdmt.Close;
   if (cdsdmt.Active) then
    cdsdmt.Close;
   cdsdmt.Params[0].AsString := DBEdit1.Text;
   sqlR := 'SELECT * FROM DMED_MENSALIDADE_S where razaosocial = :titular';
  // sqlR := sqlR + QuotedStr() ;

   cdsdmt.CommandText := sqlR ;
   cdsdmt.Open;
end;

procedure TfGerar_DadosS.BitBtn8Click(Sender: TObject);
begin
  cdsdmt.ApplyUpdates(0);
end;

procedure TfGerar_DadosS.BitBtn9Click(Sender: TObject);
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

      sqlR  := ' INSERT INTO LAN_DMED_S (COD_CLIENTE,' +
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

procedure TfGerar_DadosS.BitBtn10Click(Sender: TObject);
begin
  cdsTR.Open;
  while not (cdsTR.Eof) do
  begin

   if (cdsBR.Active) then
    cdsBR.Close;
   sqlR := 'SELECT * FROM REL_DMED_11_S(';
   sqlR := sqlR + QuotedStr(cdsTRRAZAOSOCIAL.AsString) + ')';

   cdsBR.CommandText := sqlR ;
   cdsBR.Open;

   VCLReport1.FileName := str_relatorio + 'dmed_2011_S.rep';
   VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
   VCLReport1.Report.DataInfo.Items[0].SQL:= sqlR  ;

   IF(Checkpdf.Checked = TRUE) THEN
   BEGIN
    VCLReport1.SaveToPDF('C:\teste_rel_dmed_S\' + cdsTRRA.Value +'V_DMED.pdf');
   END ELSE
   VCLReport1.Execute;
  // VCLReport1.Title := cdsTRRA.Value ;

   cdsTR.Next;

  end;

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

procedure TfGerar_DadosS.BitBtn11Click(Sender: TObject);
 var TD: TTransactionDesc;
begin

  cdsBR.Open;
  while not (cdsBR.Eof) do
  begin

    if(cdsEX.Active) then
    cdsEX.Close;
    cdsEx.Params[0].AsString := cdsBRRAZAOSOCIAL.AsString;
    cdsEX.Open;

    while not(cdsEX.Eof) do
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      DecimalSeparator := '.';

      sqlR := 'INSERT INTO EXPORTA_DMED_S (CODCLIENTE,RA,RAZAOSOCIAL,CPF,NOMECLIENTE,TIPO_DEPENDENTE,' +
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


procedure TfGerar_DadosS.BitBtn12Click(Sender: TObject);
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

      sqlR := 'INSERT INTO EXPORTA_DMED_S (CODCLIENTE,RA,RAZAOSOCIAL,CPF,NOMECLIENTE,TIPO_DEPENDENTE,' +
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

end.


