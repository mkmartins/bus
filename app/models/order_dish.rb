class OrderDish < ActiveRecord::Base
  attr_accessible :dish_id

  belongs_to :order
  belongs_to :dish
  has_many :order_dish_ingredients

  # def duplicate
  #   @dishes = Dish.all
  #   @dish = @dishes.find(params[:dishes_id]).dup
  # end
end