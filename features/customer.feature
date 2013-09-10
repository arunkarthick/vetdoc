Feature: Customer
  As a customer, I should be able to see when my pet is scheduled for their next appointment.
    Background:
      Given I am the owner
      And "Bob" is a "doctor" who is working in the same veterinary practice office
      And "Susan" is a "doctor" who is working in the same veterinary practice office
	  And "jack" is a "Customer"
	  And "jack" have an appointment for "regular checkup" on tomorrow for his dog "jimmy" with doctor "bob"

    Scenario: Viewing Appointments
      Given I logged in as "jack"
      Then I should see "My Appointments"
      And I should see "jimmy"
	  And I should see tomorrow date
	  And I should see "regular checkup"
