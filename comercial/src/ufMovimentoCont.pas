unit ufMovimentoCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  Grids, DBGrids, Mask, DBCtrls,DBxPress;

type
  TfMovimentoCont = class(TfPai)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMovimentoCont: TfMovimentoCont;

implementation

uses UDm;

{$R *.dfm}

procedure TfMovimentoCont.BitBtn1Click(Sender: TObject);
var TD: TTransactionDesc;
begin

    Try
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect('UPDATE HISTORICO_CONTAB SET HISTORICO = ' +
                                QuotedStr(DBEdit1.Text) + ' where COD_CONTAB = ' +
                                QuotedStr(dm.c3_contabilCODORIGEM.asString));
       dm.sqlsisAdimin.Commit(TD);
       MessageDlg('Alterado Historico', mtInformation, [mbOK], 0);
       dm.c3_contabil.Close;
       dm.c3_contabil.Open;
    except
       dm.sqlsisAdimin.Rollback(TD);
       MessageDlg('Erro ao alterar Historico .', mtError,
           [mbOk], 0);
    end  

end;

end.
