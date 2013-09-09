class Scenario < ActiveRecord::Base
  attr_accessible :name,:feature,:status,:assignee
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