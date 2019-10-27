class CalendarsController < ApplicationController

	def new
		@calendar = Calendar.new
	end
	
	def create
		@calendar = Calendar.new(calendar_params)
		@calendar.save
		render json: calendar, status: 201
	end
	
	private
		
	def calendar_params
  		params.require(:calendar).permit(:title)
  	end

end