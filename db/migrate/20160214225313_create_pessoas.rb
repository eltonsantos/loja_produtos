class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.string :data_nascimento
      t.string :sexo
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
