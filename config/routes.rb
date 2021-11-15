Rails.application.routes.draw do

  get 'recipes/index'
  get 'recipes/create'
  get 'recipes/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'foods#index'
  resources :foods, only: [:index, :create, :destroy]
end
