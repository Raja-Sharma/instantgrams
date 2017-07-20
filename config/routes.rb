Rails.application.routes.draw do
  root 'pictures#index'

  resources :users, except: [:index, :destroy, :update, :edit]
  resources :pictures do
    resources :likes, only: [:create, :new, :destroy]
    resources :comments, except: [:show]
  end
end
