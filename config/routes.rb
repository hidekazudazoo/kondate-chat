Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#index"
  resources :users, only: :show
  resources :recipes do
    resources :comments, only: :create
    resource :favorites, only: [:create, :destroy]
  end
end
