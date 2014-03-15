class AddOrderToRestaurant < ActiveRecord::Migration
  def change
    add_column :orders, :restaurant_id, :integer, :null => false, :after => :user_id
  end
end
