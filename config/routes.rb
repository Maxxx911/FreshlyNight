Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :dishes
  resources :votes
  resources :recepts
  # Для калькулятора
  resource :menus
end
