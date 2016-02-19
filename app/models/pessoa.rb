class Pessoa < ActiveRecord::Base
  belongs_to :usuario
  has_many :enderecos, as: :enderecavel
  has_many :pedidos

  accepts_nested_attributes_for :enderecos
end
