class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.integer :id
      t.string :nome
      t.integer :tipo
      t.text :descricao
      t.decimal :valor

      t.timestamps
    end
  end
end
