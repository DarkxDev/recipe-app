Rails.application.routes.draw do
  resources :recipes do 
    resources :recipe_foods
  end
  resources :foods
  devise_for :users
  root to: 'foods#index'
  get "general_shopping_list", to: 'shopping_list#index'

end
