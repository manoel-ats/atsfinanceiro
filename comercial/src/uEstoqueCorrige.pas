unit uEstoqueCorrige;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBXpress, Mask, JvExMask, JvToolEdit, FMTBcd, DB,
  SqlExpr;

type
  TfEstoqueCorrige = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    JvDateEdit1: TJvDateEdit;
    Label5: TLabel;
    JvDateEdit2: TJvDateEdit;
    Label7: TLabel;
    sqlQ: TSQLQuery;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEstoqueCorrige: TfEstoqueCorrige;

implementation

uses UDm;

{$R *.dfm}

procedure TfEstoqueCorrige.Button1Click(Sender: TObject);
var
  TD: TTransactionDesc;
  Save_Cursor:TCursor;
  codPro1, codPro2 : integer;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  if (sqlQ.Active) then
    sqlQ.close;
  sqlQ.SQL.Add('SELECT CODPRODUTO FROM PRODUTOS WHERE CODPRO = ' +
    QuotedStr(Edit1.Text));
  sqlQ.Open;
  codPro1 := sqlQ.Fields[0].AsInteger;
  if (sqlQ.Active) then
    sqlQ.close;
  sqlQ.SQL.Clear;  
  sqlQ.SQL.Add('SELECT CODPRODUTO FROM PRODUTOS WHERE CODPRO = ' +
    QuotedStr(Edit2.Text));
  sqlQ.Open;
  codPro2 := sqlQ.Fields[0].AsInteger;
  sqlQ.Close;
  try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    {dm.sqlsisAdimin.StartTransaction(TD);
    try
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_CONTABIL INACTIVE');
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_REC INACTIVE');
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_VENDA INACTIVE');
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_COMPRA INACTIVE');
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para desativar Trigger.', mtError, [mbOK], 0);
      exit;
    end;}

    try
      dm.sqlsisAdimin.StartTransaction(TD);

      dm.sqlsisAdimin.ExecuteDirect('execute procedure CORRIGEESTOQUE(' +
        IntToStr(codPro1) + ', ' + IntToStr(codPro2) +
        ', ' + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit1.Text))) +
        ', ' + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit2.Text))) +
        ', ' + QuotedStr('N') +')');
      dm.sqlsisAdimin.Commit(TD);
     { dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_CONTABIL ACTIVE');
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_REC ACTIVE');
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_VENDA ACTIVE');
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_COMPRA ACTIVE');
      dm.sqlsisAdimin.Commit(TD);}

      MessageDlg('Estoque atualizado com sucesso.', mtInformation, [mbOK], 0);
    except
      dm.sqlsisAdimin.Rollback(TD);
     { dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_CONTABIL ACTIVE');
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_REC ACTIVE');
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_VENDA ACTIVE');
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER ALTERA_COMPRA ACTIVE');
      dm.sqlsisAdimin.Commit(TD);}
      MessageDlg('Erro para atualizar estoque.', mtError, [mbOK], 0);
      exit;
    end;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfEstoqueCorrige.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

end.
