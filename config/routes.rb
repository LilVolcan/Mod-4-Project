Rails.application.routes.draw do
  # resources :cards
  # resources :themes, 
  # resources :games
  resources :users
  
  get '/themes', to: "themes#index"

  get '/games', to: "games#index"
  post '/games', to: "games#create"
  patch '/games/:id', to: "games#addcard"


  post '/users/login', to: "users#login"
  get '/cards/:theme_id', to: "cards#filter"

end
