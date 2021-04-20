CREATE OR ALTER PROCEDURE PAG_TOTAIS (
    situacao char(2))
returns (
    totaltitulo double precision,
    totalpago double precision,
    totalpendente double precision,
    emissao date,
    datapagamento date,
    datavencimento date,
    titulo varchar(18),
    codfornecedor integer,
    codalmoxarifado integer,
    status char(2),
    valortitulo double precision,
    formapagamento char(1),
    n_documento varchar(20),
    contacredito integer)
as
declare variable tot double precision;
declare variable tit varchar(18);
BEGIN 
  FOR SELECT sum(valorRecebido), sum(valor_Resto-valorRecebido-desconto), VALOR_PRIM_VIA, titulo, codFornecedor, 
     emissao, status, datavencimento, dataPagamento, CODALMOXARIFADO, FORMAPAGAMENTO , N_DOCUMENTO ,CONTACREDITO
    from PAGAMENTO WHERE ((STATUS = :SITUACAO) OR (:SITUACAO = '00')) 
      group by codFornecedor, emissao, titulo, status, datavencimento, dataPagamento, VALOR_PRIM_VIA, CODALMOXARIFADO, FORMAPAGAMENTO,N_DOCUMENTO,CONTACREDITO
      order by codFornecedor, emissao, titulo, status desc
     INTO :TOTALPAGO, :TOTALPENDENTE, :TOT, :tit, :codFornecedor, :emissao, :sTatus, :DATAVENCIMENTO, :DATAPAGAMENTO,
     :CODALMOXARIFADO, :FORMAPAGAMENTO ,:N_DOCUMENTO  ,:CONTACREDITO
  DO begin
     if (status <> '5-') then
       TOTALPENDENTE = 0; 
     if (tit <> titulo) then
     begin
       if (tot = 0) then
       begin
         for select valor_prim_via from Pagamento where codFornecedor = :codFornecedor and emissao = :emissao and 
           titulo = :tit and valor_prim_via > 0.09
         into :tot
         do begin
         end 
       end
       /*else
        tot = 0;*/
     end
     else 
       tot = 0; 
     TOTALTITULO = tot;
     titulo = :tit;
     if (TOTALTITULO IS NULL) THEN
       TOTALTITULO = 0;
     if (TOTALPAGO IS NULL) THEN
       TOTALPAGO = 0;
     if (tot is null) then 
       tot = 0; 

     if (situacao = '7-') then
       TOTALPENDENTE = TOTALTITULO - TOTALPAGO;
     VALORTITULO = tot;
     
     suspend;
  end
end
