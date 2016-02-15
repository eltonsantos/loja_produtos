class Conta::PedidosController < ApplicationController
  before_action :authenticate_usuario!

  def index
    @pedidos = current_usuario.pedidos.order("id DESC")
  end

end