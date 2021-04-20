unit uRelASO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, StdCtrls, Buttons, Mask, JvExMask,
  JvToolEdit;

type
  TfuRelAso = class(TForm)
    JvDateEdit1: TJvDateEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    JvDateEdit2: TJvDateEdit;
    BitBtn1: TBitBtn;
    VCLReport1: TVCLReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fuRelAso: TfuRelAso;

implementation

{$R *.dfm}

end.
