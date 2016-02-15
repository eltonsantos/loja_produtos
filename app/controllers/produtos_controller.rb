class ProdutosController < ApplicationController
  before_action :set_produto, only: [:show]

  # GET /produtos
  # GET /produtos.json
  def index
    @produtos = Produto.all
  end

  # GET /produtos/1
  # GET /produtos/1.json
  def show
  end

  def adicionar_ao_carrinho
    @produto = Produto.find(params[:id])

    if !carrinho_atual.itens.include?(@produto)
      carrinho_atual.adicionar_produto_ao_carrinho(@produto)
      flash[:notice] = "Adicionou o produto: #{@produto.nome}"
    else
      flash[:notice] = "Já existe esse produto"
    end

    redirect_to :back
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto
      @produto = Produto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produto_params
      params.require(:produto).permit(:nome, :qtd_estoque, :preco)
    end
end
