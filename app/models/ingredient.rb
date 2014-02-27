class Ingredient < ActiveRecord::Base
  belongs_to :dish
  belongs_to :side_dish
  attr_accessible :name, :standard

end
