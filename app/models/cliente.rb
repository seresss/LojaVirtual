class Cliente < ActiveRecord::Base
  attr_accessible :cidade, :email, :endereco, :id, :nome, :numero, :senha, :uf
  validates :cidade, :email, :endereco, :nome, :numero, :senha, :uf, :presence => true
  validates :email, :uniqueness => true
  validates :numero, :numericality => { :only_integer => true}
  
  def self.authenticate(email, senha)
       find_by_email_and_senha(email,senha)
    end
  
end
