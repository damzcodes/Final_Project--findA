require 'spec_helper'

describe ChurchEvents do
	it {should belong_to(:events).through(:church_events)}
	it {should belong_to(:churches).through(:church_events)}
end
