class OrderDishesController < ApplicationController

  before_filter :get_order

  def new
    @order_dish = @order.order_dishes.create(dish_id: params[:dish_id])
  end

end