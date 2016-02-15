class PedidosController < ApplicationController
  before_action :authenticate_usuario!

  # Criar pedido
  def create
    @pedido = current_usuario.pedidos.build(pedido_params)
    if @pedido.save
      flash[:notice] = "Tudo ok"
      redirect_to pedido_path(@pedido.token)
    else
      render "carrinho/checkout"
    end
  end

  # Visualizar pedido
  def show
    @pedido = Pedido.find_by_token(params[:id])
    @itens_pedido = @pedido.itens
  end

  private

    def pedido_params
      params.require(:pedido).permit(:pessoa_id)
    end
end
