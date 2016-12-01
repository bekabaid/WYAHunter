class UserMailer < ApplicationMailer
  default from: 'https://wyahunter.herokuapp.com'

  def welcome_email(user)
    @user = user
    @url  = ''
    mail(to: @user.email, subject: 'you made it breh')
  end
end
