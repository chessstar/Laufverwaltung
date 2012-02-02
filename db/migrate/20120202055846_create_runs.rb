class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.string :distance
      t.string :shoe
      t.integer :user_id

      t.timestamps
    end
  end
end
