class CreatePedidoProdutos < ActiveRecord::Migration
  def change
    create_table :pedido_produtos do |t|
      t.integer :id_pedido
      t.integer :id_produto
      t.integer :qtd

      t.timestamps
    end
  end
end
