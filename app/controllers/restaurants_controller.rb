class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
    @cuisines = Cuisine.all.sort.collect { |cuisine| [cuisine.name, cuisine.id] }
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      redirect_to restaurants_path, notice: 'saved'
    else
      render :new
    end
  end

end