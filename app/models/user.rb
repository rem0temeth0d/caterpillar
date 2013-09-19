class User < ActiveRecord::Base
  validates :password, :presence => true
  validates :password, :length => { :minimum => 3 }
  validates :name, :presence => true
  validates :email, :presence => true
  validates :userType, :presence => true
  
  attr_accessible :email, :name, :password, :userType
  attr_readonly :id
  
end
