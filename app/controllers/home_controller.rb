class HomeController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index

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


end
