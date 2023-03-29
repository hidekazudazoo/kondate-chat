Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#index"
  resources :users, only: :show do
    resources :calenders, only: [:create, :show, :edit, :update, :destroy] do
      collection do
        delete 'destroy_all'
      end
    end
  end
  resources :recipes do
    resources :comments, only: :create
    resource :favorites, only: [:create, :destroy]
  end
end
