class ChangeDistanceFromRuns < ActiveRecord::Migration
  def change
		change_column :runs, :distance, :decimal, :precision => 6, :scale => 4
  end

end
