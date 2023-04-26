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

  # routes for viewing and buying products (Products Controller)
  get '/products', to: 'product#index', as: 'storefront'
  get '/products/:id/buy', to: 'product#add_to_cart', as: 'add_to_cart'
  get '/products/cart', to: 'product#view_cart', as: 'view_cart'
  get '/products/checkout', to: 'product#checkout', as: 'checkout'
  get '/products/api', to: 'product#api'
  

end
