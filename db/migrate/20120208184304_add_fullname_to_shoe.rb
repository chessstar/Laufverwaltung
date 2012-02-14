class AddFullnameToShoe < ActiveRecord::Migration
  def change
    add_column :shoes, :fullname, :string
  end
end
