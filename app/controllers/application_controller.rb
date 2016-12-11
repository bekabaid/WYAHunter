class ApplicationController < ActionController::Base

  protect_from_forgery  with: :exception
  helper_method :current_user, :logged_in?, :already?, :require_user, :require_admin, :is_admin


  def current_user

    curr = Time.now
    @current_user ||= User.find(session[:user_id]) if session[:user_id] && session[:expires_at] > curr

  end
#=======================================================================
  #used in sessions/new view to check if someone has already logged in
  def already?

    if(current_user)

      user = current_user

      if current_user[:privilege] > 0
        redirect_to '/dashboard'

      else
        redirect_to '/admin_dashboard'

      end

    end

  end

#======================================================================
  def logged_in?

    current_user != nil

  end

#======================================================================
  def require_user

    unless current_user

      redirect_to '/login'
      session[:user_id] = nil
      session[:expires_at] = 0

    end


    if(session[:user_id] != nil)

      user_id = session[:user_id]
      user = User.find(user_id)
      if user[:verified] === false

        redirect_to '/authentication'
        return

      end

    end

  end

#======================================================================
  def require_admin

    if(session[:user_id] != nil)

      user_id = session[:user_id]
      user = User.find(user_id)

    end

    unless(current_user && user[:privilege] < 0)

      redirect_to '/login'
      return

    end

    if user[:verified] === false

      redirect_to '/authentication'
      return

    end

  end

#======================================================================
  def is_admin

    if (logged_in?)

      user_id = session[:user_id]
      user = User.find(user_id)

    end

    if (user[:privilege] < 0)

      return true

    end

  end



  private

  def require_login
    unless logged_in?
      # flash[:error] = "You must be logged in to access this section"
      redirect_to '/login' # halts request cycle
      session[:user_id] = nil
      session[:expires_at] = 0
    end
  end
end





