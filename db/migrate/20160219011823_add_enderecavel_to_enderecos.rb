class AddEnderecavelToEnderecos < ActiveRecord::Migration
  def change
  	add_reference :enderecos, :enderecavel, polymorphic: true, index: true
  end
end