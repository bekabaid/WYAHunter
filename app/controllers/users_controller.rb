class UsersController < ApplicationController
#before_action :logged_in_user

  def new
    @user = User.new
    @user.my_name = "anon"
    @user.verified = false

  end

  def create
    @user = User.new(user_params)
    if (User.find_by_email(@user.email) != nil)
      flash.now[:danger] = 'email already linked to an account'
      render 'new'
    else
      @user.password = SecureRandom.base64(n=8)
      @user.verify_token = SecureRandom.base64(n=8)
      UserMailer.welcome_email(@user).deliver_now
      @user.save
  end
  end

  def check
    @user = User.find_by_email!(params[:temp][:email])
      vc = params[:temp][:verify_token]
      if @user.verify_token === vc
        User.find_by_email(params[:temp][:email]).update_column :verified, true
        User.find_by_email(params[:temp][:email]).update_column :my_name, params[:temp][:my_name]
        User.find_by_email(params[:temp][:email]).update_attribute :password, params[:temp][:password]

        redirect_to '/'
      else render 'new'
      end
  end

  private


  def user_params
    params.require(:user).permit(:email, :privilege, :password)
  end

end
