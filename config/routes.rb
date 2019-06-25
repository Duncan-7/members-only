Rails.application.routes.draw do
  get 'sessions/new'
  get 'static_pages/home'
  resources :users
  root 'static_pages#home'
  get '/signup',     to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :posts, only: [:new, :create, :index]
end
