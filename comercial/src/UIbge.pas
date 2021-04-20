unit UIbge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, ExtCtrls, DBCtrls, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, DB, StdCtrls, Mask, SqlExpr, Provider, DBClient;

type
  TfIbge = class(TForm)
    cds_ibge: TClientDataSet;
    dsp_ibge: TDataSetProvider;
    sds_ibge: TSQLDataSet;
    sds_ibgeNM_LOCALIDADE: TStringField;
    sds_ibgeCD_IBGE: TStringField;
    sds_ibgeNM_MUNICIPIO: TStringField;
    sds_ibgeNM_TIPO_LOCALIDADE: TStringField;
    sds_ibgeSQ_IBGE: TIntegerField;
    sds_ibgeCD_UF: TStringField;
    cds_ibgeNM_LOCALIDADE: TStringField;
    cds_ibgeCD_IBGE: TStringField;
    cds_ibgeNM_MUNICIPIO: TStringField;
    cds_ibgeNM_TIPO_LOCALIDADE: TStringField;
    cds_ibgeSQ_IBGE: TIntegerField;
    cds_ibgeCD_UF: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    JvDBGrid1: TJvDBGrid;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIbge: TfIbge;

implementation

uses UDmSaude, UDm;

{$R *.dfm}

end.
