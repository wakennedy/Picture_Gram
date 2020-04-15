Rails.application.routes.draw do
  resources :picture_tags
  resources :tags
  resources :pictures
  resources :users
  resources :sessions
  #get '/signin', to: "sessions#new"
  #post '/signin', to: "sessions#create"
  #get '/signup', to: "users#new"
  #delete 'logout', to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
