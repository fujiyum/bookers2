class UsersController < ApplicationController

  def index
   @users = User.all
   @user = current_user
  end

  def create
    @book = Book.new(params[:id])
    @book.save
    redirect_to book_path(book.id)
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end