require 'test_helper'

class ItemCarrinhosControllerTest < ActionController::TestCase
  setup do
    @item_carrinho = itens_carrinho(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itens_carrinho)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_carrinho" do
    assert_difference('ItemCarrinho.count') do
      post :create, item_carrinho: { carrinho_id: @item_carrinho.carrinho_id, produto_id: @item_carrinho.produto_id, quantidade: @item_carrinho.quantidade }
    end

    assert_redirected_to item_carrinho_path(assigns(:item_carrinho))
  end

  test "should show item_carrinho" do
    get :show, id: @item_carrinho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_carrinho
    assert_response :success
  end

  test "should update item_carrinho" do
    patch :update, id: @item_carrinho, item_carrinho: { carrinho_id: @item_carrinho.carrinho_id, produto_id: @item_carrinho.produto_id, quantidade: @item_carrinho.quantidade }
    assert_redirected_to item_carrinho_path(assigns(:item_carrinho))
  end

  test "should destroy item_carrinho" do
    assert_difference('ItemCarrinho.count', -1) do
      delete :destroy, id: @item_carrinho
    end

    assert_redirected_to itens_carrinho_path
  end
end
