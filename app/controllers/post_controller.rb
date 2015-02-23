class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @posts = Post.find_by_id params[:id]
  end

  def new
    @posts = Post.new
  end

  def create
    @posts = Post.new post_params
    if @posts.save
      redirect_to "/post"
    else
      render :new
    end
  end

  def edit
    @posts = Post.find_by_id params[:id]
  end

  def update
    @posts = Post.find params[:id]
    if @posts.update_attributes post_params
      redirect_to "/post"
    else
      render :edit
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :category)
  end

end
