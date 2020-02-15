Rails.application.routes.draw do
  devise_for :users
  root to: 'sounds#index'

  get 'my_sounds', to: 'sounds#my_sounds', as: :my_sounds

  resources :sounds, only: [:show, :index, :new, :create] do
    resources :auctions, only: [:new, :create]
   end
   resources :auctions, only: [:index, :show]
end
