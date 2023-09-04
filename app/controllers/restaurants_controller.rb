class RestaurantsController < ApplicationController
 before_action :set_restaurant, only: [:show, :destroy]

 # GET /restaurants
 def index
   @restaurants = Restaurant.all
   render json: @restaurants, status: :ok
 end

 # GET /restaurants/:id
 def show
   if @restaurant
     render json: @restaurant, include: :pizzas, status: :ok
   else
     render json: { error: 'Restaurant not found' }, status: :not_found
   end
 end

 # DELETE /restaurants/:id
 def destroy
   if @restaurant
     @restaurant.destroy
     render json: {}, status: :no_content
   else
     render json: { error: 'Restaurant not found' }, status: :not_found
   end
 end

 private

 def set_restaurant
   @restaurant = Restaurant.find_by(id: params[:id])
 end
end
