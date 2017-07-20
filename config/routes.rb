Rails.application.routes.draw do
  root 'photo#index'

  resources :users
  resources :pictures do
   resources :likes, :comments
end
