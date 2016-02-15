class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.references :pessoa, index: true, foreign_key: true
      t.integer :total, default: 0
      t.string :token

      t.timestamps null: false
    end
  end
end
