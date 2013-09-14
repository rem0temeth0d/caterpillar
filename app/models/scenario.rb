class Scenario < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :length => { :minimum => 3 }
  validates :status, :presence => true
  validates :feature, :presence => true
  validates :assignee, :presence => true
  
  attr_accessible :name,:feature,:status,:assignee
  attr_readonly :id
  has_many :testcases
  def status_options 
     return ["OPEN","COMPLETE","ASSIGNED"]
  end
  def assignee_id
    User.all.each do |user|
      if user.name.==( self.assignee())
        return user.id
      end
    end
  end
end