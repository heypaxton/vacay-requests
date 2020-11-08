Rails.application.routes.draw do
  devise_for :users
  resources :requests
  root 'home#index'
end
