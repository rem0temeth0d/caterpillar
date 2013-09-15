class Testcase < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :length => { :minimum => 12, :maximum => 255 }
  validates :status, :presence => true
  validates :scenario_id, :presence => true
  validates :assignee, :presence => true
  
  attr_accessible  :name, :status,:scenario_id, :assignee, :somethingChanged, :flagged
  attr_readonly :id
  belongs_to :scenario

  def after_initialize()
    self.scenario(Scenario.find(:scenario_id)) 
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