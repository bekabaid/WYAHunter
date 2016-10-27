class SessionsController < ApplicationController

  before_action :require_user, only: [:index, :show]

  def new
  end

  def dashboard
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      session[:expires_at] = Time.now + 8.hour

      @user_privilege = User.find(session[:user_id])[:privilege]
      if  @user_privilege > 0
        redirect_to '/dashboard'
      elsif @user_privilege < 0
        redirect_to '/admin_dashboard'
      else
        redirect_to '/login'
      end

    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
