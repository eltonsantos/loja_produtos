Rails.application.routes.draw do
  devise_for :usuarios
  resources :pessoas
  resources :enderecos
  
  resources :produtos do
    member do
      post :adicionar_ao_carrinho
    end
  end

  resources :pedidos

  namespace :conta do
    resources :pedidos
  end

  resources :carrinhos do
    collection do
      post :checkout
      delete :limpar
    end
  end

  resources :itens, controller: "itens_carrinho"

  root 'produtos#index'

end