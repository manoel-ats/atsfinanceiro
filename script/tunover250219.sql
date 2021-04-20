CREATE OR ALTER PROCEDURE  TUNOVER
RETURNS ( RAZAOSOCIAL                      VARCHAR( 50 )
        , GRUPO_CLIENTE                    VARCHAR( 30 )
        , RA                               CHAR( 10 )
        , CONTAR                           DOUBLE PRECISION
        , ENTROU                           DOUBLE PRECISION
        , SAIU                             DOUBLE PRECISION
        , RESULTADO                        DOUBLE PRECISION
        , SOBRA                            DOUBLE PRECISION )
AS
BEGIN
  FOR
    select cli.RAZAOSOCIAL ,
           cli.GRUPO_CLIENTE,
           udf_Left(cli.RA,5)

    from CLIENTES cli

    where cli.GRUPO_CLIENTE = 'PCMSO' and cli.status = 0 and cli.razaosocial ='GERALDO VAN DEN BROEK'

    and cli.segmento = 0
    INTO :RAZAOSOCIAL,
         :GRUPO_CLIENTE,
         :RA

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
          (status = 0)
       and
          (razaosocial = :RAZAOSOCIAL)
       and
          (clientes.datacadastro between '01/01/18' and '12/31/18')
       )
    INTO :ENTROU
  DO
  BEGIN
  /*  SUSPEND; */
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
          (clientes.dataresc between '01/01/18' and '12/31/18')
       )
    INTO :SAIU
  DO
  BEGIN
  /*  SUSPEND; */
  END
    resultado = (((entrou + saiu)/2)*100);
    sobra = (resultado/contar);
   if((entrou <> 0) or(saiu <> 0))then
   SUSPEND;
 END


END

