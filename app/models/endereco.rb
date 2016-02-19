class Endereco < ActiveRecord::Base
  # Configurando o polimorfismo
  belongs_to :enderecavel, polymorphic: true
end


