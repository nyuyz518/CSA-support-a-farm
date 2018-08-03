Rails.application.routes.draw do
  resources :user_items, only: [:new, :create, :destroy]
  root to: 'users#show'
  resources :categories, only: [:index, :show]
  resources :users, only: [:show, :new, :create]
  get '/profile', to: 'users#show', as: 'profile'
  resources :wish_list_items
  resources :farms, only: :show
  resources :shares, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
