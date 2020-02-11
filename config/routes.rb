Rails.application.routes.draw do
  devise_for :users
  root to: 'sounds#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      resources :sounds do
        resources :auctions, only: [:show, :index]
      end
    resources :auctions, only: [:index]
    resources :sound, only: [:index]
end
