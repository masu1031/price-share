Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end
  
  get 'prices/index'
  root to: "prices#index"

  resources :groups, only: [:new, :create]
  resources :cards, only: [:new, :create]
  resources :prices, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :shops, only: [:new, :create]
end
