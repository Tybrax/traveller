Rails.application.routes.draw do
  # posts and site
  get 'sessions/new'
  root 'posts#index'
  get 'about/index'
  get 'site/home'
  # routes for users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  resources :users
end
