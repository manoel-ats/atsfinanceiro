unit uAtualizaSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FMTBcd, DB, SqlExpr, DBClient, Provider, DBXpress,
  Buttons, IniFiles, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP;

type
  TfAtualizaSistema = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    sqlVersao: TSQLQuery;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cds: TClientDataSet;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    btnSair: TBitBtn;
    Label2: TLabel;
    ftpupdate: TIdFTP;
    procedure FormCreate(Sender: TObject);
    procedure VerSeTemAtualiza;
  private
    STime: TDateTime;
    tempo_medio:  double;
    bytes_transf: longword;
    tamanho_arquivo : longword;
    procedure atualizaSistema;
    function VersaoAtual: String;
    function GetVersion: string;
    procedure ExecutaScript(script : string);
    procedure ExecutaSql(sql : string);
    procedure ExecutaDDL(Tabela, Campo, Tipo : string);
    procedure MudaVersao(versaoNova: string);
    { Private declarations }
  public
    TD: TTransactionDesc;
    versaoSistema, versao : string;
    { Public declarations }
  end;

var
  fAtualizaSistema: TfAtualizaSistema;

implementation

uses UDm;

{$R *.dfm}

procedure TfAtualizaSistema.atualizaSistema;
var sql: string;
    IniAtualiza : TIniFile;
begin
  versao := GetVersion;
  versaoSistema := VersaoAtual;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  // Verificando o sistema
  //VerSeTemAtualiza;  // Vê se tem nova versão do aplicativo na web
  if (versaoSistema = '') then
  begin
    try
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('INSERT INTO ATUALIZA(CODATUALIZA, VERSAO) ' +
        ' VALUES(5000, ' + QuotedStr('1.0.0.11') + ')');
      dm.sqlsisAdimin.Commit(TD);
      versaoSistema := '1.0.0.11';
    except
      dm.sqlsisAdimin.Rollback(TD);
    end;
  end;
  if (versaoSistema <> versao) then
  begin
    if (versaoSistema = '1.0.0.11') then
    begin
      executaDDL('COMPRA','PRAZO','VARCHAR(40)');
      executaDDL('VENDA','PRAZO','VARCHAR(40)');
      executaDDL('MOVIMENTODETALHE','CST','DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE','VALOR_ICMS','DOUBLE PRECISION');
      executaScript('sp_mov_caixaConsolida.sql');
      executaScript('sp_mov_caixa_ordemConsolida.sql');
      executaScript('sp_estoque_entsai.sql');
      executaScript('gera_rec_duplicatas.sql');
      executaScript('gera_rec_nf.sql');
      mudaVersao('1.0.0.12');
    end; // Fim Ataulização Versao 1.0.0.11
    if (versaoSistema = '1.0.0.12') then
    begin
      executaDDL('PARAMETRO','VALOR','DOUBLE PRECISION');
      executaSql('Insert into parametro (PARAMETRO, DADOS, D1, VALOR, CONFIGURADO) ' +
        ' Values (' + QuotedStr('1-A Vista') + ' ,' + QuotedStr('PRAZO') + ' ,' +
        QuotedStr('0') + ' ,' + '1, ' +
        QuotedStr('N') + ')');
      executaSql('Insert into parametro (PARAMETRO, DADOS, D1, D2, D3, VALOR, CONFIGURADO) ' +
        ' Values (' + QuotedStr('2-30,60,90') + ' ,' + QuotedStr('PRAZO') + ' ,' +
        QuotedStr('30') + ' ,' + QuotedStr('60') + ' ,' + QuotedStr('90') + ' , 3,' +
        QuotedStr('N') + ')');
      mudaVersao('1.0.0.13');
    end; // Fim Ataulização Versao 1.0.0.12

    if (versaoSistema = '1.0.0.13') then
    begin
      if (cds.Active) then
        cds.Close;
      cds.CommandText := 'select CODNATUREZA from NATUREZAOPERACAO' +
        ' WHERE CODNATUREZA = 12';
      cds.Open;
      if (cds.IsEmpty) then
      begin
        executaSql('Insert into NATUREZAOPERACAO(CODNATUREZA, DESCNATUREZA, ' +
          ' GERATITULO, TIPOTITULO, TIPOMOVIMENTO) ' +
          ' Values (12, ' + QuotedStr('Nota Fiscal') + ' ,1,0,12)');
      end;
      cds.Close;
      mudaVersao('1.0.0.14');
    end; // Fim Ataulização Versao 1.0.0.13

    if (versaoSistema = '1.0.0.14') then
    begin
      //executaScript('inclui_rec.sql');
      mudaVersao('1.0.0.15');
    end; // Fim Ataulização Versao 1.0.0.14

    if (versaoSistema = '1.0.0.15') then
    begin
      executaDDL('MOVIMENTODETALHE','VLR_BASE','DOUBLE PRECISION');
      executaScript('fluxoentradasaida.sql');
      executaScript('fluxoentradasaidasintetico.sql');
      executaScript('insere_estoque.sql');
      //executaScript('listaProduto.sql');
      executaScript('insere_vlrBase.sql');
      executaSql('UPDATE MOVIMENTODETALHE SET LOTE = null where LOTE = ' +
        QuotedStr(''));
      mudaVersao('1.0.0.16');
    end; // Fim Ataulização Versao 1.0.0.15

    if (versaoSistema = '1.0.0.16') then
    begin
      executaScript('altera_venda.sql');
      executaScript('altera_rec.sql');
      //executaScript('listaProduto.sql');
      executaScript('boleto.sql');
      //executaScript('gera_nf.sql');
      mudaVersao('1.0.0.17');
    end; // Fim Ataulização Versao 1.0.0.16

    if (versaoSistema = '1.0.0.17') then
    begin
      executaScript('inclui_rec.sql');
      //executaScript('gera_rec_duplicatas.sql');
      //executaScript('gera_nf.sql');
      executaScript('trg_nf_cr_altera.sql');
      mudaVersao('1.0.0.18');
    end; // Fim Ataulização Versao 1.0.0.17

    if (versaoSistema = '1.0.0.18') then
    begin
      executaScript('recibo_cp.sql');
      mudaVersao('1.0.0.19');
    end; // Fim Ataulização Versao 1.0.0.18

    if (versaoSistema = '1.0.0.19') then
    begin
      executaSql('CREATE EXCEPTION nao_pode_excluir ' +
        QuotedStr('Registro não pode ser excluido,  existe venda/compra.'));
      executaScript('apaga_rec.sql');
      executaScript('proibe_exclusao_pag.sql');
      executaScript('proibe_exclusao_rec.sql');
      mudaVersao('1.0.0.20');
    end; // Fim Ataulização Versao 1.0.0.19

    if (versaoSistema = '1.0.0.20') then
    begin
      executaSql('CREATE EXCEPTION estoqueFechado ' +
        QuotedStr('Estoque fechado nesta data.'));
      //executaSql('CREATE EXCEPTION caixaFechado ' +
      //  QuotedStr('Caixa fechado nesta data.'));
      executaSql('CREATE TABLE ESTOQUE_CONTROLE( ' +
        ' IDESTOQUECONTROLE Integer NOT NULL, ' +
        ' CODUSUARIO Integer NOT NULL, DATAFECHAMENTO Date NOT NULL, '+
        ' SITUACAO Char(1) NOT NULL, PRIMARY KEY (IDESTOQUECONTROLE))');
      executaSql('CREATE TABLE CAIXA_CONTROLE( ' +
        ' IDCAIXACONTROLE Integer NOT NULL, CODCAIXA INTEGER, ' +
        ' CODUSUARIO Integer NOT NULL, DATAFECHAMENTO Date NOT NULL, '+
        ' SITUACAO Char(1) NOT NULL, PRIMARY KEY (IDCAIXACONTROLE))');
      executaSql('CREATE GENERATOR IDESTOQUE_CONTROLE');
      executaSql('CREATE GENERATOR IDCAIXA_CONTROLE');
      executaSql('CREATE TRIGGER TRG_IDESTOQUE_CONTROLE FOR ESTOQUE_CONTROLE ACTIVE' +
                 ' BEFORE INSERT POSITION 0 ' +
                 ' AS  BEGIN ' +
                 ' IF(NEW.IDESTOQUECONTROLE IS NULL) THEN NEW.IDESTOQUECONTROLE =' +
                 ' GEN_ID(IDESTOQUE_CONTROLE ,1);  END ');
      executaSql('CREATE TRIGGER TRG_IDCAIXA_CONTROLE FOR CAIXA_CONTROLE ACTIVE' +
                 ' BEFORE INSERT POSITION 0 ' +
                 ' AS  BEGIN ' +
                 ' IF(NEW.IDCAIXACONTROLE IS NULL) THEN NEW.IDCAIXACONTROLE =' +
                 ' GEN_ID(IDCAIXA_CONTROLE,1);  END ');

      mudaVersao('1.0.0.21');
    end; // Fim Ataulização Versao 1.0.0.20

    if (versaoSistema = '1.0.0.21') then
    begin
      executaScript('estoqueFechado.sql');
      executaScript('caixaFechadoPag.sql');
      executaScript('caixaFechadoContabil.sql');
      executaScript('caixaFechado.sql');
      executaDDL('NOTAFISCAL','IMPRESSA','CHAR(1)');
      mudaVersao('1.0.0.22');
    end; // Fim Ataulização Versao 1.0.0.21

    if (versaoSistema = '1.0.0.22') then
    begin
      executaScript('rel_vendaCompra.sql');
      executaScript('inclui_rec.sql');
      executaScript('inclui_pag.sql');
      executaScript('resultadoporproduto.sql');
      mudaVersao('1.0.0.23');
    end; // Fim Ataulização Versao 1.0.0.22

    if (versaoSistema = '1.0.0.23') then
    begin
      executaScript('spestoque.sql');
      executaSql('CREATE TABLE arquivo_retorno( ' +
        'idArquivo int not null primary key, ' +
        'arquivo varchar(60) not null, ' +
        'idCampo varchar(10) not null, ' +
        'tamCampo varchar(10) not null, ' +
        'tipoCampo varchar(60))');
      executaSql('CREATE GENERATOR IDARQUIVO_RETORNO');
      mudaVersao('1.0.0.24');
    end; // Fim Ataulização Versao 1.0.0.23

    if (versaoSistema = '1.0.0.24') then
    begin
      mudaVersao('1.0.0.25');
    end; // Fim Ataulização Versao 1.0.0.24

    if (versaoSistema = '1.0.0.25') then
    begin
      executaDDL('CLIENTES','BLOQUEIO','CHAR(1)');
      executaDDL('CLIENTES','COD_TRANPORTADORA','INTEGER');
      executaDDL('TRANSPORTADORA','FONE','VARCHAR(15)');
      executaDDL('TRANSPORTADORA','FONE2','VARCHAR(15)');
      executaDDL('TRANSPORTADORA','FAX','VARCHAR(15)');
      executaDDL('TRANSPORTADORA','CONTATO','VARCHAR(40)');
      executaDDL('TRANSPORTADORA','BAIRRO','VARCHAR(40)');
      executaDDL('TRANSPORTADORA','CEP','VARCHAR(15)');
      executaScript('produtoetiquetacompra.sql');
      executaScript('spEstoqueFiltro.sql');
      executaScript('retornaEstoqueCompra.sql');
      executaScript('CorrigeEstoque.sql');
      executaScript('apaga_estoque.sql');
      executaScript('retornaEstoqueVenda.sql');
      executaScript('mov_EstoqueCorrige.sql');
      executaScript('mov_estoque.sql');
      mudaVersao('1.0.0.26');
    end; // Fim Ataulização Versao 1.0.0.25

    if (versaoSistema = '1.0.0.26') then
    begin
      executaScript('exclui_pag.sql');
      executaScript('fluxoentradasaida.sql');
      mudaVersao('1.0.0.27');
    end; // Fim Ataulização Versao 1.0.0.26

    if (versaoSistema = '1.0.0.27') then
    begin
      executaDDL('NOTAFISCAL','SERIE','VARCHAR(20)');
      mudaVersao('1.0.0.28');
    end; // Fim Ataulização Versao 1.0.0.27

    if (versaoSistema = '1.0.0.28') then
    begin
      executaScript('sp_contas_pendentes.sql');
      executaScript('listaProduto.sql');
      mudaVersao('1.0.0.29');
    end; // Fim Ataulização Versao 1.0.0.28

    if (versaoSistema = '1.0.0.29') then
    begin
      executaSql('INSERT INTO NATUREZAOPERACAO (CODNATUREZA, DESCNATUREZA, ' +
        ' GERATITULO, TIPOTITULO, TIPOMOVIMENTO, BAIXAMOVIMENTO)' +
        ' Values (15, ' + QuotedStr('NOTA FISCAL VENDA') + ' ,1 , 0, 15, null)');
      executaScript('gera_parcelas_rec.sql');
      executaScript('spestoqueproduto.sql');
      executaScript('altera_contabil.sql');
      executaScript('gera_valor.sql');
      executaScript('rel_rcbo.sql');
      mudaVersao('1.0.0.30');
    end; // Fim Ataulização Versao 1.0.0.29

    if (versaoSistema = '1.0.0.30') then
    begin
      executaSql('CREATE EXCEPTION TIPOENDERECOREPETIDO ' +
        QuotedStr('Já existe endereço cadastrado com este tipo'));
      executaSql('CREATE EXCEPTION CNPJ_REPETIDO ' +
        QuotedStr('Já existe Cliente com este CNPJ/CPF.'));
      executaScript('tipoend_repetido.sql');
      executaScript('cnpj_repetido.sql');
      mudaVersao('1.0.0.31');
    end; // Fim Ataulização Versao 1.0.0.30

    if (versaoSistema = '1.0.0.31') then
    begin
      mudaVersao('1.0.0.32');
    end; // Fim Ataulização Versao 1.0.0.31

    if (versaoSistema = '1.0.0.32') then
    begin
      executaScript('gera_nf.sql');
     // executaScript('relContasReceber.sql');
      executaScript('relNotaFiscal.sql');
      mudaVersao('1.0.0.33');
    end; // Fim Ataulização Versao 1.0.0.32

    if (versaoSistema = '1.0.0.33') then
    begin
      executaSql('ALTER TABLE ESTADO_ICMS ADD ICMS_SUBSTRIB double precision');
      executaSql('ALTER TABLE ESTADO_ICMS ADD ICMS_SUBSTRIB_IC double precision');
      executaSql('ALTER TABLE ESTADO_ICMS ADD ICMS_SUBSTRIB_IND double precision');
      executaSql('ALTER TABLE SERIES ADD ICMS_DESTACADO double precision');
      mudaVersao('1.0.0.34');
    end; // Fim Ataulização Versao 1.0.0.33

    if (versaoSistema = '1.0.0.34') then
    begin
      executaScript('formata_doublePrecision.sql');
      executaScript('gera_nf_venda.sql');
      mudaVersao('1.0.0.35');
    end; // Fim Ataulização Versao 1.0.0.34

    if (versaoSistema = '1.0.0.35') then
    begin
      executaSql('insert into PARAMETRO( ' +
        'DESCRICAO, PARAMETRO, CONFIGURADO, DADOS) ' +
        ' Values (' + QuotedStr('Serie usada para Controle de Maquinas') +
        ', ' + QuotedStr('SERIEMAQUINA') + ', ' + QuotedStr('S') +
        ', ' + QuotedStr('M') + ')');

      executaSql('insert into SERIES( ' +
        'SERIE, ULTIMO_NUMERO) ' +
        ' Values (' + QuotedStr('M') + ', ' + IntToStr(0) + ')');

      executaSql('alter table movimentodetalhe add periodoini timestamp');
      executaSql('alter table movimentodetalhe add periodofim timestamp');
      mudaVersao('1.0.0.36');
    end; // Fim Ataulização Versao 1.0.0.35

    if (versaoSistema = '1.0.0.36') then
    begin
      executaSql('alter TABLE CLASSIFICACAOFISCAL add Icms_subst double precision');
      executaSql('alter TABLE CLASSIFICACAOFISCAL add Icms_subst_ic double precision');
      executaSql('alter TABLE CLASSIFICACAOFISCAL add Icms_subst_ind double precision');
      executaScript('calcula_icms_substituicao.sql');
      executaScript('calcula_icms.sql');            
      mudaVersao('1.0.0.37');
    end; // Fim Ataulização Versao 1.0.0.36

    if (versaoSistema = '1.0.0.37') then
    begin
      executaScript('relContasReceber.sql');
      mudaVersao('1.0.0.38');
    end; // Fim Ataulização Versao 1.0.0.38


    try
      IniAtualiza := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'atualiza.ini');
      IniAtualiza.WriteString('Atualizador','data',FormatDateTime('dd/mm/yyyy',now));
    finally
      IniAtualiza.Free;
    end;
  end; // Fim Ataulização
end;

function TfAtualizaSistema.VersaoAtual: String;
begin
  try
    { Atualizando o Sistema }
    if (not sqlVersao.Active) then
      sqlVersao.Open;
    result := sqlVersao.Fields[0].AsString;
  except
    result := '0';
  end;
end;

function TfAtualizaSistema.GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

procedure TfAtualizaSistema.ExecutaScript(script : string);
var caminho,sp, sqlA :string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  caminho := ExtractFilePath(Application.ExeName);
  caminho := caminho + 'script\';
  sp := caminho + script;
  if (not FileExists(sp)) then
  begin
    MessageDlg('Erro 001. Informe o responsável pelo sistema ! (' + SP + ')', mtWarning, [mbOK], 0);
    abort;
  end;
  memo1.Lines.LoadFromFile(sp);
  sqlA := PChar(memo1.Lines.GetText);
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    if (dm.sqlsisAdimin.ExecuteDirect(sqlA) = 0) then
    begin
      dm.sqlsisAdimin.Commit(TD);
    end;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro 002. Informe o responsável pelo programa ! (' + SP + ')', mtWarning, [mbOK], 0);
    abort;
  end;
  { Fim execução Script }
end;

procedure TfAtualizaSistema.ExecutaDDL(Tabela, Campo, Tipo: string);
var sql: string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (cds.Active) then
    cds.Close;
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ' + QuotedStr(Tabela) +
    ' and RDB$FIELD_NAME = ' + QuotedStr(Campo);
  cds.Open;
  if (cds.IsEmpty) then
  begin
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      sql := 'ALTER TABLE ' + Tabela + ' ADD ' + Campo + ' '  + Tipo;
      dm.sqlsisAdimin.ExecuteDirect(sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro 003. (' + sql + ')', mtWarning, [mbOK], 0);
      abort;
    end;
  end;
end;

procedure  TfAtualizaSistema.MudaVersao(versaoNova: string);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('UPDATE ATUALIZA SET VERSAO = ' +
      QuotedStr(versaoNova) + ' WHERE CODATUALIZA = 5000');
    dm.sqlsisAdimin.Commit(TD);
    versaoSistema := versaoNova;
    close;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro na atualização da Versão ' + versaoSistema + '!', mtWarning, [mbOK], 0);
    exit;
  end;
end;
procedure TfAtualizaSistema.FormCreate(Sender: TObject);
begin
  atualizaSistema;
  memo1.Lines.Add('Sistema atualizado com sucesso !!');
end;

procedure TfAtualizaSistema.ExecutaSql(sql : string);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    if (dm.sqlsisAdimin.ExecuteDirect(sql) = 0) then
    begin
      dm.sqlsisAdimin.Commit(TD);
    end;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro 005. Informe o responsável pelo programa ! (' + sql + ')', mtWarning, [mbOK], 0);
    abort;
  end;
  { Fim execução Script }
end;

procedure TfAtualizaSistema.VerSeTemAtualiza;
begin
  begin
    ftpupdate.Host:='ftp.atsti.com.br';
    ftpupdate.Username:='atsti';
    ftpupdate.Password:='ats0333';
    ftpupdate.Passive:=true;
    ftpupdate.Connect(true);
    ftpupdate.changedir('httpdocs/aplicativos/');
    ftpupdate.list(nil);
    tamanho_arquivo := ftpupdate.Size('PrjFinanceiro.exe');
    if FileExists((ExtractFilePath(Application.ExeName))+'\'
    +('PrjFinanceiro.exe')) then
    begin
     if FormatDateTime('dd/mm/yyyy HH:mm',
     FileDateToDateTime(FileAge((ExtractFilePath(Application.ExeName))
     +'\'+('PrjFinanceiro.exe')))) <>
     FormatDateTime('dd/mm/yyyy HH:mm',
     ftpupdate.DirectoryListing.Items[0].ModifiedDate)  then
     begin
      if MessageDlg('Existe uma nova versão dessa aplicação disponível na internet!'
      +#13+'Deseja atualizar?', mtconfirmation,[mbyes,mbno],0) = mryes then
       begin
        {ftpupdate.get(('PrjFinanceiro.exe'),('C:\ftp')
        +'\'+('PrjFinanceiro.exe'),true);
        FileSetDate(('C:\ftp')
        +'\'+('PrjFinanceiro.exe'),
        DateTimeToFileDate(ftpupdate.DirectoryListing.Items[0].ModifiedDate));}
       end;
      end;
    end
    else
    begin
     ftpupdate.get(('PrjFinanceiro.exe'),(ExtractFilePath(Application.ExeName))
     +'\'+('PrjFinanceiro.exe'),true);
     FileSetDate((ExtractFilePath(Application.ExeName))+'\'+('PrjFinanceiro.exe'),
     DateTimeToFileDate(ftpupdate.DirectoryListing.Items[0].ModifiedDate));
    end;
    ftpupdate.Disconnect;
   end;     
end;

end.
