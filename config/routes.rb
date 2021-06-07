Rails.application.routes.draw do
  get 'prices/index'
  root to: "prices#index"
end
