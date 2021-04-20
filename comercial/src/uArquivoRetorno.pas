unit uArquivoRetorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, FMTBcd, DB, DBXpress, SqlExpr,
  DBClient, Provider, XPMenu, ExtCtrls, MMJPanel, rpcompobase, rpvclreport,
  ComCtrls;

type
  TfArquivoRetorno = class(TForm)
    MMJPanel1: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    VCLReport1: TVCLReport;
    sqlArquivoRetorno: TSQLQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    DBGrid2: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Memo1: TMemo;
    BitBtn4: TBitBtn;
    DBGrid3: TDBGrid;
    RadioGroup1: TRadioGroup;
    BitBtn5: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn6: TBitBtn;
    OpenDialog1: TOpenDialog;
    DataSource1: TDataSource;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsID: TStringField;
    cdsTITULO: TStringField;
    cdsVALOR: TStringField;
    cdsCENTAVOS: TStringField;
    cdsVALORPG: TStringField;
    cdsCENTAVOSPG: TStringField;
    cdsDATA: TStringField;
    cdsVALOR_JUROS: TStringField;
    cdsCENTAVOS_JUROS: TStringField;
    cdsVALOR_COM_JUROS: TStringField;
    cdsVALPG: TStringField;
    cdsVALOR_MULTA: TStringField;
    cdsCENTAVOS_MULTA: TStringField;
    cdsVALOR_COM_MULTA: TStringField;
    sds: TSQLDataSet;
    sdsID: TStringField;
    sdsTITULO: TStringField;
    sdsVALOR: TStringField;
    sdsCENTAVOS: TStringField;
    sdsVALORPG: TStringField;
    sdsCENTAVOSPG: TStringField;
    sdsDATA: TStringField;
    sdsVALOR_JUROS: TStringField;
    sdsCENTAVOS_JUROS: TStringField;
    sdsVALOR_COM_JUROS: TStringField;
    sdsVALPG: TStringField;
    sdsVALOR_MULTA: TStringField;
    sdsCENTAVOS_MULTA: TStringField;
    sdsVALOR_COM_MULTA: TStringField;
    sdsREC: TSQLDataSet;
    dspREC: TDataSetProvider;
    cdsREC: TClientDataSet;
    DtSrcREC: TDataSource;
    XPMenu1: TXPMenu;
    sqs: TSQLDataSet;
    sds_cbr: TSQLDataSet;
    sds_cbrID_CBR: TIntegerField;
    sds_cbrDATABAIXA: TDateField;
    sds_cbrNOMECBR: TStringField;
    sds_cbrOBS: TGraphicField;
    dsp_cbr: TDataSetProvider;
    cds_cbr: TClientDataSet;
    cds_cbrID_CBR: TIntegerField;
    cds_cbrDATABAIXA: TDateField;
    cds_cbrNOMECBR: TStringField;
    cds_cbrOBS: TGraphicField;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1ID: TStringField;
    SQLDataSet1TITULO: TIntegerField;
    SQLDataSet1DATA: TStringField;
    SQLDataSet1VALOR_RECEBIDO: TFloatField;
    SQLDataSet1VALOR_TITULO: TFloatField;
    SQLDataSet1MULTA_JUROS: TFloatField;
    SQLDataSet1BAIXADO: TStringField;
    DataSetProvider1: TDataSetProvider;
    cdsB: TClientDataSet;
    cdsBID: TStringField;
    cdsBTITULO: TIntegerField;
    cdsBDATA: TStringField;
    cdsBVALOR_RECEBIDO: TFloatField;
    cdsBVALOR_TITULO: TFloatField;
    cdsBMULTA_JUROS: TFloatField;
    cdsBBAIXADO: TStringField;
    DataSource2: TDataSource;
    sqlBaixa: TSQLDataSet;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField3: TStringField;
    dspBaixa: TDataSetProvider;
    CDSbaixa: TClientDataSet;
    StringField4: TStringField;
    IntegerField2: TIntegerField;
    StringField5: TStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField6: TStringField;
    DataSource3: TDataSource;
    sqlDebito: TSQLDataSet;
    dspDebito: TDataSetProvider;
    cdsDebito: TClientDataSet;
    BitBtn7: TBitBtn;
    sqlDebitoID: TStringField;
    sqlDebitoCPF: TStringField;
    sqlDebitoAGENCIA: TStringField;
    sqlDebitoCONTA: TStringField;
    sqlDebitoVENCIMENTO: TStringField;
    sqlDebitoVALOR: TStringField;
    sqlDebitoCENTAVOS: TStringField;
    sqlDebitoDEBITO: TStringField;
    cdsDebitoID: TStringField;
    cdsDebitoCPF: TStringField;
    cdsDebitoAGENCIA: TStringField;
    cdsDebitoCONTA: TStringField;
    cdsDebitoVENCIMENTO: TStringField;
    cdsDebitoVALOR: TStringField;
    cdsDebitoCENTAVOS: TStringField;
    cdsDebitoDEBITO: TStringField;
    DBGrid4: TDBGrid;
    dsDebito: TDataSource;
    BitBtn8: TBitBtn;
    Memo2: TMemo;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    sdsRECCODRECEBIMENTO: TIntegerField;
    sdsRECTITULO: TStringField;
    sdsRECEMISSAO: TDateField;
    sdsRECCODCLIENTE: TIntegerField;
    sdsRECDATAVENCIMENTO: TDateField;
    sdsRECDATARECEBIMENTO: TDateField;
    sdsRECCAIXA: TSmallintField;
    sdsRECCONTADEBITO: TIntegerField;
    sdsRECCONTACREDITO: TIntegerField;
    sdsRECSTATUS: TStringField;
    sdsRECVIA: TStringField;
    sdsRECFORMARECEBIMENTO: TStringField;
    sdsRECDATABAIXA: TDateField;
    sdsRECHISTORICO: TStringField;
    sdsRECCODVENDA: TIntegerField;
    sdsRECCODALMOXARIFADO: TSmallintField;
    sdsRECCODVENDEDOR: TSmallintField;
    sdsRECCODUSUARIO: TSmallintField;
    sdsRECN_DOCUMENTO: TStringField;
    sdsRECDATASISTEMA: TSQLTimeStampField;
    sdsRECVALORRECEBIDO: TFloatField;
    sdsRECJUROS: TFloatField;
    sdsRECDESCONTO: TFloatField;
    sdsRECPERDA: TFloatField;
    sdsRECTROCA: TFloatField;
    sdsRECFUNRURAL: TFloatField;
    sdsRECVALOR_PRIM_VIA: TFloatField;
    sdsRECVALOR_RESTO: TFloatField;
    sdsRECVALORTITULO: TFloatField;
    sdsRECOUTRO_CREDITO: TFloatField;
    sdsRECOUTRO_DEBITO: TFloatField;
    sdsRECPARCELAS: TIntegerField;
    sdsRECDUP_REC_NF: TStringField;
    sdsRECNF: TIntegerField;
    sdsRECDP: TIntegerField;
    sdsRECBL: TIntegerField;
    sdsRECCODORIGEM: TIntegerField;
    sdsRECCODIGO_DE_BARRAS: TStringField;
    sdsRECIMAGE_COD_BARRAS: TGraphicField;
    sdsRECDV: TStringField;
    sdsRECNOMEARQUIVORETORNO: TStringField;
    sdsRECDATACONSOLIDA: TDateField;
    sdsRECNOMECLIENTE: TStringField;
    sdsRECCODCLIENTE_1: TIntegerField;
    sdsRECRA: TStringField;
    cdsRECCODRECEBIMENTO: TIntegerField;
    cdsRECTITULO: TStringField;
    cdsRECEMISSAO: TDateField;
    cdsRECCODCLIENTE: TIntegerField;
    cdsRECDATAVENCIMENTO: TDateField;
    cdsRECDATARECEBIMENTO: TDateField;
    cdsRECCAIXA: TSmallintField;
    cdsRECCONTADEBITO: TIntegerField;
    cdsRECCONTACREDITO: TIntegerField;
    cdsRECSTATUS: TStringField;
    cdsRECVIA: TStringField;
    cdsRECFORMARECEBIMENTO: TStringField;
    cdsRECDATABAIXA: TDateField;
    cdsRECHISTORICO: TStringField;
    cdsRECCODVENDA: TIntegerField;
    cdsRECCODALMOXARIFADO: TSmallintField;
    cdsRECCODVENDEDOR: TSmallintField;
    cdsRECCODUSUARIO: TSmallintField;
    cdsRECN_DOCUMENTO: TStringField;
    cdsRECDATASISTEMA: TSQLTimeStampField;
    cdsRECVALORRECEBIDO: TFloatField;
    cdsRECJUROS: TFloatField;
    cdsRECDESCONTO: TFloatField;
    cdsRECPERDA: TFloatField;
    cdsRECTROCA: TFloatField;
    cdsRECFUNRURAL: TFloatField;
    cdsRECVALOR_PRIM_VIA: TFloatField;
    cdsRECVALOR_RESTO: TFloatField;
    cdsRECVALORTITULO: TFloatField;
    cdsRECOUTRO_CREDITO: TFloatField;
    cdsRECOUTRO_DEBITO: TFloatField;
    cdsRECPARCELAS: TIntegerField;
    cdsRECDUP_REC_NF: TStringField;
    cdsRECNF: TIntegerField;
    cdsRECDP: TIntegerField;
    cdsRECBL: TIntegerField;
    cdsRECCODORIGEM: TIntegerField;
    cdsRECCODIGO_DE_BARRAS: TStringField;
    cdsRECIMAGE_COD_BARRAS: TGraphicField;
    cdsRECDV: TStringField;
    cdsRECNOMEARQUIVORETORNO: TStringField;
    cdsRECDATACONSOLIDA: TDateField;
    cdsRECNOMECLIENTE: TStringField;
    cdsRECCODCLIENTE_1: TIntegerField;
    cdsRECRA: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure baixa;
    procedure naoencontrou;
    procedure encontrou;
    procedure atualizacbr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fArquivoRetorno: TfArquivoRetorno;
  v_pago, v_titulo, v_resto : double;
  codigo, n_titulo : integer;
  texto_memo, nome_cbr ,executou : string;

implementation

uses UDM, uBaixaretorno ,uUtils;

{$R *.dfm}

procedure TfArquivoRetorno.BitBtn1Click(Sender: TObject);
  var i : integer;
  Txt: Textfile;
  Entrada , tipo: string;
begin

    BitBtn5.Click;   //limpar tudo antes

    if OpenDialog1.Execute then
    begin
      cds.Open;
      AssignFile(Txt,(OpenDialog1.FileName));{ NOME do arquivo texto}
      Reset(Txt);
      While not Eoln(Txt) do
      begin
        Readln(Txt,Entrada);
        tipo := Copy(Entrada,109,02);
        if (Tipo = '06') then
        begin
          cds.Append;
          cds.FieldByName('ID').Value:= Copy(Entrada,109,02);
          cds.FieldByName('TITULO').Value:= Copy(Entrada,51,05);
          cds.FieldByName('DATA').Value:= Copy(Entrada,111,02)  + '/'  + Copy(Entrada,113,02) + '/' + Copy(Entrada,115,02);   //(11,06)
          cds.FieldByName('VALOR').Value:= Copy(Entrada,153,11);   //155,09);
          cds.FieldByName('CENTAVOS').Value:= Copy(Entrada,164,02);

          cds.FieldByName('VALORPG').Value:= Copy(Entrada,254,11);        // Copy(Entrada,254,11);
          cds.FieldByName('CENTAVOSPG').Value:= Copy(Entrada,265,02);     // Copy(Entrada,265,02);
          cds.FieldByName('VALPG').Value:= Copy(Entrada,254,11) + '.'+ Copy(Entrada,265,02);

          cds.FieldByName('VALOR_JUROS').Value := Copy(Entrada,267,11);
          cds.FieldByName('CENTAVOS_JUROS').Value := Copy(Entrada,278,02);
          cds.FieldByName('VALOR_COM_JUROS').Value := Copy(Entrada,267,11) + '.' +Copy(Entrada,278,02);

          cds.FieldByName('VALOR_MULTA').Value := Copy(Entrada,280,11);
          cds.FieldByName('CENTAVOS_MULTA').Value := Copy(Entrada,291,02);
          cds.FieldByName('VALOR_COM_MULTA').Value := Copy(Entrada,280,11) + '.' +Copy(Entrada,291,02);


          cds.Post;
        end;
      end;
      cds.ApplyUpdates(0);
      cds.First;
      CloseFile(Txt);
    end;

    if (cdsB.Active) then
      cdsB.Close;
    cdsB.Open;

   Label5.Caption := IntToStr(cdsB.RecordCount);
    if (Label5.Caption = '0' ) then
         MessageDlg('Esse é Apenas Arquivo de Conferência do Arquivo Enviado'+#13+#10+''+#13+#10+
         '              Voce não precisa utilizar este Arquivo '+#13+#10+''+#13+#10+' ', mtWarning, [mbOK], 0);

   Label3.Caption := OpenDialog1.FileName;

   BitBtn2.Enabled := True;

end;

procedure TfArquivoRetorno.DBGrid1DblClick(Sender: TObject);
begin
  if (cdsREC.Active) then
     cdsREC.Close;
  cdsREC.Params[0].Clear;
  cdsREC.Params[1].AsInteger := cdsRECCODRECEBIMENTO.AsInteger;
  cdsREC.open;
  if cdsREC.IsEmpty then {** se não encontrar o título}
  begin
     if MessageDlg('Título ' + IntToStr(cdsTITULO.AsInteger) + ' não encontrado' +#13+#10+ 'Obs. Busca feita Pelo Título ' +#13+#10+
      ' deseja fazer a busca pelo Campo código do Banco' , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        if (cdsREC.Active) then
           cdsREC.Close;
        cdsREC.Params[1].Clear;
        cdsREC.Params[0].AsInteger := cdsRECCODRECEBIMENTO.AsInteger;
        cdsREC.open;
     end;
  end;

end;

procedure TfArquivoRetorno.BitBtn2Click(Sender: TObject);
begin
    if cds.State in [dsInactive] then
       exit;
    cdsB.First;
    executou := '';
    while not cdsB.Eof do
    begin
       //inicializo as variaveis

       v_pago := 0;
       v_titulo := 0;
       v_resto := 0;
       texto_memo := '';

         if (RadioGroup1.ItemIndex = 0) then
         begin
           if (cdsREC.Active) then
               cdsREC.Close;
           cdsREC.Params[0].AsString := cdsBTITULO.AsString;
           cdsREC.Params[1].AsInteger := 51 ;
           cdsREC.open;
         end;

         if (RadioGroup1.ItemIndex = 1) then
         begin
           if (cdsREC.Active) then
               cdsREC.Close;
           cdsREC.Params[0].AsString := cdsBTITULO.AsString;
           cdsREC.Params[1].AsInteger := 52 ;
           cdsREC.open;
         end;

         if (RadioGroup1.ItemIndex = 2) then
         begin
           if (cdsREC.Active) then
               cdsREC.Close;
           cdsREC.Params[0].AsString := cdsBTITULO.AsString;
           cdsREC.Params[1].AsInteger := 53 ;
           cdsREC.open;
         end;


      if cdsREC.IsEmpty then {** se não encontrar o título}
        naoencontrou
      else
        encontrou;
    cdsB.Next;
    cds.Next;
    end;
    atualizacbr;
    BitBtn2.Enabled := False;
end;

procedure TfArquivoRetorno.baixa;
var
  Forma, i, num: Integer;
  str_sql : String;
  TD: TTransactionDesc;
  statusCrTitulo : TUtils;


begin
  statusCrTitulo := TUtils.Create;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  i := 0;

  FormatDateTime('ddmmyyyy',Date);
  Try
    if (cdsRECSTATUS.AsString = '7-') then
    begin
      MessageDlg('Título já recebido.', mtWarning, [mbOK], 0);
      exit;
    end;

    //  Corrigir aqui para dar baixa pelo codrecebimento 23/09/2010
  //fazer while


    if (cdsRECTITULO.AsString <> '') then
    begin
      str_sql := 'UPDATE RECEBIMENTO SET DP = 0 ';
      str_sql := str_sql + ' WHERE TITULO = ';
      str_sql := str_sql +  QuotedStr(cdsRECTITULO.AsString) ;

      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
        exit;
      end;
    end;


    if dm.cds_cr.Active then
     dm.cds_cr.Close;
     dm.cds_cr.Params[0].AsInteger := cdsRECCODRECEBIMENTO.AsInteger;
    dm.cds_cr.Open;



    if (dm.cds_cr.State in [dsBrowse, dsInactive]) then
      dm.cds_cr.Edit;
    dm.cds_crVALORRECEBIDO.AsFloat := cdsBVALOR_RECEBIDO.AsFloat;
    dm.cds_crDATABAIXA.AsDateTime := now ;
    dm.cds_crDATARECEBIMENTO.AsDateTime := StrToDate(cdsBDATA.AsString);
    dm.cds_crDATACONSOLIDA.AsDateTime := StrToDate(cdsBDATA.AsString);
    dm.cds_crFORMARECEBIMENTO.AsString := '4' ;
    dm.cds_crSTATUS.AsString := '7-';
    dm.cds_crJUROS.AsFloat :=  cdsBMULTA_JUROS.AsFloat ;

    if (cdsRECTITULO.AsString <> '') then
    begin
      str_sql := 'UPDATE TABRETORNO SET BAIXADO ='+ QuotedStr('S') ;
      str_sql := str_sql + ' WHERE TITULO = ';
      str_sql := str_sql +  cdsRECTITULO.AsString ;
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
        exit;
      end;
    end;



    if (cdsRECCODALMOXARIFADO.AsInteger = 51 ) then
      dm.cds_crCAIXA.AsFloat := 728
    else

    dm.cds_crCAIXA.AsFloat := 729;
    dm.cds_crCODCLIENTE.AsInteger := cdsRECCODCLIENTE.AsInteger;
    dm.cds_crN_DOCUMENTO.AsString := ExtractFileName(fArquivoRetorno.OpenDialog1.FileName);

    
    //Faco a baixa pela SP
    DecimalSeparator := '.';
    str_sql := 'EXECUTE PROCEDURE BAIXATITULOSREC(';
    str_sql := str_sql + FloatToStr(dm.cds_crVALORRECEBIDO.AsFloat);
    str_sql := str_sql + ',' + FloatToStr(dm.cds_crFUNRURAL.AsFloat);
    str_sql := str_sql + ',' + FloatToStr(dm.cds_crJUROS.AsFloat);
    str_sql := str_sql + ',' + FloatToStr(dm.cds_crDESCONTO.AsFloat);
    str_sql := str_sql + ',' + FloatToStr(dm.cds_crPERDA.AsFloat);
    str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', dm.cds_crDATABAIXA.AsDateTime) + '''';
    str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', dm.cds_crDATARECEBIMENTO.AsDateTime) + '''';
    if (not dm.cds_crDATACONSOLIDA.IsNull) then
      str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', dm.cds_crDATACONSOLIDA.AsDateTime) + ''''
    else
      str_sql := str_sql + ', null';
    str_sql := str_sql + ',''' + dm.cds_crFORMARECEBIMENTO.AsString + '''';
    str_sql := str_sql + ',''' + dm.cds_crN_DOCUMENTO.AsString + '''';
    str_sql := str_sql + ',' + FloatToStr(dm.cds_crCAIXA.AsFloat);
    str_sql := str_sql + ',' + IntToStr(dm.cds_crCODCLIENTE.AsInteger);
    str_sql := str_sql + ',''' + dm.cds_crSTATUS.AsString + '''';
    str_sql := str_sql + ')';

    DecimalSeparator := ',';
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Baixa não efetuada.' + #10#13 +
      '(Este Caixa pode estar fechado para esta data)', mtWarning, [mbOK], 0);
      exit;
    end;

    dm.sqlsisAdimin.StartTransaction(TD);
    try
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
      exit;
    end;

  except
    MessageDlg('Erro na baixa , execute o processo novamenteo.', mtError, [mbOK], 0);
  end;
    texto_memo := texto_memo + ' | Baixado - (Cod.: ' + cdsRECRA.AsString ;
    texto_memo := texto_memo + ' Cliente : ' + cdsRECNOMECLIENTE.AsString ;
    texto_memo := texto_memo + ' Título : ' + cdsRECTITULO.AsString;
    texto_memo := texto_memo + ' Valor R$ : ' + FloatToStr(dm.cds_crVALORRECEBIDO.AsFloat)+  ')';
    Memo1.Lines.Add(texto_memo);
    n_titulo := cdsTITULO.AsInteger;
    nome_cbr := ExtractFileName(OpenDialog1.FileName);
    if (v_pago > v_titulo) then
    begin
      v_resto := v_pago - v_titulo;
      codigo := cdsRECCODCLIENTE.AsInteger;
      fBaixaretorno.ShowModal;  //  resolver isso 08 /10/ 2010
   end;

{var
  Forma, i, num: Integer;
  str_sql: String;
  TD: TTransactionDesc;
  statusCrTitulo : TUtils;
begin
  statusCrTitulo := TUtils.Create;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  i := 0;
  FormatDateTime('ddmmyyyy',Date);
  Try
    if (dm.cds_crSTATUS.AsString = '7-') then
    begin
      MessageDlg('Título já recebido.', mtWarning, [mbOK], 0);
      exit;
    end;

    //  Corrigir aqui para dar baixa pelo codrecebimento 23/09/2010


    if (cdsRECTITULO.AsString <> '') then
    begin
      str_sql := 'UPDATE RECEBIMENTO SET DP = 0 ';
      str_sql := str_sql + ' WHERE TITULO = ' ;
      str_sql := str_sql + cdsTITULO.AsString ;
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
        exit;
      end;
    end;
   
   if (dm.cds_cr.Active) then
     dm.cds_cr.Close;
     dm.cds_cr.Params[0].AsInteger := cdsRECCODRECEBIMENTO.AsInteger;
  //   dm.cds_cr.Params[0].AsInteger := StrToInt(cdsTITULO.AsString);
  //  cdsREC.Params[1].AsInteger := StrToInt(Centro.Text);
   dm.cds_cr.Open;

    if (dm.cds_cr.State in [dsBrowse, dsInactive]) then
      dm.cds_cr.Edit;

    dm.cds_crVALORRECEBIDO.AsFloat := cdsBVALOR_RECEBIDO.AsFloat;
    dm.cds_crDATABAIXA.AsDateTime := now ;
    dm.cds_crDATARECEBIMENTO.AsDateTime := StrToDate(cdsBDATA.AsString);
    dm.cds_crDATACONSOLIDA.AsDateTime := StrToDate(cdsBDATA.AsString);
    dm.cds_crFORMARECEBIMENTO.AsString := '4' ;
    dm.cds_crJUROS.AsFloat :=  cdsBJUROS.AsFloat;
    dm.cds_crCAIXA.AsFloat := 33;                  // falta aqui 07/10/2010
    dm.cds_crSTATUS.AsString := '7-';
    dm.cds_crCODCLIENTE.AsInteger := cdsRECCODCLIENTE.AsInteger;
    dm.cds_crN_DOCUMENTO.AsString := '171' ;

    //Faco a baixa pela SP
    DecimalSeparator := '.';
    str_sql := 'EXECUTE PROCEDURE BAIXATITULOSREC(';
    str_sql := str_sql + FloatToStr(dm.cds_crVALORRECEBIDO.AsFloat);
    str_sql := str_sql + ',' + FloatToStr(dm.cds_crFUNRURAL.AsFloat);
    str_sql := str_sql + ',' + FloatToStr(dm.cds_crJUROS.AsFloat);
    str_sql := str_sql + ',' + FloatToStr(dm.cds_crDESCONTO.AsFloat);
    str_sql := str_sql + ',' + FloatToStr(dm.cds_crPERDA.AsFloat);
    str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', dm.cds_crDATABAIXA.AsDateTime) + '''';
    str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', dm.cds_crDATARECEBIMENTO.AsDateTime) + '''';
    if (not dm.cds_crDATACONSOLIDA.IsNull) then
      str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', dm.cds_crDATACONSOLIDA.AsDateTime) + ''''
    else
      str_sql := str_sql + ', null';
    str_sql := str_sql + ',''' + dm.cds_crFORMARECEBIMENTO.AsString + '''';
    str_sql := str_sql + ',''' + dm.cds_crN_DOCUMENTO.AsString + '''';
    str_sql := str_sql + ',' + FloatToStr(dm.cds_crCAIXA.AsFloat);
    str_sql := str_sql + ',' + IntToStr(dm.cds_crCODCLIENTE.AsInteger);
    str_sql := str_sql + ',''' + dm.cds_crSTATUS.AsString + '''';
    str_sql := str_sql + ')';

    Edit1.Text := str_sql ;

    DecimalSeparator := ',';
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);

    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Baixa não efetuada.' + #10#13 +
      '(Este Caixa pode estar fechado para esta data)', mtWarning, [mbOK], 0);
      exit;
    end;

  except
    MessageDlg('Erro na baixa , execute o processo novamenteo.', mtError, [mbOK], 0);
  end;

    if (cdsRECTITULO.AsString <> '') then
    begin
      str_sql := 'UPDATE RECEBIMENTO SET DP = 0 ';
      str_sql := str_sql + ' WHERE TITULO = ' ;
      str_sql := str_sql + cdsTITULO.AsString ;
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
        exit;
      end;
    end;

    texto_memo := texto_memo + ' | Baixado - (Cod.: ' + IntToStr(cdsRECCODCLIENTE.AsInteger);
    texto_memo := texto_memo + ' Cliente : ' + cdsRECNOMECLIENTE.AsString;
    texto_memo := texto_memo + ' Título : ' + cdsRECTITULO.AsString;
    texto_memo := texto_memo + ' Valor R$ : ' + FloatToStr(cdsRECVALOR_RESTO.AsFloat) + ')';
    Memo1.Lines.Add(texto_memo);
    n_titulo := cdsTITULO.AsInteger;
    nome_cbr := ExtractFileName(OpenDialog1.FileName);
    if (v_pago > v_titulo) then
    begin
      v_resto := v_pago - v_titulo;
      codigo := cdsRECCODCLIENTE.AsInteger;
     // fBaixaretorno1.ShowModal;    falta  aqui 07/10/2007
   end;

 }
end;

procedure TfArquivoRetorno.naoencontrou;
begin
         MessageDlg('Título ja Recebido ou não Encontrado ' + cdsTITULO.AsString, mtWarning, [mbOK ], 0);
         texto_memo := texto_memo + 'Não encontrado Título nº  ' + IntToStr(cdsTITULO.AsInteger);
         texto_memo := texto_memo + ' Data : ' + cdsDATA.AsString;
         texto_memo := texto_memo + ' Valor R$ : ' + cdsVALOR.AsString + ')';

//MessageDlg('bbababab', mtWarning, [mbOK, mbAbort], 0);
//MessageDlg('', mtWarning, [mbOK, mbCancel], 0);


end;

procedure TfArquivoRetorno.encontrou;
var valtitulo  : Double ;
begin
 //** se título Pendente baixo

  valtitulo := (cdsRECVALORTITULO.Value - cdsBVALOR_RECEBIDO.Value);
  if(valtitulo < 0) then
  valtitulo := (valtitulo *-1);

  if( valtitulo < 0.009 ) then
 // isso até 05/03/13   if (cdsRECVALORTITULO.Value <> cdsBVALOR_RECEBIDO.Value) then

    begin
  //    if MessageDlg('Confirma baixa desse título ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      baixa;
    end
   else
   begin
//     MessageDlg('Título ' + cdsTITULO.asstring + ' Já foi Baixado ', mtInformation, [mbOK], 0);
   if MessageDlg('Confirma baixa desse título'+#13+#10+' Diferença entre Valores '+#13+#10+
   'Recebido ' + cdsBVALOR_RECEBIDO.Text +#13+#10+
   'Titulo   ' + cdsRECVALORTITULO.Text
     , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      baixa;


   end;

end;

procedure TfArquivoRetorno.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TfArquivoRetorno.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  txt : TStrings;
  tabela,  tipo,strExporta, strApaga, strInsere, nome_txt : string;
  campo : variant;
  TD: TTransactionDesc;
begin

  if (cds.Active) then
     cds.Close;

  if (sqs.Active) then
    sqs.Close;
  tabela := 'TABRETORNO';
  sqs.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ''' + tabela + '''';
  sqs.Open;

  if not sqs.IsEmpty then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM TABRETORNO');
    dm.sqlsisAdimin.Commit(TD);
  end;

  if (sqs.Active) then
    sqs.Close;

 if (cdsDebito.Active) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM TABDEBITO');
    dm.sqlsisAdimin.Commit(TD);
  end;
  if (cdsDebito.Active) then
     cdsDebito.Close;


end;

procedure TfArquivoRetorno.atualizacbr;
begin
  if (not cds_cbr.Active) then
     cds_cbr.Open;
  cds_cbr.Append;
  // pego o generator
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CBR, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cds_cbrID_CBR.AsInteger:=dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;

  cds_cbrDATABAIXA.AsDateTime := Now;
  cds_cbrNOMECBR.AsString := ExtractFileName(fArquivoRetorno.OpenDialog1.FileName);
  cds_cbrOBS.Value := Memo1.Text;
  cds_cbr.ApplyUpdates(0);
  cds_cbr.Close;

  MessageDlg('Arquivo Processado ', mtConfirmation, [mbOK], 0);
  BitBtn6.Click;
end;

procedure TfArquivoRetorno.BitBtn5Click(Sender: TObject);
var
  txt : TStrings;
  tabela,  tipo,strExporta, strApaga, strInsere, nome_txt : string;
  campo : variant;
  TD: TTransactionDesc;

begin
 if (cds.Active) then
     cds.Close;

  if (cdsREC.Active) then
     cdsREC.Close;
  Memo1.Text := '';

  if (cdsB.Active) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM TABRETORNO');
    dm.sqlsisAdimin.Commit(TD);
  end;

  if (cdsB.Active) then
     cdsB.Close;

  if (sqs.Active) then
    sqs.Close;

  if (cdsBaixa.Active) then
     cdsBaixa.Close;


end;

procedure TfArquivoRetorno.BitBtn6Click(Sender: TObject);
begin
  if (cdsBaixa.Active) then
     cdsBaixa.Close;
     cdsBaixa.Open;
end;


procedure TfArquivoRetorno.BitBtn7Click(Sender: TObject);
  var i : integer;
  Txt: Textfile;
  Entrada , tipo: string;
begin

    BitBtn8.Click;   //limpar tudo antes

    if OpenDialog1.Execute then
    begin
      cdsDebito.Open;
      AssignFile(Txt,(OpenDialog1.FileName));// NOME do arquivo texto
      Reset(Txt);
      While not Eoln(Txt) do
      begin
        Readln(Txt,Entrada);
        tipo := Copy(Entrada,1,01);
        if (Tipo = 'F') then
        begin
          cdsDebito.Append;
          cdsDebito.FieldByName('ID').Value:= Copy(Entrada,1,01);
          cdsDebito.FieldByName('CPF').Value:= Copy(Entrada,15,11);
          cdsDebito.FieldByName('AGENCIA').Value:= Copy(Entrada,27,06) ;
          cdsDebito.FieldByName('CONTA').Value:= Copy(Entrada,31,06);
          //cdsDebito.FieldByName('VENCIMENTO').Value:= Copy(Entrada,45,08);
          cdsDebito.FieldByName('VENCIMENTO').Value:= Copy(Entrada,51,02)  + '/'  + Copy(Entrada,49,02) + '/' + Copy(Entrada,47,02);
          cdsDebito.FieldByName('VALOR').Value := Copy(Entrada,55,13);
          cdsDebito.FieldByName('CENTAVOS').Value := Copy(Entrada,66,02);
          cdsDebito.FieldByName('DEBITO').Value := Copy(Entrada,68,02) ;
          cdsDebito.Post;
        end;
      end;
      cdsDebito.ApplyUpdates(0);
      cdsDebito.First;
      CloseFile(Txt);
    end;



   Label8.Caption := IntToStr(cdsDebito.RecordCount);
    if (Label8.Caption = '0' ) then
         MessageDlg('Esse Arquivo é para Confirmar a Inclusão'+#13+#10+''+#13+#10+
                    'De Cadastramento de Debito Automatico.  '+#13+#10+''+#13+#10+' ', mtWarning, [mbOK], 0);

  // Label8.Caption := OpenDialog1.FileName;



end;

procedure TfArquivoRetorno.BitBtn8Click(Sender: TObject);
var  TD: TTransactionDesc;
begin
 if (cdsDebito.Active) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM TABDEBITO');
    dm.sqlsisAdimin.Commit(TD);
  end;
  if (cdsDebito.Active) then
     cdsDebito.Close;


     
end;

end.







