Rails.application.routes.draw do
  root 'posts#index'
  get 'about/index'
  get 'site/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
end
