class UserController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(article_params)

    if @user.save
      redirect_to @user
    else
      redirect_to 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image)
  end
end
