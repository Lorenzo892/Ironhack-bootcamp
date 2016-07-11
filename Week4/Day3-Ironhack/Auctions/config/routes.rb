Rails.application.routes.draw do
  # get '/users', to: 'users#index'
  # get '/users/new', to: 'users#new'
  # post '/users', to: 'users#create'
  # get '/users/:id', to: 'users#show'
  # get '/users/destroy', to: 'users#destroy'
  #
  # get 'users/:user_id/products', to: 'products#index'
  # get 'users/:user_id/products/new', to: 'products#new'
  # post '/users/:user_id/products', to: 'products#create', as: :user_products
  # get 'users/:user_id/products/:product_id/show', to: 'products#show'
  #
  # get '/products/:product_id/bets/new', to: 'bets#new'
  get '/', to: "users#login"
  resources :users do
    resources :products do
       resources :bets
     end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
