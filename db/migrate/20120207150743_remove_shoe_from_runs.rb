class RemoveShoeFromRuns < ActiveRecord::Migration
  def up
    remove_column :runs, :shoe
  end

  def down
    add_column :runs, :shoe, :string
  end
end
