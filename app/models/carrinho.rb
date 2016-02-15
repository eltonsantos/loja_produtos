class Carrinho < ActiveRecord::Base
  has_many :itens_carrinho, dependent: :destroy
  has_many :itens, through: :itens_carrinho
end
