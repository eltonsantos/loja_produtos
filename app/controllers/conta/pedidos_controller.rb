class Conta::PedidosController < ApplicationController
  before_action :authenticate_usuario!

  def index
    @pedidos = current_usuario.pessoa.pedidos.order("id DESC")
  end

end