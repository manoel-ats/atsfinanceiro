unit uPrazo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls, MMJPanel;

type
  TfPrazo = class(TfPai_new)
    JvDBUltimGrid1: TJvDBUltimGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrazo: TfPrazo;

implementation

uses UDm;

{$R *.dfm}

end.
