class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @psot = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @article = Post.new(post_params)

    if @article.save
      redirect_to @article
    else
      redirect_to 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
