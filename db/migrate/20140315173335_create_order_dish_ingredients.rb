class CreateOrderDishIngredients < ActiveRecord::Migration
  def change
    create_table :order_dish_ingredients do |t|
      t.string :name
      t.string :value
      t.integer :order_dish_id

      t.timestamps
    end
  end
end
