Rails.application.routes.draw do
  get 'prices/index'
  root to: "prices#index"

  resources :prices, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :cards, only: [:new, :create]
  resources :shops, only: [:new, :create]
end
