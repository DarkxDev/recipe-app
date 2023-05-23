Rails.application.routes.draw do
  devise_for :users

  root to: 'users#index'

  resources :users

  get '/foods/add', to: 'foods#add', as: 'foods_add'
  resources :foods

end
