class AddUserIdToDish < ActiveRecord::Migration
  def change
    add_column :dishes, :user_id, :integer, default: nil
    add_column :dishes, :order_id, :integer, default: nil
  end
end
