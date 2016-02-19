class PedidosController < ApplicationController
  before_action :authenticate_usuario!

  # Criar pedido
  def create
    @pedido = current_usuario.pessoa.pedidos.build(pedido_params)
    if @pedido.save
      @pedido.construir_cache_item_carrinho(carrinho_atual)
      @pedido.calcular_total!(carrinho_atual)
      carrinho_atual.limpar!
      #OrdemDeServico.new(carrinho_atual, @pedido).encomendar_pedido!
      redirect_to pedido_path(@pedido.token)
    else
      render "carrinho/checkout"
    end
  end

  # Visualizar pedido
  def show
    # PRECISO PASSAR O PRODUTO TAMBÉM
    @pedido = Pedido.find_by_token(params[:id])
    @itens_pedido = @pedido.itens
  end

  private

    def pedido_params
      params.require(:pedido).permit(:pessoa_id,
        endereco_entrega_attributes: [:cep, :rua, :bairro, :cidade, :estado,
          :numero, :complemento, :tipo_endereco],
        endereco_cobranca_attributes: [:cep, :rua, :bairro, :cidade, :estado,
          :numero, :complemento, :tipo_endereco])
    end
end
