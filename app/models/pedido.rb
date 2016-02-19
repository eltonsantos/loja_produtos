class Pedido < ActiveRecord::Base
  belongs_to :pessoa

  # Configurando o poliomorfismo
  has_one :endereco_cobranca, -> { where( tipo_endereco: "Cobrança" ) }, class_name: "Endereco", as: :enderecavel
  has_one :endereco_entrega, -> { where( tipo_endereco: "Entrega") }, class_name: "Endereco", as: :enderecavel

  has_many :itens, class_name: "ItemPedido", dependent: :destroy

  before_create :gerar_token

  accepts_nested_attributes_for :endereco_entrega
  accepts_nested_attributes_for :endereco_cobranca

  def gerar_token
    self.token = SecureRandom.uuid
  end

  def construir_cache_item_carrinho(carrinho)
    carrinho.itens.each do |item_carrinho|
      item = itens.build
      item.quantidade = carrinho.encontrar_item_carrinho(item_carrinho).quantidade
      item.preco = item_carrinho.preco
      item.save
    end
  end

  def calcular_total!(carrinho)
    self.total = carrinho.preco_total
    self.save
  end

end
