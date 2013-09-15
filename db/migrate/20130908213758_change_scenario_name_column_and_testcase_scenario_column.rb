class ChangeScenarioNameColumnAndTestcaseScenarioColumn < ActiveRecord::Migration
  def up
    change_column(:scenarios, :name, :text)
    rename_column(:testcases,:scenario,:scenario_id)
  end

  def down
    change_column(:scenarios, :name, :string)
    rename_column(:testcases,:scenario_id,:scenario)
  end
end
