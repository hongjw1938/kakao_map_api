class HomeController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    
    redirect_to '/home/new'
  end
  
  private  
    def post_params 
      params.require(:post).permit(:title, :lat, :lng)
    end
end
