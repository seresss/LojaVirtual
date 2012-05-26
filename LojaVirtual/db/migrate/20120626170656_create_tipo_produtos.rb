class CreateTipoProdutos < ActiveRecord::Migration
  def change
    create_table :tipo_produtos do |t|
      t.integer :id
      t.string :nome

      t.timestamps
    end
  end
end
