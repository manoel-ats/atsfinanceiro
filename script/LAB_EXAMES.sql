CREATE OR ALTER PROCEDURE LAB_EXAMES (
    dtexame date,
    codcli integer)
returns (
    datacoleta date,
    tipoexame varchar(100),
    nomecliente varchar(60),
    parcela varchar(3),
    nome_reprfor varchar(60),
    resultado1 varchar(30),
    resultado2 varchar(30),
    resultado3 varchar(30),
    resultado4 varchar(30),
    obs varchar(200),
    desc1 varchar(200),
    desc2 varchar(200),
    desc3 varchar(200),
    desc4 varchar(200),
    desc5 varchar(200),
    desc6 varchar(200),
    desc7 varchar(200),
    desc8 varchar(200),
    desc9 varchar(200),
    ordem integer)
as
declare variable descr varchar(80);
BEGIN
  FOR
     Select DESCRICAO,DESC1,DESC2,DESC3,DESC4,DESC5,DESC6,DESC7,DESC8,DESC9 from DADOS_COMBOS where USO = 'EXAMES' and UNICO = 1 order by ORDEM
   INTO :DESCR ,:DESC1 , :DESC2, :DESC3, :DESC4, :DESC5, :DESC6 , :DESC7, :DESC8, :DESC9
   DO
BEGIN
   
  FOR
    select lab.dataentregamaterial, lab.tipoexame, 'Nome : ' || cli.nomecliente,cli.parcela, 'Dr : ' || rep.nome_reprfor,
    resu.resultado1 ,resu.resultado2, resu.resultado3 , resu.resultado4 ,'Obs : ' || resu.obs
    from repr_fornecedor rep
       inner join labexame lab on (rep.cod_reprfor = lab.medicosolicitante)
       left outer join labexameresultado resu on (lab.codexame = resu.codexame)
       inner join clientes cli on (lab.codcliente = cli.codcliente)
    where 
       (
          (lab.situacao = 'FINALIZADO')
       and 
          (tipoexame = :DESCR )
       and 
          (lab.codcliente = :codcli)
       and
          (lab.dataentregamaterial = :dtexame)
       and
          ((lab.unico is null)
       or
          (lab.unico <> '1'))
 
       )
    INTO :DATACOLETA,
         :TIPOEXAME,
         :NOMECLIENTE,
         :PARCELA, 
         :NOME_REPRFOR,
         :RESULTADO1,
         :RESULTADO2,
         :RESULTADO3,
         :RESULTADO4,
         :OBS
  DO
  BEGIN
    if(tipoexame <> 'HEMOGRAMA')then
    SUSPEND;
  END
END
END
