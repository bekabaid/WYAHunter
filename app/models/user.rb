class User < ApplicationRecord

  has_secure_password
  validates :email, uniqueness: true
  #VALID_EMAIL_REGEX = /\A([\w+\-].[\w+\-].[0-9]{2}?)+@myhunter.cuny.edu/i

  validates_presence_of :email, :password
  validates_presence_of :password, :on => create
  validates_length_of :password, :minimum => 4, :allow_blank => true


end









