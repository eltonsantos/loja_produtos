class RemovePessoaIdFromEnderecos < ActiveRecord::Migration
  def change
  	remove_reference :enderecos, :pessoa
  end
end
