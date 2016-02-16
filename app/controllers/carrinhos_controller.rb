class CarrinhosController < ApplicationController

  before_action :authenticate_usuario!, only: [:checkout]

  def checkout
    @pedido = current_usuario.pedidos.build
  end

  def limpar
    carrinho_atual.limpar!
    flash[:warning] = "Esvaziado!"
    redirect_to carrinhos_path
  end

end