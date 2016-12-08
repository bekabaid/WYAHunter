class UserMailer < ApplicationMailer
  default from: 'from@example.com'

  def welcome_email(user)
    @user = user
    @url  = 'https://wyahunter.herokuapp.com/verify_new'
    mail(to: @user.email, subject: "you made it breh")
  end
end
