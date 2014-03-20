class AddIngredientIdToOrderDishIngredient < ActiveRecord::Migration
  def change
    add_column :order_dish_ingredients, :ingredient_id, :integer, :after => :order_dish_id
  end
end
