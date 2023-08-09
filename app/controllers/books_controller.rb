class BooksController < ApplicationController
  def new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path
  end

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def show
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
end
