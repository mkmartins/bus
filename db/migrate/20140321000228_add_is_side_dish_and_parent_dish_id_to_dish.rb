class AddIsSideDishAndParentDishIdToDish < ActiveRecord::Migration
  def change
    add_column :dishes, :is_side_dish, :boolean #, :null => false, :default => 0
    add_column :dishes, :parent_dish_id, :integer
  end
end
