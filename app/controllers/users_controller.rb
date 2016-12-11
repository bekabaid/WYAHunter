class UsersController < ApplicationController
#before_action :logged_in_user

  def new
    @user = User.new
  end

  # Creates a new user. User is stored into the user table
  def create

    #Takes user_params, a method that calls all params from new.html view
    @user = User.new(user_params)

    #Check for email uniqueness
    if (User.find_by_email(@user.email) != nil)
      #If email not unique, refresh page with message
      flash.now[:danger] = 'email already linked to an account'
      render 'new'

    else
      #User has random passwords stored, an email is sent, and then the user is saved
      @user.password = SecureRandom.base64(n=8)
      @user.verify_token = SecureRandom.base64(n=8)
      UserMailer.welcome_email(@user).deliver_now
      @user.save
    end

  end

  #Method for verifying a new user. Takes the params from User/verify_new.html view
  def check

    #Find the user with the email that matches the one entered. Then takes the verify_token
    @user = User.find_by_email!(params[:temp][:email])
    vc = params[:temp][:verify_token]

      #if the verify_token entered from params is true, the attributes in the User are updated
      if @user.verify_token === vc
        User.find_by_email(params[:temp][:email]).update_column :verified, true
        User.find_by_email(params[:temp][:email]).update_column :my_name, params[:temp][:my_name]
        User.find_by_email(params[:temp][:email]).update_attribute :password, params[:temp][:password]

        redirect_to '/'

      #if not, render again
      else render 'new'

      end

  end

  private

  #takes params from previous views
  def user_params
    params.require(:user).permit(:email, :privilege, :password)
  end

end
