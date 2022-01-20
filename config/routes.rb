Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "movies#index"
  #get "/", to: "movies#index"
  #send back all the movies to the client
  get "/movies", to: "movies#index"
  #send back one movie to the client
  get '/movies/:id', to: 'movies#show', as: 'movie'

end
