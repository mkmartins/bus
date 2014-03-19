class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_current_order 
  

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_year

  def get_order
    @order = Order.first
  end

  def check_current_order
    # @order = session[:current_order_id].nil? ? Order.new : Order.find_by_current_order_id(session[:current_order_id])
    # raise " "
    @order = session[:current_order_id].nil? ? Order.new : Order.new
  end

  def save_order_session
    session[:current_order_id] = @order.id
  end

  def delete_current_order_session
    session[:current_order_id] = nil
    check_current_order
  end
end
