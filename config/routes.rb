Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#index"
  resources :users, only: :show
  resources :recipes, only:[:index, :new, :create, :show] do
    resources :comments, only: :create
  end
  post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
  delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'
end
