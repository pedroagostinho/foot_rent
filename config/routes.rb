Rails.application.routes.draw do
  devise_for :clubs
  root to: 'pages#home'

  resources :players do
    resources :reviews
    resources :bookings, only: [ :new, :create, :edit, :update, :destroy ]
  end

  resources :bookings, only: [ :index ]

  get '/my_players', to: 'players#my_players'
  resources :clubs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
