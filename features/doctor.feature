Feature: Doctor
  As one of the practicing veterinary doctors, I should be able to record the information about a customer's pet.
    Background:
      Given I am the owner
      And "Bob" is a "doctor" who is working in the same veterinary practice office
      And "Susan" is a "doctor" who is working in the same veterinary practice office
	  And "jack" is a "Customer"
	  And "jack" have an appointment for "regular checkup" on tomorrow for his dog "jimmy" with doctor "bob"

    Scenario: Viewing Appointments
      Given I logged in as "bob"
      Then I should see "My Appointments"
	  When I click "Details"
      And I should see "jimmy"
	  And I should see "regular checkup"
	  
    Scenario: Reports
      Given I logged in as "bob"
      Then I should see "My Appointments"
	  When I click "Create Report"
      And I should see "New report" form
	  Then I should be able to create a report about "jimmy"
	  
