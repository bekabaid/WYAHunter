class ApplicationController < ActionController::Base
  protect_from_forgery # with: :exception
  helper_method :current_user

  def current_user
    curr = Time.now

    @current_user ||= User.find(session[:user_id]) if session[:user_id] && session[:expires_at] > curr
  end

  def require_user
    redirect_to '/login' unless current_user
  end

  helper_method :require_user

end
