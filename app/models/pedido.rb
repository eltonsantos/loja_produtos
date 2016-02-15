class Pedido < ActiveRecord::Base
  belongs_to :pessoa
  has_many :itens, dependent: :destroy
end
