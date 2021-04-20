update clientes set  clientes.razaosocial = clientes.nomecliente
 
where 
   (
      (clientes.grupo_cliente = 'ASH')
   and 
      (clientes.segmento = 0)
   and
      (clientes.razaosocial <> clientes.nomecliente)
   )