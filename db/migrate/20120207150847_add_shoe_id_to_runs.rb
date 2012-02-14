class AddShoeIdToRuns < ActiveRecord::Migration
  def change
    add_column :runs, :shoe_id, :integer
  end
end
