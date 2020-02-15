Rails.application.routes.draw do
  devise_for :users
  root to: 'sounds#index'
  resources :sounds, only: [:show, :index, :new, :create] do
    resources :auctions, only: [:new, :create]
   end
   resources :auctions, only: [:index, :show]
end
