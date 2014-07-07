require 'spec_helper'

describe Events do
  it {should have_many(:church_events)}
	it {should have_many(:churches).through(:church_events)}
end