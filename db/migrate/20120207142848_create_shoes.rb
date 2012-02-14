class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :brand
      t.string :description
      t.timestamps
    end
  end
end
