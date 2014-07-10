Feature: Church Searching


	Scenario: An attendee can search for local churches
		Given an Attendee is on their profile page
			And they type a location in the search box
		Then they should see a list of local churches
