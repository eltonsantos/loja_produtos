class ItensCarrinhoController < ApplicationController

  def destroy
    @carrinho = carrinho_atual
    @item = @carrinho.encontrar_item_carrinho(params[:id])
    @produto = @item.produto
    @item.destroy
    flash[:notice] = "#{@produto.nome} foi removido"
    redirect_to :back
  end

  def update
    @carrinho = carrinho_atual
    @item = @carrinho.itens_carrinho.find_by(produto_id: params[:id])

    if @item.produto.qtd_estoque >= item_params[:quantidade].to_i
      @item.update(item_params)
      flash[:notice] = "Carrinho atualizado"
    else
      flash[:notice] = "Quantidade insuficiente"
    end

    redirect_to carrinhos_path
  end

  private
    def item_params
      params.require(:item_carrinho).permit(:quantidade)
    end
end
