module ApplicationHelper
  def user_info

    require_user
    
    if session[:user_id] != nil
    user_id = session[:user_id]
    user = User.find(user_id)
    return user
    end
  end

  def user_name
    user = user_info
    if user != nil
      return user.my_name
    end
    return " "
  end



end
