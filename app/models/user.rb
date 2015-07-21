class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :on => :create


  def self.auth
    person = Person.where(["email=?", email]).first
    if person && person.authenticate(password)
      puts "verificacao confere"
    end
  end
end
