require "spec_helper"
require "capybara"


feature "Scenario management" do
  scenario "User creates a new scenario" do
    visit new_scenario_path

    fill_in "Feature", :with => "Rspec: Test Feature - 1"
#    fill_in "Name", :with => "Rspec: Test Scenario - 1"
    click_button "Ok"

    expect(page).to have_text("Scenario was successfully created.")
  end
end