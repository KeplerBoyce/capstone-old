class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def new
        @user = User.new
        @user.decks.build
        @user.saved_decks.build
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @user = User.find(params[:id])
    end

    private
    
    def user_params
        params.require(:user).permit(:username, :password, {decks_attributes: [:title, :id]}, {saved_decks_attributes: [:title, :id]})
    end
end
