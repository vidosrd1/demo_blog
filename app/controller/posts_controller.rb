# demo_blog
class PostsController < ApplicationController
  def index

  end

  def new
    @posts = Post.new
  end

  def show

  end

  def create
    @posts = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

  def edit

  end
end
