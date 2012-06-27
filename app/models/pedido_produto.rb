class PedidoProduto < ActiveRecord::Base
  attr_accessible :id_pedido, :id_produto, :qtd
end
