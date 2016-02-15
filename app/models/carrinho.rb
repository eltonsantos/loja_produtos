class Carrinho < ActiveRecord::Base
  has_many :itens_carrinho, dependent: :destroy
  has_many :itens, through: :itens_carrinho, source: :produto

  def adicionar_produto_ao_carrinho(produto)
    itens << produto
  end

  def preco_total
    itens_carrinho.inject(0) {
      |sum, item_carrinho| sum + (item_carrinho.produto.preco * item_carrinho.quantidade)
    }
  end

  def limpar!
    itens_carrinho.destroy_all
  end

  def encontrar_item_carrinho(produto)
    itens_carrinho.find_by(produto_id: produto)
  end
end
