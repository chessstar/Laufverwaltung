class AddRunTimeToRuns < ActiveRecord::Migration
  def change
    add_column :runs, :run_hours, :integer
    add_column :runs, :run_minutes, :integer
    add_column :runs, :run_seconds, :integer
    add_column :runs, :runtime_in_seconds, :integer
  end
end
