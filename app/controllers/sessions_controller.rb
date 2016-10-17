class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:id] = @user.id
      redirect_to 'create'
    else
      redirect_to 'dashboard'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
