require 'spec_helper'

describe Event do
	it {should belongs_to(:churches)}
	it {should have_many(:event_attendee)}
	it {should have_many(:attendees).through(:event_attendee)}
end