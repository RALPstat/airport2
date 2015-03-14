class PassengersController < ApplicationController
	def index
		@flight = Flight.find(params[:flight_id])
	end
end
