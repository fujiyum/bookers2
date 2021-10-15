class BooksController < ApplicationController

def index
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

