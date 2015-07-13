class AddInstructor < ActiveRecord::Migration
  def change
    add_column :users, :instructor, :boolean, default: false, null: false
  end
end
