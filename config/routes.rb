Rails.application.routes.draw do
  resources :users
  resources :pictures do
   resources :likes, :comments
end
