Feature: Event Creation


	Scenario: A church creates an event
		Given a church exists
		Given a church is on the church profile page
			And they select create event
			And they fill in an event creation form
			And select save
		Then an event should be created