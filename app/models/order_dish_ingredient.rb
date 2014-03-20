class OrderDishIngredient < ActiveRecord::Base
  attr_accessible :name, :value, :ingredient_id
  belongs_to :order_dish
end
