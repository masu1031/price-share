Rails.application.routes.draw do
  devise_for :users
  get 'prices/index'
  root to: "prices#index"

  resources :prices, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :cards, only: [:new, :create]
  resources :shops, only: [:new, :create]
  resources :groups, only: [:new, :create]
end
