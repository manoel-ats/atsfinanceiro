CREATE OR ALTER PROCEDURE TUNOVER (
    dataini date,
    datafin date,
    razao varchar(50))
returns (
    razaosocial varchar(50),
    grupo_cliente varchar(30),
    ra char(10),
    contar double precision,
    entrou double precision,
    saiu double precision,
    resultado double precision,
    sobra double precision,
    periodicos integer,
    retorno integer,
    mudanca integer,
    mescadastro varchar(10),
    prev integer)
as
BEGIN
  FOR
    select cli.RAZAOSOCIAL ,
           cli.RAZAOSOCIAL ,
           cli.GRUPO_CLIENTE,
           udf_Left(cli.RA,5),
           CAST(udf_month(cli.DATACADASTRO)AS INTEGER)AS DATACADASTRO

    from CLIENTES cli

    where cli.GRUPO_CLIENTE = 'PCMSO' and cli.status = 0  and cli.razaosocial = :razao

    and cli.segmento = 0
    INTO :RAZAOSOCIAL,
         :RAZAO ,
         :GRUPO_CLIENTE,
         :RA,
         :MESCADASTRO
  DO
  BEGIN
  FOR
    select
        count( codcliente ) count_of_codcliente
    from clientes
    where
       (
          (segmento = 1)
       and
          (status = 0)
       and
          (razaosocial = :RAZAOSOCIAL)

       and
          ((clientes.datacadastro < :datafin)or(clientes.datacadastro = :datafin))

       )
    INTO :CONTAR

  DO
  BEGIN
   /* SUSPEND; */
  END

  FOR
    select
        count(codcliente ) count_of_codcliente
    from clientes
    where
       (
          (segmento = 1)
      
       and
          (razaosocial = :RAZAOSOCIAL)
       and
          (clientes.datacadastro between :dataini and :datafin)
       )
    INTO :ENTROU
  DO
  BEGIN
  /*  SUSPEND; */
  END

 FOR
    select 
        count( venda.codcliente ) periodicos
    from clientes
       inner join venda on (clientes.codcliente = venda.codcliente)
       inner join movimentodetalhe on (venda.codmovimento = movimentodetalhe.codmovimento)
       inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto)
    where 
       (
          (clientes.razaosocial = :RAZAOSOCIAL)
       and 
          (clientes.grupo_cliente = 'PCMSO')
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
    select 
        count( venda.codcliente ) periodicos
    from clientes
       inner join venda on (clientes.codcliente = venda.codcliente)
       inner join movimentodetalhe on (venda.codmovimento = movimentodetalhe.codmovimento)
       inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto)
    where 
       (
          (clientes.razaosocial = :RAZAOSOCIAL)
       and 
          (clientes.grupo_cliente = 'PCMSO')
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
    select 
        count( venda.codcliente ) periodicos
    from clientes
       inner join venda on (clientes.codcliente = venda.codcliente)
       inner join movimentodetalhe on (venda.codmovimento = movimentodetalhe.codmovimento)
       inner join produtos on (movimentodetalhe.codproduto = produtos.codproduto)
    where 
       (
          (clientes.razaosocial = :RAZAOSOCIAL)
       and 
          (clientes.grupo_cliente = 'PCMSO')
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
    select
        count(codcliente ) count_of_codcliente
    from clientes
    where
       (
          (segmento = 1)
       and
          (status = 1)
       and
          (razaosocial = :RAZAOSOCIAL)
       and
          (clientes.dataresc between :dataini and :datafin)
       )
    INTO :SAIU
  DO
  BEGIN
  /*  SUSPEND; */
  END
    resultado = (((entrou + saiu)/2)*100);

   if(resultado = 0) then
    sobra = 0;

  /* sobra = (resultado/contar); */



    else sobra = (resultado/contar);

  /* sobra = (resultado/contar); */
/*   if((entrou <> 0) or(saiu <> 0))then */
  prev =  (CONTAR -(ENTROU-PERIODICOS));
   SUSPEND;
 END


END
