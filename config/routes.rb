Rails.application.routes.draw do
  root 'application#home'
  resources :sessions, only: [:create, :new]
  post '/logout', to: 'sessions#destroy'
  get '/secrets/show', to: 'secrets#show'
end