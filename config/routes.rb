Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :secrets, only: [:show]
  resources :sessions, only: [:new,:create,:destroy]

  root "sessions#new"
  # equivalant to:
  #get "/", "sessions#new"
  #get 'secrets/:id', to: 'secrets#show', as: 'secrets'
  #get 'sessions/:id/destroy', to: 'sessions#destroy', as: 'logout'
  #post 'sessions/create', to: 'sessions#create'
end
