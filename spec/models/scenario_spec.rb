require "spec_helper"
require "scenario"

describe Scenario do
  
  it "creates new Scenario with empty fields" do
    scenario = Scenario.new
    scenario[:name].should == nil
    scenario[:feature].should == nil
  end
 
  context "new instance" do
    
    before :all do
      @scenario = Scenario.new
    end
    
    it "should accept string for name" do
      @scenario[:name] = "RSpec Scenario"
      @scenario.name.is_a?(String).should == true
    end
    
    
    it "should accept string for feature" do
      @scenario[:feature] = "RSpec Feature"
      @scenario.feature.is_a?(String).should == true
    end
  
  end
  
  context "validates before save that" do
    before :all do 
      @scenario = Scenario.new
    end
    
    it "name field doesn't accept a number" do
          @scenario[:name] = 1
          @scenario[:feature] = "ISSUE-213342"
          @scenario[:assignee] = "Sam"
          @scenario[:status] = @scenario.status_options()[2]
          @scenario.save.should == false
    end
    it "feature field accepts anything" do
          @scenario[:name] = "Test Scenario"
          @scenario[:feature] = 213342
          @scenario[:assignee] = "Sam"
          @scenario[:status] = @scenario.status_options()[2]
          @scenario.save.should == true
    end
    it "assignee field accepts anything" do
          @scenario[:name] = "Test Scenario"
          @scenario[:feature] = "ISSUE-213342"
          @scenario[:assignee] = 1
          @scenario[:status] = @scenario.status_options()[2]
          @scenario.save.should == true
    end
    
  end
end