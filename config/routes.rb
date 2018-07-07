Rails.application.routes.draw do
  root to:'users#index'

  # resources :users

  get '/users/index', to:'users#index'
  get '/users/new', to:'users#new'
  get '/users/edit', to:'users#edit'
  get '/users/show', to:'users#show'
  post '/users', to:'users#create'
  get '/users/update', to:'users#update'
  get '/users/destroy', to:'users#destroy'

end

