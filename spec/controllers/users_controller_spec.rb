require 'spec_helper'
require 'users_controller'

describe UsersController do
 
  before :all do
    @userController = UsersController.new
  end
  
  describe "GET index" do
    it "assigns @users" do
      user = User.create
      get :index
      expect(assigns(:users)).to eq([user])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
  
  
 
  it "should create user" 

  it "should show user" 

  it "should edit user" 

  it "should update user" 

  it "should destroy user"

end