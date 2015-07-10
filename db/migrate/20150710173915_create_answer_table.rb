class CreateAnswerTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
   
      t.belongs_to :user
      t.belongs_to :question
      
      t.timestamps
    end
  end
end

