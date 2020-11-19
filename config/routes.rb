Rails.application.routes.draw do
  resources :reviews
  resources :ratings
  resources :products
  resources :user_orders
  resources :categories
  resources :quantities
  resources :sizes
  resources :order_discounts
  resources :order_items
  resources :orders
  resources :gyms
  resources :discounts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
