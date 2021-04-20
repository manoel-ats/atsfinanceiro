select 
    clientes.codcliente,
    clientes.ra,
    clientes.nomecliente,
    clientes.razaosocial,
    clientes.datacadastro,
    clientes.numero
from clientes
where 
   (
      (clientes.grupo_cliente = 'ASH')
   and 
      (clientes.datacadastro > '02/28/2011')
   and 
      (clientes.numero > 0)
   )
