class EventController < ApplicationController

	def index
		@events = Event.all

	end

	def show

	end

	def create
		@event = Event.new(allowed_params)
		if @event.save
			respond_to do |format|
				format.html {redirect_to event_index_path, :notice => "Your event has been saved"}
				format.js 
			end
		else
			render :new
		end
	end

	def new
		@event = Event.new
	end


	def edit
		@event = Event.find_or_create_by!(name: event.name)
	end

private
def allowed_params
	params.require(:event).permit(:name, :address, :start_time, :end_time, :event_type, :description, :date)
end

end