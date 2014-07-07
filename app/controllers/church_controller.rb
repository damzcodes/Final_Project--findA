class ChurchController < ApplicationController

	def index
		@church = Church.all
	end

	def show
		@church = Church.find(params[:id])
		@event = Event.create!
	end

	# private
	# def allowed_params
	# 	params.require(:c).permit(:name, :address, :start_time, :end_time, :type, :description, :date)
	# end


end
