class AddOwnerIdToProperties < ActiveRecord::Migration
  def up
    add_column :properties, :owner_id, :integer
  end

  def down
    remove_column :properties, :owner_id
  end
end
