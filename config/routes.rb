Rails.application.routes.draw do
  root to: "breeds#index"
  devise_for :users
  resources :users, only: :show
  
  resources :breeds 
end
