class OrderDishIngredient < ActiveRecord::Base
  attr_accessible :name, :value
  belongs_to :order_dish
end
