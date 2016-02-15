class CreateItensCarrinho < ActiveRecord::Migration
  def change
    create_table :itens_carrinho do |t|
      t.references :carrinho, index: true, foreign_key: true
      t.references :produto, index: true, foreign_key: true
      t.integer :quantidade

      t.timestamps null: false
    end
  end
end
