class AuthorController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @authors = Author.find_by_id params[:id]
    @posts = Post.find_by author_id: params[:id]
  end

  def new
    @authors = Author.new
  end

  def create
    @authors = Author.new author_params
    if @authors.save
      redirect_to "/author"
    else
      render :new
    end
  end

  def edit
    @authors = Author.find_by_id params[:id]
  end

  def update
    @authors = Author.find params[:id]
    if @authors.update_attributes author_params
      redirect_to "/author"
    else
      render :edit
    end
  end

  def destroy
    author = Author.find params[:id]
    author.destroy
    redirect_to "/author"
  end

  private
  def author_params
    params.require(:author).permit(:first_name, :last_name, :age)
  end


end






