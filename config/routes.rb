Rails.application.routes.draw do
  resources :users
  root "users#home"
  get "/auth/facebook/callback" => "sessions#create"
end
