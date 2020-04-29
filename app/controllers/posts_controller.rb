class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  
  def new
  end

  def create
    @post = Post.new
    
    @post.title = params[:title]
    @post.shortinfo = params[:shortinfo]
    @post.content = params[:content]
    @post.user_id = current_user.id
    @post.image = params[:image]
    
    @post.save
    
    redirect_to "/posts/show/#{@post.id}"
  end

  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    post = Post.find(params[:id])
    
    post.title = params[:title]
    post.content = params[:content]
    
    post.save
    
    redirect_to "/posts/show/#{post.id}"
  end
  
  def destroy
    @post = Post.find(params[:id])
    
    @post.destroy
    
    redirect_to "/posts/index"
  end
  
    def my_post
    @user = current_user
  end
end
