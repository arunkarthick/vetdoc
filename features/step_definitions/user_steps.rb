Given(/^I am the owner$/) do
  user = FactoryGirl.create :user, name: "Owner", email: 'owner@vpractice.com', password: 'test12345', password_confirmation: 'test12345', owner: true, type: "Doctor"
end

Given(/^"(.*?)" is a "(.*?)" who is working in the same veterinary practice office$/) do |user, role|
  user = FactoryGirl.create :user, name: user, email: "#{user.underscore}@vpractice.com", password: 'test12345', password_confirmation: 'test12345', type: "Doctor"
end

Given(/^I logged in as "(.*?)"$/) do |user|
  visit new_user_session_path
  fill_in :user_email, with: "#{user}@vpractice.com"
  fill_in :user_password, with: 'test12345'
  click_button "Sign in"
end

Then(/^I should see "(.*?)" details$/) do |arg1|
  name = arg1 == "my" ? "Owner" : arg1
  page.should have_content name
end

Given(/^"(.*?)" is a "(.*?)"$/) do |arg1, arg2|
  user = FactoryGirl.create :user, name: user, email: "#{arg1.underscore}@vpractice.com", password: 'test12345', password_confirmation: 'test12345', type: arg2
end

Given(/^"(.*?)" have an appointment for "(.*?)" on tomorrow for his dog "(.*?)" with doctor "(.*?)"$/) do |arg1, arg2, arg3, arg4|
  user = Customer.where('email = ?',"#{arg1.underscore}@vpractice.com").first
  doctor = Doctor.where('email = ?', "#{arg4.underscore}@vpractice.com").first
  appointment = FactoryGirl.create :appointment, 
                                    reason_for_visit: arg2, 
                                    customer_id: user.id, 
                                    doctor_id: doctor.id, 
                                    date_of_visit: Date.tomorrow.to_s,  
                                    reminder_required: true,
                                    pet: arg3
end

Then(/^I should see tomorrow date$/) do
  page.should have_content Date.tomorrow.to_s
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content arg1
end

When(/^I click "(.*?)"$/) do |arg1|
  click_link arg1
end

When(/^I should see "(.*?)" form$/) do |arg1|
  page.should have_content arg1
end

Then(/^I should be able to create a report about "(.*?)"$/) do |arg1|
  fill_in :report_name_of_pet, with: "jimmy"
  fill_in :report_type_of_pet, with: 'dog'
  select 'Dog', :from => :report_breed
  select (Date.today.day + 1), :from => :report_date_of_last_visit_3i
  select 'Bob', :from => :report_doctor_id
  click_button "Create Report"
end

Then(/^I should be able to create an appointment for "(.*?)" with doctor "(.*?)"$/) do |arg1, arg2|
  fill_in :appointment_pet, with: "jimmy"
  select (Date.today.day + 1), :from => :appointment_date_of_visit_3i
  #select 'Jack', :from => :appointment_customer_id
  select 'Bob', :from => :appointment_doctor_id
  check :appointment_reminder_required
  fill_in :appointment_reason_for_visit, with: "regular checkup"
  click_button "Create Appointment"
end