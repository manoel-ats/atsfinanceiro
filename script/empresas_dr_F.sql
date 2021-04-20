select 
    udf_collatebr (clientes.nomecliente ) nomecliente,
    clientes.cnpj,
    clientes.inscestadual,
    clientes.datacadastro,
    clientes.obs,
    enderecocliente.logradouro,
    enderecocliente.bairro,
    enderecocliente.complemento,
    enderecocliente.cidade,
    enderecocliente.uf,
    enderecocliente.cep,
    enderecocliente.telefone,
    enderecocliente.telefone1,
    enderecocliente.telefone2,
    enderecocliente.fax,
    enderecocliente.e_mail,
    enderecocliente.ramal,
    enderecocliente.dadosadicionais,
    enderecocliente.ddd,
    enderecocliente.ddd2,
    enderecocliente.ddd3,
    enderecocliente.ddd1,
    enderecocliente.comple
from enderecocliente
   inner join clientes on (enderecocliente.codcliente = clientes.codcliente)
where 
   (
      (clientes.segmento = 0)
   and 
      (clientes.grupo_cliente = 'PCMSO')
   and 
      (clientes.status = 0)
   )
order by (clientes.nomecliente )
