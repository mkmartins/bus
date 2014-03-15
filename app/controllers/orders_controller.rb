class OrdersController < ApplicationController

  def new
  end

  def create
  end

  def destroy
    delete_current_order_session
    # redirect_to static_menu_path()
  end
end
