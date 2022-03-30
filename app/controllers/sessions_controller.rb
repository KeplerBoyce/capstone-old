class SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])

    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/decks'
    else
      redirect_to login_path, notice: 'Username or password incorrect'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
