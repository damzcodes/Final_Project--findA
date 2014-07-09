class EventAttendeeController < ApplicationController

	def create
		@attendence = EventAttendee.new
		@attendence.attendee_id = params[:attendee_id]
		@attendence.event_id = params[:event_id]
		@attendence.save!
	end
end
