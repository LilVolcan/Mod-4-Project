Rails.application.routes.draw do
  # resources :cards
  # resources :themes, 
  resources :games
  resources :users
  
  get '/themes', to: "themes#index"

  post '/users/login', to: "users#login"
  get '/cards/:theme_id', to: "cards#filter"

end
