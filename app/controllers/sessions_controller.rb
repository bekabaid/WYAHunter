class SessionsController < ApplicationController


  def new
    #if(session[:user_id] != nil)
      #   user_id = session[:user_id]
     #    user = User.find(user_id)
    #end
    #if (user[:privilge] > 0)
     # root to: '/dashboard'
    #end
    #if (user[:privilege] < 0)
   #   root to: '/admin_dashboard'
   end


  def dashboard_check

    @user = User.find(session[:user_id])
    if (@user.verify_token === params[:temp][:verify_token])
      User.find(session[:user_id]).update_column :verified, true
      #user privilege is used to ensure user is redirected to correct page
      @user_privilege = @user.privilege

      #User's greater than 0 are moderators and directedd to the dashboard
      if  @user_privilege > 0
        redirect_to '/dashboard'

        # Users less than 0 are directed to our adin page
      elsif @user_privilege < 0
        redirect_to '/admin_dashboard'

      end

    else render 'new'

    end

  end

  #Session is created. Makes sure that the credentials are legit
  def create

    #tries to find user entered by email
    @user = User.find_by_email(params[:session][:email])

    #makes sure user is found, and that the password is correct
    if @user && @user.authenticate(params[:session][:password])

      #session is set to reflect user logged in
      session[:user_id] = @user.id
      session[:expires_at] = Time.now + 8.hour

      #verification process is started
      User.find_by_email(params[:session][:email]).update_column :verified, false
      User.find_by_email(params[:session][:email]).update_column :verify_token, SecureRandom.base64(n=8)
      UserMailer.verify_email(User.find_by_email(params[:session][:email])).deliver_now

      redirect_to '/authentication'

    #If not authenticated, the page refreshes with message
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end

  end

  #used to destroy current session. Used when user logs out
  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end

