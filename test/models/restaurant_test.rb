require "test_helper"

class RestaurantTest < ActiveSupport::TestCase

  #def restaurant
    #@restaurant ||= Restaurant.new
  #end

  def setup
    @post = build(:post)
    # @saved_post = create(:post)
  end

  def test_restaurant_valid
    assert @restaurant.valid?
  end

  
end
