class FoodTruckPositionsController < ApplicationController
	def index
		@food_truck_positions = FoodTruckPosition.all
	end

	def create
		@food_truck_position = FoodTruckPosition.new(food_truck_position_params)
		
		if @food_truck_position.save
			@food_truck_positions = FoodTruckPosition.all

		else
			render :action => :index
		end
	end

	private

	def food_truck_position_params
		params.require(:food_truck_position).permit(:lat, :lng)
	end

end
