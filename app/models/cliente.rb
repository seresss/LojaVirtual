class Cliente < ActiveRecord::Base
  attr_accessible :cidade, :email, :endereco, :id, :nome, :numero, :senha, :uf
end
