CREATE OR alter TRIGGER gera_valor FOR NOTAFISCAL
ACTIVE AFTER INSERT POSITION 0
AS 
  declare variable parametro varchar(15);
  declare variable parc SMALLINT;
  declare variable total  double PRECISION;
  declare variable codMov INTEGER;
  declare variable p INTEGER;
  declare variable desconto DOUBLE PRECISION;
  --declare variable fatura varchar(60);
BEGIN 
	/* Valor de cada item para nota fiscal                   */
    /* Se configurado na tabela parametro a variavel NFVALOR */ 
    /* então o sistema usa o valor proporcional para a nota  */
    select parametro from parametro where parametro = 'NFVALOR'
    into :parametro;
    if (new.natureza = 15) then 
    if (parametro is not null) then 
    begin
      Select n_parcela, codmovimento from venda where codVenda = new.CODVENDA
      into :parc, :codMov;
      for select m.QTDE_ALT, m.CODPRODUTO from MOVIMENTODETALHE m where m.CODMOVIMENTO = :codMov 
        into :desconto, :p
      do begin 
        if (desconto is null) then 
          desconto = 0;
        if (desconto > 0) then 
          desconto = 1 - (desconto / 100);
        if (desconto = 0) then 
          desconto = 1;  
        update MOVIMENTODETALHE md set  md.VLR_BASE = (md.PRECO/:parc) * :desconto 
          where md.CODMOVIMENTO = :codMov and md.CODPRODUTO = :p;
      end 
      /*select first 1 UDF_DAY(r.DATAVENCIMENTO) || '/' || UDF_month(r.DATAVENCIMENTO) || 
        '/' || UDF_YEAR(r.DATAVENCIMENTO) || ' - ' || cast(UDF_TRUNCDEC(r.VALOR_RESTO,2) as varchar(15))
        from recebimento r 
        where r.CODVENDA = new.CODVENDA 
      into :fatura;*/
      select sum(m.quantidade * m.VLR_BASE) from MOVIMENTODETALHE m where m.CODMOVIMENTO = :codMov
      into :total ;
      if (total <> new.VALOR_TOTAL_NOTA) then 
        update NOTAFISCAL set VALOR_PRODUTO = :total , VALOR_TOTAL_NOTA = :total 
        where NUMNF = new.NUMNF;
    end
END
