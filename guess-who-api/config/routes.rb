Rails.application.routes.draw do
  # resources :cards
  # resources :themes, 
  # resources :games
  resources :users
  
  get '/themes', to: "themes#index"

  get '/games', to: "games#index"
  post '/games/:game_id/:user_id', to: "games#iscard"
  post '/games', to: "games#create"
  patch '/games/:id', to: "games#addcard"
  post '/games/sendmessage', to: "games#sendmessage"


  post '/users/login', to: "users#login"
  get '/cards/:theme_id', to: "cards#filter"

  mount ActionCable.server => '/cable'
end

