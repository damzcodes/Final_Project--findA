class Event < ActiveRecord::Base
	belongs_to :church
	has_many :attendee, :through => :event_attendees
	has_many :event_attendees

	geocoded_by :address, :latitude => :lat, :longitude => :lng
	after_validation :geocode

	validates :church_id, presence: true
end
