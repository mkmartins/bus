class OrderDish < Dish
  belongs_to :user
  has_many :cart_items
  default_scope -> {where "user_id IS NOT NULL" }

  # def duplicate
  #   @dishes = Dish.all
  #   @dish = @dishes.find(params[:dishes_id]).dup
  # end
end