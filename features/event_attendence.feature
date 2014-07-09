Feature: Event Attendence

@wip
	Scenario: An attendee can attend an event
		Given I am on the attendee profile
			And I can see a list of events
			And I select 'attend' 
		Then I expect to be in the list of attendees 
