class CreateItensPedidos < ActiveRecord::Migration
  def change
    create_table :itens_pedidos do |t|
      t.references :produto, index: true, foreign_key: true
      t.references :pedido, index: true, foreign_key: true
      t.integer :quantidade
      t.integer :preco

      t.timestamps null: false
    end
  end
end
