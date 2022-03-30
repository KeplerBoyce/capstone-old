Rails.application.routes.draw do
  root "decks#index"
  
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users

  resources :decks do
    get '/study', to: 'decks#study'
    get '/save', to: 'decks#save'
    get '/unsave', to: 'decks#unsave'
  end
end
