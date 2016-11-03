class UsersController < ApplicationController
#before_action :logged_in_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if (@user.email == User.find_by_email(@user.email).email)
    flash.now[:danger] = 'email already linked to account'
    render 'new'
    else @user.save
      session[:user_id] = user.id
      redirect_to '/'
    end

  end

  private
  def user_params
    params.require(:user).permit(:my_name, :email, :password, :privilege)
  end

end

