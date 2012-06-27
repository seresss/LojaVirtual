class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.integer :id
      t.string :nome

      t.timestamps
    end
  end
end
