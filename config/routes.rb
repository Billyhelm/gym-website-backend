Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :users, only: [:create, :profile, :update]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      patch '/profile', to: 'users#update'
    end 
  end 

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
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
