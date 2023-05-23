Rails.application.routes.draw do
  resources :recipe_foods
  resources :recipes
  resources :foods
  devise_for :users

  root to: 'users#index'

  resources :users

  get '/foods/add', to: 'foods#add', as: 'foods_add'
  resources :foods

end
