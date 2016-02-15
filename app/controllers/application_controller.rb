class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def carrinho_atual
    @carrinho_atual ||= encontrar_carrinho
  end

  helper_method :carrinho_atual

  def encontrar_carrinho
    carrinho = Carrinho.find_by(id: session[:carrinho_id])

    unless carrinho.present?
      carrinho = Carrinho.create
    end

    session[:carrinho_id] = carrinho.id
    carrinho
  end

end