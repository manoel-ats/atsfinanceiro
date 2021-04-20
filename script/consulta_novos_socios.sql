select 
    clientes.codcliente,
    clientes.ra,
    clientes.nomecliente,
    clientes.razaosocial,
    clientes.datacadastro,
    clientes.cod_faixa
from clientes
where 
   (
      (clientes.grupo_cliente = 'ASH')
   and 
      (clientes.datacadastro > '03/01/2011')
   )
