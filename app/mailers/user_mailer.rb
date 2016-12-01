class UserMailer < ApplicationMailer
  default from: 'wyahunter.herokuapp.com'

  def welcome_email(user)
    @user = user
    @url  = 'https://wyahunter.herokuapp.com'
    mail(to: @user.email, subject: 'you made it breh')
  end
end
