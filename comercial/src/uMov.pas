unit uMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  StdCtrls,DBXpress, Buttons, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  DBCtrls, ExtCtrls ;

type
  TfMov = class(TForm)
    DBGrid1: TDBGrid;
    sds_Mov_Det: TSQLDataSet;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetBAIXA: TStringField;
    sds_Mov_DetCONTROLE: TSmallintField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetDTAFAB: TDateField;
    sds_Mov_DetDTAVCTO: TDateField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetPRODUTO: TStringField;
    sds_Mov_DetCODALMOXARIFADO: TIntegerField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    sds_Mov_DetNUMEROBORDERO: TIntegerField;
    sds_Mov_DetCODVENDA: TIntegerField;
    sds_Mov_DetNOMECLIENTE: TStringField;
    dsp_Mov_det: TDataSetProvider;
    cds_Mov_det: TClientDataSet;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detQTDE_ALT: TFloatField;
    cds_Mov_detUN: TStringField;
    cds_Mov_detBAIXA: TStringField;
    cds_Mov_detCONTROLE: TSmallintField;
    cds_Mov_detCOD_COMISSAO: TIntegerField;
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detDTAFAB: TDateField;
    cds_Mov_detDTAVCTO: TDateField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detPRODUTO: TStringField;
    cds_Mov_detCODALMOXARIFADO: TIntegerField;
    cds_Mov_detVALORUNITARIOATUAL: TFloatField;
    cds_Mov_detQTDE_PCT: TFloatField;
    cds_Mov_detCONTA_DESPESA: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detNUMEROBORDERO: TIntegerField;
    cds_Mov_detCODVENDA: TIntegerField;
    cds_Mov_detNOMECLIENTE: TStringField;
    DtSrc1: TDataSource;
    sds_venda: TSQLDataSet;
    dsp_venda: TDataSetProvider;
    cds: TClientDataSet;
    ds1: TDataSource;
    DBGrid2: TDBGrid;
    sds_vendaCODDETALHE: TIntegerField;
    sds_vendaCODMOVIMENTO: TIntegerField;
    sds_vendaCODALMOXARIFADO: TSmallintField;
    sds_vendaCONTROLE: TSmallintField;
    sds_vendaCODPRODUTO: TIntegerField;
    sds_vendaQUANTIDADE: TFloatField;
    sds_vendaPRECO: TFloatField;
    sds_vendaICMS: TFloatField;
    sds_vendaUN: TStringField;
    sds_vendaQTDE_ALT: TFloatField;
    sds_vendaBAIXA: TStringField;
    sds_vendaVALTOTAL: TFloatField;
    sds_vendaCOD_COMISSAO: TIntegerField;
    sds_vendaLOTE: TStringField;
    sds_vendaDTAFAB: TDateField;
    sds_vendaDTAVCTO: TDateField;
    sds_vendaPRECOCUSTO: TFloatField;
    cdsCODDETALHE: TIntegerField;
    cdsCODMOVIMENTO: TIntegerField;
    cdsCODALMOXARIFADO: TSmallintField;
    cdsCONTROLE: TSmallintField;
    cdsCODPRODUTO: TIntegerField;
    cdsQUANTIDADE: TFloatField;
    cdsPRECO: TFloatField;
    cdsICMS: TFloatField;
    cdsUN: TStringField;
    cdsQTDE_ALT: TFloatField;
    cdsBAIXA: TStringField;
    cdsVALTOTAL: TFloatField;
    cdsCOD_COMISSAO: TIntegerField;
    cdsLOTE: TStringField;
    cdsDTAFAB: TDateField;
    cdsDTAVCTO: TDateField;
    cdsPRECOCUSTO: TFloatField;
    sds: TSQLDataSet;
    sdsCODRECEBIMENTO: TIntegerField;
    sdsTITULO: TStringField;
    sdsEMISSAO: TDateField;
    sdsDATAVENCIMENTO: TDateField;
    sdsCODCLIENTE: TIntegerField;
    sdsVALORTITULO: TFloatField;
    sdsVALOR_RESTO: TFloatField;
    sdsVALOR_PRIM_VIA: TFloatField;
    sdsSTATUS: TStringField;
    sdsDATARECEBIMENTO: TDateField;
    sdsVALORRECEBIDO: TFloatField;
    sdsN_DOCUMENTO: TStringField;
    sdsDUP_REC_NF: TStringField;
    sdsDP: TIntegerField;
    sdsNOMECLIENTE: TStringField;
    sdsRAZAOSOCIAL: TStringField;
    sdsVALORREC: TFloatField;
    sdsSTATUSP: TStringField;
    sdsHISTORICO: TStringField;
    sdsVIA: TStringField;
    sdsCODVENDA: TIntegerField;
    sdsRA: TStringField;
    sdsBL: TIntegerField;
    dsp: TDataSetProvider;
    scdsCr_proc: TClientDataSet;
    scdsCr_procCODRECEBIMENTO: TIntegerField;
    scdsCr_procTITULO: TStringField;
    scdsCr_procEMISSAO: TDateField;
    scdsCr_procDATAVENCIMENTO: TDateField;
    scdsCr_procCODCLIENTE: TIntegerField;
    scdsCr_procVALORTITULO: TFloatField;
    scdsCr_procVALOR_RESTO: TFloatField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    scdsCr_procSTATUS: TStringField;
    scdsCr_procDATARECEBIMENTO: TDateField;
    scdsCr_procVALORRECEBIDO: TFloatField;
    scdsCr_procN_DOCUMENTO: TStringField;
    scdsCr_procDUP_REC_NF: TStringField;
    scdsCr_procDP: TIntegerField;
    scdsCr_procNOMECLIENTE: TStringField;
    scdsCr_procRAZAOSOCIAL: TStringField;
    scdsCr_procVALORREC: TFloatField;
    scdsCr_procSTATUSP: TStringField;
    scdsCr_procHISTORICO: TStringField;
    scdsCr_procVIA: TStringField;
    scdsCr_procCODVENDA: TIntegerField;
    scdsCr_procRA: TStringField;
    scdsCr_procBL: TIntegerField;
    scdsCr_proctot_titulo: TAggregateField;
    scdsCr_proctot_recebido: TAggregateField;
    scdsCr_procTotPend: TAggregateField;
    ds_Cr: TDataSource;
    DBGrid3: TDBGrid;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cds1: TClientDataSet;
    DataSource1: TDataSource;
    DBGrid4: TDBGrid;
    sds_vendaNUMEROBORDERO: TIntegerField;
    cdsNUMEROBORDERO: TIntegerField;
    cds1CODDETALHE: TIntegerField;
    cds1CODMOVIMENTO: TIntegerField;
    cds1CODALMOXARIFADO: TSmallintField;
    cds1CONTROLE: TSmallintField;
    cds1CODPRODUTO: TIntegerField;
    cds1QUANTIDADE: TFloatField;
    cds1PRECO: TFloatField;
    cds1ICMS: TFloatField;
    cds1UN: TStringField;
    cds1QTDE_ALT: TFloatField;
    cds1BAIXA: TStringField;
    cds1VALTOTAL: TFloatField;
    cds1COD_COMISSAO: TIntegerField;
    cds1LOTE: TStringField;
    cds1DTAFAB: TDateField;
    cds1DTAVCTO: TDateField;
    cds1PRECOCUSTO: TFloatField;
    SQLDataSet1CODDETALHE: TIntegerField;
    SQLDataSet1CODMOVIMENTO: TIntegerField;
    SQLDataSet1CODALMOXARIFADO: TSmallintField;
    SQLDataSet1CONTROLE: TSmallintField;
    SQLDataSet1CODPRODUTO: TIntegerField;
    SQLDataSet1QUANTIDADE: TFloatField;
    SQLDataSet1PRECO: TFloatField;
    SQLDataSet1ICMS: TFloatField;
    SQLDataSet1UN: TStringField;
    SQLDataSet1QTDE_ALT: TFloatField;
    SQLDataSet1BAIXA: TStringField;
    SQLDataSet1VALTOTAL: TFloatField;
    SQLDataSet1COD_COMISSAO: TIntegerField;
    SQLDataSet1LOTE: TStringField;
    SQLDataSet1DTAFAB: TDateField;
    SQLDataSet1DTAVCTO: TDateField;
    SQLDataSet1PRECOCUSTO: TFloatField;
    DBGrid5: TDBGrid;
    sdsconfira: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    IntegerField2: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField2: TStringField;
    DateField3: TDateField;
    FloatField4: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField5: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField4: TIntegerField;
    StringField10: TStringField;
    IntegerField5: TIntegerField;
    DataSetProvider2: TDataSetProvider;
    cdsconfira: TClientDataSet;
    StringField11: TStringField;
    DateField4: TDateField;
    DateField5: TDateField;
    IntegerField7: TIntegerField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    StringField12: TStringField;
    DateField6: TDateField;
    FloatField9: TFloatField;
    StringField13: TStringField;
    StringField14: TStringField;
    IntegerField8: TIntegerField;
    StringField15: TStringField;
    StringField16: TStringField;
    FloatField10: TFloatField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    IntegerField9: TIntegerField;
    StringField20: TStringField;
    IntegerField10: TIntegerField;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    AggregateField3: TAggregateField;
    DataSource2: TDataSource;
    DBGrid6: TDBGrid;
    SQLDataSet2: TSQLDataSet;
    DataSetProvider3: TDataSetProvider;
    cds2: TClientDataSet;
    DataSource3: TDataSource;
    cdsconfiraCODRECEBIMENTO: TIntegerField;
    SQLDataSet2CODDETALHE: TIntegerField;
    SQLDataSet2CODMOVIMENTO: TIntegerField;
    SQLDataSet2CODPRODUTO: TIntegerField;
    SQLDataSet2ICMS: TFloatField;
    SQLDataSet2PRECO: TFloatField;
    SQLDataSet2QUANTIDADE: TFloatField;
    SQLDataSet2QTDE_ALT: TFloatField;
    SQLDataSet2UN: TStringField;
    SQLDataSet2BAIXA: TStringField;
    SQLDataSet2CONTROLE: TSmallintField;
    SQLDataSet2COD_COMISSAO: TIntegerField;
    SQLDataSet2LOTE: TStringField;
    SQLDataSet2DTAFAB: TDateField;
    SQLDataSet2DTAVCTO: TDateField;
    SQLDataSet2CODPRO: TStringField;
    SQLDataSet2PRODUTO: TStringField;
    SQLDataSet2CODALMOXARIFADO: TIntegerField;
    SQLDataSet2VALORUNITARIOATUAL: TFloatField;
    SQLDataSet2QTDE_PCT: TFloatField;
    SQLDataSet2CONTA_DESPESA: TStringField;
    SQLDataSet2LOCALIZACAO: TStringField;
    SQLDataSet2NUMEROBORDERO: TIntegerField;
    SQLDataSet2CODVENDA: TIntegerField;
    SQLDataSet2NOMECLIENTE: TStringField;
    cds2CODDETALHE: TIntegerField;
    cds2CODMOVIMENTO: TIntegerField;
    cds2CODPRODUTO: TIntegerField;
    cds2ICMS: TFloatField;
    cds2PRECO: TFloatField;
    cds2QUANTIDADE: TFloatField;
    cds2QTDE_ALT: TFloatField;
    cds2UN: TStringField;
    cds2BAIXA: TStringField;
    cds2CONTROLE: TSmallintField;
    cds2COD_COMISSAO: TIntegerField;
    cds2LOTE: TStringField;
    cds2DTAFAB: TDateField;
    cds2DTAVCTO: TDateField;
    cds2CODPRO: TStringField;
    cds2PRODUTO: TStringField;
    cds2CODALMOXARIFADO: TIntegerField;
    cds2VALORUNITARIOATUAL: TFloatField;
    cds2QTDE_PCT: TFloatField;
    cds2CONTA_DESPESA: TStringField;
    cds2LOCALIZACAO: TStringField;
    cds2NUMEROBORDERO: TIntegerField;
    cds2CODVENDA: TIntegerField;
    cds2NOMECLIENTE: TStringField;
    Panel1: TPanel;
    ins: TBitBtn;
    Edit1: TEdit;
    JvCalcEdit1: TJvCalcEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    Atualiza: TBitBtn;
    Label4: TLabel;
    JvCalcEdit2: TJvCalcEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    BitBtn2: TBitBtn;
    Edit3: TEdit;
    procedure FormShow(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure insClick(Sender: TObject);
    procedure AtualizaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMov: TfMov;
  codigovenda, numerobordero1 ,codigomoviemtemto, codrecebimento : integer;
implementation

uses ufcrSaude, UDm;

{$R *.dfm}

procedure TfMov.FormShow(Sender: TObject);
var quantos : Integer ;
begin
  if cds.Active then
    cds.Close;
  cds.Params[0].AsInteger := numerobordero1;
  cds.Open;
  if cds.IsEmpty then
  begin
    cds.Close;
    exit;
  end
  else
  begin
   // codigomoviemtemto := cdsCODMOVIMENTO.AsInteger;
    //cds.Close;
  end;
  if cds_Mov_det.Active then
     cds_Mov_det.Close;
  cds_Mov_det.Params[0].AsInteger := numerobordero1 ;
  cds_Mov_det.Open;

  if scdsCr_proc.Active then
    scdsCr_proc.Close;
   sqltexto1 :='select  rec.CODRECEBIMENTO, rec.TITULO, rec.EMISSAO, rec.outro_debito , ';
   sqltexto1 := sqltexto1 + ' rec.DATAVENCIMENTO, rec.CODCLIENTE, rec.VALORTITULO, ';
   sqltexto1 := sqltexto1 + ' rec.VALOR_RESTO, rec.VALOR_PRIM_VIA, rec.STATUS, ';
   sqltexto1 := sqltexto1 + ' CASE rec.STATUS WHEN ' + QuotedStr('5-');
   sqltexto1 := sqltexto1 + ' THEN ' + QuotedStr('PENDENTE') + ' WHEN ' + QuotedStr('7-');
   sqltexto1 := sqltexto1 + ' THEN ' + QuotedStr('RECEBIDO') + ' WHEN ' + QuotedStr('8-');
   sqltexto1 := sqltexto1 + ' THEN ' + QuotedStr('CRÉD. DUVIDOSO');
   sqltexto1 := sqltexto1 + ' WHEN ' + QuotedStr('14') + ' THEN ' + QuotedStr('CANCELADO');
   sqltexto1 := sqltexto1 + ' END AS STATUSP, ';
   sqltexto1 := sqltexto1 + ' rec.DATARECEBIMENTO, (rec.VALORRECEBIDO + rec.juros)as VALORRECEBIDO , ';
   sqltexto1 := sqltexto1 + ' UDF_PADL(CAST(UDF_TRIM(rec.VIA) AS VARCHAR(2)),' ;
   sqltexto1 := sqltexto1 + '''' + '0' + '''';
   sqltexto1 := sqltexto1 + ',2) || ';
   sqltexto1 := sqltexto1 + '''' + '/' + '''';
   sqltexto1 := sqltexto1 +' || CAST(UDF_PADL(rec.PARCELAS,';
   sqltexto1 := sqltexto1 + '''' + '0' + '''';
   sqltexto1 := sqltexto1 + ',2) as varchar(2)) as VIA, rec.HISTORICO ,';
   sqltexto1 := sqltexto1 + ' rec.N_DOCUMENTO, rec.DUP_REC_NF, rec.DP, rec.BL,rec.CODVENDA,';
   sqltexto1 := sqltexto1 + ' cli.NOMECLIENTE, cli.RAZAOSOCIAL, cli.RA, ';
   sqltexto1 := sqltexto1 + '(rec.DESCONTO) as VALORREC '; //rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA
   sqltexto1 := sqltexto1 + 'from RECEBIMENTO rec ';
   sqltexto1 := sqltexto1 + ' inner join CLIENTES cli on cli.CODCLIENTE=rec.CODCLIENTE';
  scdsCr_proc.CommandText := sqlTexto1 + SqlCr + ' order by rec.CODRECEBIMENTO asc ';
  sds.CommandText := scdsCr_proc.CommandText;

  scdsCr_proc.Open;

   if cds1.Active then
     cds1.Close;
  cds1.Params[0].AsInteger := numerobordero1; //scdsCr_procCODRECEBIMENTO.AsInteger ;
  cds1.Open;

  ///
  if cdsconfira.Active then
    cdsconfira.Close;
   sqltexto1 :='select first 1 rec.CODRECEBIMENTO, rec.TITULO, rec.EMISSAO, rec.outro_debito , ';
   sqltexto1 := sqltexto1 + ' rec.DATAVENCIMENTO, rec.CODCLIENTE, rec.VALORTITULO, ';
   sqltexto1 := sqltexto1 + ' rec.VALOR_RESTO, rec.VALOR_PRIM_VIA, rec.STATUS, ';
   sqltexto1 := sqltexto1 + ' CASE rec.STATUS WHEN ' + QuotedStr('5-');
   sqltexto1 := sqltexto1 + ' THEN ' + QuotedStr('PENDENTE') + ' WHEN ' + QuotedStr('7-');
   sqltexto1 := sqltexto1 + ' THEN ' + QuotedStr('RECEBIDO') + ' WHEN ' + QuotedStr('8-');
   sqltexto1 := sqltexto1 + ' THEN ' + QuotedStr('CRÉD. DUVIDOSO');
   sqltexto1 := sqltexto1 + ' WHEN ' + QuotedStr('14') + ' THEN ' + QuotedStr('CANCELADO');
   sqltexto1 := sqltexto1 + ' END AS STATUSP, ';
   sqltexto1 := sqltexto1 + ' rec.DATARECEBIMENTO, (rec.VALORRECEBIDO + rec.juros)as VALORRECEBIDO , ';
   sqltexto1 := sqltexto1 + ' UDF_PADL(CAST(UDF_TRIM(rec.VIA) AS VARCHAR(2)),' ;
   sqltexto1 := sqltexto1 + '''' + '0' + '''';
   sqltexto1 := sqltexto1 + ',2) || ';
   sqltexto1 := sqltexto1 + '''' + '/' + '''';
   sqltexto1 := sqltexto1 +' || CAST(UDF_PADL(rec.PARCELAS,';
   sqltexto1 := sqltexto1 + '''' + '0' + '''';
   sqltexto1 := sqltexto1 + ',2) as varchar(2)) as VIA, rec.HISTORICO ,';
   sqltexto1 := sqltexto1 + ' rec.N_DOCUMENTO, rec.DUP_REC_NF, rec.DP, rec.BL,rec.CODVENDA,';
   sqltexto1 := sqltexto1 + ' cli.NOMECLIENTE, cli.RAZAOSOCIAL, cli.RA, ';
   sqltexto1 := sqltexto1 + '(rec.DESCONTO) as VALORREC '; //rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA
   sqltexto1 := sqltexto1 + 'from RECEBIMENTO rec ';
   sqltexto1 := sqltexto1 + ' inner join CLIENTES cli on cli.CODCLIENTE=rec.CODCLIENTE';
  cdsconfira.CommandText := sqlTexto1 + SqlCr + ' order by rec.CODRECEBIMENTO desc ';
  sdsconfira.CommandText := cdsconfira.CommandText;

  cdsconfira.Open;

  if cds2.Active then
    cds2.Close;
  cds2.Params[0].AsInteger := cdsconfiraCODRECEBIMENTO.AsInteger ;
  cds2.Open;
  Label6.Caption := IntToStr(cds2.RecordCount);



  BitBtn1.Click;
 
end;

procedure TfMov.DBGrid3DblClick(Sender: TObject);
begin
   if cds1.Active then
     cds1.Close;
  cds1.Params[0].AsInteger := scdsCr_procCODRECEBIMENTO.AsInteger ;
  cds1.Open;

end;

procedure TfMov.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if cds1.Active then
     cds1.Close;
  cds1.Params[0].AsInteger := scdsCr_procCODRECEBIMENTO.AsInteger ;
  cds1.Open;

end;

procedure TfMov.DBGrid3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if cds1.Active then
     cds1.Close;
  cds1.Params[0].AsInteger := scdsCr_procCODRECEBIMENTO.AsInteger ;
  cds1.Open;

end;

procedure TfMov.insClick(Sender: TObject);
var TD: TTransactionDesc;
str_insert : String ;
corrigido : integer;
begin
  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    DecimalSeparator := '.';
    str_insert := ' INSERT INTO movimentoDetalhe ' +
                  ' (codDetalhe, codMovimento, codProduto, controle, quantidade, preco)'+
                  ' Values(';
    str_insert := str_insert + 'GEN_ID("GENMOVDET",1)' + ',';
    str_insert := str_insert + IntToStr(cdsCODMOVIMENTO.AsInteger) + ',';  // cds1CODMOVIMENTO.AsInteger
    str_insert := str_insert + QuotedStr('744') + ',';
    str_insert := str_insert + QuotedStr(Edit1.Text) + ',';
    DecimalSeparator := '.';
    str_insert := str_insert + QuotedStr('1') + ',';
    str_insert := str_insert + FloatToStr(JvCalcEdit1.Value) + ')';
    DecimalSeparator := ',';

   // gen_id(genmovdet, 1), :codMov, 744, :codsoc, 1, :VALOR_P, NULL, NULL ,NULL ,NULL,NULL );


    dm.sqlsisAdimin.ExecuteDirect(str_insert);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
    MessageDlg('Inserido com sucesso', mtInformation, [mbOK], 0);
    cds1.Refresh;
    Label7.Caption := IntToStr(cds1.RecordCount);
    Edit1.SetFocus;
    Edit1.Text := '';

    if (Label6.Caption = Label7.Caption) then
    begin
      MessageDlg('Lançamentos Corrigidos .', mtInformation, [mbOK], 0);
      Panel1.Enabled := False;
    end;
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro ao inserir Lançamento .', mtError,[mbOk], 0);
      DecimalSeparator := ',';
    end

end;

procedure TfMov.AtualizaClick(Sender: TObject);
var TD: TTransactionDesc;
begin
    DecimalSeparator := '.';
    Try
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_VENDA INACTIVE');
       dm.sqlsisAdimin.Commit(TD);
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect('UPDATE MOVIMENTODETALHE SET PRECO = ' +
                                FloatToStr(JvCalcEdit2.Value) + ' where CODDETALHE = ' +
                                QuotedStr(Edit2.Text));
       dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_VENDA ACTIVE');
       dm.sqlsisAdimin.Commit(TD);
       DecimalSeparator := ',';
       MessageDlg('Alterado com sucesso', mtInformation, [mbOK], 0);
       cds1.Refresh;
       Label7.Caption := IntToStr(cds1.RecordCount);
       Edit1.SetFocus;
       Panel2.Enabled := False;
    except
       dm.sqlsisAdimin.Rollback(TD);
       MessageDlg('Erro ao alterar Lançamento .', mtError, [mbOk], 0);

    end


end;

procedure TfMov.BitBtn1Click(Sender: TObject);
begin
  DBEdit1.Text := cdsCODDETALHE.AsString;
  JvCalcEdit2.Text := cds2PRECO.Text;
  Edit2.Text := DBEdit1.Text;
end;

procedure TfMov.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfMov.BitBtn2Click(Sender: TObject);
var TD: TTransactionDesc;
begin
    DecimalSeparator := '.';
    Try
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_VENDA_POR_EXCLUSAO INACTIVE');
       dm.sqlsisAdimin.Commit(TD);
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect('DELETE from MOVIMENTODETALHE where CODDETALHE = ' + QuotedStr(Edit3.Text));
       dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_VENDA_POR_EXCLUSAO ACTIVE');
       dm.sqlsisAdimin.Commit(TD);
       DecimalSeparator := ',';
       MessageDlg('Excluido com sucesso', mtInformation, [mbOK], 0);
       cds1.Refresh;
       Label7.Caption := IntToStr(cds1.RecordCount);
       Edit1.SetFocus;
       Panel2.Enabled := False;
    except
       dm.sqlsisAdimin.Rollback(TD);
       MessageDlg('Erro ao Excluir Lançamento .', mtError, [mbOk], 0);

    end


end;

end.
