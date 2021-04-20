CREATE PROCEDURE VALOR_VALOR 
returns (
    aluguel double precision,
    valoraluguel double precision,
    cod_inquilino integer,
    nome_inquilino varchar(60),
    data_vcont date,
    descricao varchar(60),
    totalimoveis integer)
as
declare variable mes integer;
declare variable ano integer;
declare variable c_imalu integer;
BEGIN

  TOTALIMOVEIS = 0;

  Select  udf_MONTH(CURRENT_DATE) ,udf_year(CURRENT_DATE) from rdb$database
  into :MES ,:ano  ;
  
  FOR select inq.cod_inquilino, inq.nome_inquilino, imo.valor_aluguel ,imo.cod_imalu
    from inquilinos inq 
    inner join imovel_aluguel imo on imo.cod_inquilino = inq.cod_inquilino 
      where inq.situacao = 'A'  
      and inq.nome_inquilino <> '' 
     -- and inq.nome_inquilino = 'ADRIANO GALLO'
       order by udf_collatebr(inq.nome_inquilino)
    INTO :COD_INQUILINO, :NOME_INQUILINO, :valorAluguel ,:c_imalu
  DO
  BEGIN
    select first 1  l.valor as Aluguel, imo.data_vcont
    from LANCAMENTOS l, IMOVEL_ALUGUEL imo 
    where l.cod_inquilino = :cod_inquilino
        and imo.cod_imalu = l.cod_imalu
        and l.cod_imalu = :c_imalu
        and UDF_MONTH(L.VENCIMENTO) = :MES AND UDF_YEAR(L.VENCIMENTO) = :ANO
      --  and l.historico <> 'CARENCIA'
        and l.cod_contas = 1 
    
    INTO :ALUGUEL, :DATA_VCONT;

    TOTALIMOVEIS = TOTALIMOVEIS + 1;     

    if(:valorAluguel <> :ALUGUEL) then
    SUSPEND;

  END
END
