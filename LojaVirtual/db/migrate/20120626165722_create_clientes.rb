class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.integer :id
      t.string :nome
      t.string :email
      t.string :senha
      t.string :cidade
      t.string :uf
      t.string :endereco
      t.integer :numero

      t.timestamps
    end
  end
end
