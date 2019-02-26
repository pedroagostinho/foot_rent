Rails.application.routes.draw do
  devise_for :clubs
  root to: 'pages#home'

  resources :players do
    resources :reviews
  end
  resources :clubs do
    resources :bookings
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
