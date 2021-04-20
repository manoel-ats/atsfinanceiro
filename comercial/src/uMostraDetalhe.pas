unit uMostraDetalhe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, XPMenu, Menus, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  Grids, DBGrids, DB, DBClient, Provider, SqlExpr, Mask, DBCtrls, DBLocal,
  DBLocalS;

type
  TfMostraDetalhe = class(TForm)
    sds_Mov_Det: TSQLDataSet;
    dsp_Mov_det: TDataSetProvider;
    cds_Mov_det: TClientDataSet;
    DtSrc1: TDataSource;
    DBGrid1: TDBGrid;
    MMJPanel3: TMMJPanel;
    btnSair: TBitBtn;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    XPMenu1: TXPMenu;
    sds_venda: TSQLDataSet;
    dsp_venda: TDataSetProvider;
    cds: TClientDataSet;
    MMJPanel1: TMMJPanel;
    Label2: TLabel;
    Label3: TLabel;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detQTDE_ALT: TFloatField;
    cds_Mov_detUN: TStringField;
    cds_Mov_detBAIXA: TStringField;
    cds_Mov_detCONTROLE: TSmallintField;
    cds_Mov_detCOD_COMISSAO: TIntegerField;
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detDTAFAB: TDateField;
    cds_Mov_detDTAVCTO: TDateField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detPRODUTO: TStringField;
    cds_Mov_detCODALMOXARIFADO: TIntegerField;
    cds_Mov_detVALORUNITARIOATUAL: TFloatField;
    cds_Mov_detQTDE_PCT: TFloatField;
    cds_Mov_detCONTA_DESPESA: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detNUMEROBORDERO: TIntegerField;
    cds_Mov_detCODVENDA: TIntegerField;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetBAIXA: TStringField;
    sds_Mov_DetCONTROLE: TSmallintField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetDTAFAB: TDateField;
    sds_Mov_DetDTAVCTO: TDateField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetPRODUTO: TStringField;
    sds_Mov_DetCODALMOXARIFADO: TIntegerField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    sds_Mov_DetNUMEROBORDERO: TIntegerField;
    sds_Mov_DetCODVENDA: TIntegerField;
    sds_Mov_DetNOMECLIENTE: TStringField;
    cds_Mov_detNOMECLIENTE: TStringField;
    sds_vendaSUM: TFloatField;
    cdsSUM: TFloatField;
    lbl1: TLabel;
    dbedtSUM: TDBEdit;
    sds_Mov_DetDATAVENDA: TDateField;
    sds_Mov_DetDATAVENCIMENTO: TDateField;
    cds_Mov_detDATAVENDA: TDateField;
    cds_Mov_detDATAVENCIMENTO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBGrid2: TDBGrid;
    ds_Cr: TDataSource;
    scdsCr_proc: TClientDataSet;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    scdsCr_procTITULO: TStringField;
    scdsCr_procEMISSAO: TDateField;
    scdsCr_procJUROS: TFloatField;
    scdsCr_procDATAVENCIMENTO: TDateField;
    scdsCr_procVALORTITULO: TFloatField;
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMostraDetalhe: TfMostraDetalhe;
  codigovenda, numerobordero ,codigomoviemtemto, codrecebimento : integer;
  
implementation

uses UDm, ufcrSaude;

{$R *.dfm}

procedure TfMostraDetalhe.cds_Mov_detCalcFields(DataSet: TDataSet);
var valor : double;
begin
  inherited;
 { valor := 0;
  if cds_Mov_detQTDE_ALT.Value > 0 then
  begin
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
    valor := cds_Mov_detValorTotal.Value * (cds_Mov_detQTDE_ALT.Value/100);
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value - valor;
  end
  else
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
  }
end;

procedure TfMostraDetalhe.btnSairClick(Sender: TObject);
begin
  Close;
  fcrProcSaude.btnProcurar.Click;
end;

procedure TfMostraDetalhe.FormShow(Sender: TObject);
VAR sqltexto1 :String ;
begin
  if cds.Active then
    cds.Close;
  cds.Params[0].AsInteger := numerobordero;
  cds.Open;
  if cds.IsEmpty then
  begin
    cds.Close;
    exit;
  end
  else
  begin
   // codigomoviemtemto := cdsCODMOVIMENTO.AsInteger;
    //cds.Close;
  end;
  if cds_Mov_det.Active then
     cds_Mov_det.Close;
  cds_Mov_det.Params[0].AsInteger := numerobordero ;
  cds_Mov_det.Open;                 

  if (not scdsCr_proc.Active) then
  begin
    scdsCr_proc.Close;
    sqltexto1 :='select  rec.TITULO, rec.EMISSAO, rec.DATAVENCIMENTO, rec.CODCLIENTE, rec.VALORTITULO, rec.JUROS  ';
    sqltexto1 := sqltexto1 + 'from RECEBIMENTO rec ';
    sqltexto1 := sqltexto1 + ' WHERE rec.CODVENDA = ' + IntToStr(cds_Mov_detCODVENDA.AsInteger) ;
    sqltexto1 := sqltexto1 + ' and rec.JUROS > ' + QuotedStr('0') ;
    scdsCr_proc.CommandText := sqlTexto1 ;
    scdsCr_proc.CommandText := scdsCr_proc.CommandText;
    scdsCr_proc.Open;
 end;

end;



procedure TfMostraDetalhe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cds_Mov_det.Active then
     cds_Mov_det.Close;
end;

procedure TfMostraDetalhe.DBGrid1DblClick(Sender: TObject);
begin
 { if ( not cdsRec.Active) then
     cdsRec.Close;
     cdsRec.Params[0].AsInteger := cds_Mov_detCODVENDA.AsInteger ;
  cdsRec.Open;
  }
end;

procedure TfMostraDetalhe.BitBtn1Click(Sender: TObject);
VAR sqltexto1 :String ;
begin
  if scdsCr_proc.Active then
     scdsCr_proc.Close;
   sqltexto1 :='select rec.TITULO, rec.EMISSAO, rec.JUROS , ';
   sqltexto1 := sqltexto1 + ' rec.DATAVENCIMENTO, rec.VALORTITULO, ';
   sqltexto1 := sqltexto1 + '  rec.STATUS ';
   sqltexto1 := sqltexto1 + 'from RECEBIMENTO rec ';
   sqltexto1 := sqltexto1 + ' WHERE rec.CODVENDA = ' + IntToStr(cds_Mov_detCODVENDA.AsInteger) ;
   sqltexto1 := sqltexto1 + ' and rec.JUROS > ' + QuotedStr('0') ;
   scdsCr_proc.CommandText := sqlTexto1 ;
   scdsCr_proc.CommandText := scdsCr_proc.CommandText;
   scdsCr_proc.Open;
end;

procedure TfMostraDetalhe.BitBtn2Click(Sender: TObject);
begin
 scdsCr_proc.ApplyUpdates(0);
 BitBtn2.Enabled := False;
 MessageDlg('Juros Corrigido .', mtInformation, [mbOK], 0);
end;

end.
