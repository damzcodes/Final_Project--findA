Given(/^I am on the attendee profile$/) do
	@attendee = Attendee.create!(:name => 'John')
  visit attendee_path(@attendee)
end

Given(/^I can see a list of events$/) do
  page.should have_css('#events')
end

Given(/^I select 'attend'$/) do
	expect(Event.last).to eq(1)
end

Then(/^I expect to be in the list of attendees$/) do
  
end