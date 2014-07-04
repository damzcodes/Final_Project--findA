Feature: Sign Up 
  
  Background:
    Given that a church is on the signup page
  
  Scenario: a church signs up
    When a "Church" completes the form with valid information
    Then a "Church" account should be created
    