Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "contact", to: 'pages#contact'
  resources :users, only: [:show]
  resources :metaverses do
    resources :bookings, except: [:destroy]
    resources :reviews, only: [:index] #Delete if unnecessary
  end
  resources :bookings, only: [:destroy]
  resources :bookings, only: [] do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
