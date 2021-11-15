Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'foods#index'
  resources :foods, only: [:index, :create, :destroy]

  resources :recipes, only: [:index, :show, :create, :destroy]
end
