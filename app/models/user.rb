class User < ActiveRecord::Base
  validates :password_digest, :presence => true
  validates :password_digest, :length => { :minimum => 3 }
  validates :name, :presence => true
  validates :email, :presence => true
  validates :userType, :presence => true
  
  attr_accessible :email, :name, :password_digest, :userType
  attr_readonly :id
  
  has_secure_password
end
