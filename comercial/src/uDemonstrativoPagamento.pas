procedure TFrmCadTiss.DemonstrativoPagamento;
begin
  xmlTISS.XML.Clear;
  Cabecalho('DEMONSTRATIVO_PAGAMENTO', 425, date, now);
  msg.Cabecalho.Origem.RegistroANS := '345164';
  msg.Cabecalho.Destino.codigoPrestadorNaOperadora.CNPJ := EliminaCaracteres(QryMsg.fieldbyname('CGC').asstring);
  msg.Cabecalho.VersaoPadrao := '2.01.02';

  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Add;
  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].CabecalhoDemonstrativo do
  begin
    NumeroDemonstrativo := '1';
    DataEmissao := FormatDateTime('yyyy-mm-dd', date);
  end;

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].IdentificacaoOperadora do
  begin
    RegistroANS := '345164';
    NomeOperadora := QryMsg.fieldbyname('NOME').asstring;
    CNPJ := EliminaCaracteres(QryMsg.fieldbyname('CGC').asstring);
  end;

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPrestador.Identificacao do
    CNPJ := EliminaCaracteres(QryMsg.fieldbyname('CGC').asstring);

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPrestador do
    NomeContratado := 'MATER DEI';

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPrestador.EnderecoContratado do
  begin
    TipoLogradouro := ObterTipoLog(QryMsg.fieldbyname('TIPOLOG1').asstring);
    Logradouro     := QryMsg.fieldbyname('ENDERECO1').asstring;
    Numero         := QryMsg.fieldbyname('NUMEROLOG1').asstring;
    Complemento    := QryMsg.fieldbyname('COMPLEMENTO1').asstring;
    CodigoIBGEMunicipio := '1234567'; //QryMsg.fieldbyname('IBGE1').asstring;
    Municipio      := QryMsg.fieldbyname('CIDADE1').asstring;
    CodigoUF       := QryMsg.fieldbyname('ESTADO1').asstring;
    Cep            := EliminaCaracteres(QryMsg.fieldbyname('CEP1').asstring);
  end;

  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPrestador.NumeroCNES := '999';

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPagamento do
  begin
    DataPagamento := FormatDateTime('yyyy-mm-dd', date);
    // Ver na tabela de Dominio.
    FormaPagamento := '1';
    Banco := 275;
    Agencia := '2427';
    ContaCorrente := '322566-5';
  end;

  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosResumo.DetalheResumo.Add;
  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosResumo.DetalheResumo.Items[0] do
  begin
    NumeroFatura := '565666';
    NumeroLote := '555555';
    DataEnvioLote := FormatDateTime('yyyy-mm-dd', date);
    NumeroProtocolo  := '400.00';
    ValorInformado   := '400.00';
    ValorProcessado  := '400.00';
    ValorLiberado    := '400.00';
    ValorGlosa := '0';
  end;

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosResumo do
  begin
    TotalGeralInformado  := '500.00';
    TotalGeralProcessado := '500.00';
    TotalGeralGlosa      := '250.00';
    TotalGeralLiberado   := '500.00';
  end;

  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].ValorTotal := '100.00';

  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DemaisDescontos.Add;
  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DemaisDescontos.ItemDesconto[0] do
  begin
    valorDesconto := '500.00';
    descricao := 'fdfadfa';
  end;

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0] do
    ValorFinalLiberado := '250.00';

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0] do
    ValorFinalLiberado := '500.00';

  GerarXML('', 'DemonstrativoPagamento.xml');
end;
