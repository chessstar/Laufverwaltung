class AddViewableToShoes < ActiveRecord::Migration
  def change
    add_column :shoes, :viewable, :boolean

  end
end
