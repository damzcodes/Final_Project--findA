class Event < ActiveRecord::Base
	has_many :church_events
	has_many :churches, :through => :church_events
end
