Rails.application.routes.draw do
  resources :payments, only: [:new, :create]
  resources :charges
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'
  get '/payments/new'

  resources :products
  root 'store#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
