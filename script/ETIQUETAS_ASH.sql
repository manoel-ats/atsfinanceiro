create or ALTER PROCEDURE  ETIQUETAS_ASH
RETURNS ( CODCLIENTE                       INTEGER
        , RA                               VARCHAR( 10 )
        , NOMECLIENTE                      VARCHAR( 50 )
        , GRUPO_CLIENTE                    VARCHAR( 30 )
        , STATUS                           SMALLINT
        , LOGRADOURO                       VARCHAR( 50 )
        , CIDADE                           VARCHAR( 40 )
        , BAIRRO                           VARCHAR( 30 )
        , COMPLEMENTO                      VARCHAR( 30 )
        , RAMAL                            VARCHAR( 5 )
        , UF                               CHAR( 2 )
        , CEP                              VARCHAR( 10 )
        , ETIQUETA                         CHAR( 1 ) )
AS
declare variable i integer;
BEGIN
  FOR
    select 
            cli.codcliente,
            cli.ra,
            cli.nomecliente,
            cli.grupo_cliente,
            cli.status,
            ende.logradouro,
            ende.cidade,
            ende.bairro,
            ende.complemento,
            ende.ramal,
            ende.uf,
            ende.cep,
            cli.etiqueta
        from enderecocliente ende
           left outer join clientes cli on (ende.codcliente = cli.codcliente)
        where 
           (
           /*   (geraenv = 'S') */
          /* and */
         /*     (grupo_cliente = 'PCMSO') */
         /*  and  */
              (status = 0)
           and 
              (segmento = 0)
           )
    INTO :CODCLIENTE,
         :RA,
         :NOMECLIENTE,
         :GRUPO_CLIENTE,
         :STATUS,
         :LOGRADOURO,
         :CIDADE,
         :BAIRRO,
         :COMPLEMENTO,
         :RAMAL,
         :UF,
         :CEP,
         :ETIQUETA
  DO
  BEGIN
    i = 1;
    while (i <= ETIQUETA) do
    begin
      SUSPEND;
    i = i+1;
    end
  END
END
