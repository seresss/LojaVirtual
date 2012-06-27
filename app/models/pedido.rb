class Pedido < ActiveRecord::Base
  attr_accessible :id, :id_cliente, :status
end
