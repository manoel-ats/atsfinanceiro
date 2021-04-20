unit uEscolherNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton;

type
  TfEscolherNF = class(TForm)
    dxButton8: TdxButton;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    procedure dxButton8Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEscolherNF: TfEscolherNF;

implementation

uses uNotafiscal, uNFCompra, uNF, uNotaf, ufNotafiscalProc, UDMNF;

{$R *.dfm}

procedure TfEscolherNF.dxButton8Click(Sender: TObject);
begin
   fNFCompra := TfNFCompra.Create(Application);
   try
      fNFCompra.ShowModal;
   finally
      fNFCompra.Free;
   end;
end;

procedure TfEscolherNF.dxButton1Click(Sender: TObject);
begin
   fNF := TfNF.Create(Application);
   try
      fNF.ShowModal;
   finally
      fNF.Free;
   end;
end;

procedure TfEscolherNF.dxButton2Click(Sender: TObject);
begin
   fNotaFiscalProc := TfNotaFiscalProc.Create(Application);
   try
      fNotaFiscalProc.ShowModal;
   finally
      fNotaFiscalProc.Free;
   end;
end;

procedure TfEscolherNF.dxButton3Click(Sender: TObject);
begin
   fNotaf := TfNotaf.Create(Application);
   try
      fNotaf.ShowModal;
   finally
      fNotaf.Free;
   end;
end;

end.
