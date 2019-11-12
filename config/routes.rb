Rails.application.routes.draw do
  resources :cards
  resources :themes
  resources :games
  resources :users

  post '/users/login', to: "users#login"

end
