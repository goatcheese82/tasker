Rails.application.routes.draw do
  resources :callings
  resources :group_assignments
  resources :groups
  get "/group_assignments/:id(/admins)", to: "users#group_admins"
  resources :sessions
  resources :events
  namespace :admin do
    get "", to: "dashboard#index", as: "/"
    resources :users
    resources :events
    resources :groups
  end

  scope "/admin", module: "admin" do
    resources :stats, only: [:index]
  end

  resources :users do
    resources :goals, only: [:show, :index, :new, :create]
    get "/my_groups", to: "users#admin_of"

  end

  resources :goals

  root "users#home"
  get "/auth/facebook/callback" => "sessions#create"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#logout"
end
