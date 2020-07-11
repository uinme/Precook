Rails.application.routes.draw do
  get 'weekly_plans/index'
  get 'weekly_plans/show'
  get 'weekly_plans/new'
  root 'recipes#index'
  devise_for :users
  resources :users, only: [:show]
  resources :recipes, only: [:index, :show, :new, :create]
  resources :weekly_plans, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
