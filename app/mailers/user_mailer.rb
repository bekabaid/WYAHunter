class UserMailer < ApplicationMailer
  default from: 'WYAHunter@gmail.com'

  #email used to send to users who just signed up. Takes the parameter of a user and sends a view
  def welcome_email(user)
    #Creates a new instance of the user
    @user = user

    #url and email and subject to be used when sending the email
    @url  = 'https://wyahunter.herokuapp.com/verify_new'
    mail(to: @user.email, subject: "you made it breh")

  end

  #email used to verify users on login
  def verify_email(user)
    @user = user

    @url =  'https://wyahunter.herokuapp.com/authentication'
    mail(to: @user.email, subject: "you sure youre you?")
  end
end
