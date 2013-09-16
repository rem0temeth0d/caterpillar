require "spec_helper"
require "scenarios_controller"

describe ScenariosController do
  
  before :all do
    @scenarioController = ScenariosController.new
  end
  
  
  it "creates and redirects to New page" do
    get :new
    expect(response).to render_template(:new)

    post :create, :scenario => {:name => "Rspec: Test Scenario 1",
                                     :feature => "Feature 1",
                                     :status => "OPEN",
                                     :assignee => "Sam"}

    expect(response).to redirect_to(assigns(:scenario))
    follow_redirect!

    expect(response).to render_template(:show)
    expect(response.body).to include("Scenario was successfully created.")
  end
  
  
end
