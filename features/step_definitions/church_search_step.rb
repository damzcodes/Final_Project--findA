
Given(/^an Attendee is on their profile page$/) do
	@attendee = Attendee.create!(:name => 'John')
  visit attendee_path(@attendee)
end

Given(/^they type a location in the search box$/) do
  fill_in 'Search', :with => "London"
  click_on 'Search'
end

Then(/^they should see a list of local churches$/) do
  expect(page.has_content?("Balham")).to be(true)
end
