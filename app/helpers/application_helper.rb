module ApplicationHelper
  def user_info
    user_id = session[:user_id]
    user = User.find(user_id)
    return user
  end
end
