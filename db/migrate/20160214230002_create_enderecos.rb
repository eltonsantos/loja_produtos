class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :cep
      t.string :rua
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.integer :numero
      t.string :complemento
      t.string :tipo_endereco
      t.references :pessoa, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
