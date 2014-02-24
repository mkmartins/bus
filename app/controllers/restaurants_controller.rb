class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
    @cuisines = Cuisine.all.sort.collect { |cuisine| [cuisine.name, cuisine.id] }
    @cuisine = @restaurant.build_cuisine
    @dish = @restaurant.dishes.build
    @dish.ingredients.build
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      redirect_to restaurants_path, notice: 'saved'
    else
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    @cuisines = Cuisine.all.sort.collect { |cuisine| [cuisine.name, cuisine.id] }
    # @cuisine = @restaurant.build_cuisine
    # @dish = @restaurant.dishes.build
    # @dish.ingredients.build
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.save
      redirect_to restaurants_path, notice: 'saved'
    else
      render :index
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    respond_to do |format|
      format.html { redirect_to restaurants_path, alert: 'deleted' }
    end
  end

end