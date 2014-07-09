class Event < ActiveRecord::Base
	belongs_to :churches
	has_many :attendees, :through => :event_attendees
	has_many :event_attendees

	geocoded_by :address, :latitude => :lat, :longitude => :lng
	after_validation :geocode
end
