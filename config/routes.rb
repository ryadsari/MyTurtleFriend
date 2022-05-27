Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :turtles
  get '/home', to: 'pages#home'
  get '/dashboard/path', to: 'bookings#show'
  resources :turtles do
    resources :bookings
  end
end
