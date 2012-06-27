class Produto < ActiveRecord::Base
  attr_accessible :descricao, :id, :nome, :tipo, :valor
end
