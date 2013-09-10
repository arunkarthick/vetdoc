Feature: Track Employees
  As the owner of the veterinary practice, 
  I should be able to track the employee information about my fellow veterinary doctors & myself.

    Scenario: Viewing Employees
      Given I am the owner
      And "Bob" is a "doctor" who is working in the same veterinary practice office
      And "Susan" is a "doctor" who is working in the same veterinary practice office
	  And I logged in as "owner"
      Then I should see "my" details
      And I should see "Bob" details
      And I should see "Susan" details
