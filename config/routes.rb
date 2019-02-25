Rails.application.routes.draw do
  devise_for :clubs
  root to: 'pages#home'


  resources :clubs do
    resources :bookings
    resources :players do
      resources :reviews
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
