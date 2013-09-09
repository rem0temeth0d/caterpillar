class ChangeScenarioNameColumnAndTestcaseScenarioColumn < ActiveRecord::Migration
  def up
    change_column(:scenarios, :name, :text)
    rename_column(:testcases,:scenario,:scenarios_id)
  end

  def down
    change_column(:scenarios, :name, :string)
    rename_column(:testcases,:scenarios_id,:scenario)
  end
end
