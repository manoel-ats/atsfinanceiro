set term ^;
create or ALTER PROCEDURE  ESTATISTICAASHFORNECEDOR( PDATA1                           DATE
                                         , PDATA2                           DATE )
RETURNS ( DESPESA                          VARCHAR( 100 )
        , NAOIDENTIFICADO                  DOUBLE PRECISION
        , FAIXA1                           DOUBLE PRECISION
        , FAIXA2                           DOUBLE PRECISION
        , FAIXA3                           DOUBLE PRECISION
        , FAIXA4                           DOUBLE PRECISION
        , FAIXA5                           DOUBLE PRECISION
        , FAIXA6                           DOUBLE PRECISION
        , FAIXA7                           DOUBLE PRECISION
        , FAIXA8                           DOUBLE PRECISION
        , FAIXA9                           DOUBLE PRECISION
        , FAIXA10                          DOUBLE PRECISION
        , PARTICULAR                       DOUBLE PRECISION
        , IMPOSTO                          DOUBLE PRECISION
        , TOTAL                            DOUBLE PRECISION
        , GRUPO                            CHAR( 1 ) )
AS
  declare variable item integer;
  declare variable quemUsou integer;
  declare variable faixa smallint;
  declare variable tipo varchar(10);
  declare variable imprime smallint;
  declare variable valor double precision;
  declare variable E_ASH varchar(100);
  declare variable codforn integer;

begin
  /* Loop pelo Produtos , cada produto vai ser utilizado pra ver se tem despesa pra ele*/
  codforn = 0;
  grupo = '1';
  imprime = 0;
  imposto = 0;
  For Select CODFORNECEDOR FROM FORNECEDOR order by NOMEFORNECEDOR
   into :item
  do begin 
    faixa1 = 0;
    faixa2 = 0;
    faixa3 = 0;
    faixa4 = 0;
    faixa5 = 0;
    faixa6 = 0;
    faixa7 = 0;
    faixa8 = 0;
    faixa9 = 0;
    faixa10 = 0;
    particular = 0;
    total = 0;

    SELECT sum(c.DESCONTO)  from COMPRA c
      where c.DATACOMPRA between :pData1 and :pData2 
      into :Imposto;
    /* Busco os Lançamentos dos Pagamentos */
    For SELECT d.codAlmoxarifado, f.NOMEFORNECEDOR, sum(d.PRECO * d.quantidade) as VALOR  
       
       FROM MOVIMENTO a, MOVIMENTODETALHE d
       inner join compra c on c.CODMOVIMENTO = a.CODMOVIMENTO
       inner join FORNECEDOR f on f.CODFORNECEDOR = a.CODFORNECEDOR
       where d.codmovimento = a.CODMOVIMENTO 
       and a.CODNATUREZA = 4 and a.CODFORNECEDOR = :item 
       and c.DATAVENCIMENTO between :pData1 and :pData2 and d.CODALMOXARIFADO IS NOT NULL 
       group by d.codAlmoxarifado, f.NOMEFORNECEDOR   order by  d.codAlmoxarifado
       into :quemUsou, :DESPESA, :valor 
    do begin 
     If (item <> codforn) then 
       begin 
      Select sum(c.desconto) from COMPRA c where
       c.CODFORNECEDOR = :item 
       and c.DATAVENCIMENTO between :pData1 and :pData2   
      into :imposto;
      end 
     codforn = item;
      Select c.COD_FAIXA, c.GRUPO_CLIENTE, RAZAOSOCIAL  from clientes c where c.codCliente = :quemUsou
        into :faixa, :tipo, :E_ASH; 
        if ((faixa is null) and (tipo is null)) then  
        begin 
          naoIdentificado = naoIdentificado + valor; 
          imprime = 1;
        end 

      if ((tipo = 'ASH') or (E_ASH = 'ASH')) then 
      begin  
      if (faixa = 1) then 
      begin 
        faixa1 = faixa1 + valor; 
        imprime = 1;
      end 
      if (faixa = 2) then 
      begin 
        faixa2 = faixa2 + valor; 
        imprime = 1;
      end 
      if (faixa = 3) then 
      begin 
        faixa3 = faixa3 + valor; 
        imprime = 1;
      end 
      if (faixa = 4) then 
      begin 
        faixa4 = faixa4 + valor; 
        imprime = 1;
      end 
      if (faixa = 5) then 
      begin 
        faixa5 = faixa5 + valor; 
        imprime = 1;
      end 
      if (faixa = 6) then 
      begin 
        faixa6 = faixa6 + valor; 
        imprime = 1;
      end 
      if (faixa = 7) then 
      begin 
        faixa7 = faixa7 + valor; 
        imprime = 1;
      end 
      if (faixa = 8) then 
      begin 
        faixa8 = faixa8 + valor; 
        imprime = 1;
      end 
      if (faixa = 9) then 
      begin 
        faixa9 = faixa9 + valor; 
        imprime = 1;
      end 
      if (faixa = 10) then 
      begin 
        faixa10 = faixa10 + valor; 
        imprime = 1;
      end 
      end -- fim IF TIPO = ASH
      IF ((tipo = 'PARTICULAR') AND (E_ASH <> 'ASH')) then 
      begin
        particular = particular + valor;
        imprime = 1; 
      end          
    end --Fim dos Loop para os lançamentos
    if (imprime = 1) then 
    begin 
      total = faixa1+faixa2+faixa3+faixa4+faixa5+faixa6+faixa7+faixa8+faixa9+faixa10+particular;
      Suspend; 
    end 
    imprime = 0;
    imposto = 0;
    total = 0;
  end -- Fim do Loop nos produtos 
  despesa = '';
  -- ##################### REEMBOLSOS #########################
  grupo = '0';
  faixa1 = null;
  faixa2 = null;
  faixa3 = null;
  faixa4 = null;
  faixa5 = null;
  faixa6 = null;
  faixa7 = null;
  faixa8 = null;
  faixa9 = null;
  faixa10 = null;
  particular = null;
  total = null;

  Suspend;
  despesa = '';
  Suspend;
  despesa = 'REEMBOLSOS :';
  Suspend;
  /* Loop pelo Produtos , cada produto vai ser utilizado pra ver se tem despesa pra ele*/
  grupo = '2';

  imprime = 0;
  imposto = 0;
  --For Select CODPRODUTO FROM PRODUTOS order by pro_cod
  -- into :item
  --do begin 
  -- ### Só Preciso do Reembolso para Sócios ###############################
  begin -- apenas abro um bloco, pois, nao preciso do For acima
  item = 632; -- Reembolso para Sócios
    faixa1 = 0;
    faixa2 = 0;
    faixa3 = 0;
    faixa4 = 0;
    faixa5 = 0;
    faixa6 = 0;
    faixa7 = 0;
    faixa8 = 0;
    faixa9 = 0;
    faixa10 = 0;
    particular = 0;
    total = 0;
  /* Busco os Lançamentos dos Reembolsos */
    For SELECT CAST(d.CONTROLE as INTEGER), sum(d.PRECO * d.quantidade) as VALOR      
       , f.NOMEFORNECEDOR FROM MOVIMENTO a, MOVIMENTODETALHE d
       inner join VENDA v on v.CODMOVIMENTO = a.CODMOVIMENTO
       inner join RECEBIMENTO rec on rec.CODRECEBIMENTO = v.NUMEROBORDERO      
       inner join FORNECEDOR f on f.CODFORNECEDOR = d.COD_COMISSAO
       where d.codmovimento = a.CODMOVIMENTO 
       and a.CODNATUREZA = 3 and a.CODFORNECEDOR = :item 
       and v.DATAVENCIMENTO between :pData1 and :pData2 and d.CONTROLE IS NOT NULL 
       group by d.LOTE, d.CONTROLE, f.NOMEFORNECEDOR order by d.LOTE
       into :quemUsou, :valor, :DESPESA
    do begin 
      Select c.COD_FAIXA, c.GRUPO_CLIENTE from clientes c where c.codCliente = :quemUsou
        into :faixa, :tipo; 
      if (tipo = 'ASH') then 
      begin  
      if (faixa = 1) then 
      begin 
        faixa1 = faixa1 + valor; 
        imprime = 1;
      end 
      if (faixa = 2) then 
      begin 
        faixa2 = faixa2 + valor; 
        imprime = 1;
      end 
      if (faixa = 3) then 
      begin 
        faixa3 = faixa3 + valor; 
        imprime = 1;
      end 
      if (faixa = 4) then 
      begin 
        faixa4 = faixa4 + valor; 
        imprime = 1;
      end 
      if (faixa = 5) then 
      begin 
        faixa5 = faixa5 + valor; 
        imprime = 1;
      end 
      if (faixa = 6) then 
      begin 
        faixa6 = faixa6 + valor; 
        imprime = 1;
      end 
      if (faixa = 7) then 
      begin 
        faixa7 = faixa7 + valor; 
        imprime = 1;
      end 
      if (faixa = 8) then 
      begin 
        faixa8 = faixa8 + valor; 
        imprime = 1;
      end 
      if (faixa = 9) then 
      begin 
        faixa9 = faixa9 + valor; 
        imprime = 1;
      end 
      if (faixa = 10) then 
      begin 
        faixa10 = faixa10 + valor; 
        imprime = 1;
      end 
      end -- fim IF TIPO = ASH
      IF (tipo = 'PARTICULAR') then 
      begin
        particular = particular + valor;
        imprime = 1; 
      end          
      total = faixa1+faixa2+faixa3+faixa4+faixa5+faixa6+faixa7+faixa8+faixa9+faixa10+particular;
      Suspend; 
      total = 0;
      faixa1 = 0;
      faixa2 = 0;
      faixa3 = 0;
      faixa4 = 0;
      faixa5 = 0;
      faixa6 = 0;
      faixa7 = 0;
      faixa8 = 0;
      faixa9 = 0;
      faixa10 = 0;
      particular = 0;
    end --Fim dos Loop para os lançamentos
  end 
end
