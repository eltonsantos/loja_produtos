class Pedido < ActiveRecord::Base
  belongs_to :pessoa
  has_many :itens, class_name: "ItemPedido" , dependent: :destroy

  accepts_nested_attributes_for :enderecos

  before_create :gerar_token

  def gerar_token
    self.token = SecureRandom.uuid
  end

  def construir_cache_item_carrinho(carrinho)
    carrinho.itens.each do |item_carrinho|
      item = itens.build
      item.quantidade = carrinho.find_by_item_carrinho(item_carrinho).quantidade
      item.preco = item_carrinho.preco
      item.save
    end
  end

  def calcular_total!(carrinho)
    self.total = carrinho.preco_total
    self.save
  end

end
