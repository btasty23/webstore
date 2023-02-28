Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get '/blog', to: "home#blog"
  get '/team', to: "home#team"
  get '/test', to: "home#test"
  post '/login', to: "home#login"
  post '/post', to: "home#post"

  #Sessions routes
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/logout', to: 'sessions#destroy'

  resources :users, only [:new, :create, :index, :show]
  resources: :sessions, only: [:new, :create, :destroy]

end
