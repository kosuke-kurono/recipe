Rails.application.routes.draw do
  devise_for :users
  
  #deviseセットアップ
  root to: "home#index"
  
  resources:users
  resources:cooks
  resources :cooks do
    resource :favorites, only: [:create,:destroy]
  end
end
