class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.integer :id
      t.string :nome
      t.integer :tipo
      t.string :ds_produto
      t.string :valor_prod

      t.timestamps
    end
  end
end
