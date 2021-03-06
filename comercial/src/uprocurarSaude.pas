unit uProcurarSaude;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, ComCtrls, Grids, DBGrids, StdCtrls, Buttons,
  DBLocals, EDBFind, dxCore, dxButton;

type
  TfProcurarSaude = class(TForm)
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
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BtnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
 constructor Create (AOWner : TComponent; DataSet : TSQLClientDataset); reintroduce;
    { Public declarations }
  end;

var
  fProcurarSaude: TfProcurarSaude;
    varForm1, nome_forn , nomecliente: String;
    cod_forn ,codcliente: integer;

implementation

uses  uClientePlano, UDmSaude;

{$R *.dfm}

procedure TfProcurarSaude.DBGrid1TitleClick(Column: TColumn);
begin
  with DtSrc.dataset as TSQLClientDataset do
    IndexFieldNames:=Column.FieldName;
end;

procedure TfProcurarSaude.BtnProcurarClick(Sender: TObject);
begin
 with DtSrc.dataset as TSQLClientDataset do // Aten??o : declara DBlocalS em uses
  begin
    Close;
    If tag=0 then //op??o de flag para usar % ou n?o
       Params[0].AsString:=EditProc.Text+'%'
    else
       Params[0].AsString:=EditProc.Text;
    Open;
    BtnOk.Enabled:=not IsEmpty;
    if IsEmpty then
       StsBr.SimpleText:=format('Nenum registro foi encontrado com "%s"',[EditProc.text])
    else
     StsBr.SimpleText:=
     format('%d registros encontrados com "%s"',[recordcount,EditProc.text]);
   end;
end;

constructor TfProcurarSaude.Create(AOWner: TComponent; DataSet: TSQLClientDataset);
begin
  inherited create(AOWner);
   DtSrc.DataSet:=DataSet;
end;

procedure TfProcurarSaude.FormShow(Sender: TObject);
begin
 if (EvDBFind1.Visible = True) then
    EvDBFind1.SetFocus;
end;

procedure TfProcurarSaude.btnIncluirClick(Sender: TObject);
begin
  //=========================================================
  //Procura acessado para procurar Fornecedor
{  if DtSrc.DataSet = dmSaude.scds_forn_proc then
  begin
     ffornecedorcadastro:=TfFornecedorCadastro.Create(Application);
     try
        //varForm1 := 'Procura';
        ffornecedorcadastro.ShowModal;
        Close;
     finally
       varForm1 := '';
       ffornecedorcadastro.Free;
     end;
  end;
  //=========================================================
  //Procura acessado para procurar Vendedor
  if DtSrc.DataSet = dmSaude.scds_usuario_proc then
  begin
     fFuncionario:=TfFuncionario.Create(Application);
     try
        //varForm1 := 'Procura';
        fFuncionario.ShowModal;
        BtnOk.Click;
     finally
       varForm1 := '';
       fFuncionario.Free;
     end;
  end;
 }
end;

procedure TfProcurarSaude.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 {
  if (dmSaude.scds_forn_proc.Active) then
  begin
    codfornecedor := dmSaude.scds_forn_procCODFORNECEDOR.AsInteger;
    fornecedor := dmsaude.scds_forn_procNOMEFORNECEDOR.AsString;
  end;

  if (dmSaude.scds_usuario_proc.Active) then
  begin
    cod_vendedor := dmSaude.scds_usuario_procCODUSUARIO.AsInteger;
    nome_vendedor := dmsaude.scds_usuario_procNOMEUSUARIO.AsString;
  end;
  }
end;

end.
