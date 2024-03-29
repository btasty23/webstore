class HomeController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @marketplace = Marketplace.all
    end
    
    def team
    
    end

    def post
        newpost = Blog.new
        newpost.name = params[:name]
        newpost.text = params[:text]
        newpost.save
        redirect_to "/blog"
    end

    def blog
        @blog = Blog.last(3)
    end
    
    def test
        @name = "Testing Calls"
        @cats = Cat.all
        
        newcat = Cat.new
        newcat.name = params[:name]
        newcat.weight = params[:weight]
        newcat.color = params[:color]

        newcat.save
        #redirect_to "/test"
    end

    def login
        @name = params[:username]
        @allowed = false
        if params[:password]=='123asd' #password in parentheses
                @allowed=true
        end
    end

    def admin
        @marketplace = Marketplace.all
    end

    def newproduct
        @marketplace = Marketplace.all
        
        newproduct = Marketplace.new
        newproduct.image = params[:image]
        newproduct.name = params[:name]
        newproduct.price = params[:price]
        newproduct.description = params[:description]
        newproduct.quantity = params[:quantity]

        newproduct.save
        redirect_to "/admin"
    end
  

end
