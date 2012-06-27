class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.integer :id
      t.integer :id_cliente
      t.integer :status

      t.timestamps
    end
  end
end
