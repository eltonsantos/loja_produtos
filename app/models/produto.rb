class Produto < ActiveRecord::Base
  has_many :itens, class_name: "ItemPedido", dependent: :destroy
end
