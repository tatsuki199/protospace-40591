Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :users, only: [:edit, :update, :show]
  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
  # devise_for :users
  # root to: 'tweets#index'
  # resources :tweets do
  #   resources :comments, only: :create
  #   collection do
  #     get 'search'
  #   end
  # end
  # resources :users, only: :show

end
