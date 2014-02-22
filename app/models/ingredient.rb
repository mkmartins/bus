class Ingredient < ActiveRecord::Base
  belongs_to :dish
  attr_accessible :name

end
