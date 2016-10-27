class UsersController < ApplicationController
before_action :authenticate_user!

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/'
    else
      redirect_to '/create'
    end

  end



  private
  def user_params
    params.require(:user).permit(:my_name, :email, :password, :privilege)
  end

  # make sure logged in user
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
    redirect_to '/login'
  end

  end
end

