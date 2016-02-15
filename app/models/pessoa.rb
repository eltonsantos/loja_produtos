class Pessoa < ActiveRecord::Base
  belongs_to :usuario
  has_many :enderecos
  has_many :pedidos
end
