Rails.application.routes.draw do
  delete '/logout', to: "sessions#destroy", as: "logout"
  get '/signup', to: "users#new"
  post '/signup', to: "users#create"
  get '/signin', to: "sessions#new", as: "signin"
  post '/signin', to: "sessions#create"
  get '/user/id', to: "user#show"
  post '/user/id', to: "pictures#create"
  delete '/picture/id', to: "picture#destroy", as: "delete"
  resources :picture_tags
  resources :tags
  resources :pictures
  resources :users
  resources :sessions

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
