unit uLancaProcSaude;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  JvExStdCtrls, JvEdit, JvDBSearchEdit, Mask, JvExMask, JvToolEdit,
  JvBaseEdits, DBXPress, JvComponentBase, JvFormAutoSize, JvCombobox,
  JvDBSearchComboBox, FMTBcd, DBClient, Provider, SqlExpr, EDBFind, DBCtrls;

type
  TfLancaProcSaude = class(TfPai)
    Label3: TLabel;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    JvDBSearchEdit1: TJvDBSearchEdit;
    Label6: TLabel;
    JvDBSearchEdit3: TJvDBSearchEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    JvDBSearchEdit5: TJvDBSearchEdit;
    Label10: TLabel;
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    JvCalcEdit1: TJvCalcEdit;
    JvCalcEdit2: TJvCalcEdit;
    dsProcedimento: TDataSource;
    dsContaCredito: TDataSource;
    Label13: TLabel;
    Label11: TLabel;
    JvDBSearchEdit4: TJvDBSearchComboBox;
    sds_Movimento: TSQLDataSet;
    sds_MovimentoCODMOVIMENTO: TIntegerField;
    sds_MovimentoDATAMOVIMENTO: TDateField;
    sds_MovimentoCODCLIENTE: TIntegerField;
    sds_MovimentoCODNATUREZA: TSmallintField;
    sds_MovimentoSTATUS: TSmallintField;
    sds_MovimentoCODUSUARIO: TSmallintField;
    sds_MovimentoNOMECLIENTE: TStringField;
    sds_MovimentoDESCNATUREZA: TStringField;
    sds_MovimentoALMOXARIFADO: TStringField;
    sds_MovimentoCODVENDEDOR: TSmallintField;
    sds_MovimentoCODALMOXARIFADO: TIntegerField;
    sds_MovimentoNOMEFORNECEDOR: TStringField;
    sds_MovimentoCODFORNECEDOR: TIntegerField;
    sds_MovimentoTIPOTITULO: TSmallintField;
    sds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    sds_MovimentoNOMEUSUARIO: TStringField;
    sds_MovimentoOBS: TStringField;
    sds_MovimentoPLACA: TStringField;
    sds_MovimentoMARCA_MODELO: TStringField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    sds_MovimentoCONTROLE: TStringField;
    sds_Mov_Det: TSQLDataSet;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetPRODUTO: TStringField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetBAIXA: TStringField;
    sds_Mov_DetCONTROLE: TSmallintField;
    sds_Mov_DetCODALMOXARIFADO: TIntegerField;
    sds_Mov_DetALMOXARIFADO: TStringField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetDTAFAB: TDateField;
    sds_Mov_DetDTAVCTO: TDateField;
    sds_Mov_DetCODIGO: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    sds_Mov_DetLOTES: TStringField;
    dsp_Mov_det: TDataSetProvider;
    dsp_Movimento: TDataSetProvider;
    cds_Movimento: TClientDataSet;
    cds_MovimentoCODMOVIMENTO: TIntegerField;
    cds_MovimentoDATAMOVIMENTO: TDateField;
    cds_MovimentoCODCLIENTE: TIntegerField;
    cds_MovimentoCODNATUREZA: TSmallintField;
    cds_MovimentoSTATUS: TSmallintField;
    cds_MovimentoCODUSUARIO: TSmallintField;
    cds_MovimentoNOMECLIENTE: TStringField;
    cds_MovimentoDESCNATUREZA: TStringField;
    cds_MovimentoALMOXARIFADO: TStringField;
    cds_MovimentoCODVENDEDOR: TSmallintField;
    cds_MovimentoCODALMOXARIFADO: TIntegerField;
    cds_MovimentoNOMEFORNECEDOR: TStringField;
    cds_MovimentoCODFORNECEDOR: TIntegerField;
    cds_MovimentoTIPOTITULO: TSmallintField;
    cds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    cds_MovimentoNOMEUSUARIO: TStringField;
    cds_MovimentoOBS: TStringField;
    cds_MovimentoPLACA: TStringField;
    cds_MovimentoMARCA_MODELO: TStringField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_MovimentoCONTROLE: TStringField;
    cds_Mov_det: TClientDataSet;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detPRODUTO: TStringField;
    cds_Mov_detUN: TStringField;
    cds_Mov_detValorTotal: TCurrencyField;
    cds_Mov_detQTDE_ALT: TFloatField;
    cds_Mov_detBAIXA: TStringField;
    cds_Mov_detCONTROLE: TSmallintField;
    cds_Mov_detCODALMOXARIFADO: TIntegerField;
    cds_Mov_detALMOXARIFADO: TStringField;
    cds_Mov_detVALORUNITARIOATUAL: TFloatField;
    cds_Mov_detCOD_COMISSAO: TIntegerField;
    cds_Mov_detCONTA_DESPESA: TStringField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detQTDE_PCT: TFloatField;
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detDTAFAB: TDateField;
    cds_Mov_detDTAVCTO: TDateField;
    cds_Mov_detCODIGO: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detLOTES: TStringField;
    cds_Mov_detTotalPedido: TAggregateField;
    DtSrc1: TDataSource;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsCODPRODUTO: TIntegerField;
    cdsVALORUNITARIOATUAL: TFloatField;
    cdsESTOQUEREPOSICAO: TFloatField;
    cdsPRODUTO: TStringField;
    cdsCONTA_DESPESA: TStringField;
    cdsCONTA_RECEITA: TStringField;
    cdsCONTA_ESTOQUE: TStringField;
    cdsVALOR_PRAZO: TFloatField;
    cdsCODPRO: TStringField;
    JvDBSearchEdit2: TJvDBSearchComboBox;
    JvDBSearchEdit6: TJvDBSearchComboBox;
    sdsTitular: TSQLDataSet;
    sdsTitularCODCLIENTE: TIntegerField;
    cdsTitular: TClientDataSet;
    dspTitular: TDataSetProvider;
    cdsTitularCODCLIENTE: TIntegerField;
    sdsContaMov: TSQLDataSet;
    Label15: TLabel;
    Edit1: TEdit;
    btnreembolso: TBitBtn;
    Reembolso1: TMenuItem;
    Edit2: TEdit;
    Label12: TLabel;
    JvDateEdit3: TJvDateEdit;
    CDSc: TClientDataSet;
    DSPc: TDataSetProvider;
    SQLc: TSQLDataSet;
    SQLcNOMECLIENTE: TStringField;
    SQLcDATACADASTRO: TDateField;
    CDScNOMECLIENTE: TStringField;
    CDScDATACADASTRO: TDateField;
    DBEdit1: TDBEdit;
    SQLcTEM_IE: TStringField;
    CDScTEM_IE: TStringField;
    Label14: TLabel;
    Label16: TLabel;
    SQLDataSet1: TSQLDataSet;
    sql_dependente: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1CODCLIENTE: TIntegerField;
    SQLDataSet1RAZAOSOCIAL: TStringField;
    SQLDataSet1NOMECLIENTE: TStringField;
    sql_dependenteCODCLIENTE: TIntegerField;
    sql_dependenteRAZAOSOCIAL: TStringField;
    sql_dependenteNOMECLIENTE: TStringField;
    data_recibo: TJvDateEdit;
    Label17: TLabel;
    dsCDSV: TClientDataSet;
    DSPV: TDataSetProvider;
    sqlV: TSQLDataSet;
    sqlVNOMECLIENTE: TStringField;
    sqlVRA: TStringField;
    sqlVDATACADASTRO: TDateField;
    sqlVEMVIAGEM: TStringField;
    dsCDSVNOMECLIENTE: TStringField;
    dsCDSVRA: TStringField;
    dsCDSVDATACADASTRO: TDateField;
    dsCDSVEMVIAGEM: TStringField;
    JvCalcEdit3: TJvCalcEdit;
    BitBtn1: TBitBtn;
    DataRecibo1: TMenuItem;
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edCodClienteExit(Sender: TObject);
    procedure JvDBSearchEdit3Exit(Sender: TObject);
    procedure JvDBSearchEdit4Exit(Sender: TObject);
    procedure JvDateEdit1Exit(Sender: TObject);
    procedure JvDateEdit2Exit(Sender: TObject);
    procedure btnreembolsoClick(Sender: TObject);
    procedure JvDBSearchEdit2Exit(Sender: TObject);
    procedure data_reciboExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    codReceb, codPagto, codMov, codVen, codMovD, codForn : integer;
    ccusto, ComandTextS_7, codConta : string;
    { Public declarations }
  end;

var
  fLancaProcSaude: TfLancaProcSaude;

implementation

uses UDmSaude, uDM, DateUtils;

{$R *.dfm}

procedure TfLancaProcSaude.btnGravarClick(Sender: TObject);
var
  TD: TTransactionDesc;
  str1: string;
  Save_Cursor:TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  if (codMov = 0) then
  begin
    try
      { rotina }
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      // Procuro o C?digo do Titular

      if (cdsTitular.Active) then
        cdsTitular.Close;
      cdsTitular.Params[0].AsString := trim(dmSaude.cdsClienteBuscaRAZAOSOCIAL.AsString);
      cdsTitular.Open;

      str1 := 'EXECUTE PROCEDURE LANCARECEITASAUDE( ';
      str1 := str1 + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)); // Emissao
      str1 := str1 + ',';
      str1 := str1 + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)); // Vencimento
      str1 := str1 + ',';
      str1 := str1 + IntToStr(cdsTitularCODCLIENTE.AsInteger); // C?dClienteTitular
      str1 := str1 + ',';
      // C?dClienteDependente (Gravado no Campo CONTROLE movDetalhe)
      str1 := str1 + IntToStr(dmSaude.cdsClienteBuscaCODCLIENTE.asInteger);
      str1 := str1 + ',';
      str1 := str1 + IntToStr(cdsCODPRODUTO.asInteger); // Conta a Receber
      str1 := str1 + ',';
      //str1 := str1 + IntToStr(dm.cds_1_contasCODIGO.asInteger); // Conta a Pagar
      str1 := str1 + 'null,';
      str1 := str1 + IntToStr(dmSaude.cdsFornecedorCODFORNECEDOR.asInteger); // C?dFornecedor (Contratado)
      str1 := str1 + ',';
      DecimalSeparator := '.';
      //str1 := str1 + FloatToStr(JvCalcEdit3.Value); // Valor a Pagar Fornecedor (contratado);
      str1 := str1 + '0,';
      if (ccusto = 'ASH') then
      begin
        str1 := str1 + FloatToStr(JvCalcEdit2.Value); // Valor a REceber do Cliente
      end
      else begin
        str1 := str1 + FloatToStr(cdsVALOR_PRAZO.AsFloat);
      end;
      str1 := str1 + ',';
      if (ccusto = 'ASH') then
      begin
        str1 := str1 + FloatToStr(JvCalcEdit1.Value); // Valor REEMBOLSO para o Cliente
      end
      else begin
        str1 := str1 + '0';
      end;
      str1 := str1 + ',';
      str1 := str1 + QuotedStr(memo1.Text); // Historico
      str1 := str1 + ',';
      if (ccusto = 'ASH') then
        str1 := str1 + '51' // ASH
      else
        str1 := str1 + '52'; // PCMSO
      if (codReceb = 0) then
        str1 := str1 + ', null'
      else
        str1 := str1 + ', ' + IntToStr(codReceb);
      if (codReceb = 0) then
        str1 := str1 + ', null'
      else
        str1 := str1 + ', ' + IntToStr(codPagto);

      str1 := str1 +  ', ' + QuotedStr(Edit2.Text);

      str1 := str1 + ',';
      if(data_recibo.Text = '  /  /    ') then
        str1 := str1 + ' null'
      else
      str1 := str1 + QuotedStr(FormatDateTime('mm/dd/yy',DATA_RECIBO.Date)); // DATA RECIBO

      // valor recibo Associado

      str1 := str1 + ',';
      if (ccusto = 'ASH') then
      begin
        str1 := str1 + FloatToStr(JvCalcEdit3.Value); // Valor Recibo Intregal para o Socio
      end
      else begin
        str1 := str1 + '0';
      end;


      str1 := str1 + ')';
      DecimalSeparator := ',';
      dm.sqlsisAdimin.ExecuteDirect(str1);
      Try
         dm.sqlsisAdimin.Commit(TD);
         MessageDlg('Registro gravado com sucesso.', mtConfirmation,
             [mbOk], 0);
      except
         dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
         MessageDlg('Erro no sistema, registro n?o alterado?', mtError,
             [mbOk], 0);
      end;
      //inherited;
      DtSrc.DataSet.Cancel;
    finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
    end;
  end // do if
  else begin // ? uma altera??o
    try
      { rotina }
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      DecimalSeparator := '.';
                               // trocar aqui
      //dmSaude.cdsClienteBusca.Locate('NOMECLIENTE', JvDBSearchEdit2.Text, [loCaseInsensitive]);

      if (sql_dependente.Active) then
        sql_dependente.Close;
      sql_dependente.Params[0].AsString := JvDBSearchEdit2.Text;
      sql_dependente.Open;

      if (cdsTitular.Active) then
        cdsTitular.Close;
      cdsTitular.Params[0].AsString := trim(sql_dependenteRAZAOSOCIAL.AsString);//trim(dmSaude.cdsClienteBuscaRAZAOSOCIAL.AsString);
      cdsTitular.Open;

      str1 := 'UPDATE MOVIMENTO SET DATAMOVIMENTO = ' +
        QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) +
        ' , CODCLIENTE = ' + IntToStr(cdsTitularCODCLIENTE.AsInteger) +
        ' WHERE CODMOVIMENTO = ' + IntToStr(codMov);
      dm.sqlsisAdimin.ExecuteDirect(str1);

      dmSaude.cdsFornecedor.Locate('NOMEFORNECEDOR', JvDBSearchEdit6.Text, [loCaseInsensitive]);
      if (not cds.Active) then
         cds.Open;
      cds.Locate('PRODUTO', JvDBSearchEdit4.Text, [loCaseInsensitive]);
      str1 := 'UPDATE MOVIMENTODETALHE SET PRECO = '+
        FloatToStr(JvCalcEdit2.Value - JvCalcEdit1.Value) +
        ' ,CODPRODUTO = ' + IntToStr(cdsCODPRODUTO.asInteger) +
        ' ,CONTROLE = ' + IntToStr(sql_dependenteCODCLIENTE.asInteger) +
        ' ,COD_COMISSAO = ' + IntToStr(dmSaude.cdsFornecedorCODFORNECEDOR.asInteger) +
        ' ,LOTE = ' + QuotedStr(memo1.Text) +
        ' ,DTAVCTO = ' + QuotedStr(FormatDateTime('mm/dd/yy',data_recibo.Date)) +
        ' ,PRECOCUSTO = ' + FloatToStr(JvCalcEdit3.Value) +
        ' where codDetalhe = ' + IntToStr(codMovd);
      dm.sqlsisAdimin.ExecuteDirect(str1);

      str1 := 'UPDATE VENDA set n_boleto = ' + QuotedStr(Edit2.Text)+ ', dataVenda = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) +
        ', dataVencimento = ' + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) +
        ', datasistema = ' + QuotedStr(FormatDateTime('mm/dd/yy',data_recibo.Date)) +
        ', OUTRAS_DESP = ' + FloatToStr(JvCalcEdit3.Value)+
        ' where codVenda = ' + IntToStr(codVen);
      dm.sqlsisAdimin.ExecuteDirect(str1);

      DecimalSeparator := ',';
      dm.sqlsisAdimin.Commit(TD);
         MessageDlg('Registro alterado com sucesso.', mtConfirmation,
             [mbOk], 0);
      cds_Movimento.Cancel;
    except
      dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
      MessageDlg('Erro no sistema, registro n?o alterado?', mtError,
        [mbOk], 0);
    end;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLancaProcSaude.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmSaude.cdsFornecedor.Close;
  dmSaude.cdsClienteBusca.Close;
  dm.cds_1_contas.Close;
  dm.cds_7_contas.Close;
  dm.cds_7_contas.CommandText := ComandTextS_7;
end;

procedure TfLancaProcSaude.btnIncluirClick(Sender: TObject);
var  ano, mes,mes1, dia: word;
begin
  inherited;

   JvDateEdit1.Date := Today;
  if (not DMSaude.sqlVencimentoASH.Active) then
    DMSaude.sqlVencimentoASH.Open;
  Edit1.Text := DMSaude.sqlVencimentoASHDESCRICAO.Text;

  decodedate(StrToDate(Edit1.Text), ano, mes, dia);
  decodedate(JvDateEdit1.date, ano, mes1, dia);

  if(mes = mes1) then
  MessageDlg('As Mensalidades Deste Mes j? Foram Geradas '+#13+#10+' Lan?amento com o mesmo Mes do Vencimento '+#13+#10+' Confirme se as Datas Est?o Corretas ', mtWarning, [mbOK], 0);

  codReceb := 0;

{  if (not dm.parametro.Active) then
    dm.parametro.Open;

  if (dm.parametro.Locate('PARAMETRO','CONTASRECEITAS',[loCaseInsensitive])) then
  begin
    if (ComandTextS_7 = '') then
      ComandTextS_7 := dm.s_7.CommandText;
    if dm.cds_7_contas.Active then
      dm.cds_7_contas.Close;
    dm.cds_7_contas.CommandText := 'select CODIGO, CONTA, NOME, RATEIO, ' +
      ' CODREDUZIDO from PLANO where plnCtaRoot(CONTA) = ' +
       QuotedStr(dm.parametroDADOS.AsString) + ' and CONSOLIDA = ' + QuotedStr('S');
    //dm.cds_7_contas.Params[0].AsString := dm.parametroDADOS.AsString;
    dm.cds_7_contas.Open;
  end
  else begin
    MessageDlg('Cadastre na tabela Parametros a conta de CONTASRECEITAS para ser utilizada aqui.', mtInformation, [mbOK], 0);
    exit;
  end;

  dm.parametro.Close;
 }
  if (not cds.Active) then
    cds.Open;

  if (dmSaude.cdsClienteBusca.Active) then
    dmSaude.cdsClienteBusca.close;
  dmSaude.cdsClienteBusca.CommandText := 'select CODCLIENTE, NOMECLIENTE, ' +
    'RAZAOSOCIAL, RA , TEM_IE , DATACADASTRO from CLIENTES where status = 0 and GRUPO_CLIENTE = ' + QuotedStr(ccusto) +
    ' order by NOMECLIENTE ';
 // dmSaude.cdsClienteBusca.Params[0].AsString := ccusto;
  dmSaude.cdsClienteBusca.Open;

  if (dmSaude.cdsFornecedor.Active) then
    dmSaude.cdsFornecedor.Close;
  dmSaude.cdsFornecedor.Params[0].AsInteger := 1;
  dmSaude.cdsFornecedor.Params[1].AsInteger := 4;
  dmSaude.cdsFornecedor.Params[2].AsInteger := 5;
  dmSaude.cdsFornecedor.Params[3].AsInteger := 6;

  dmSaude.cdsFornecedor.Open;

  JvDBSearchEdit1.Text := '';  // comentei pra n?o precisar preencher quando for + de um lan?amento
  JvDBSearchEdit2.Text := '';  // comentei pra n?o precisar preencher quando for + de um lan?amento
  JvDBSearchEdit3.Text := '';
  JvDBSearchEdit4.Text := '';
  JvDBSearchEdit5.Text := '';
  JvDBSearchEdit6.Text := '';
  data_recibo.Text := '';
  Edit2.Text := '';
  //JvDBSearchEdit7.Text := '';
  //JvDBSearchEdit8.Text := '';

  JvDateEdit1.Date := Today;
  JvDateEdit2.date := StrToDate(Edit1.Text);

  JvCalcEdit1.Text := '';
  JvCalcEdit2.Text := '';
  //JvCalcEdit3.Text := '';

  Memo1.Clear;
  JvDateEdit1.SetFocus;
end;

procedure TfLancaProcSaude.DtSrcStateChange(Sender: TObject);
var icompon: integer;
begin
  inherited;
  for icompon := 0 to ComponentCount - 1 do
  begin
    if Components[icompon] is TJvDBSearchEdit then
      (Components[icompon] as TJvDBSearchEdit).Enabled := DtSrc.State in [dsInsert,dsEdit];
    if Components[icompon] is TJvDateEdit then
      (Components[icompon] as TJvDateEdit).Enabled := DtSrc.State in [dsInsert,dsEdit];
    if Components[icompon] is TJvCalcEdit then
      (Components[icompon] as TJvCalcEdit).Enabled := DtSrc.State in [dsInsert,dsEdit];
    if Components[icompon] is TMemo then
      (Components[icompon] as TMemo).Enabled := DtSrc.State in [dsInsert,dsEdit];
  end;
end;

procedure TfLancaProcSaude.FormCreate(Sender: TObject);
begin
  inherited;
  ComandTextS_7 := '';
  codReceb := 0;
  codPagto := 0;
  codMov := 0;
end;

procedure TfLancaProcSaude.btnExcluirClick(Sender: TObject);
var
  TD: TTransactionDesc;
 // str1: string;
  Save_Cursor:TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  if (codMov > 0) then
  begin
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
             [mbYes,mbNo],0) = mrYes then
    begin
      try
        if (sdsContaMov.Active) then
          sdsContaMov.Close;
        sdsContaMov.Params[0].AsInteger := codMov;
        sdsContaMov.Open;
        if (sdsContaMov.Fields[0].AsInteger > 1) then
        begin
          { rotina }
          TD.TransactionID := 1;
          TD.IsolationLevel := xilREADCOMMITTED;
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTODETALHE WHERE ' +
              'CODDETALHE = ' + IntToStr(codMovD));

          DecimalSeparator := '.';
         {
          str1 := 'UPDATE VENDA set valor = valor - ' + FloatToStr(JvCalcEdit2.Value) +
            ', desconto = desconto + ' + FloatToStr(JvCalcEdit1.Value) +
            ' where codVenda = ' + IntToStr(codVen);
          DecimalSeparator := ',';
          dm.sqlsisAdimin.ExecuteDirect(str1);
         }
          dm.sqlsisAdimin.Commit(TD);
        end
        else begin
          { rotina }
          TD.TransactionID := 1;
          TD.IsolationLevel := xilREADCOMMITTED;
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTO WHERE ' +
              'CODMOVIMENTO = ' + IntToStr(codMov));

         // dm.sqlsisAdimin.ExecuteDirect(str1);

          dm.sqlsisAdimin.Commit(TD);

        end;
        MessageDlg('Registro exclu?do com sucesso.', mtConfirmation,
           [mbOk], 0);
        cds_Movimento.Cancel;
      except
        dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
        MessageDlg('Erro no sistema, registro n?o exclu?do.', mtError,
          [mbOk], 0);
      end;
    end;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLancaProcSaude.FormShow(Sender: TObject);
//var  ano, mes,mes1, dia: word;
begin
  inherited;
 {  JvDateEdit1.Date := Today;
  if (not DMSaude.sqlVencimentoASH.Active) then
    DMSaude.sqlVencimentoASH.Open;
  Edit1.Text := DMSaude.sqlVencimentoASHDESCRICAO.Text;

  decodedate(StrToDate(Edit1.Text), ano, mes, dia);
  decodedate(JvDateEdit1.date, ano, mes1, dia);

  if(mes = mes1) then
  MessageDlg('As Mensalidades Deste Mes j? Foram Geradas '+#13+#10+' Lan?amento com o mesmo Mes do Vencimento '+#13+#10+' Confirme se as Datas Est?o Corretas ', mtWarning, [mbOK], 0);
 }
  if (not cds.Active) then
    cds.Open;
  if (dmSaude.cdsFornecedor.Active) then
    dmSaude.cdsFornecedor.Close;
  dmSaude.cdsFornecedor.Params[0].AsInteger := 1;
  dmSaude.cdsFornecedor.Params[1].AsInteger := 4;
  dmSaude.cdsFornecedor.Params[2].AsInteger := 5;
  dmSaude.cdsFornecedor.Params[3].AsInteger := 6;
  dmSaude.cdsFornecedor.Open;
  if (cds_Movimento.Active) then
  if (not cds_Movimento.IsEmpty) then
  begin
    if (not dmSaude.cdsFornecedor.Locate('codFornecedor', codForn, [loCaseInsensitive])) then
    begin
      JvDBSearchEdit5.Text := '';
      JvDBSearchEdit6.Text := '';
    end;
    cds.Locate('CodPro', codConta, [loCaseInsensitive]);
  end;


end;

procedure TfLancaProcSaude.edCodClienteExit(Sender: TObject);
begin
  inherited;
 { if edCodCliente.Text = '' then exit;
   if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
   dm.scds_cliente_proc.Params[0].Clear;
   dm.scds_cliente_proc.Params[1].Clear;
   dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(edCodCliente.Text);
   dm.scds_cliente_proc.Open;
     JvDBSearchEdit2.Text := dm.scds_cliente_procNOMECLIENTE.asString;
   dm.scds_cliente_proc.Close;

  }
end;

procedure TfLancaProcSaude.JvDBSearchEdit3Exit(Sender: TObject);
begin
  inherited;
  JvCalcEdit2.Text := FloatToStr(cdsVALOR_PRAZO.AsFloat);
end;

procedure TfLancaProcSaude.JvDBSearchEdit4Exit(Sender: TObject);
begin
  inherited;
  JvCalcEdit2.Text := FloatToStr(cdsVALOR_PRAZO.AsFloat);
end;

procedure TfLancaProcSaude.JvDateEdit1Exit(Sender: TObject);

begin
  inherited;
 { if ( JvDateEdit1.date  >= StrToDate(Edit1.Text)) then
  MessageDlg('Data do Vencimento est? Menor '+#13+#10+'Do que a data deste Lan?amento ', mtError, [mbOK], 0);
  }

end;

procedure TfLancaProcSaude.JvDateEdit2Exit(Sender: TObject);
begin
  inherited;
//  if ( JvDateEdit2.date <= JvDateEdit1.date ) then
//  MessageDlg('Data do Vencimento est? Menor '+#13+#10+'Do que a data deste Lan?amento ', mtError, [mbOK], 0);
end;

procedure TfLancaProcSaude.btnreembolsoClick(Sender: TObject);
begin
  inherited;
 JvCalcEdit1.Value := JvCalcEdit2.Value;
 JvCalcEdit2.Clear;
end;

procedure TfLancaProcSaude.JvDBSearchEdit2Exit(Sender: TObject);
var data : tdatetime;
begin
 // inherited;
  Data := Date;
  if(JvDBSearchEdit2.Text = '')then
  exit;
  if dsCDSV.Active then
      dsCDSV.Close;
   dsCDSV.Params[0].AsString := trim(JvDBSearchEdit1.Text);
   dsCDSV.Open;

   if ( (dsCDSVEMVIAGEM.Value = 'S')) then
   begin
     MessageDlg('Associado em Viagem ', mtWarning, [mbOK], 0);
     Label16.Caption := 'Associado em Viagem'  ;
     dsCDSV.Close;
   end;

  {
  Data := Date;
  if(JvDBSearchEdit2.Text = '')then
  exit;
  if CDSc.Active then
      CDSc.Close;
   CDSc.Params[0].AsString := trim(JvDBSearchEdit1.Text);
   CDSc.Open;

   if ( (CDScDATACADASTRO.Value + 180 ) >= (data)) then
   begin
     MessageDlg('Associado em Car?ncia ', mtWarning, [mbOK], 0);
     Label16.Caption := 'Associado em Car?ncia '  ;
     CDSC.Close;
   end;

   }
end;

procedure TfLancaProcSaude.data_reciboExit(Sender: TObject);
var datarec : tdatetime;
sql_recibo : string;
begin
 // inherited;

  if(data_recibo.Text = '  /  /    ') then
    begin
      JvDBSearchEdit5.SetFocus;
      exit;
    end
  else

  Datarec := data_recibo.Date ;
  if(JvDBSearchEdit2.Text = '')then
  exit;
  if CDSc.Active then
      CDSc.Close;
  {

   sql_recibo := 'select nomecliente , ra , datacadastro , tem_ie ' +
    ' from clientes ' +
    ' where GRUPO_CLIENTE  ' =   QuotedStr('ASH') +
    ' AND (datacadastro + 180 ) >= (Datarec) and  status = 0 ' +
    ' and tem_ie ' = QuotedStr('S') +
    ' and ra ' = QuotedStr('4680000')  ;
   }
   CDSc.Params[0].AsDate :=  Datarec ;
   CDSc.Params[1].AsString := trim(JvDBSearchEdit1.Text);

   CDSc.Open;

   if ( (CDScDATACADASTRO.Value + 180 ) >= (datarec)) then
   begin
   MessageDlg('Lan?amento Recibo : "Associado em Car?ncia" ', mtWarning, [mbOK], 0);
   Label16.Caption := 'Lan?amento Recibo : "Associado em Car?ncia" '  ;
   CDSC.Close;
   end;

  // end
end;

procedure TfLancaProcSaude.BitBtn1Click(Sender: TObject);
begin
 // inherited;
 Memo1.Lines.Add('DATA RECIBO :' + data_recibo.Text );
end;

end.
