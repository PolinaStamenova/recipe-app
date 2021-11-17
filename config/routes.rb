Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'foods#index'
  resources :foods, only: [:index, :create, :destroy, :new]

  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    resources :recipe_foods, only: [:new, :create]
  end

  get 'public_recipes', to: 'recipes#public_recipes'
end
