module ApplicationHelper
  def render_cont_itens_carrinho(carrinho)
    carrinho.itens_carrinho.count
  end
end