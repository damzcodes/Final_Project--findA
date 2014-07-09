class Attendee < ActiveRecord::Base
	has_many :events, :through => :event_attendees
	has_many :event_attendees
end
