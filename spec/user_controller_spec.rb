require './spec_helper.rb'
require 'rails'
require 'rspec'
require 'rspec-rails'
require '../app/controllers/application_controller.rb'
require '../app/controllers/users_controller.rb'

describe UsersController do
 
  before :all do
    @userController = UsersController.new
  end
  
  it "shows all the Users" do
    @userController.show.should == ""
  end
  
  it "should get index" 

  it "should get new" 
  
 
  it "should create user" 

  it "should show user" 

  it "should get edit" 

  it "should update user" 

  it "should destroy user"

end