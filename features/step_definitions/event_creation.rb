
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
  pending # express the regexp above with the code you wish you had
end

Given(/^select save$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^an event should be created$/) do
  pending # express the regexp above with the code you wish you had
end