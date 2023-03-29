Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
 
  get '/team', to: "home#team"

  
  get '/test', to: "home#test"


  post '/login', to: "home#login"


  get '/blog', to: "home#blog"
  post '/post', to: "home#post"
  
  
  get '/admin', to: "home#admin"
  post '/newproduct', to: "home#newproduct"
end
