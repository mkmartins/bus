class CartItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :order_dish, class_name: OrderDish, foreign_key: :order_dish_id, primary_key: :id
  attr_accessible :quantity
end
