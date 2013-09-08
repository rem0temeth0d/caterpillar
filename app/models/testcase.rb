class Testcase < ActiveRecord::Base
  attr_accessible  :name, :status, :assignee, :somethingChanged, :flagged
  belongs_to :scenario
end