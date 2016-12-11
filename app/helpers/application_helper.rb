module ApplicationHelper

  #helper method for application used to get user info for views
  def user_info

    #makes sure a user is logged in
    require_user

    # takes info from session to return user object
    if session[:user_id] != nil
    user_id = session[:user_id]
    user = User.find(user_id)
    return user
    end

  end

  #method used to ensure that an admin user is logged in.
  def user_admin
    require_admin
  end

  #method that returns the value of my_name in user
  def user_name

    #grabs user info with helper method
    user = user_info

    #returns the user's name
    if user != nil
      return user.my_name
    end
    return " "
  end

  #returns the user based on the email from parameters entered.
  def check_email(email)
    @user = User.find_by_email(email)
    if @user != nil
      return @user
    else return " "
    end

  end

end
