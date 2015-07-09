class DropTable < ActiveRecord::Migration
  def change
    rename_table :urgency_tables, :urgencies
  end
end
