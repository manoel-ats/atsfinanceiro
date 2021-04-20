unit uFiltro_forn_planoP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, ExtCtrls, DBCtrls, DB, DBClient, Provider, SqlExpr,
  Grids, DBGrids, StdCtrls, Buttons, Menus, MMJPanel, XPMenu, EDBFind,
  JvExStdCtrls, JvCombobox, ComCtrls, JvExComCtrls, JvDBTreeView,
  JvComCtrls;

type
  TfFiltro_forn_planoP = class(TForm)
    DtSrc: TDataSource;
    sds_desp: TSQLDataSet;
    dsp_desp: TDataSetProvider;
    cds_desp: TClientDataSet;
    cds_despCODIGO: TIntegerField;
    cds_despNOME: TStringField;
    cds_despCONTA: TStringField;
    sds_sub: TSQLDataSet;
    dsp_sub: TDataSetProvider;
    cds_sub: TClientDataSet;
    cds_subNOME: TStringField;
    cds_subCONTA: TStringField;
    MMJPanel1: TMMJPanel;
    BitBtn2: TBitBtn;
    MMJPanel2: TMMJPanel;
    Label1: TLabel;
    EditProc: TEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    OK1: TMenuItem;
    Procurar1: TMenuItem;
    XPMenu1: TXPMenu;
    BitBtn6: TBitBtn;
    EvDBFind1: TEvDBFind;
    sdsContaPai: TSQLDataSet;
    dspContaPai: TDataSetProvider;
    cdsContaPai: TClientDataSet;
    sdsContaPaiNOME: TStringField;
    sdsContaPaiCONTA: TStringField;
    cdsContaPaiNOME: TStringField;
    cdsContaPaiCONTA: TStringField;
    dsContaPai: TDataSource;
    sdsContaPaiCONTAPAI: TStringField;
    cdsContaPaiCONTAPAI: TStringField;
    tvContaPai: TJvTreeView;
    sdsContaPlano: TSQLDataSet;
    dspContaPlano: TDataSetProvider;
    cdsContaPlano: TClientDataSet;
    cdsContaPlanoNOME: TStringField;
    cdsContaPlanoCONTA: TStringField;
    cdsContaPlanoUDF_LEN: TIntegerField;
    DBNavigator1: TDBNavigator;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvContaPaiClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFiltro_forn_planoP: TfFiltro_forn_planoP;
  varconta_cod_r, varconta_cod, varconta_nome, varconta, com_rateio, desp, tipo_for: string;
  codigo_conta: integer;
  
implementation

uses UDm, uFornecedorCadastro, ufContasAssistente, sCtrlResize;

{$R *.dfm}

procedure TfFiltro_forn_planoP.BitBtn1Click(Sender: TObject);
// Var str_sql2: string;
begin
{Não é usado, pois a tabela e aberta trazendo tudo }  
{  DM.c_1_planoc.Close;
  if DM.c_1_planoc.Active then
      DM.c_1_planoc.Close;
  str_sql2 := 'Select * from PLANO ';
  str_sql2 := str_sql2 + 'WHERE ';
  str_sql2 := str_sql2 + 'plnctaroot(conta) = ''' + desp + '''';
  str_sql2 := str_sql2 + ' and CONSOLIDA = ''S'' ';
  str_sql2 := str_sql2 + ' and NOME like ';
  str_sql2 := str_sql2 + '''%' + EditProc.Text + '%''';
  str_sql2 := str_sql2 + ' order by CONTA';
  DM.c_1_planoc.CommandText := str_sql2;
  DM.c_1_planoc.Open;}

end;

procedure TfFiltro_forn_planoP.btnIncluirClick(Sender: TObject);
begin
 fContasAssistente:=TfContasAssistente.Create(Application);
 try
  fContasAssistente.ShowModal;
 finally
  fContasAssistente.Free;
  BitBtn6.Click;
 end;
end;

procedure TfFiltro_forn_planoP.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfFiltro_forn_planoP.BitBtn6Click(Sender: TObject);
 Var str_sqlq: string;
begin
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  if (tipo_for = 'LANCACONTABIL') then
  begin
    str_sqlq := 'Select * from PLANO ';
    str_sqlq := str_sqlq + 'WHERE ';
    str_sqlq := str_sqlq + ' CONSOLIDA = ''S'' ';
    str_sqlq := str_sqlq + ' order by NOME';
  end
  else begin
    str_sqlq := 'Select * from PLANO ';
    str_sqlq := str_sqlq + 'WHERE ';
    str_sqlq := str_sqlq + 'plnctaroot(conta) = ''' + desp + '''';
    str_sqlq := str_sqlq + ' and CONSOLIDA = ''S'' ';
    str_sqlq := str_sqlq + ' order by NOME';
  end;
  DM.c_1_planoc.CommandText := str_sqlq;
  DM.c_1_planoc.Open;
end;

procedure TfFiltro_forn_planoP.FormShow(Sender: TObject);
  var str_sql2: string;
  Node, Node1, Node2: TTreeNode;
begin
  desp := '';

  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  if (tipo_for = 'LANCACONTABIL') then
  begin
    str_sql2 := 'Select * from PLANO ';
    str_sql2 := str_sql2 + 'WHERE ';
    str_sql2 := str_sql2 + ' CONSOLIDA = ''S'' ';
    str_sql2 := str_sql2 + ' order by NOME';
  end
  else begin

  str_sql2 := ' Select prod.codproduto as codigo , prod.codpro as codreduzido , udf_CollateBr(prod.produto) as nome ,pl.rateio ,' ;
  str_sql2 := str_sql2 +  ' pl.contapai,pl.consolida ,  udf_CollateBr(prod.produto) as descricao , prod.conta_estoque as conta from produtos prod ';
  str_sql2 := str_sql2 +  ' inner join plano pl on pl.conta =  prod.conta_estoque ';
  str_sql2 := str_sql2 + ' WHERE prod.tipo = ' + QuotedStr('DESP');

  end;
  DM.c_1_planoc.CommandText := str_sql2;
  DM.c_1_planoc.Open;

  tvContaPai.Items.Clear;
  // Para o TreeView
  if (sdsContaPlano.Active) then
    sdsContaPlano.close;

  if (tipo_for = 'LANCACONTABIL') then
  begin
    sdsContaPlano.CommandText := 'Select NOME, CONTA, udf_len(udf_strip(conta,' +
      QuotedStr('0123456789') + '))  from plano where ' +
      ' consolida <> ' + QuotedStr('S') +
      ' order by CONTA ';
  end
  else begin

  sdsContaPlano.CommandText := 'Select distinct pl.NOME,pl.CONTA ,udf_len(udf_strip(conta,' +
                               QuotedStr('0123456789') + ')) ' +
                               ' from produtos prod inner join plano pl on pl.conta = prod.conta_estoque ' +
                               ' where prod.tipo = ' + QuotedStr('DESP');


  end;
  sdsContaPlano.Open;
  while not (sdsContaPlano.eof) do
  begin
    if (sdsContaPlano.Fields[2].asInteger = 1) then
      Node := tvContaPai.Items.Add(nil, sdsContaPlano.Fields[0].asString)
    else if (sdsContaPlano.Fields[2].asInteger = 2) then
    begin
      //Node := tvContaPai.Selected;
      Node1 := tvContaPai.Items.AddChild (Node, sdsContaPlano.Fields[0].asString);
    end
    else if (sdsContaPlano.Fields[2].asInteger = 3) then
    begin
      //Node := tvContaPai.Selected;
      Node2 := tvContaPai.Items.AddChild (Node1, sdsContaPlano.Fields[0].asString);
    end
    else if (sdsContaPlano.Fields[2].asInteger = 4) then
    begin
      //Node := tvContaPai.Selected;
      tvContaPai.Items.AddChild (Node2, sdsContaPlano.Fields[0].asString);
    end;
    sdsContaPlano.Next;
  end;

  varconta_cod_r := '';
  varconta_cod := '';
  varconta_nome := '';
  codigo_conta := 0;
  varconta := '';
  com_rateio := '';
  EvDBFind1.SetFocus;

end;

procedure TfFiltro_forn_planoP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  varconta_cod_r := IntToStr(DM.c_1_planocCODIGO.AsInteger);
  varconta_cod := DM.c_1_planocCODREDUZIDO.AsString;
  varconta_nome := DM.c_1_planocNOME.AsString;
  codigo_conta := DM.c_1_planocCODIGO.AsInteger;
  varconta := DM.c_1_planocCONTA.AsString;
  com_rateio := DM.c_1_planocRATEIO.AsString;
  if DM.c_1_planoc.Active then
   DM.c_1_planoc.Close;
end;

procedure TfFiltro_forn_planoP.tvContaPaiClick(Sender: TObject);
var Nodex: TTreeNode;
  str_sql3:string;
begin
  nodex := tvContaPai.Selected;
  if (DM.c_1_planoc.Active) then
    DM.c_1_planoc.Close;

  str_sql3 := ' Select prod.codproduto as codigo , prod.codpro as codreduzido ,udf_CollateBr(prod.produto) as nome ,pl.rateio ,' ;
  str_sql3 := str_sql3 +  ' pl.contapai,pl.consolida ,  udf_CollateBr(prod.produto) as descricao , prod.conta_estoque as conta from produtos prod ';
  str_sql3 := str_sql3 +  ' inner join plano pl on pl.conta =  prod.conta_estoque ';
  str_sql3 := str_sql3 + ' WHERE  pl.NOME = ' + QuotedStr(nodex.Text) + ' and prod.tipo = ' + QuotedStr('DESP');

  {
  str_sql3 := 'Select pl1.* from PLANO pl1 ';
  str_sql3 := str_sql3 + 'WHERE exists';
  str_sql3 := str_sql3 + ' (SELECT pl2.CONTA FROM PLANO pl2 ' ;
  str_sql3 := str_sql3 + ' where pl2.NOME = ' + QuotedStr(nodex.Text);
  str_sql3 := str_sql3 + ' and pl2.CONTA = pl1.CONTAPAI) and pl1.CONSOLIDA = ''S'' ';
  str_sql3 := str_sql3 + ' order by pl1.NOME';
  }

  DM.c_1_planoc.CommandText := str_sql3;
  DM.c_1_planoc.Open;

end;

procedure TfFiltro_forn_planoP.DBGrid1TitleClick(Column: TColumn);
begin
  dm.c_1_planoc.IndexFieldNames := Column.FieldName;
end;

procedure TfFiltro_forn_planoP.FormCreate(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fFiltro_forn_planoP));
end;

end.
