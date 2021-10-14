class BooksController < ApplicationController

def index
 @user=User.find(params[:id])
 @user.user_id = current_user.id
end

def create
end

def show
end

def edit
end

def destroy
end

private

def user_params
    params.require(:user).permit(:profile_image, :name, :introduction)
end
  
end

