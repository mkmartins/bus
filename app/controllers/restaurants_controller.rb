class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
    @cuisines = Cuisine.all.sort.collect { |cuisine| [cuisine.name, cuisine.id] }
    @cuisine = @restaurant.build_cuisine
    @menu = @restaurant.menu.new
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
    @cuisine = @restaurant.build_cuisine
    @menu = @restaurant.menu.new
    #@cuisine = Cuisine.find(params[])

  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.save
      redirect_to restaurants_path, notice: 'saved'
    else
      render :index
    end
  end

end