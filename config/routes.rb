Rails.application.routes.draw do
  root "decks#index"

  resources :decks
  resources :users

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
