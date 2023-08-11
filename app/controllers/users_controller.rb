class UsersController < ApplicationController
  def show
    @user = current_user
    @books = @user.books
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:image)
  end
end
