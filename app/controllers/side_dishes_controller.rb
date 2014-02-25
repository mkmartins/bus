class SideDishesController < ApplicationController
  # GET /side_dishes
  # GET /side_dishes.json
  def index
    @side_dishes = SideDish.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @side_dishes }
    end
  end

  # GET /side_dishes/1
  # GET /side_dishes/1.json
  def show
    @side_dish = SideDish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @side_dish }
    end
  end

  # GET /side_dishes/new
  # GET /side_dishes/new.json
  def new
    @side_dish = SideDish.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @side_dish }
    end
  end

  # GET /side_dishes/1/edit
  def edit
    @side_dish = SideDish.find(params[:id])
  end

  # POST /side_dishes
  # POST /side_dishes.json
  def create
    @side_dish = SideDish.new(params[:side_dish])

    respond_to do |format|
      if @side_dish.save
        format.html { redirect_to @side_dish, notice: 'Side dish was successfully created.' }
        format.json { render json: @side_dish, status: :created, location: @side_dish }
      else
        format.html { render action: "new" }
        format.json { render json: @side_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /side_dishes/1
  # PUT /side_dishes/1.json
  def update
    @side_dish = SideDish.find(params[:id])

    respond_to do |format|
      if @side_dish.update_attributes(params[:side_dish])
        format.html { redirect_to @side_dish, notice: 'Side dish was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @side_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /side_dishes/1
  # DELETE /side_dishes/1.json
  def destroy
    @side_dish = SideDish.find(params[:id])
    @side_dish.destroy

    respond_to do |format|
      format.html { redirect_to side_dishes_url }
      format.json { head :no_content }
    end
  end
end
