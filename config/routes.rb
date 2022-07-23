Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :sports_equipments do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about'

  get 'my_bookings', to: 'pages#my_bookings'

  get '/bookings', to: 'bookings#index'
end
