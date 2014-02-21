class Cuisine < ActiveRecord::Base
  has_many :restaurants
  # has_many :menus
  
  attr_accessible :name

end
