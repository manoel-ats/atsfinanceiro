create or ALTER PROCEDURE  AVISO_ASH_TODOS( DTA1                             DATE
                          , DTA2                             DATE
                          , DTAV1                            DATE
                          , DTAV2                            DATE
                          , CLIENTE                          INTEGER
                          , CLIENTEPROC                      INTEGER
                          , CONTADEBITO                      INTEGER
                          , FORNECEDOR                       INTEGER
                          , CODCCUSTO                        INTEGER )
RETURNS ( COL1                             VARCHAR( 200 )
        , COL2                             VARCHAR( 200 )
        , DATA1                            DATE
        , DATA2                            DATE
        , VALOR                            DOUBLE PRECISION
        , FORMATO                          CHAR( 1 )
        , LINHAVAZIA                       CHAR( 1 )
        , ORDEM                            VARCHAR( 15 )
        , TIPOLINHA                        VARCHAR( 15 )
        , CODCLI                           INTEGER )
AS
declare variable total double precision;
declare variable nomeccusto varchar(15);
declare variable datavencimento date;
declare variable mesaniversario smallint;
declare variable mesatual smallint;
declare variable idade smallint;
declare variable faixaatual smallint;
declare variable razao varchar(100);
declare variable faixa integer;
declare variable valoratual double precision;
declare variable anuidade double precision;
declare variable valorm double precision;
begin 
  /* 1Âª Linha */
  /* CÃ³digo e Nome do Titular/Empresa  */
     if (codccusto = 51) then
       nomeccusto = 'ASH';
     if (codccusto = 52) then
       nomeccusto = 'PCMSO';

    For Select RAZAOSOCIAL, codCliente from Clientes
    where segmento = 0 and ((codCliente = :cliente) or (:cliente = 0)) and STATUS = 0 
      and grupo_cliente = :nomeccusto  order by RA
  into :col1, :codCli
  do begin 

    RAZAO = COL1; 
    /* Linha Vazia */
     data1 = null;
     data2 = null;
     col1 = ''; /* Se precisar apague esses traços e coloque ponto. */
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'S';
     suspend;

     /* Linha Vazia */
     data1 = null;
     data2 = null;
     col1 = ''; /* Se precisar apague esses traços e coloque ponto. */
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'S';
     suspend;

     total = 0;

     /*Formato Negrito */
     Formato = 'N';
     tipoLinha = 'DADOS';
     /* Imprime */
     suspend; /* COMENTEI PRA NÃO APARECER O NOME POIS JA APARECE EM CIMA */
     /* TÃ­tulo da Linha Totais */
     col1 = null;
     tipoLinha = 'TITULO1';
     Suspend;
     /*Buscando os Totais   */
     /*for SELECT emissao, vence, codConta || '-' || conta,sum(vlrRec), ordem  --- tirei o codigo */
     for SELECT emissao, vence, conta,sum(vlrRec), ordem  
       FROM LANCAPROCSAUDEPROC (:DTA1, :DTA2, :DTAV1,:DTAV2, :CodCli,:CLIENTEPROC,
         :CONTADEBITO, :FORNECEDOR, :CODCCUSTO) group by ordem, emissao, vence, codConta, conta 
        into :data1, Data2, :col1, :valor, :ordem
     do begin
       Formato = 'S';
       tipoLinha = 'DADOS';
       Total = Total + Valor;
       datavencimento = data2;
       Suspend; 
     end  
     /* Linha Vazia */
     data1 = null;
     data2 = null;
     col1 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'S';
     suspend;
     /*Imprime Totais */
     col1 = 'TOTAL .... ';
     valor = total; 
     tipoLinha = 'DADOS';
     Formato = 'S';
     suspend;      
     /* Linha Vazia */
     data1 = null;
     data2 = null;
     col1 = null;
     col2 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'L';
     suspend;

     /* TÃ­tulo da Linha LanÃ§amentos */
     col1 = null;
     valor = null;
     tipoLinha = 'TITULO2';
     Formato = 'S';
     Suspend;
     /* Linha Vazia */
     data1 = null;
     data2 = null;
     col1 = null;
     col2 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'L';
     suspend;

     
     /* Imprimindo todos os lanÃ§amentos */
     for SELECT emissao, conta ||'//'||HIST, ordem,vlrRec, 
      /*  udf_copy(codDependente, 7, udf_len(codDependente)) || '-' || assocDependente    */
        assocDependente   
       FROM LANCAPROCSAUDEPROC (:DTA1, :DTA2, :DTAV1,:DTAV2, :codCli,:CLIENTEPROC,
         :CONTADEBITO, :FORNECEDOR, :CODCCUSTO) where codConta <> '744' 
         order by ordem, emissao, vence, codConta, conta 
        into :data1, :col2, :ordem,:valor, :col1 
     do begin
       Formato = 'S';
       tipoLinha = 'DADOS2';
       Suspend;        
     end 
     /* Linha Vazia */
     data1 = null;
     data2 = null;
     col1 = null;
     col2 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'L';
     suspend;
     /* Linha Vazia */
     data1 = null;
     data2 = null;
     col1 = null;
     col2 = null;
     ordem = null;
     valor = null;
     tipoLinha = 'DADOS';
     Formato = 'S';
     suspend;

 
    /* Imprimi os Debitos atrazados. */

    For SELECT VALOR_RESTO , DATAVENCIMENTO FROM RECEBIMENTO where CODCLIENTE = :codCli and status = '5-' AND VALOR_RESTO > 0 AND DATAVENCIMENTO < :DTAV1
    INTO :VALOR , :DATA1 

     DO BEGIN
     tipoLinha = 'TITULOS';
     SUSPEND;
     data1 = null;
     valor = null;
     end 

    /* Linha Data Vencimento */

    tipoLinha = 'VENCIMENTO';
    data2 = datavencimento ; 
    /* Linha Vazia */
    data1 = null;
    col1 = null;
    col2 = null;
    ordem = null;
    valor = null;
    suspend;
    data2 = null;

    /* Linha Aniversario */

   for SELECT UDF_MONTH(cli.DATANASC) as mesAniversario,  UDF_AGE(cli.DATANASC) as idade, cli.COD_FAIXA ,UDF_TRIM(cli.nomecliente) 
     from CLIENTES cli where RAZAOSOCIAL = :RAZAO and status = 0 and UDF_MONTH(cli.DATANASC)= UDF_MONTH(:DTA1)AND GRUPO_CLIENTE = 'ASH'
   /*and  UDF_AGE(cli.DATANASC) > 0 */
    into :mesAniversario, :idade, :faixaAtual,:col1
   do begin
   tipoLinha = 'ANIVERSARIO';

   if (idade > 0) then

   col1 = '( ' || col1  || ' ) nós da ASH te parabenizamos pelo seu aniversário.';

   else

   col1 = '( ' || col1  || ' ) nós da ASH te parabenizamos pelo sua chegada.';


   suspend; 
   valor = NULL;
   end

    /* Linha Mudança Faixa */

   for SELECT cli.PARCELA , cli.ANUIDADE , cli.COD_FAIXA ,cli.MENSALIDADE ,UDF_TRIM(cli.nomecliente) 
     from CLIENTES cli where RAZAOSOCIAL = :RAZAO and status = 0 and cli.DATATRANSF BETWEEN (:DTA1) AND (:DTA2)AND GRUPO_CLIENTE = 'ASH' 
     
    into :faixa, :anuidade, :faixaAtual,:valor ,:col1 
   do begin
   
   tipoLinha = 'MUDANCA';
    
  
   col1 = 'A partir desse mês, ' || Col1 || ' , mudou da faixa '|| faixa ||' para a faixa '||faixaatual||', sendo assim, sua mensalidade passa a ser de R$ ';
  
   suspend; 
   col1 = null;
   valor = null;

   end
  /*- LINHA MENSALIDADE  */

   /*FOR SELECT  UDF_TRIM(cli.nomecliente) ,fx.VALOR_PLANO from CLIENTES cli -- até o dia 21/03/2011 */
   FOR SELECT  UDF_TRIM(cli.nomecliente) ,
   case when emviagem = 'S' then (fx.VALOR_PLANO * 0.25) else fx.VALOR_PLANO end from CLIENTES cli 
 
   left outer join FAIXA_ETARIA fx on fx.CODIGOS = cli.COD_FAIXA      
   where RAZAOSOCIAL = :RAZAO and status = 0 and GRUPO_CLIENTE = 'ASH' and USO = 'ASH'

   into :COL1, :VALOR 
   do begin

   select valorm from gera_mensal(:codcli)
   into :valorm;
   if(valorm > 0 ) then
   valor = valorm ;

   tipoLinha = 'Asso. e Valor ';
   suspend; 
   col1 = null ;
   valor = null;
   end

  end
end
