# class CuisinesController < ApplicationController
#   # GET /cuisines
#   # GET /cuisines.json
#   def index
#     @cuisines = Cuisine.all

#     respond_to do |format|
#       format.html # index.html.erb
#       format.json { render json: @cuisines }
#     end
#   end

#   # GET /cuisines/1
#   # GET /cuisines/1.json
#   def show
#     @cuisine = Cuisine.find(params[:id])

#     respond_to do |format|
#       format.html # show.html.erb
#       format.json { render json: @cuisine }
#     end
#   end

#   # GET /cuisines/new
#   # GET /cuisines/new.json
#   def new
#     @cuisine = Cuisine.new
  
#     respond_to do |format|
#       format.html # new.html.erb
#       format.json { render json: @cuisine }
#     end
#   end

#   # GET /cuisines/1/edit
#   def edit
#     @cuisine = Cuisine.find(params[:id])
#   end

#   # POST /cuisines
#   # POST /cuisines.json
#   def create
#     @cuisine = Cuisine.new(params[:cuisine])

#     respond_to do |format|
#       if @cuisine.save
#         format.html { redirect_to @cuisine, notice: 'Cuisine was successfully created.' }
#         format.json { render json: @cuisine, status: :created, location: @cuisine }
#       else
#         format.html { render action: "new" }
#         format.json { render json: @cuisine.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PUT /cuisines/1
#   # PUT /cuisines/1.json
#   def update
#     @cuisine = Cuisine.find(params[:id])

#     respond_to do |format|
#       if @cuisine.update_attributes(params[:cuisine])
#         format.html { redirect_to @cuisine, notice: 'Cuisine was successfully updated.' }
#         format.json { head :no_content }
#       else
#         format.html { render action: "edit" }
#         format.json { render json: @cuisine.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /cuisines/1
#   # DELETE /cuisines/1.json
#   def destroy
#     @cuisine = Cuisine.find(params[:id])
#     @cuisine.destroy

#     respond_to do |format|
#       format.html { redirect_to cuisines_url }
#       format.json { head :no_content }
#     end
#   end
# end
