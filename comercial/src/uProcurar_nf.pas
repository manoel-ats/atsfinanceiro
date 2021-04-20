unit uProcurar_nf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, ComCtrls, Grids, DBGrids, StdCtrls, Buttons,
  DBLocals, EDBFind, dxCore, dxButton, rpcompobase, rpvclreport, DBCtrls;

type
  TfProcurar_nf = class(TForm)
    DtSrc: TDataSource;
    StsBr: TStatusBar;
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancel: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    EditProc: TEdit;
    BtnProcurar: TBitBtn;
    EvDBFind1: TEvDBFind;
    btnIncluir: TBitBtn;
    Label1: TLabel;
    btnImprimir: TBitBtn;
    rep: TVCLReport;
    RadioGroup1: TRadioGroup;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BtnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    usuarioproc : string;
 constructor Create (AOWner : TComponent; DataSet : TSQLClientDataset); reintroduce;
 function FormExiste(aberto: Tform): Boolean;
    { Public declarations }
  end;

var
  fProcurar_nf: TfProcurar_nf;
    varForm1, nomecliente, fCompraNomeForn, nome_Forn: String;
    cod_Forn, codcliente, fCompraCodForn: integer;

implementation

uses UDM, uFornecedorCadastro, ufuncionario, uClienteCadastro,
  uClientePlano, UDmSaude, sCtrlResize, UDMNF, uNF, uProcurar, uNotaf;

{$R *.dfm}

procedure TfProcurar_nf.DBGrid1TitleClick(Column: TColumn);
begin
  with DtSrc.dataset as TSQLClientDataset do
    IndexFieldNames:=Column.FieldName;
end;

procedure TfProcurar_nf.BtnProcurarClick(Sender: TObject);
begin
 with DtSrc.dataset as TSQLClientDataset do // Atenção : declara DBlocalS em uses
  begin
    Close;
    If tag=0 then //opção de flag para usar % ou não
    begin
       Params[0].AsString:=EditProc.Text+'%';
      if DtSrc.DataSet = dm.scds_usuario_proc then
      begin
        Params.ParamByName('pPerfil').AsString := usuarioproc;
        Params.ParamByName('pPerfil1').AsString := 'AMBOS';
      end
      end
    else
    begin
       Params[0].AsString:=EditProc.Text;
    if DtSrc.DataSet = dm.scds_usuario_proc then
    begin
       Params.ParamByName('pPerfil').AsString := usuarioproc;
       Params.ParamByName('pPerfil1').AsString := 'AMBOS';
    end
    end;
    Open;
    BtnOk.Enabled:=not IsEmpty;
    if IsEmpty then
       StsBr.SimpleText:=format('Nenum registro foi encontrado com "%s"',[EditProc.text])
    else
     StsBr.SimpleText:=
     format('%d registros encontrados com "%s"',[recordcount,EditProc.text]);
   end;
end;

constructor TfProcurar_nf.Create(AOWner: TComponent; DataSet: TSQLClientDataset);
begin
  inherited create(AOWner);
   DtSrc.DataSet:=DataSet;
end;

procedure TfProcurar_nf.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fProcurar_nf));
 if (EvDBFind1.Visible = True) then
    EvDBFind1.SetFocus;
end;

procedure TfProcurar_nf.btnIncluirClick(Sender: TObject);
begin
  //=========================================================
  //Procura acessado para procurar Fornecedor
  if (DtSrc.DataSet = dm.scds_forn_proc) then
  begin
  end;
  //=========================================================
  //Procura acessado para procurar Cliente
  if (DtSrc.DataSet = dmnf.scds_cli_proc) then
  begin
    fClienteCadastro:=TfClienteCadastro.Create(Application);
    try
      fClienteCadastro.ShowModal;
    finally
      fClienteCadastro.free;
    end;
  end;
{  if (FormExiste(fNotaF) = True) then
  begin
    fClienteCadastro:=TfClienteCadastro.Create(Application);
    try
      fClienteCadastro.ShowModal;
    finally
      fClienteCadastro.free;
    end;
  end;}
  BtnCancel.Click;
end;

procedure TfProcurar_nf.BtnOkClick(Sender: TObject);
begin
  if (dm.scds_usuario_proc.Active) then
  begin
    cod_vendedor := dm.scds_usuario_procCODUSUARIO.AsInteger;
    nome_vendedor := dm.scds_usuario_procNOMEUSUARIO.AsString;
  end;
  if (dmnf.scds_cli_proc.Active) then
  begin
    dm.codcli := dmnf.scds_cli_procCODCLIENTE.AsInteger;
    dm.varNomeCliente := dmnf.scds_cli_procNOMECLIENTE.AsString;
  end;
end;

procedure TfProcurar_nf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (dm.scds_usuario_proc.Active) then
  begin
    cod_vendedor := dm.scds_usuario_procCODUSUARIO.AsInteger;
    nome_vendedor := dm.scds_usuario_procNOMEUSUARIO.AsString;
  end;
 { if (dmnf.scds_cli_proc.Active) then
  begin
    dm.codcli := dmnf.scds_cli_procCODCLIENTE.AsInteger;
    dm.varNomeCliente := dmnf.scds_cli_procNOMECLIENTE.AsString;
  end;}

end;

procedure TfProcurar_nf.btnImprimirClick(Sender: TObject);
begin
  // Fornecedor
  if (DtSrc.DataSet = dm.scds_forn_proc) then
  begin
    rep.FileName := str_relatorio + 'fornecedorCadastro.rep';
  end;
  if (DtSrc.DataSet = dm.proc_transp) then
  begin
    rep.FileName := str_relatorio + 'transportadoraCadastro.rep';
  end;
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  rep.Execute;
end;

procedure TfProcurar_nf.RadioGroup1Click(Sender: TObject);
begin
  if (radioGroup1.ItemIndex = 0) then
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1
  else
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 2;
  BtnProcurar.Click;  
end;

function TfProcurar_nf.FormExiste(aberto: Tform): Boolean;
var
  I:Integer;
begin
    FormExiste := false;
    for I := 0 to Screen.FormCount -1 do
    if Screen.Forms[i] = aberto then
    begin
    FormExiste := true;
    Break;
    end
end;

end.
