require 'spec_helper'

describe Attendee do
 	it {should have_many(:event_attendee)}
	it {should have_many(:events).through(:event_attendee)}
end