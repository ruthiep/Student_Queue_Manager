class RenameCommentsColumnNames < ActiveRecord::Migration
  def change
    rename_column :comments, :comment, :answer
  end
end
