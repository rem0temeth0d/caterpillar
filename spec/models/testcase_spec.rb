require "spec_helper"
require "testcase"

describe Testcase do
  
  it "creates new Testcase with empty fields" do
    testcase = Testcase.new
    testcase[:name].should == nil
    testcase[:scenario_id].should == nil
  end
 
  context "new instance" do
    
    before :all do
      @testcase = Testcase.new
    end
    
    it "should accept string for name" do
      @testcase[:name] = "RSpec Testcase"
      @testcase.name.is_a?(String).should == true
    end
    
    
    it "should accept integer for scenario_id" do
      @testcase[:scenario_id] = 1
      @testcase.scenario_id.is_a?(Integer).should == true
    end
  
  end
  
  context "validates before save that" do
    before :all do 
      @testcase = Testcase.new
    end
    
    it "name field doesn't accept a number" do
          @testcase[:name] = 1
          @testcase[:scenario_id] = 1
          @testcase[:assignee] = "Sam"
          @testcase[:status] = @testcase.status_options()[2]
          @testcase.save.should == false
    end
    it "scenario_id field only accepts numeric reference id" do
          @testcase[:name] = "Test Testcase"
          @testcase[:scenario_id] = "fluff"
          @testcase[:assignee] = "Sam"
          @testcase[:status] = @testcase.status_options()[2]
          @testcase.save.should == true
    end
    it "assignee field accepts anything" do
          @testcase[:name] = "Test Testcase"
          @testcase[:scenario_id] = 1
          @testcase[:assignee] = 1
          @testcase[:status] = @testcase.status_options()[2]
          @testcase.save.should == true
    end
    
  end
end