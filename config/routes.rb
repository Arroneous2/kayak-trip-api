Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/trips" => "trips#index"
  get "/trips/:id" => "trips#show"
  post "/trips" => "trips#create"
  patch "/trips/:id" => "trips#update"
  delete "/trips/:id" => "trips#destroy"

  get "/places" => "places#index"
  get "/places/:id" => "places#show"
  post "/places" => "places#create"
  patch "/places/:id" => "places#update"
  delete "/places/:id" => "places#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  # Defines the root path route ("/")
  # root "posts#index"
end
