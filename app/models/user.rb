class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :on => :create


  def self.auth(email,password)
    user = User.where(["email=?", email]).first
    if user && user.authenticate(password)
      return user
    else
      return false
    end
  end
end
