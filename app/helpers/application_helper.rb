module ApplicationHelper
  def user_info
    user_id = session[:user_id]
    user = User.find(user_id)
    if user != nil
      return user.my_name
    end
    return "doesn't work"
  end
end
