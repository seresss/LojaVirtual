class CreatePedidosProdutos < ActiveRecord::Migration
  def change
    create_table :pedidos_produtos do |t|
      t.integer :idPedido
      t.integer :idProduto
      t.integer :qtd_produto

      t.timestamps
    end
  end
end
