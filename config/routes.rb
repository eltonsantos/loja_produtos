Rails.application.routes.draw do
  devise_for :usuarios
  resources :pessoas
  resources :enderecos
  
  # Rota para adicionar produto ao carrinho
  resources :produtos do
    member do
      post :adicionar_ao_carrinho
    end
  end

  resources :pedidos

  # Rota para conta
  namespace :conta do
    resources :pedidos
  end

  # Rota para carrinho
  resources :carrinhos do
    collection do
      post :checkout
      delete :limpar
    end
  end

  # No lugar da rota ficar itens_carrinho, com esse recurso ficará apenas itens
  resources :itens, controller: "itens_carrinho"

  root 'produtos#index'

end