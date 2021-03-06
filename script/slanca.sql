CREATE OR ALTER PROCEDURE LANCARECEITASAUDE (
    emissao date,
    dtvcto date,
    cliente integer,
    clienteproc integer,
    contadebito integer,
    contacredito integer,
    fornecedor integer,
    vlrpagar double precision,
    vlrreceber double precision,
    vlrreembolsocli double precision,
    historico varchar(60),
    codccusto integer,
    codrec integer,
    codpag integer,
    n_boleto varchar(30),
    datasistema date,
    outras_desp double precision)
as
declare variable mesano varchar(6);
declare variable serie varchar(18);
declare variable codmov integer;
declare variable valor double precision;
declare variable data_rec date;
declare variable valor_inteiro double precision;
BEGIN
  /* Faz o lançamento na Movimento e Venda(gerando apenas um título mês por cliente)  */

  /* Número do Título = CodCliente do Titular mais o Mês na Série (para todos os títulos como o mesmo mês  */
  /* de vcto, uso o mesmo número.                                 */
  /* CONTROLE = Código Beneficiario (Conveniado que usou o procedimento) */
  /* COD_COMISSAO = FORNECEDOR (Hospital, Clinica, Medico)                         */
  /* LOTE = Armazenando Historico */
  mesAno = UDF_STRZERO(UDF_MONTH(dtVcto),2) || UDF_YEAR(dtVcto);
  valor = vlrReceber - vlrReembolsocli;
  select serie from series where serie = :mesAno
  into :serie;
  if (serie is null) then
  begin
    insert into series(serie, ultimo_numero) values (:mesAno, 1);
  end

  select gen_id(genmov,1) FROM RDB$DATABASE
    into :codMov;
  INSERT INTO movimento
    (codMovimento, CODCLIENTE, DATAMOVIMENTO, CODNATUREZA, STATUS , CODALMOXARIFADO, CODVENDEDOR, CODUSUARIO)
    VALUES 
    (:codMov,:cliente, :emissao,  3, 0, :codCCusto, 1, 1 ); 
  /* Campo CONTROLE informa quem é o BENEFICIARIO(usou o convênio) */
  INSERT INTO movimentoDetalhe (codDetalhe, codMovimento, codProduto, controle, quantidade, preco, cod_comissao, lote ,DTAVCTO ,PRECOCUSTO )
    Values(gen_id(genmovdet, 1), :codMov, :contaDebito, :clienteProc, 1, :valor, :FORNECEDOR, :HISTORICO ,:datasistema ,:outras_desp );
  Insert into venda(codVenda, codMovimento, codCliente, dataVenda, dataVencimento, notaFiscal, serie, n_parcela
      , valor, status, entrada, desconto, multa_juros, obs, codccusto , n_boleto , datasistema ,outras_desp )
    Values(gen_id(genvenda, 1), :codMov, :cliente, :emissao, :dtvcto, :cliente, :mesAno, 1
      , :vlrReceber, 0, 0, :VLRREEMBOLSOCLI, 0, :HISTORICO, :codccusto , :n_boleto ,:datasistema  , :outras_desp );

END
