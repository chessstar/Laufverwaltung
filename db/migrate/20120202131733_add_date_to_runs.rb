class AddDateToRuns < ActiveRecord::Migration
  def change
    add_column :runs, :run_at, :date
  end
end
