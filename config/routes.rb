Rails.application.routes.draw do
  resources :group_assignments
  resources :groups
  resources :sessions
  resources :events
  namespace :admin do
    get "", to: "dashboard#index", as: "/"
    resources :users
    resources :events
  end

  resources :users do
    resources :goals, only: [:show, :index, :new, :create]
  end

  resources :goals

  root "users#home"
  get "/auth/facebook/callback" => "sessions#create"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#logout"
end
