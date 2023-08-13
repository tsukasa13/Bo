class UsersController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def show
    @user = current_user
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:image)
  end
end
