Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/secrets', to: 'secrets#show'
  get '/logout', to: 'sessions#destroy'
end
