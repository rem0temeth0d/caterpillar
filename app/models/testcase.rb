class Testcase < ActiveRecord::Base
  attr_accessible  :name, :status,:scenarios_id, :assignee, :somethingChanged, :flagged
  belongs_to :scenario

  def after_initialize()
    self.scenario(Scenario.find(:scenario)) 
  end
  def status_options
    ["OPEN","ASSIGNED","INCOMPLETE","IMPLEMENTED","VERIFIED"]
  end
  def assignee_id
    User.all.each do |user|
      if user.name.==( self.assignee())
        return user.id
      end
    end
  end
end