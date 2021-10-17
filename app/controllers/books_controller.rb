class BooksController < ApplicationController

def index
 @book = Book.new
 @books = Book.all
end

def create
 @book = Book.new(book_params)
 @book.user_id = current_user.id
 @book.save
 redirect_to book_path(@book.id)
end

def show
 @user = User.find(params[:id])
 @book = Book.find(params[:id])
end

def edit
end

def destroy
 @book = Book.find(params[:id])
 @book.destroy
 redirect_to book_path
end

private

def book_params
    params.require(:book).permit(:title, :body)
end

def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
end

end

