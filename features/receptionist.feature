Feature: Receptionist
  As the receptionist of the veterinary practice, I should be able to schedule an appointment for a customer's pet with a specific veterinary doctor.
    Background:
      Given I am the owner
      And "Bob" is a "doctor" who is working in the same veterinary practice office
      And "Susan" is a "doctor" who is working in the same veterinary practice office
	  And "Jack" is a "Customer"
	  And "lilly" is a "Receptionist"

    Scenario: Creating Appointments
      Given I logged in as "lilly"
      Then I should see "Appointments"
	  When I click "New Appointment"
      Then I should see "New appointment" form
	  And I should be able to create an appointment for "Jack" with doctor "Bob"
	  
