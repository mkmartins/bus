class Dish < ActiveRecord::Base

  scope :standard, -> {where "user_id IS NULL" }

  belongs_to :restaurant
  has_many :ingredients
  has_many :side_dishes

  accepts_nested_attributes_for :ingredients, reject_if: :all_blank
  accepts_nested_attributes_for :side_dishes, reject_if: :all_blank
  attr_accessible :plate, :price, :restaurant_id, :ingredients_attributes, :side_dishes_attributes

  # def duplicate_to_order_dish
  #   order_dish = self.dup
  #   # order_dish.user_id = user.id
  #   # order.save
  # end

  amoeba do
    enable
  end

end
