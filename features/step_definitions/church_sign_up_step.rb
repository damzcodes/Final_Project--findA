Given(/^that a church is on the signup page$/) do
  visit new_church_session_path
end

When(/^a "(.*?)" completes the form with valid information$/) do |church|
  fill_in 'Email', :with => 'test@test.org'
  fill_in 'Password', :with => 'password'
end

Then(/^a "(.*?)" account should be created$/) do |church|
  # page.should have_content('Welcome! You have signed in successfully.')
  # church.constantize.count.should eq(1)
end