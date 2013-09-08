class ScenarioTestcaseModelsMigration < ActiveRecord::Migration
      def up
        create_table :scenarios do |t|
              t.string :name
              t.string :feature
              t.string :status
              t.string :assignee
        
              t.timestamps
        end     
        create_table :testcases do |t|
              t.string :name
              t.string :status
              t.string :assignee
              t.boolean :somethingChanged
              t.boolean :flagged
              t.integer :scenario
        
              t.timestamps
        end
      end
    
      def down
        drop_table :testcases
        drop_table :scenarios
      end
end
