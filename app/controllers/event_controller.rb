class EventController < ApplicationController

	def index
	end

	def create
		@event = Event.new
		if @event.save respond_to do |format|
				format.html {redirect_to event_path(@event), :notice => "Your event has been saved"}
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
		@event = Event.find_or_create_by!(name: Event.name)
	end


end