class OrderDishesController < ApplicationController
  before_filter :check_current_order

  # before_filter :get_order

  def new
    @order_dish = @order.order_dishes.create(dish_id: params[:dish_id])
  end

  def create
    @dish = Dish.find_by_id(params[:order_dish][:dish_id])
    if @order.new_record?
      @order.restaurant_id = @dish.restaurant_id
      @order.save
      save_order_session
      # @order.dish_id = @dish.id
    end
    @order_dish = @order.order_dishes.create(dish_id: @dish.id)
    redirect_to static_menu_path()
  end

end