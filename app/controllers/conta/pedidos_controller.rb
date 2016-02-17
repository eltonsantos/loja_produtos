class Conta::PedidosController < ApplicationController
  before_action :authenticate_usuario!

  # Mostra os pedidos da pessoa que está logada
  def index
    @pedidos = current_usuario.pessoa.pedidos.order("id DESC")
  end

end