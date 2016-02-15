class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]

  def create
  end

  def show
    @pedido = Pedido.find_by_token(params[:id])
    @itens_pedido = @pedido.itens
  end

  private

    def pedido_params
      params.require(:pedido).permit(:pessoa_id, :total, :token)
    end
end
