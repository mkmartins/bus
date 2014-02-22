class Dish < ActiveRecord::Base
  belongs_to :restaurant
  has_many :ingredients

  accepts_nested_attributes_for :ingredients, reject_if: :all_blank
  attr_accessible :plate, :price, :side_dish, :restaurant_id, :ingredients_attributes

end
