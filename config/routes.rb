Rails.application.routes.draw do
  root 'photo#index'

  resources :users, except: [:index, :destroy, :update, :edit]
  resources :pictures do
   resources :likes, only: [:create, :new, :destroy]
   resources :comments, except: [:show]
 end
end
