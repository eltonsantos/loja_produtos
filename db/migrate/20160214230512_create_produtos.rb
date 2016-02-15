class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.integer :qtd_estoque
      t.integer :preco

      t.timestamps null: false
    end
  end
end
