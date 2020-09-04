Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #resources :secrets, only: [:show]
  #resources :sessions, only: [:new,:create,:destroy]

  root "sessions#new", as: 'login'
  # equivalant to:
  #get "/", "sessions#new"
  get '/secret', to: 'secrets#show', as: 'secrets'
  
  #get 'sessions/new', to: 'sessions#new', as: 'login'
  post 'sessions/', to: 'sessions#create'
  get 'sessions/destroy', to: 'sessions#destroy', as: 'logout'
end
