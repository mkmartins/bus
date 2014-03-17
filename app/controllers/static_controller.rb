class StaticController < ApplicationController
  before_filter :check_current_order

  def home
  end

  def about_us
  end

  def how_it_works
  end

  def contact_us
  end
  
  def menu
    @restaurants = Restaurant.all
    @dishes = Dish.all
    # @order is set by check_current_order
    @dish = @dishes.find(params[:dishes_id])
    @order_dish = @dish.dup
    
    
  end

end
