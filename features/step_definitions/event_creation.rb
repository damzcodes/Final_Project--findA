
Given(/^a church exists$/) do
    @email = "church@test.org" 

  	@church = Church.create!(:name => "Balham",
    :password => "password",
    :email => @email
    )
end

Given(/^a church is on the church profile page$/) do
	# binding.pry
  visit church_path(@church)
end

Given(/^they select create event$/) do
  click_link 'Create Event'
end

Given(/^they fill in an event creation form$/) do
  fill_in 'name', :with => 'Melodies from heaven'
  fill_in 'type', :with => 'Music Day'
  fill_in 'description', :with => 'A day of music and fellowship'
  fill_in 'address', :with => '123 brook street'
  fill_in 'date', :with => 'April 22nd 2014'
  fill_in 'start_time', :with => '10am'
  fill_in 'end_time', :with => '8pm'
end

Given(/^select save$/) do
  click_button 'submit'
end

Then(/^an event should be created$/) do
  expect(Event.count).to eq(1)
  expect(page.has_content?("Your event has been saved"))
end