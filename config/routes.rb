Rails.application.routes.draw do
  resources :admin, only: [:show] do
  end

  resources :users
  root "users#home"
  get "/auth/facebook/callback" => "sessions#create"
  get "/login", to: "sessions#create"
  get "/logout", to: "sessions#logout"
end
