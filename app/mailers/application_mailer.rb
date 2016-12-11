class ApplicationMailer < ActionMailer::Base
  #from value can be changed if need be in specific email
  default from: "WyaHunter@gmail.com"

  layout 'mailer'
end