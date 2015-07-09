class CreateUrgencyTable < ActiveRecord::Migration
  def change
    create_table :urgency_tables do |t|
      t.string :level
      
    end
  end
end
