Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#index"
  resources :users, only: :show
  resources :recipes, only:[:index, :new, :create, :show] do
    resources :comments, only: :create
    resources :favorites, only:[:create, :destroy]
  end
end
