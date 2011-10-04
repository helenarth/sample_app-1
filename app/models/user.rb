class User < ActiveRecord::Base 
  attr_accessible :name, :email

  validates(:name, 
      :presence => true, 
      :length => { :maximum => 50 })

  #\w means [a-zA-Z0-9_], /i means case-insensitive
  email_regex = /\A[a-z\d\-_+.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #for :uniqueness, "true" is inferred
  validates(:email, 
      :presence => true, 
      :format => { :with => email_regex },
      :uniqueness => { :case_sensitive => false } )
end