class Testcase < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :length => { :minimum => 12, :maximum => 64 }
  validates :status, :presence => true
  validates :scenarios_id, :presence => true
  validates :assignee, :presence => true
  
  attr_accessible  :name, :status,:scenarios_id, :assignee, :somethingChanged, :flagged
  attr_readonly :id
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