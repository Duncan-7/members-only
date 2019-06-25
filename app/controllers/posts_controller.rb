class PostsController < ApplicationController
  before_action :logged_in?, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post[:body] = params[:post][:body]
    @post[:user_id] = session[:user_id]
    if @post.save
      redirect_to posts_path
    else
      
      render 'new'
    end
  end
end
