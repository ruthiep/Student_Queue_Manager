class CreateQuestionsTable < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :steps_taken
      t.text :expected_results
      t.text :actual_results
      t.text :code_link
      t.boolean :resolved, :default => false, :null => false
      t.belongs_to :user
      t.belongs_to :urgency
      
      t.timestamps
      
    end
  end
end
