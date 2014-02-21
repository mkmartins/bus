class Menu < ActiveRecord::Base
  belongs_to :restaurant
  attr_accessible :plate, :price, :side_dish
end
