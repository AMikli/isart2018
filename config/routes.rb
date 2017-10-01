Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :housings, only: [ :index, :show ]
  resources :guests, only: [ :new, :create, :show ] do
    resources :bookings, only: [ :new, :create ]
    resources :stays, only: [ :new, :create ]
  end
end
