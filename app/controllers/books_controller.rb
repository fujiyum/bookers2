class BooksController < ApplicationController

def index
 @book_new = Book.new
 @books = Book.all
 @user = current_user
end

def show
 @book_new = Book.new
 @book = Book.find(params[:id])
 @user = @book.user
end

def create
 @books = Book.all
 @user = current_user
 @book_new = Book.new(book_params)
 @book_new.user_id = current_user.id
 if @book_new.save
  redirect_to book_path(@book_new.id), notice: "You have created book successfully."
 else
  render :index
 end
end

def edit
 @book = Book.find(params[:id])
 @user = current_user
 if @book.user == current_user
  render :edit
 else
  redirect_to books_path
 end
end

def update
 @book = Book.find(params[:id])
 @book.user_id = current_user.id
 if @book.update(book_params)
  redirect_to book_path(@book.id), notice: "You have updated book successfully."
 else
  render :edit
 end
end

def destroy
@book = Book.find(params[:id])
@book.destroy
redirect_to books_path
end

private

def book_params
    params.require(:book).permit(:title, :body)
end

end

