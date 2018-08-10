Rails.application.routes.draw do
  resources :event_assignments
  resources :events
  namespace :admin do
    get "", to: "dashboard#index", as: "/"
    resources :users
  end

  resources :users
  root "users#home"
  get "/auth/facebook/callback" => "sessions#create"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#logout"
end
