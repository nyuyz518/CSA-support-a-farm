Rails.application.routes.draw do
  resources :categories
  post "/", to: "categories#add_to_cart"
  resources :users
  resources :wish_list_items
  resources :farms
  resources :shares

  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
