unit uEnvelope;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, StdCtrls, Buttons, JvExStdCtrls,
  JvCombobox, JvDBSearchComboBox, JvEdit, JvDBSearchEdit, ExtCtrls, Mask,
  SqlExpr, Provider, DB, DBClient, DBLocal, DBLocalS,Printers,
  VDOBasePrinter, VDODmPrinter, FMTBcd ,COMOBJ;

type
  TfEnvelope = class(TForm)
    BitBtn1: TBitBtn;
    VCLReport1: TVCLReport;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    BitBtn3: TBitBtn;
    meDta4: TMaskEdit;
    meDta3: TMaskEdit;
    BitBtn7: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    escolha: TRadioGroup;
    BitBtn4: TBitBtn;
    sql_imprimi: TSQLClientDataSet;
    sql_imprimiCODCLIENTE: TIntegerField;
    sql_imprimiNOMECLIENTE: TStringField;
    sql_imprimiGRUPO_CLIENTE: TStringField;
    sql_imprimiSTATUS: TSmallintField;
    sql_imprimiRA: TStringField;
    sql_imprimiLOGRADOURO: TStringField;
    sql_imprimiCIDADE: TStringField;
    sql_imprimiBAIRRO: TStringField;
    sql_imprimiUF: TStringField;
    sql_imprimiCEP: TStringField;
    sql_imprimiCOMPLEMENTO: TStringField;
    RadioGroup1: TRadioGroup;
    SpeedButton2: TSpeedButton;
    VDODmPrinter1: TVDODmPrinter;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    OpenDialog1: TOpenDialog;
    sParametro: TSQLDataSet;
    sParametroPARAMETRO: TStringField;
    sParametroDADOS: TStringField;
    sParametroD1: TStringField;
    sParametroD2: TStringField;
    sParametroD3: TStringField;
    sParametroD4: TStringField;
    sParametroD5: TStringField;
    sParametroD6: TStringField;
    sParametroD7: TStringField;
    sParametroD8: TStringField;
    sParametroD9: TStringField;
    pParametro: TDataSetProvider;
    cParametro: TClientDataSet;
    cParametroPARAMETRO: TStringField;
    cParametroDADOS: TStringField;
    cParametroD1: TStringField;
    cParametroD2: TStringField;
    cParametroD3: TStringField;
    cParametroD4: TStringField;
    cParametroD5: TStringField;
    cParametroD6: TStringField;
    cParametroD7: TStringField;
    cParametroD8: TStringField;
    cParametroD9: TStringField;
    Imprimir: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    dspASH: TDataSetProvider;
    sqlASH: TSQLDataSet;
    dsASH: TClientDataSet;
    dsASHCODCLIENTE: TIntegerField;
    dsASHRA: TStringField;
    dsASHNOMECLIENTE: TStringField;
    dsASHGRUPO_CLIENTE: TStringField;
    dsASHSTATUS: TSmallintField;
    dsASHLOGRADOURO: TStringField;
    dsASHCIDADE: TStringField;
    dsASHBAIRRO: TStringField;
    dsASHUF: TStringField;
    dsASHCEP: TStringField;
    edt1: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure meDta3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ImprimirClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEnvelope: TfEnvelope;
  datastr : string ;
  imprimi : integer ;
implementation

uses UDm;

{$R *.dfm}

procedure TfEnvelope.BitBtn1Click(Sender: TObject);
begin
  if (Edit1.Text = '' ) then
    begin
     MessageDlg('Escolha um associado', mtInformation, [mbOK], 0);
    Edit1.SetFocus;
    exit;
    end;
  if (escolha.ItemIndex = 1) then
  VCLReport1.Filename := str_relatorio + 'envelope_avulso_matricial.rep'
  else
  VCLReport1.Filename := str_relatorio + 'envelope_avulso.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('COD').Value := Edit1.Text;
  VCLReport1.Report.Params.ParamByName('GRUPO').Value := ComboBox1.Text;
  VCLReport1.Execute;
end;

procedure TfEnvelope.BitBtn2Click(Sender: TObject);
begin
  if (escolha.ItemIndex = 1) then
  VCLReport1.Filename := str_relatorio + 'envelope_avulso_matricial.rep'
  else
  VCLReport1.Filename := str_relatorio + 'envelope_avulso.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('COD').Value := '0';
  VCLReport1.Report.Params.ParamByName('GRUPO').Value := ComboBox1.Text;
  VCLReport1.Execute;
end;

procedure TfEnvelope.BitBtn3Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'aviso_cobranca_avulso.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('GRUPO').Value := ComboBox1.Text;
  if (Edit1.Text <> '') then
   VCLReport1.Report.Params.ParamByName('CODCLI').Value := Edit1.Text
  else
   VCLReport1.Report.Params.ParamByName('CODCLI').Value := 'TODOS CLIE';

  if (medta3.Text <> '  /  /  ') then
   begin
    VCLReport1.Report.Params.ParamByName('DATAINI').Value := StrToDate(medta3.Text);
   end else
   begin
     MessageDlg('Pôr favor preecher data para depois imprimir..', mtWarning, [mbOK], 0);
     meDta3.SetFocus;
    exit;
   end;
  if (medta4.Text <> datastr) then
  begin
    VCLReport1.Report.Params.ParamByName('DATAFIN').Value := StrToDate(medta4.Text);
  end;
  VCLReport1.Execute;

end;

procedure TfEnvelope.BitBtn7Click(Sender: TObject);
begin
 meDta3.Text := '  /  /  ';
 meDta4.Text := '  /  /  ';
end;



procedure TfEnvelope.meDta3KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;


procedure TfEnvelope.BitBtn4Click(Sender: TObject);
var
  CONTADOR:Integer;
  IMPRESSORA:TextFile;
  ano, mes, dia : word;

begin

    if RadioGroup1.ItemIndex = 0 then
    imprimi := 1
    else
    imprimi := 2;


     if imprimi = 1
     then begin

           // imprimir envelope \\

     sql_imprimi.Close;
     sql_imprimi.Params[0].AsString := ComboBox1.Text;
     sql_imprimi.Open;
     sql_imprimi.First;
     while not sql_imprimi.Eof do
     begin
     sql_imprimi.RecordCount;
  {Relaciona a variável impressora com a
  lpt1: - Poderia ser LPT, COM1,// Servidor/impressora}
  AssignFile(IMPRESSORA,'LPT1:'); //'\\Web\epson c 60'
  {abre a porta da impressão }
  Rewrite(IMPRESSORA);
  {envia caractere de controle para comprimir a impressão}
  Write(IMPRESSORA);


                  { ---- Impressão Espaço ----}
  { Salta 4 linha}
  Writeln(Impressora);
  Writeln(Impressora);
  Writeln(Impressora);
  Writeln(Impressora);

  { Salta 4 linha}
  Writeln(Impressora);
  Writeln(Impressora);
  Writeln(Impressora);
  Writeln(Impressora);

  { Imprime o codigo do Associado, alinhado à esquerda dentro de umaárea de 10 caracteres}
  Write(Impressora,Format('%25s', [sql_imprimiRA.Value]));
  //====//
  { Imprime o nome do Associado}
  Write(Impressora,Format('%40s', [sql_imprimiNOMECLIENTE.Value]));
  { Salta 4 linha}
  Writeln(Impressora);
  Writeln(Impressora);
  Writeln(Impressora);
  Writeln(Impressora);
  sql_imprimi.next;
               //----- Fim da Impressão Envelope -----\\
end;
end;

end;

procedure TfEnvelope.BitBtn5Click(Sender: TObject);
begin
  if (Edit1.Text = '' ) then
    begin
     MessageDlg('Escolha um associado', mtInformation, [mbOK], 0);
    Edit1.SetFocus;
    exit;
    end;
  VCLReport1.Filename := str_relatorio + 'envelope_avulso_matricial_todos.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('COD').Value := Edit1.Text;
  VCLReport1.Report.Params.ParamByName('GRUPO').Value := ComboBox1.Text;
  VCLReport1.Execute;
end;

procedure TfEnvelope.BitBtn6Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'envelope_avulso_matricial_todos.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfEnvelope.ImprimirClick(Sender: TObject);
const
cJustif = #27#97#51;
cEject = #12;
{ Tamanho da fonte }
c10cpi = #18;
c12cpi = #27#77;
c17cpi = #15;
cIExpandido = #14;
cFExpandido = #20;
{ Formatação da fonte }
cINegrito = #27#71;
cFNegrito = #27#72;
cIItalico = #27#52;
cFItalico = #27#53;
var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5 ,texto6, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
  modelo, placa, cliente ,tipoimpressao:string;
  total : double;
begin
   {----- começo---}
     Texto  := ' ';
     Texto1 := ' ';
     Texto2 := ' ';
     Texto4 := ' ';
     Texto2 := ' ';
     Texto5 := ' ';

  {------------------------------------------------------}

    // Para gravar em arquivo
    cParametro.Open;
    tipoimpressao := cParametroD8.AsString;

    if (tipoimpressao = 'txt') then
    begin
      OpenDialog1.Execute;
      AssignFile(IMPRESSORA, OpenDialog1.FileName);
    end
    else
    begin
      AssignFile(IMPRESSORA,'LPT1:');
    end;

     Rewrite(IMPRESSORA);
     Writeln(Impressora);
  {-----------------------------------------------------------}

   try
     sql_imprimi.Close;
     sql_imprimi.Params[0].AsString := ComboBox1.Text;
     sql_imprimi.Open;
     sql_imprimi.First;
     while not sql_imprimi.Eof do
     begin
       sql_imprimi.RecordCount;


      Writeln(Impressora);
      Write(Impressora,Format('       %-60s', [sql_imprimiNOMECLIENTE.Value]));
      Writeln(Impressora);
      Writeln(Impressora);
      Texto4 := ('      ' + sql_imprimiLOGRADOURO.Value) + ' -  Nº ' + sql_imprimiCOMPLEMENTO.Value;
      Write(Impressora, c10cpi, texto4 );
      Writeln(Impressora);
      Writeln(Impressora);
      Texto6 := ('      ' + sql_imprimiCIDADE.Value) + ' - ' + sql_imprimiUF.Value;
      Write(Impressora, c10cpi, texto6 );
      Writeln(Impressora);
      Writeln(Impressora);
      Write(Impressora,Format('       %-60s', [sql_imprimiBAIRRO.Value]));
      Writeln(Impressora);
      Writeln(Impressora);
      Texto5 := ('      CEP : ' + sql_imprimiCEP.Value) ;
      Write(Impressora, c10cpi, texto5 );
      Writeln(Impressora);
      Writeln(Impressora);
      Writeln(Impressora);
      Writeln(Impressora);
      Writeln(Impressora);
      Writeln(Impressora);
      Writeln(Impressora);
      Writeln(Impressora);
      Writeln(Impressora);
      sql_imprimi.next;
     end;

  finally
    CloseFile(IMPRESSORA);
  end;


end;

procedure TfEnvelope.BitBtn8Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'envelope_avulso_matricial_todosPCMSO.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfEnvelope.BitBtn9Click(Sender: TObject);
var
MSWord: Variant;
finallinha:boolean;
i ,n  :Integer;
begin

  if(dsASH.Active)then
  dsASH.Close;
  dsASH.Open;

  {sera usada a uses COMOBJ}
  { Abre o Word }
  MSWord := CreateOleObject('Word.Application');
  {não visualizar Microsoft Word}
  MSWord.Visible:=false;

  { Abre documento em anexo junto ao  exe}
  MSWord.Documents.Open(ExtractFilePath(Application.ExeName)+ '6080.doc' ); //'a5.doc');//'Doc1.doc') ;//'Etiqueta_Pimaco_6181.doc');
  finallinha:=false;{Essa variavel foi criada para controlar o avanço de para cada celula da coluna }
  dsASH.First;

  if finallinha=false then
  begin
    for i := 0 to (StrToInt(edt1.Text)-1) do
    begin
      MSWord.Selection.MoveRight(12);
    end;
    finallinha:=true;
  end;

  n := 1 ;
  while not dsASH.Eof do
  begin

   // else
   // /begin
   //   { vai para a proxima celula }
   //   MSWord.Selection.MoveRight(12);
   //   finallinha:=false;
   // end;

    { Escreve na  célula }
    MSWord.Selection.Font.Name := 'Times New Roman';

    MSWord.Selection.Font.Size := 10;


    MSWord.Selection.TypeText(Text := trim(dsASHNOMECLIENTE.AsString)
                                     // +#13+trim (dsASHLOGRADOURO.AsString)
                                     // +#13+trim (dsASHCIDADE.AsString +'-' + dsASHUF.AsString )
                                      //+#13+trim (dsASHCEP.AsString)
                                      +#13+trim (IntToStr(n))
                                       );
    if finallinha=false then
      begin
        { Pula 1 celula}
        MSWord.Selection.MoveRight(12);
        finallinha:=true;
      end
    else
    begin
      { vai para a proxima celula }
      MSWord.Selection.MoveRight(12);
      finallinha:=false;
    end;
    dsASH.Next;
    n := n + 1;
  end;
  {visualizar Microsoft word }
  MSWord.Visible:=true;

end;



end.

