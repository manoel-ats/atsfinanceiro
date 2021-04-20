CREATE OR ALTER PROCEDURE FAIXAS (
    codcli integer,
    nome varchar(60),
    data_val date)
returns (
    tit varchar(60),
    tit_dep varchar(60),
    faixa integer,
    val double precision,
    status integer,
    codcliente integer,
    datatransf date)
as
declare variable titular char(60);
BEGIN
  FOR
    select cli.razaosocial
    from clientes cli
    where 
       (  (cli.codcliente = :codcli)
       and
          (cli.grupo_cliente = 'ASH')
       and
          (cli.segmento = 0 )
       and ((cli.dataresc is null) or (cli.dataresc > '12/31/10'))
       AND (cli.STATUS = 0)
       )
    INTO :TITULAR
  DO
  BEGIN
        for select cli.codcliente, cli.razaosocial , cli.nomecliente , cli.cod_faixa,
                   cli.status , cli.datatransf
         from clientes cli
        where cli.razaosocial = :titular
          and cli.razaosocial = :nome
          and cli.grupo_cliente = 'ASH'
          AND cli.status = 0
        into :codcliente ,:tit ,:tit_dep ,:faixa ,:STATUS , :datatransf
        DO
        BEGIN
          if (datatransf is null) then  /* nao mudou de faixa */
          begin
            SELECT first 1 fx.valor_plano
              FROM faixa_etaria_hist fx
             where fx.data_validade > :data_val
               and fx.codfaixa = :faixa
               and fx.uso = 'ASH'
              into :val;
          end

          if ((udf_month (:datatransf)> (udf_month(:data_val)-1)) AND (udf_year(:datatransf) = udf_year(:data_val))) then /* mudou de faixa neste mes */
          begin
            SELECT first 1 fx.valor_plano
              FROM faixa_etaria_hist fx
             where fx.data_validade > :data_val
               and fx.codfaixa = (:faixa - 1)
               and fx.uso = 'ASH'
              into :val;
          end
          else
          begin
            SELECT first 1 fx.valor_plano
              FROM faixa_etaria_hist fx
             where fx.data_validade > :data_val
               and fx.codfaixa = :faixa
               and fx.uso = 'ASH'
              into :val;
          end

            SUSPEND;
        END
  END


END
