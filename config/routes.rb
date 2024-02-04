Rails.application.routes.draw do
  resources :rewards
  # API Routes
  resources :api_informations

  # Games Routes
  get '/games/display-table', to: 'games#display_table'
  resources :games

  # Game Request Routes
  resources :game_requests

  #Genre Routes
  resources :genres
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
