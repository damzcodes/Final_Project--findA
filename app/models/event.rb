class Event < ActiveRecord::Base
	has_many :church_events
	has_many :churches, :through => :church_events

	geocoded_by :address, :latitude => :lat, :longitude => :lng
	after_validation :geocode
end
