class ApplicationController < ActionController::Base

  protect_from_forgery # with: :exception
  helper_method :current_user, :logged_in?

  def current_user
    curr = Time.now

    @current_user ||= User.find(session[:user_id]) if session[:user_id] && session[:expires_at] > curr
  end

  def logged_in?
    current_user != nil
  end

  def require_user
    redirect_to '/login' unless current_user
  end

  helper_method :require_user

  private

  def require_login
    unless logged_in?
      # flash[:error] = "You must be logged in to access this section"
      redirect_to '/login' # halts request cycle
    end
  end

end
