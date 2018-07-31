Rails.application.routes.draw do
  resources :users
  resources :products
  resources :wish_list_items
  resources :farms
  resources :shares
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
