CREATE OR ALTER PROCEDURE FAROL_SOMA (
    dataini date,
    datafin date)
returns (
    entrou integer,
    saiu integer,
    periodicos integer,
    retorno integer,
    mudanca integer,
    avaliacao integer,
    contar integer)
as
declare variable razao varchar(50);
BEGIN
  FOR
    select first 1 cli.RAZAOSOCIAL

    from CLIENTES cli

    where cli.GRUPO_CLIENTE = 'PCMSO' and cli.status = 0 /*and cli.ra ='10001' */

    and cli.segmento = 0
    INTO :RAZAO

  DO
  BEGIN


  FOR
    select first 1
        count(codcliente ) count_of_codcliente
    from clientes
    where
       (
          (segmento = 1)
      
       and
          (clientes.datacadastro between :dataini and :datafin)
       and
          ((clientes.datacadastro <> clientes.dataresc) or(clientes.dataresc is null ))

       )
    INTO :ENTROU
  DO
  BEGIN
  /*  SUSPEND; */
  END

 FOR
    select first 1
        count( venda.codcliente ) periodicos
    from clientes
       inner join venda on (clientes.codcliente = venda.codcliente)
       inner join movimentodetalhe on (venda.codmovimento = movimentodetalhe.codmovimento)
       inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto)
    where 
       (  (clientes.grupo_cliente = 'PCMSO')
       and 
          (produtos.codproduto = 194)
       and 
          (venda.datavenda  between :dataini and :datafin)
       )
    INTO :PERIODICOS
  DO
  BEGIN
   /* SUSPEND; */
  END

 FOR
    select first 1
        count( venda.codcliente ) periodicos
    from clientes
       inner join venda on (clientes.codcliente = venda.codcliente)
       inner join movimentodetalhe on (venda.codmovimento = movimentodetalhe.codmovimento)
       inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto)
    where 
       (  (clientes.grupo_cliente = 'PCMSO')
       and 
          (produtos.codproduto = 184)
       and 
          (venda.datavenda  between :dataini and :datafin)
       )
    INTO :RETORNO
  DO
  BEGIN
  /*  SUSPEND; */
  END
 FOR
    select first 1
        count( venda.codcliente ) periodicos
    from clientes
       inner join venda on (clientes.codcliente = venda.codcliente)
       inner join movimentodetalhe on (venda.codmovimento = movimentodetalhe.codmovimento)
       inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto)
    where 
       (  (clientes.grupo_cliente = 'PCMSO')
       and 
          (produtos.codproduto = 186)
       and 
          (venda.datavenda  between :dataini and :datafin)
       )
    INTO :MUDANCA
  DO
  BEGIN
 /* SUSPEND; */
  END

 FOR
    select first 1
        count( venda.codcliente ) periodicos
    from clientes
       inner join venda on (clientes.codcliente = venda.codcliente)
       inner join movimentodetalhe on (venda.codmovimento = movimentodetalhe.codmovimento)
       inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto)
    where 
       (  (clientes.grupo_cliente = 'PCMSO')
       and 
          (produtos.codproduto = 212)
       and 
          (venda.datavenda  between :dataini and :datafin)
       )
    INTO :AVALIACAO
  DO
  BEGIN
 /* SUSPEND; */
  END
  FOR
    select first 1
        count(codcliente ) count_of_codcliente
    from clientes
    where
       (
          (segmento = 1)
       and
          (status = 1)
       and
          (clientes.dataresc between :dataini and :datafin)

       and
           (clientes.datacadastro <> clientes.dataresc)
       )
    INTO :SAIU
  DO
  BEGIN
  /*  SUSPEND; */
  END
  contar = (entrou + saiu + periodicos + retorno + mudanca + avaliacao) ;
   /* resultado = (((entrou + saiu)/2)*100); */

  /* if(resultado = 0) then */
 /*   sobra = 0; */

  /* sobra = (resultado/contar); */



  /*  else sobra = (resultado/contar); */

  /* sobra = (resultado/contar); */
/*   if((entrou <> 0) or(saiu <> 0))then */
   SUSPEND;
 END


END
