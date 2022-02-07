class PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page]).per(3)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    end
  end
  
  private

  def post_params
    params.require(:post).permit(:author, :body)
  end
end
